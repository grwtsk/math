# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Transaction.Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 4 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f35c1f2827dcd3bd8ac0249efe6b715c8e296bb1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryJournalState](declarations/surgeryjournalstate--7cb5127fb0221ed474c4f0d7.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RepositoryFileModel](declarations/repositoryfilemodel--4720ecdd6eab634afc483809.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [RepositorySourceModel](declarations/repositorysourcemodel--fbb1033ed2958dcf78fd71c5.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SurgeryJournalV1](declarations/surgeryjournalv1--147ccd3d7af8da81ac745d51.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SurgeryJournalV1.Valid](declarations/surgeryjournalv1-valid--78a5308904a4fe22ff06f872.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SurgeryTransactionIntentV1](declarations/surgerytransactionintentv1--c5093591dd7e6b85c1c64c01.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [SurgeryTransactionV1](declarations/surgerytransactionv1--d4f1c77579c8403ad7a2f3e4.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [SurgeryPrepareResult](declarations/surgeryprepareresult--e085b143283803cc0645d05e.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [SurgeryTransactionStep](declarations/surgerytransactionstep--fb97ae5407a7e8ae9cd0be00.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [SurgeryTransactionStep.model](declarations/surgerytransactionstep-model--6030c297d82030c503c79bd7.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [initialSurgeryJournal](declarations/initialsurgeryjournal--14e37898f0d69ae4ce8eb6bf.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [prepareSurgeryTransaction](declarations/preparesurgerytransaction--a314c970eb2c86e39d1a013f.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [recheckSurgeryTransaction](declarations/rechecksurgerytransaction--f512ba2bfde87d49bd38f487.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [stageSurgeryFiles](declarations/stagesurgeryfiles--f2cae2720791e0027f223a8b.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [beginSurgeryRenaming](declarations/beginsurgeryrenaming--f4850133ba4206abe844d85d.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [recordSurgeryRename](declarations/recordsurgeryrename--ebdb873458f93f962c18dfe5.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [commitSurgeryTransaction](declarations/commitsurgerytransaction--4c0f565990e76df458fa55a5.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [rollbackSurgeryTransaction](declarations/rollbacksurgerytransaction--1c0b869580a5e6014cf8089b.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [recoverSurgeryTransaction](declarations/recoversurgerytransaction--195627741361774fb9e07c57.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prepareSnapshotRace_leavesRepositoryUnchanged](declarations/preparesnapshotrace-leavesrepositoryunchanged--87f54f4544eb0e3e50c11e4e.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [prepareRevisionRace_leavesRepositoryUnchanged](declarations/preparerevisionrace-leavesrepositoryunchanged--7b10e5ee43c5093bb2819a6b.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rejectedTransactionStep_leavesRepositoryUnchanged](declarations/rejectedtransactionstep-leavesrepositoryunchanged--7be65681fb00278557002211.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [thirdPartyRollbackRace_leavesRepositoryUnchanged](declarations/thirdpartyrollbackrace-leavesrepositoryunchanged--a46c3ef204762036767b00d3.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
