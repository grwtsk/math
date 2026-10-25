# Verification target: GRWTSK.Logic.ProofChecking.RepositoryConformance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d20687ca58a9b947bb9c35c8a3b5f4d695de8799",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/ProofChecking/RepositoryConformance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d20687ca58a9b947bb9c35c8a3b5f4d695de8799`.

Source path: `GRWTSK/Logic/ProofChecking/RepositoryConformance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/ProofChecking/RepositoryConformance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.ArtifactDerivation`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence5a230b12dadf6394aee5c582.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExecutionState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/executionstate--d3a051e0f91c22c9ed7d3640.md) | 27 | `declaration-track:d3a051e0f91c22c9ed7d3640714994adb9e2b24d7cb63278f95a7810459418c6` |
| 2 | `structure` | [GateStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/gatestatus--067218ddad056792d6b313d7.md) | 37 | `declaration-track:067218ddad056792d6b313d72a13fbb06104e42b0dd8543dfe86c2c6190a61cb` |
| 3 | `def` | [GateStatus.Accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/gatestatus-accepted--388ebc5d5fd95ac385f7bc58.md) | 43 | `declaration-track:388ebc5d5fd95ac385f7bc58523cefc58f89b355d179357cf450db994ff8d045` |
| 4 | `theorem` | [GateStatus.not_accepted_of_incomplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/gatestatus-not-accepted-of-incomplete--f562aa4a81002d7f73ab03ae.md) | 46 | `result-track:f562aa4a81002d7f73ab03aedf84755321ba4caaafde047e5112049d41505dc3` |
| 5 | `structure` | [ReconstructionEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/reconstructionevidence--f89ea92308ff095460bdfe17.md) | 54 | `declaration-track:f89ea92308ff095460bdfe176b5f2dd9b590e4d8a1cc8b545bcfccb9eac6e6c7` |
| 6 | `structure` | [FormalCorrectnessEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/formalcorrectnessevidence--8c51583daa8664b9eaf0018a.md) | 65 | `declaration-track:8c51583daa8664b9eaf0018a259b3ba0fb58474a38968dabd1f6147108f88e1d` |
| 7 | `theorem` | [FormalCorrectnessEvidence.meaning_of_coverage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/formalcorrectnessevidence-meaning-of-coverage--3c05ed379a32fb8e7a631853.md) | 76 | `result-track:3c05ed379a32fb8e7a6318530be18bad50813050ddf90f6ffc0999ee1333cd09` |
| 8 | `structure` | [EvidenceAvailability](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/evidenceavailability--0489cecdc689f54797499993.md) | 86 | `declaration-track:0489cecdc689f54797499993d1a5915c18a783817af918e4a67b48f6e4b385c5` |
| 9 | `def` | [EvidenceAvailability.HasReconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/evidenceavailability-hasreconstruction--f6a5f7f7adc6945fa5928084.md) | 92 | `declaration-track:f6a5f7f7adc6945fa5928084604a64824a547c2ad06cd2fb29ec0ec34de542b6` |
| 10 | `def` | [EvidenceAvailability.HasFormalCorrectness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/evidenceavailability-hasformalcorrectness--af43ef80d194ee416734a8aa.md) | 99 | `declaration-track:af43ef80d194ee416734a8aa9c686415d483d88f62039df3d1c679a38bae4550` |
| 11 | `theorem` | [EvidenceAvailability.dimensions_are_independent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/evidenceavailability-dimensions-are-independent--523e4ab828ebd1d4d165df38.md) | 110 | `result-track:523e4ab828ebd1d4d165df384dd100dbe63807a96080474d3a51fbea93f48021` |
| 12 | `structure` | [StatusVector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector--384d19105ec6aab11dd0dd92.md) | 131 | `declaration-track:384d19105ec6aab11dd0dd920668eb4a0b5017395dd37ff3f693072d7828d345` |
| 13 | `def` | [StatusVector.Organized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector-organized--b47778c3d0e3587f6b3525dc.md) | 150 | `declaration-track:b47778c3d0e3587f6b3525dce0c57ba2c215dcc5921eb6e3cccf30951e14db43` |
| 14 | `def` | [StatusVector.Reconstructible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector-reconstructible--bf85feb19569144f0ee2c278.md) | 155 | `declaration-track:bf85feb19569144f0ee2c278153954e39cc9f27a95480088ed14b78dfe0f5a9b` |
| 15 | `def` | [StatusVector.FormallyChecked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector-formallychecked--87470aa7725e74afc7f2a897.md) | 160 | `declaration-track:87470aa7725e74afc7f2a897dd2ebeda28794254cc3c5ce3cad58be37fb86e61` |
| 16 | `def` | [StatusVector.IndependentlyValidated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector-independentlyvalidated--4fb54a331b311db8178c7448.md) | 166 | `declaration-track:4fb54a331b311db8178c7448d7661f6efd45c2dbddec2a72101e67dcfb25144f` |
| 17 | `theorem` | [StatusVector.independentlyValidated_implies_formallyChecked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector-independentlyvalidated-implies-formallychecked--f2fd610bb725728a4ee9dfb1.md) | 170 | `result-track:f2fd610bb725728a4ee9dfb168e951f04dff46b6df329d0713a044b6518fdada` |
| 18 | `theorem` | [StatusVector.formallyChecked_implies_reconstructible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector-formallychecked-implies-reconstructible--c7859290c1a21981df76bb7d.md) | 174 | `result-track:c7859290c1a21981df76bb7d00bb139014e0f58d29243e61d6c9919468f64ad2` |
| 19 | `theorem` | [StatusVector.reconstructible_implies_organized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/declarations/statusvector-reconstructible-implies-organized--7fbe94f63258f71162739b34.md) | 178 | `result-track:7fbe94f63258f71162739b3454f5b556eedb9eba3e827b678a99d675347cbeff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
