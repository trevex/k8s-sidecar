FROM       python:3.6-slim-stretch
RUN        pip install kubernetes==8.0.0b1
COPY       sidecar/sidecar.py /app/
ENV         PYTHONUNBUFFERED=1
WORKDIR    /app/
CMD [ "python", "-u", "/app/sidecar.py" ]
