PYTHON=python
PYTHON_TEST_FLAGS=-m pytest
JAVA=java
JFLAGS=-cp
PONGJAR=jresp-support/PONG
PONGCLASS=org.cmg.jresp.examples.pingpong.RemotePingPong
REVALJAR=jresp-support/RemoteEvaluation
REVALCLASS=examples.Chapter_2_Remote_Evaluation

all:
	$(PYTHON) -m example.basic

test:
	$(PYTHON) $(PYTHON_TEST_FLAGS)

runping:
	$(PYTHON) -m jresp-support.PING

runpong:
	$(JAVA) $(JFLAGS) $(PONGJAR).jar $(PONGCLASS)

runpong-debug:
	$(JAVA) $(JFLAGS) $(PONGJAR)-debug.jar $(PONGCLASS)

reval-server:
	$(JAVA) $(JFLAGS) $(REVALJAR).jar $(REVALCLASS)

reval-debug:
	$(JAVA) $(JFLAGS) $(REVALJAR)-debug.jar $(REVALCLASS)

reval-client:
	$(PYTHON) -m jresp-support.RemoteEvaluation

.PHONY: test
