# GRWTSK.Logic.ProofChecking.RepositoryConformance

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**19 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/ProofChecking/RepositoryConformance.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d20687ca58a9b947bb9c35c8a3b5f4d695de8799`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExecutionState](declarations/executionstate--d3a051e0f91c22c9ed7d3640.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [GateStatus](declarations/gatestatus--067218ddad056792d6b313d7.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [GateStatus.Accepted](declarations/gatestatus-accepted--388ebc5d5fd95ac385f7bc58.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [GateStatus.not_accepted_of_incomplete](declarations/gatestatus-not-accepted-of-incomplete--f562aa4a81002d7f73ab03ae.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ReconstructionEvidence](declarations/reconstructionevidence--f89ea92308ff095460bdfe17.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FormalCorrectnessEvidence](declarations/formalcorrectnessevidence--8c51583daa8664b9eaf0018a.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [FormalCorrectnessEvidence.meaning_of_coverage](declarations/formalcorrectnessevidence-meaning-of-coverage--3c05ed379a32fb8e7a631853.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [EvidenceAvailability](declarations/evidenceavailability--0489cecdc689f54797499993.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [EvidenceAvailability.HasReconstruction](declarations/evidenceavailability-hasreconstruction--f6a5f7f7adc6945fa5928084.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EvidenceAvailability.HasFormalCorrectness](declarations/evidenceavailability-hasformalcorrectness--af43ef80d194ee416734a8aa.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [EvidenceAvailability.dimensions_are_independent](declarations/evidenceavailability-dimensions-are-independent--523e4ab828ebd1d4d165df38.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [StatusVector](declarations/statusvector--384d19105ec6aab11dd0dd92.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [StatusVector.Organized](declarations/statusvector-organized--b47778c3d0e3587f6b3525dc.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [StatusVector.Reconstructible](declarations/statusvector-reconstructible--bf85feb19569144f0ee2c278.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [StatusVector.FormallyChecked](declarations/statusvector-formallychecked--87470aa7725e74afc7f2a897.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [StatusVector.IndependentlyValidated](declarations/statusvector-independentlyvalidated--4fb54a331b311db8178c7448.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [StatusVector.independentlyValidated_implies_formallyChecked](declarations/statusvector-independentlyvalidated-implies-formallychecked--f2fd610bb725728a4ee9dfb1.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [StatusVector.formallyChecked_implies_reconstructible](declarations/statusvector-formallychecked-implies-reconstructible--c7859290c1a21981df76bb7d.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [StatusVector.reconstructible_implies_organized](declarations/statusvector-reconstructible-implies-organized--7fbe94f63258f71162739b34.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
