# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.JetContourBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea22d25c3257ff2fa390d0ccb8a896acb552891d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea22d25c3257ff2fa390d0ccb8a896acb552891d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/JetContourBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks`](../../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.JetRectangleCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Header](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/header--84ca181d6d2411af9bd832e6.md) | 27 | `declaration-track:84ca181d6d2411af9bd832e67323b8263cd32d0ecc38a4f25d82348636af1ea6` |
| 2 | `instance` | [headerDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/headerdecidable--9adab580752075bf4df5a57b.md) | 31 | `declaration-track:9adab580752075bf4df5a57bf4f9a4225494bed5b6a6fe80794699b110eb507f` |
| 3 | `def` | [cellTest](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/celltest--76733421bc63ed719bee8f92.md) | 35 | `declaration-track:76733421bc63ed719bee8f926bedc70c7e76989d7f5c442ca879f3957583ed6a` |
| 4 | `def` | [term](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/term--42111b7c32eb0460c474a07d.md) | 42 | `declaration-track:42111b7c32eb0460c474a07d850f99573770ff7feb7cc061f4c978769be3c04e` |
| 5 | `theorem` | [sum_eq_prefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/sum-eq-prefix--53ecdadcb872f1a471a3106f.md) | 46 | `result-track:53ecdadcb872f1a471a3106f7cc39b9e84c0a77047f0e97e51b764cde0248523` |
| 6 | `theorem` | [old_evaluate_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/old-evaluate-iff--e94d7a28598e67775b974e04.md) | 51 | `result-track:e94d7a28598e67775b974e0420a5d08626b59a854260080503d533f1879fbfe9` |
| 7 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/evaluate--0ce857e0a4bf57e58bcbb2cd.md) | 79 | `declaration-track:0ce857e0a4bf57e58bcbb2cdfdc26604e306d7072d9158fcda9caa4c8e4a863a` |
| 8 | `theorem` | [evaluate_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/evaluate-iff--93f3c22c841b9f37a2014f2b.md) | 86 | `result-track:93f3c22c841b9f37a2014f2b523e4cef7d3161e2fd50142bccac6273670fd418` |
| 9 | `theorem` | [evaluate_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/evaluate-refines--3ba72df661621c802c887903.md) | 98 | `result-track:3ba72df661621c802c88790381aabbf7f29415bd4075fe29192fb6173c143c17` |
| 10 | `theorem` | [exists_claims_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/exists-claims-iff--d02d406c83d0e16b62212a75.md) | 112 | `result-track:d02d406c83d0e16b62212a758f1247697b79e1aad20e3db0e98e1353bbb38caf` |
| 11 | `def` | [evaluateRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/evaluaterectangle--d5fabbc7400f89fb00ddde3c.md) | 128 | `declaration-track:d5fabbc7400f89fb00ddde3cebb259576e69ef099903914b1b1b5b8a09b37839` |
| 12 | `theorem` | [rectangle_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/rectangle-refines--1270a263b95c94d1272b20c5.md) | 136 | `result-track:1270a263b95c94d1272b20c53532d6f81c392e193fe5d4508e0fbe2bc398ae20` |
| 13 | `theorem` | [count_eq_of_evaluateRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/declarations/count-eq-of-evaluaterectangle--3d3e9215b4fd510f32733f9a.md) | 151 | `result-track:3d3e9215b4fd510f32733f9a56233adfbfc7c0b82be0a6e30a5a941fae2d82f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
