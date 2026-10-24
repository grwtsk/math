# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinApproximation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28954213620cd236a2acacca2508c7b83a941833",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28954213620cd236a2acacca2508c7b83a941833`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mellinTailMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/mellintailmajorant--be81d5dfe92aafa6e502b4f5.md) | 26 | `declaration-track:be81d5dfe92aafa6e502b4f55d21e2efc4793899d031f6c599f11169beb8b58d` |
| 2 | `lemma` | [mellinTailMajorant_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/mellintailmajorant-nonneg--291779f771de84af87d2ee69.md) | 28 | `result-track:291779f771de84af87d2ee69b6f1fcfa5a290e73620fd29067746c4fe69c6736` |
| 3 | `theorem` | [truncation_at_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/truncation-at-one--f532f7251a37019c5b530366.md) | 32 | `result-track:f532f7251a37019c5b53036654dcea76d2a61ffdb6edbd8cd7ebab8788560b0b` |
| 4 | `theorem` | [pole_truncation_at_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/pole-truncation-at-one--adb572320a53cd6ae923747f.md) | 35 | `result-track:adb572320a53cd6ae923747f2ea14f4626b4b35aca36871c14e39b956c26a6bb` |
| 5 | `theorem` | [truncation_error_le_uniform](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/truncation-error-le-uniform--812f17e63fccf86f5da32de4.md) | 39 | `result-track:812f17e63fccf86f5da32de4381b258a1e7707e7aef35e47ba34ad5403717173` |
| 6 | `theorem` | [mellinTailMajorant_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/mellintailmajorant-tendsto-zero--ddaf32374f2fac533fb44805.md) | 49 | `result-track:ddaf32374f2fac533fb4480561b7ef73f36dbeabf1637447110fd71aa1ecd0b5` |
| 7 | `theorem` | [poleMellinError_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/polemellinerror-tendsto-zero--9f6b49ed3d188984785772bf.md) | 57 | `result-track:9f6b49ed3d188984785772bffd0b805e02a24cd650edea2d8ac967b9961f3101` |
| 8 | `theorem` | [truncatedPoleModel_error_on_right_rectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/truncatedpolemodel-error-on-right-rectangle--e0bb57aaf25e7d719f7c2ceb.md) | 66 | `result-track:e0bb57aaf25e7d719f7c2ceb9b943a01d1c21a3f954e9744563321ebf43d7bb8` |
| 9 | `theorem` | [truncatedPoleModel_residual_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/truncatedpolemodel-residual-tendsto-zero--5cb818dd51e8a63638155fa6.md) | 92 | `result-track:5cb818dd51e8a63638155fa6ffe4a83c22f35add78b3766f86fc7bc158c1e4ab` |
| 10 | `theorem` | [truncatedPoleModel_uniform_on_right_rectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/declarations/truncatedpolemodel-uniform-on-right-rectangle--503845ab0334d7361471e823.md) | 102 | `result-track:503845ab0334d7361471e823eddbcc4b18af4c478cf029f72e7930c8a88f7caf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
