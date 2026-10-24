# GRWTSK.Topology.GeneralTopology.PrimeWalkTrajectoryAdmission.Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad9f0b1c519ce2c5a6b756eee360d06dede2ade2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AdmissionStage](declarations/admissionstage--f73c17f6c5688c67d67644bb.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AdmissionBoundary](declarations/admissionboundary--308f2c91d58bb502caa4e4e4.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [AdmissionError](declarations/admissionerror--3e53838104813836106fe1b3.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AdmissionClockDraft](declarations/admissionclockdraft--ca420732fb010c118b378f31.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AdmissionClock](declarations/admissionclock--a449212acb873e2a6a45e751.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [validatePrecedence](declarations/validateprecedence--2c8c7be1157eaaf9d6947b27.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sealAdmissionClock](declarations/sealadmissionclock--9839dd52a75b86ffca871974.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [TransitionDraft](declarations/transitiondraft--1fb6c635c67a0f1f65ce6067.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [AdmissionRecord](declarations/admissionrecord--8800a6ed296ba7870d8190fd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [sealTransition](declarations/sealtransition--dc148761be869e971c062ba1.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [AdjacentChain](declarations/adjacentchain--f100fa46e0491b51713f2743.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [AdmissionLedger](declarations/admissionledger--7f3c44fc271c00f130acb67d.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [LedgerChainEvidence](declarations/ledgerchainevidence--ceeea03680cfd42a3435a822.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sealLedgerRecords](declarations/sealledgerrecords--24d56884f4ec10779cffff8e.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [sealLedger](declarations/sealledger--41b21904aafaf3f1afae0487.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [AdmissionClock.controlFlowTick_ne_kernelAdmissionTick](declarations/admissionclock-controlflowtick-ne-kerneladmissiontick--932178285cefe3acb0f269ef.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AdmissionClock.kernelAdmissionTick_ne_handshakeTick](declarations/admissionclock-kerneladmissiontick-ne-handshaketick--f188f678013515e451eb3934.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [AdmissionClock.controlFlow_before_handshake](declarations/admissionclock-controlflow-before-handshake--89bbc5625a0d1c9049d67e5c.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sealAdmissionClock_sound](declarations/sealadmissionclock-sound--cf4abeab44a39fd189d49221.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [validatePrecedence_sameTick](declarations/validateprecedence-sametick--0aceb544c6800912c592fc95.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [validatePrecedence_regression](declarations/validateprecedence-regression--45b2b2e39e1c42446cdc5f6b.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [projectiveTrajectory](declarations/projectivetrajectory--760aec0a40514e331fc8abfa.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ProjectivePathFlatnessCertificate](declarations/projectivepathflatnesscertificate--d166eb83331246069dfda2b3.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [AdmittedProjectiveTrajectory](declarations/admittedprojectivetrajectory--12b88e181367eea135cda30a.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [HasAdmittedProjectiveTrajectory](declarations/hasadmittedprojectivetrajectory--55e81d5faa715ced644db438.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [projectiveTrajectory_apply](declarations/projectivetrajectory-apply--237057e0b1181939dbe4005f.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [AdmittedProjectiveTrajectory.observes_signal](declarations/admittedprojectivetrajectory-observes-signal--356256db7b4bff5747bb447e.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [AdmittedProjectiveTrajectory.transport_identity](declarations/admittedprojectivetrajectory-transport-identity--8f77b6258789415796a42887.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [AdmittedProjectiveTrajectory.transport_cocycle](declarations/admittedprojectivetrajectory-transport-cocycle--8912c990948995a82d5d1342.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [AdmittedProjectiveTrajectory.record_parameter_strict](declarations/admittedprojectivetrajectory-record-parameter-strict--b975df176f967fddc30d4c28.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [AdmittedProjectiveTrajectory.record_has_flatTransport](declarations/admittedprojectivetrajectory-record-has-flattransport--034bba9622001425684c0893.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
