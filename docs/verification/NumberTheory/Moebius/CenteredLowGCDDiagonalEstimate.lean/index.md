# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalEstimate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c792bb10372d3333f5f654f2cc5440da9c3de57",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c792bb10372d3333f5f654f2cc5440da9c3de57`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDDivisorSquareMass`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDivisorSquareMass.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalKernelBound`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDPositiveShift`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredLowGCDTargetScale](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/declarations/centeredlowgcdtargetscale--cde338280f12403123bfc60b.md) | 29 | `declaration-track:cde338280f12403123bfc60b8ccf8e9fca1a3eca19b6b0b4c5e473008b241df3` |
| 2 | `theorem` | [abs_diagonalCenteredLowGCDCorrelation_le_target](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/declarations/abs-diagonalcenteredlowgcdcorrelation-le-target--5dcba0e98b382cfe98f32139.md) | 35 | `result-track:5dcba0e98b382cfe98f321398cbaf79a23041e14f128367394c841cc51bc94cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
