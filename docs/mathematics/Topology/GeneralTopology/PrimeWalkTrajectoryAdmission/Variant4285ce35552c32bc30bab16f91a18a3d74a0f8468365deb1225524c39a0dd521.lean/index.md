# GRWTSK.Topology.GeneralTopology.PrimeWalkTrajectoryAdmission.Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43aed2212246a151167200fad8bc7cdc54ee66b4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AdmissionStage](declarations/admissionstage--e4ecf6a598d50fb94f87d70b.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AdmissionBoundary](declarations/admissionboundary--0a67dc0d3c24727211818287.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [AdmissionError](declarations/admissionerror--813c066d4f26f95d0ff3f48e.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AdmissionClockDraft](declarations/admissionclockdraft--6d36e8e9467290e23d7c5259.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AdmissionClock](declarations/admissionclock--ae6a7c690eee8b6b72f28bd3.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [validatePrecedence](declarations/validateprecedence--605869f8ee5659a4163d1fd9.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sealAdmissionClock](declarations/sealadmissionclock--7a62a1395a75a728bd132096.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [TransitionDraft](declarations/transitiondraft--d9b4949282393d792bed0a7b.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [AdmissionRecord](declarations/admissionrecord--2822ff19829f91814c33e9ba.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [sealTransition](declarations/sealtransition--0a3866f680ef1b7e0f50c32d.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [AdjacentChain](declarations/adjacentchain--025fa56b35b595e2dbc46a9e.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [AdmissionLedger](declarations/admissionledger--2d3e957597bee360ef10863c.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [LedgerChainEvidence](declarations/ledgerchainevidence--af70888c3411228c6429087a.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sealLedgerRecords](declarations/sealledgerrecords--32094268a00875d6c4abf1c1.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [sealLedger](declarations/sealledger--1af68c2e208f553a4c1485cc.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [AdmissionClock.controlFlowTick_ne_kernelAdmissionTick](declarations/admissionclock-controlflowtick-ne-kerneladmissiontick--77d89694f4e19c30ae99dbd2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AdmissionClock.kernelAdmissionTick_ne_handshakeTick](declarations/admissionclock-kerneladmissiontick-ne-handshaketick--df02feae4874a62df78326eb.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [AdmissionClock.controlFlow_before_handshake](declarations/admissionclock-controlflow-before-handshake--4b3b1bd6e82f7c2cafb076f9.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sealAdmissionClock_sound](declarations/sealadmissionclock-sound--7402e85f574b9f300e22aa74.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [validatePrecedence_sameTick](declarations/validateprecedence-sametick--fbefa628ba8921067a16c6d3.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [validatePrecedence_regression](declarations/validateprecedence-regression--661682b46f1242e48a573f4e.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [projectiveTrajectory](declarations/projectivetrajectory--48fad28bffc13db66924c6e4.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ProjectivePathFlatnessCertificate](declarations/projectivepathflatnesscertificate--f55b28d34cd148122e3bcc5b.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [AdmittedProjectiveTrajectory](declarations/admittedprojectivetrajectory--5c0c698d8d717a3bf526047b.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [HasAdmittedProjectiveTrajectory](declarations/hasadmittedprojectivetrajectory--ceac32fa8b2a6053db460a85.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [projectiveTrajectory_apply](declarations/projectivetrajectory-apply--89d7e162549b6b4aec8e9bbe.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [AdmittedProjectiveTrajectory.observes_signal](declarations/admittedprojectivetrajectory-observes-signal--8ece00800b78a68b83bb744e.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [AdmittedProjectiveTrajectory.transport_identity](declarations/admittedprojectivetrajectory-transport-identity--7ce25175dee8f59acf74d5c9.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [AdmittedProjectiveTrajectory.transport_cocycle](declarations/admittedprojectivetrajectory-transport-cocycle--ec9a409dbebd747e0be25325.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [AdmittedProjectiveTrajectory.record_parameter_strict](declarations/admittedprojectivetrajectory-record-parameter-strict--e9dc09f9ff79ff80fac8cee7.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [AdmittedProjectiveTrajectory.record_has_flatTransport](declarations/admittedprojectivetrajectory-record-has-flattransport--3fa5f7bcb068984be95f034f.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
