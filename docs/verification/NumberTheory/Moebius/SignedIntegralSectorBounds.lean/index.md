# Verification target: GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dde41243775e1838d1ca200dfcca171e4ebbee2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedIntegralSectorBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dde41243775e1838d1ca200dfcca171e4ebbee2`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedIntegralSectorBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedIntegralSectorBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth`](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bump](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/bump--d17caf5ffe98a62b11841cfc.md) | 31 | `declaration-track:d17caf5ffe98a62b11841cfc2b97be079d88efc4aa74e1df55e5a9f1f326c1f7` |
| 2 | `def` | [source](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/source--6b99bbcd16666a54db85af18.md) | 33 | `declaration-track:6b99bbcd16666a54db85af18cc457cfca4456a7e1e4a5209fbae3c164fd62c62` |
| 3 | `def` | [sourceResidual](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/sourceresidual--548e926510f5afd43faa7c59.md) | 35 | `declaration-track:548e926510f5afd43faa7c59d056ae47de19de62cc2cdc52c0da9c6f6cad9b2d` |
| 4 | `def` | [sourceNormalization](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/sourcenormalization--c883784d5fe17ef51889715e.md) | 38 | `declaration-track:c883784d5fe17ef51889715e1ed89526f9594f53cac916400a1503222d2f28a6` |
| 5 | `def` | [normalizedSource](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/normalizedsource--ea97c87a4f51c49cab52da47.md) | 40 | `declaration-track:ea97c87a4f51c49cab52da47f8af9628abfef92f40fcbfc95046792586089152` |
| 6 | `def` | [correlation](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/correlation--1302e7c34a7b8cd917170a5b.md) | 42 | `declaration-track:1302e7c34a7b8cd917170a5bd4d0f305c89c833830f35af3e3ee750313cbc23f` |
| 7 | `def` | [integerCutoff](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/integercutoff--14e5d16ee6de18e4e7713b39.md) | 45 | `declaration-track:14e5d16ee6de18e4e7713b39bcc00387cae5c29a6c2476d1e4b219d7653fb447` |
| 8 | `def` | [reset](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/reset--ae31a680806886bb6f70f114.md) | 47 | `declaration-track:ae31a680806886bb6f70f114cd8d4acdf1e807afe29bdc120aaf7c6d8677c3a6` |
| 9 | `def` | [readingWindow](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/readingwindow--44faba9e41a3506ccc27e3cf.md) | 49 | `declaration-track:44faba9e41a3506ccc27e3cf81bd061d082febfb34bed8c8bf2afa53881b8054` |
| 10 | `def` | [polarityKernel](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/polaritykernel--37575822d92ecaee7dfccafa.md) | 52 | `declaration-track:37575822d92ecaee7dfccafa2c6721a224aa43c11c8d8ff637a80c68a90a232c` |
| 11 | `def` | [resetPickup](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/resetpickup--5c2d88573d60dcab78e6010b.md) | 58 | `declaration-track:5c2d88573d60dcab78e6010bd5d3a36d3923553307bd14a21c9feacd7b0403fb` |
| 12 | `def` | [positiveEnvelope](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/positiveenvelope--20f5ddd8f2b86b88d6a40e61.md) | 61 | `declaration-track:20f5ddd8f2b86b88d6a40e613008dcefb8eae2866b9b43521ecf4bff16ff7af3` |
| 13 | `theorem` | [positive_envelope_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/positive-envelope-nonneg--b26ebe6b62f40be1826c0ef0.md) | 63 | `result-track:b26ebe6b62f40be1826c0ef07a3f3ee02ed64b3215846313f4b7d4b12e213499` |
| 14 | `theorem` | [positive_envelope_history_bounded](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/positive-envelope-history-bounded--92f2f9126a379c70bef23639.md) | 67 | `result-track:92f2f9126a379c70bef23639ae43cd7c9349441d08ec72f6962d5386c81a8666` |
| 15 | `theorem` | [positive_envelope_dominates_history](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/positive-envelope-dominates-history--69c0f65317d3efe6ff073bc7.md) | 70 | `result-track:69c0f65317d3efe6ff073bc78004d122acc6d90eca3ca66d0855a64f7cf33c2a` |
| 16 | `theorem` | [positive_envelope_eq_sup](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/positive-envelope-eq-sup--33afb51e5ac83aaf5c99396d.md) | 76 | `result-track:33afb51e5ac83aaf5c99396deceb63154a3adcfab040159fedbf438e7e70e70f` |
| 17 | `def` | [OriginalSupplierEstimate](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/originalsupplierestimate--3f1546cf5371f68e56ff4298.md) | 85 | `declaration-track:3f1546cf5371f68e56ff42980d85aac2ee15cab460ddc994936ccec98024bfc0` |
| 18 | `theorem` | [whole_pickup_poly_supplies_original](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/declarations/whole-pickup-poly-supplies-original--919f46ba008faac075ec9382.md) | 95 | `result-track:919f46ba008faac075ec93825922eb7ed4602c4ba09f302d7aaa55684cb3703a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
