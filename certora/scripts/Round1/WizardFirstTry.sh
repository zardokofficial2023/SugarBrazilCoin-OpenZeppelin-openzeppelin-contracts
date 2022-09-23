#!/usr/bin/env bash

set -euxo pipefail

certoraRun \
    certora/harnesses/ERC20VotesHarness.sol certora/harnesses/WizardFirstTry.sol \
    --verify WizardFirstTry:certora/specs/GovernorBase.spec \
    --solc solc \
    --optimistic_loop \
    --disableLocalTypeChecking \
    --settings -copyLoopUnroll=4
