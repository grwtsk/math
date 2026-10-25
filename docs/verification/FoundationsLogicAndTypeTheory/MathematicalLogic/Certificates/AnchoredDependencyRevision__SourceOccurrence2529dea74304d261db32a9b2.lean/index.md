# Verification target: GRWTSK.Logic.Certificates.AnchoredDependencyRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b99a8d631cb2beaaec6bae7b6efb3bd1a47dafbc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/AnchoredDependencyRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b99a8d631cb2beaaec6bae7b6efb3bd1a47dafbc`.

Source path: `GRWTSK/Logic/Certificates/AnchoredDependencyRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/AnchoredDependencyRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReplayLedger.correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replayledger-correct--a8b61f5f329d2cef0af79f59.md) | 41 | `declaration-track:a8b61f5f329d2cef0af79f59dbd59da05404b80669fe5af40cf127f2f597652f` |
| 2 | `def` | [ReplayLedger.correctMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replayledger-correctmany--939d5909b5160c33752bcd79.md) | 48 | `declaration-track:939d5909b5160c33752bcd793c65b74a21c2a4b9509e9236f48adce9cbc69e27` |
| 3 | `theorem` | [replay_correction_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correction-preserves-safe--7657f7bf9d47dac2dadfa248.md) | 75 | `result-track:7657f7bf9d47dac2dadfa248163e1e61787ef2afba06bda8f5c37ad7aff34171` |
| 4 | `theorem` | [replay_correction_verified_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correction-verified-iff--3556306931227dd7f5161589.md) | 139 | `result-track:3556306931227dd7f51615897616e7031abb8f8fabd296420b78d7a0c592881d` |
| 5 | `theorem` | [replay_affected_verified_reopened](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-affected-verified-reopened--0c11be6c8b16abf06b01ef5e.md) | 148 | `result-track:0c11be6c8b16abf06b01ef5ef28eb443b3646acd8ef3f4933be9785f54c0e903` |
| 6 | `theorem` | [replay_corrected_current_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-corrected-current-target--7ec8d7c03771f32a243bd432.md) | 157 | `result-track:7ec8d7c03771f32a243bd432bc3f4ee3a3c42d9d91eae36fb7e53c7b4165d4fd` |
| 7 | `theorem` | [replay_correction_histories](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correction-histories--9bb8bda383c86f9e47c68f80.md) | 166 | `result-track:9bb8bda383c86f9e47c68f8007ac48ad2c3780e3be616c482bf51ef9dfd3d790` |
| 8 | `theorem` | [replay_correction_records_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correction-records-append--5dbe5654ebaaa06e05fccdff.md) | 174 | `result-track:5dbe5654ebaaa06e05fccdff2956edcf8905e54494833af5d524d4533af921ee` |
| 9 | `theorem` | [replay_correction_same_snapshot_status](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correction-same-snapshot-status--76561e9162cdf299f71186d7.md) | 185 | `result-track:76561e9162cdf299f71186d76f10dc692240c323e18c19d6dfa05a1fc86eca13` |
| 10 | `theorem` | [replay_correctMany_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-nil--941c6bc290623cce7a1801c6.md) | 192 | `result-track:941c6bc290623cce7a1801c62883bbaba03f28049befc54d50db446ca0c57309` |
| 11 | `theorem` | [replay_correctMany_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-cons--e1f802ab16dd317801eb12b5.md) | 196 | `result-track:e1f802ab16dd317801eb12b58d0d659605c3beb51fc4418740b095e7e4a90252` |
| 12 | `theorem` | [replay_correctMany_base](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-base--b937076c47b4763f0f772791.md) | 203 | `result-track:b937076c47b4763f0f772791fecc2d0f6fbf4cc62b9d5635d2eacab4d5505288` |
| 13 | `theorem` | [replay_correctMany_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-safe--3fdd1ede8ab3117d474fa354.md) | 213 | `result-track:3fdd1ede8ab3117d474fa354f2a0b8a9a7f031a6c8e1079f07ec64e87d7fe1a0` |
| 14 | `theorem` | [replay_correctMany_replay_archive_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-replay-archive-preserved--4ba2d1ea5b26c7ab61c1e2c2.md) | 223 | `result-track:4ba2d1ea5b26c7ab61c1e2c23abaeb2d008bdebaa47d01bf57911087aa017cfe` |
| 15 | `theorem` | [replay_correctMany_histories](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-histories--624486ace2152c7326ce4c6a.md) | 233 | `result-track:624486ace2152c7326ce4c6a73e128dd45d766870dc82c04934b376b4d822365` |
| 16 | `theorem` | [replay_correctMany_correction_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-correction-suffix--998f084165922b82da4d2efe.md) | 246 | `result-track:998f084165922b82da4d2efe01aaafea4c2f29de5fa1a291d636416d3dc941a9` |
| 17 | `theorem` | [replay_correctMany_correction_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-correction-prefix--09c4a3ee811dd5a7262965d0.md) | 253 | `result-track:09c4a3ee811dd5a7262965d0c16a7177c0e00fe5c68c61fd0ff2ec3fbeb89de8` |
| 18 | `theorem` | [replay_correctMany_correction_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-correction-length--84ad19ec5810a6c704c66875.md) | 259 | `result-track:84ad19ec5810a6c704c6687585429bd975589654135c2372e3c8ec1b4e281812` |
| 19 | `theorem` | [replay_correctMany_status](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-status--3323b8020e4c62a9d704db15.md) | 267 | `result-track:3323b8020e4c62a9d704db15b71d458ae521d8e8e56f2fb33235f0877503a95f` |
| 20 | `theorem` | [replay_correctMany_current_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-current-target--699367d776eeeaa179ca0573.md) | 285 | `result-track:699367d776eeeaa179ca05733abbb1d1b360c896d0ea251ecb1d62b96c184d81` |
| 21 | `theorem` | [replay_correctMany_last_snapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/declarations/replay-correctmany-last-snapshot--045744b02afdb8ad833fbbde.md) | 294 | `result-track:045744b02afdb8ad833fbbdef5e91c24400d9d740c95f3c958b9011e548945c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
