# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Game.Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2644f3d5c906151d02f4949d9e38096a6640249e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GameDecision](declarations/gamedecision--4601b18b46ff9ae3bfa794ef.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [NetworkSurgeryGameState](declarations/networksurgerygamestate--67f742ea9c021b2a9051ed33.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [draftSelection](declarations/draftselection--8fd8bce185c8e3c72efe013c.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [selection_does_not_change_sourceSnapshot](declarations/selection-does-not-change-sourcesnapshot--e237e32bb29b081d0229121a.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [applyProposalDecision](declarations/applyproposaldecision--bc4c5a27748d1b8a6daf2d94.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rejectedMove_leavesGameStateUnchanged](declarations/rejectedmove-leavesgamestateunchanged--33bbd9544e857f2a5c3ffb3b.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [staleMove_leavesGameStateUnchanged](declarations/stalemove-leavesgamestateunchanged--1d91aa339b259022b6ab9706.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [equalRevisionConflict_leavesGameStateUnchanged](declarations/equalrevisionconflict-leavesgamestateunchanged--f6d11a73feacaa11003eb854.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [advanceRepairRound](declarations/advancerepairround--c6c57ea90cec3849c9302eb0.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [repair_round_bounded](declarations/repair-round-bounded--1dbfe8558949a6c96cd1c3a7.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [HardPolicyVector](declarations/hardpolicyvector--8e4c87205367f8cd963493e7.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [StructuralDefectVector](declarations/structuraldefectvector--7d680a6311ad7ba942af04ab.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [LanguageDiagnosticVector](declarations/languagediagnosticvector--f5fdbc95ecc722d15ae0c775.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ChangeCostVector](declarations/changecostvector--86f3a0e37be600c8af92ea85.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [StructuralDefectVector.components](declarations/structuraldefectvector-components--1331da4e1a27157ba2484912.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [StructuralDefectVector.total](declarations/structuraldefectvector-total--af3b52d82aa073fe7dd5dc34.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [StructuralDefectVector.AllFiniteChecksPass](declarations/structuraldefectvector-allfinitecheckspass--b018f1de1a4744bf1e4c6ec0.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LanguageDiagnosticVector.components](declarations/languagediagnosticvector-components--d45096e516a0c7b7ba9cca75.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [LanguageDiagnosticVector.AllChecksPass](declarations/languagediagnosticvector-allcheckspass--c8d360d1f98bfed78f7adbcb.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteValidationRecord](declarations/finitevalidationrecord--eaf9b456b8c93e6705962991.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zeroStructuralEnergy_iff_allFiniteStructuralChecksPass](declarations/zerostructuralenergy-iff-allfinitestructuralcheckspass--9195d7eddc961bb2ae3a1892.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zeroStructuralEnergy_does_not_imply_languageValidity](declarations/zerostructuralenergy-does-not-imply-languagevalidity--3b6804d02616a906004c4429.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [RepairEnergy](declarations/repairenergy--f989f4d73c25efae6a82d5e7.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [RepairEnergy.vector](declarations/repairenergy-vector--1699e5739c3d42981758f45d.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [RepairEnergy.Less](declarations/repairenergy-less--c0538f697d42485357baf7b6.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [RepairCandidate](declarations/repaircandidate--c2fe595855466a0adf402731.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [BoundedRepairCandidate](declarations/boundedrepaircandidate--0e69a55156f48fe8d0c87e67.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `inductive` | [RepairSelectionRejection](declarations/repairselectionrejection--b9e414471ca5691583598b71.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [RepairSelectionResult](declarations/repairselectionresult--f65590b09ca5ff4a43241bdb.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [hasAmbiguousSourceRecovery](declarations/hasambiguoussourcerecovery--bffda0297a3a5bbc4bca537a.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [firstHardPolicySafe](declarations/firsthardpolicysafe--3a30ad669b5d14b875fc482a.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [selectRepairCandidate](declarations/selectrepaircandidate--42f4e52328aa4d96e1949d83.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ambiguousRepair_is_rejected_before_selection](declarations/ambiguousrepair-is-rejected-before-selection--bd160d913a9c69a7a1864ffa.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [emptyRepairSet_has_no_safe_candidate](declarations/emptyrepairset-has-no-safe-candidate--28a40b2c6eb34ee8ea631913.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [AcceptedRepairStep](declarations/acceptedrepairstep--84ea36042c2a93cf619436a1.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [repairStep_preserves_hardPolicy_ceiling](declarations/repairstep-preserves-hardpolicy-ceiling--c837a77e1bcbb45cf0aa923b.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [acceptedRepair_strictlyImproves_or_consumesBudget](declarations/acceptedrepair-strictlyimproves-or-consumesbudget--0cabd59cc8b6e6e0def66741.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [repairTrace](declarations/repairtrace--8f95c015eaf540b41464c0bb.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [repairTrace_no_duplicateCandidate](declarations/repairtrace-no-duplicatecandidate--0855bec52d741203f25a2102.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [repairLoop_length_le_budget_or_candidateCount](declarations/repairloop-length-le-budget-or-candidatecount--ad7205b0164db068cca7353e.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [repairLoop_terminates](declarations/repairloop-terminates--77184fc19b4e6b92600e8a03.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [GameRepositoryModel](declarations/gamerepositorymodel--9cdb0d2a4c963a1d3be2f092.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [PreparedGameCommit](declarations/preparedgamecommit--26d788192a88524d18342d79.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `inductive` | [GameCommitRejection](declarations/gamecommitrejection--722b16f8a725c1604ee159ac.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `inductive` | [GameCommitResult](declarations/gamecommitresult--ca8d23ea2d22e19957b1832a.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [GameCommitResult.model](declarations/gamecommitresult-model--4de11a8a212558c31f74e28d.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [commitPreparedGameMove](declarations/commitpreparedgamemove--45dca0bdd616c435dd6cb00b.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sourceSnapshotRace_leavesRepositoryModelUnchanged](declarations/sourcesnapshotrace-leavesrepositorymodelunchanged--9d3fad46c3c6a269bef2ca4a.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [targetRevisionRace_leavesRepositoryModelUnchanged](declarations/targetrevisionrace-leavesrepositorymodelunchanged--6878c7fd025d9d23ee17674e.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [successfulCommit_preserves_admitted_revision](declarations/successfulcommit-preserves-admitted-revision--052e9771a00485a58fe7199e.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [successfulCommit_projects_exactPreparedSnapshot](declarations/successfulcommit-projects-exactpreparedsnapshot--0719adcb4255cc7bd118a314.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [successfulCommit_records_reverseBundle](declarations/successfulcommit-records-reversebundle--18c83a0bd76967b5666fcc52.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [quantizedCandidateSelection](declarations/quantizedcandidateselection--5b612b8d22195c6178243a1f.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rounding_does_not_mutate_gameState](declarations/rounding-does-not-mutate-gamestate--6d5eb39efeb13c696419a598.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
