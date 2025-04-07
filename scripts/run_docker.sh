#!/bin/bash

# Ensure the script is executable
chmod +x /home/ec2-user/app/scripts/run_docker.sh

# Docker image info
DOCKER_IMAGE=jatha1994/cicdncplimage:latest

# Stop and remove any existing container
docker stop springboot-app || true
docker rm springboot-app || true

# Pull latest image
docker pull $DOCKER_IMAGE

# Run the container
docker run -d --name springboot-app -p 8080:8080 $DOCKER_IMAGE
