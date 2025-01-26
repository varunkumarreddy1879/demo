FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=demo-0.0.1-SNAPSHOT.jar
Add ${JAR_FILE} demo1.jar
EXTRYPOINT ["java", "-Djava.security.edg=file:/dev?./urandom", "/demo1.jar"]

