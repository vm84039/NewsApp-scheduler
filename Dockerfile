# Use an official OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the packaged jar file into the container
COPY target/scheduler.jar /usr/src/app/scheduler.jar

# Define the command to run the application
CMD ["java", "-jar", "scheduler.jar"]

# Expose the port the application runs on
EXPOSE 8085