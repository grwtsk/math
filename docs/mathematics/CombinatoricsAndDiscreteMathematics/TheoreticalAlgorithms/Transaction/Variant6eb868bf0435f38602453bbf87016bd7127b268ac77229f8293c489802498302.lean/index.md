# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Transaction.Variant6eb868bf0435f38602453bbf87016bd7127b268ac77229f8293c489802498302

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 4 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant6eb868bf0435f38602453bbf87016bd7127b268ac77229f8293c489802498302.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `856e38cf493bc1f32b596f38c947c7b17ac5df0f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant6eb868bf0435f38602453bbf87016bd7127b268ac77229f8293c489802498302.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryJournalState](declarations/surgeryjournalstate--d37fff0b19202fb9971c23cf.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RepositoryFileModel](declarations/repositoryfilemodel--d8b64db1a6e5755cd5af5d0b.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [RepositorySourceModel](declarations/repositorysourcemodel--c4a5410fde1c5310316173ad.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SurgeryJournalV1](declarations/surgeryjournalv1--e52a885d228303eaa745b2f6.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SurgeryJournalV1.Valid](declarations/surgeryjournalv1-valid--cacdb3b9277c420c53f8c1a3.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SurgeryTransactionIntentV1](declarations/surgerytransactionintentv1--a9c9223695bba133dfd01ef5.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [SurgeryTransactionV1](declarations/surgerytransactionv1--a5f83a0feb7ebe84375fceea.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [SurgeryPrepareResult](declarations/surgeryprepareresult--507f20b0089b16b8da3bc084.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [SurgeryTransactionStep](declarations/surgerytransactionstep--8dcaf5a0e47cd2893fd2db04.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [SurgeryTransactionStep.model](declarations/surgerytransactionstep-model--cc23f54cf1e6a571710cd4b7.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [initialSurgeryJournal](declarations/initialsurgeryjournal--14bfa1454bc2c874b422631a.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [prepareSurgeryTransaction](declarations/preparesurgerytransaction--2f7b0400b063eae33a3de813.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [recheckSurgeryTransaction](declarations/rechecksurgerytransaction--5af8ee3e18475fdb76ea1e3a.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [stageSurgeryFiles](declarations/stagesurgeryfiles--6681227b13fccd58e870f182.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [beginSurgeryRenaming](declarations/beginsurgeryrenaming--215a657267242229a8bd748f.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [recordSurgeryRename](declarations/recordsurgeryrename--37dbf0457ccec8e644995f41.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [commitSurgeryTransaction](declarations/commitsurgerytransaction--1423d0c5433aad1dae6f81ed.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [rollbackSurgeryTransaction](declarations/rollbacksurgerytransaction--8d78eeb62b55928c96d16635.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [recoverSurgeryTransaction](declarations/recoversurgerytransaction--6107e35760d28e4a709670fe.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prepareSnapshotRace_leavesRepositoryUnchanged](declarations/preparesnapshotrace-leavesrepositoryunchanged--98fdf77948beeac366c56e00.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [prepareRevisionRace_leavesRepositoryUnchanged](declarations/preparerevisionrace-leavesrepositoryunchanged--4ffcf0b23355f8c4415ab8bf.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rejectedTransactionStep_leavesRepositoryUnchanged](declarations/rejectedtransactionstep-leavesrepositoryunchanged--83ba6011a345326ad4e572b0.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [thirdPartyRollbackRace_leavesRepositoryUnchanged](declarations/thirdpartyrollbackrace-leavesrepositoryunchanged--44653ea69d2848ce3fc279f8.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
