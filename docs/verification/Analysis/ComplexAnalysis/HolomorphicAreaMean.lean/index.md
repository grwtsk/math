# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaMean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6db10c5e3ed380aec8646252e3d6c855f420b61",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6db10c5e3ed380aec8646252e3d6c855f420b61`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaMean.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircle.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polarPoint_eq_circleMap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/polarpoint-eq-circlemap--20d0d4bc0b6efc2e9110e567.md) | 30 | `result-track:20d0d4bc0b6efc2e9110e5673ecb53402564b5fc6acfe667d695012f61c19ff3` |
| 2 | `theorem` | [integral_closedBall_zero_polar](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/integral-closedball-zero-polar--642ed4853e86f9ea2d649278.md) | 36 | `result-track:642ed4853e86f9ea2d649278a3212ba4f957880f9083f9f7de8378cf35aa7006` |
| 3 | `theorem` | [angularIntegral_eq_circleAverage](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/angularintegral-eq-circleaverage--4103be73fcebd4b687912196.md) | 74 | `result-track:4103be73fcebd4b6879121967cc2c6c083ef1223695d89f0569964d8def27583` |
| 4 | `theorem` | [polarIntegrable](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/polarintegrable--4745e7df1f3292b91af76bf8.md) | 91 | `result-track:4745e7df1f3292b91af76bf89a31245622d7ac30893b7ef0d163c6711f5d3feb` |
| 5 | `theorem` | [integral_closedBall_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/integral-closedball-zero--37ea6f47655c692272e89b85.md) | 110 | `result-track:37ea6f47655c692272e89b85a4693dfa2158fb33df2b6ce370a214287510d999` |
| 6 | `theorem` | [integral_closedBall_translate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/integral-closedball-translate--b7f5316691aa19a398aee343.md) | 138 | `result-track:b7f5316691aa19a398aee343eb32ee88b0cb93d4eb853b5cd6f62e3759325305` |
| 7 | `theorem` | [integral_closedBall](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/integral-closedball--52d4ac189d8f871f4eef9340.md) | 152 | `result-track:52d4ac189d8f871f4eef93407e9918c4e5301d2a3ce8b32edfd141ab31e7248b` |
| 8 | `theorem` | [square_integrable](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/square-integrable--a0fb41a9c7592e70e92851ad.md) | 162 | `result-track:a0fb41a9c7592e70e92851ad419e04cf96523fe6015270de5c7700806a765eec` |
| 9 | `theorem` | [norm_sq_le_areaIntegral](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/norm-sq-le-areaintegral--2dbdf2bdef61c0b268c3f321.md) | 170 | `result-track:2dbdf2bdef61c0b268c3f321f50465e07e50d20c5aed8b10cc2f5a0c75a6e4ec` |
| 10 | `theorem` | [norm_sq_le_normalized_areaIntegral](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/norm-sq-le-normalized-areaintegral--7b96a8dfc9419eafc4b650e3.md) | 183 | `result-track:7b96a8dfc9419eafc4b650e3d8c230c8bdb59f4b9a46d39c4dbc4704f2b434dd` |
| 11 | `theorem` | [window_section_area_bound](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/window-section-area-bound--e6d75165c72a398b7f5694ed.md) | 191 | `result-track:e6d75165c72a398b7f5694ed450c3c6eb3d8d4ab85619fa6a9b87083a881e95f` |
| 12 | `theorem` | [window_bundleSection_area_bound](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/window-bundlesection-area-bound--9346ded4a41c06a4ad759c1b.md) | 200 | `result-track:9346ded4a41c06a4ad759c1bebd6e3f575cc1afa536dc754f7b91b8d45fd5e04` |
| 13 | `theorem` | [imaginary_constant_mean](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/imaginary-constant-mean--e1f5471bb733ff03d0a36306.md) | 210 | `result-track:e1f5471bb733ff03d0a363066cbae973961e91847c57d18005cec95ee073cb13` |
| 14 | `theorem` | [coordinate_square_mean_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/coordinate-square-mean-zero--cdd431be558c12a9c488d29e.md) | 215 | `result-track:cdd431be558c12a9c488d29ee841f89459a1db07db9301fa13b5e9de8bdea150` |
| 15 | `theorem` | [complex_square_ne_norm_square](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/complex-square-ne-norm-square--9b1834081ac593f259ef2562.md) | 221 | `result-track:9b1834081ac593f259ef2562413861aec1888877dc730689844c1b7e81323232` |
| 16 | `theorem` | [zero_radius_not_normalized](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/declarations/zero-radius-not-normalized--13814bb22516bb655b32599d.md) | 225 | `result-track:13814bb22516bb655b32599d656dd314f3114d7ad20b897c83279134dab593de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
