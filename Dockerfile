FROM python:3.8.3-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .
