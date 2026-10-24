# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarChartCorrection.Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3f9803ec31f6d5fb4e7f370cf56f8a7ba5f9f0d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3f9803ec31f6d5fb4e7f370cf56f8a7ba5f9f0d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_composite_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/hasderivat-composite-second--9996ee9f9d9857b2e8e4ba27.md) | 27 | `result-track:9996ee9f9d9857b2e8e4ba27abf5710bdb94762c26e141265ed0b53488f836fc` |
| 2 | `theorem` | [scalar_hessian_correction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/scalar-hessian-correction--fae36f2856c96e53a10b1f72.md) | 47 | `result-track:fae36f2856c96e53a10b1f72921016e84caf531073ae790d26cfe53770be69b6` |
| 3 | `theorem` | [corrected_hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/corrected-hessian-nonnegative--de8cd896bf2661b70565fa12.md) | 61 | `result-track:de8cd896bf2661b70565fa12dfa94fee68cec70fa9b3917fb4f086b01cd19175` |
| 4 | `def` | [logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/logoneplus--cbbe51281d652abb95dc0e72.md) | 74 | `declaration-track:cbbe51281d652abb95dc0e72b82d6dea0614e409a2835f75b6be41515cd96793` |
| 5 | `theorem` | [hasDerivAt_logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/hasderivat-logoneplus--ae61fad05d0f76a3e2cb02d7.md) | 77 | `result-track:ae61fad05d0f76a3e2cb02d7e3446b7095fbb02bbb8505a9065f3247015f7deb` |
| 6 | `theorem` | [hasDerivAt_logOnePlusSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/hasderivat-logoneplusslope--66a31914b5ac4d04ff033b58.md) | 84 | `result-track:66a31914b5ac4d04ff033b58e3316f987df61a2c6a239418b7089f055f36d731` |
| 7 | `theorem` | [logOnePlus_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/logoneplus-second--0d87573c0ce589ce1519749c.md) | 90 | `result-track:0d87573c0ce589ce1519749c3170f83e60375747d2dcc54eb2c36b43ad5e8ca0` |
| 8 | `theorem` | [hasDerivAt_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/hasderivat-logchart--2121ac3c2a80e11fcda248b9.md) | 99 | `result-track:2121ac3c2a80e11fcda248b94093cb36e8298b5691ab11224382a2eb6b053c25` |
| 9 | `theorem` | [hasDerivAt_logChartSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/hasderivat-logchartslope--27ab6183dee28b476025ce8c.md) | 104 | `result-track:27ab6183dee28b476025ce8c68c9d79e8fc9524cf4938b8e3afb401e52f9e20a` |
| 10 | `def` | [bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/bernoullipotential--57f9fb38accf191f0697eb67.md) | 109 | `declaration-track:57f9fb38accf191f0697eb671a0e6c0a66e2d618e549a2eb81449ba9d7bb2a0e` |
| 11 | `theorem` | [hasDerivAt_bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/hasderivat-bernoullipotential--919c327a68d254e190238cea.md) | 112 | `result-track:919c327a68d254e190238ceaa5df2dad104ec150283eaf8140974814417373df` |
| 12 | `theorem` | [bernoulli_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/bernoulli-logchart--86fde1972dbbe8e6c6f16404.md) | 119 | `result-track:86fde1972dbbe8e6c6f164040144ca440bfac48d560ddc8b3b244e7aec3c27b1` |
| 13 | `theorem` | [bernoulli_chart_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/bernoulli-chart-term--29136fb191b51ef6b9425da1.md) | 124 | `result-track:29136fb191b51ef6b9425da1c676ecdeee0f502e11c43d5c8183d04b1ca16fed` |
| 14 | `theorem` | [bernoulli_corrected_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/bernoulli-corrected-second--43901b1634f50e9d3690ae98.md) | 133 | `result-track:43901b1634f50e9d3690ae9822599f81fa0072572bf5c93146b653e6010286c4` |
| 15 | `theorem` | [bernoulli_sign_separation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a.lean/declarations/bernoulli-sign-separation--d531c44a1ba83f8a947e4733.md) | 143 | `result-track:d531c44a1ba83f8a947e4733338554f0996efe9e93eb15e0c3374c4bb920019b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
