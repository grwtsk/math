# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarChartCorrection.Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c12b65f2e79a0e15298b9a731e139d3edd564d66",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c12b65f2e79a0e15298b9a731e139d3edd564d66`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_composite_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/hasderivat-composite-second--6161c6a6ade9ab7d6d425139.md) | 35 | `result-track:6161c6a6ade9ab7d6d4251396355f41d487eabd7a8340151615228635fcad4e9` |
| 2 | `theorem` | [scalar_hessian_correction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/scalar-hessian-correction--0a6b9b12d0e860787eebf32b.md) | 56 | `result-track:0a6b9b12d0e860787eebf32b1b06e70bcaf158a3cacc8c3048a32ccb39368e8c` |
| 3 | `theorem` | [corrected_hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/corrected-hessian-nonnegative--28e7b539a885ebc6aef5e864.md) | 70 | `result-track:28e7b539a885ebc6aef5e864f976fadf7496b0de3174a90577cbe63b436e3d80` |
| 4 | `def` | [logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/logoneplus--6e0da2034fecc8bc1ce76505.md) | 83 | `declaration-track:6e0da2034fecc8bc1ce765052d8997c6f2e40faa554bb97e40dfef0cd7c09571` |
| 5 | `theorem` | [hasDerivAt_logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/hasderivat-logoneplus--a0adbc5baeae4c5aba8e49db.md) | 86 | `result-track:a0adbc5baeae4c5aba8e49db57718016ab40a09bd8f0d16abc6e58cc23328a00` |
| 6 | `theorem` | [hasDerivAt_logOnePlusSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/hasderivat-logoneplusslope--d96ccf819f95230f67089177.md) | 94 | `result-track:d96ccf819f95230f67089177739610f3b46fdf449742c8640e83f77b800e6552` |
| 7 | `theorem` | [logOnePlus_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/logoneplus-second--68f2d019f8ad96ab13038a6d.md) | 101 | `result-track:68f2d019f8ad96ab13038a6da24f684e0e988841c07da9cccdc3581a44798ed2` |
| 8 | `theorem` | [hasDerivAt_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/hasderivat-logchart--8378049526a227e5b3742153.md) | 110 | `result-track:8378049526a227e5b37421534291d78eed3c60f644194c85a42ceea755fd83c6` |
| 9 | `theorem` | [hasDerivAt_logChartSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/hasderivat-logchartslope--3a6898aad9c6e407c27518d4.md) | 115 | `result-track:3a6898aad9c6e407c27518d473c5e329db2c0f5881e5ca26ada0ff5195b44fe7` |
| 10 | `def` | [bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/bernoullipotential--7cead10bdc9f4c99248cbfba.md) | 120 | `declaration-track:7cead10bdc9f4c99248cbfba44b13f62d8546779f8a5050e5c284968972ede95` |
| 11 | `theorem` | [hasDerivAt_bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/hasderivat-bernoullipotential--5e598da6f924d32cb17e8d39.md) | 123 | `result-track:5e598da6f924d32cb17e8d39c9661e9bbf85dddeaf65b7e3dca917962a000f2c` |
| 12 | `theorem` | [bernoulli_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/bernoulli-logchart--5237fc631cf270a12cd8c449.md) | 133 | `result-track:5237fc631cf270a12cd8c449af82ddd66b86caed43912ecd1f77e7c73378d7f9` |
| 13 | `theorem` | [bernoulli_chart_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/bernoulli-chart-term--3edefdb0900005e15cb66e4e.md) | 138 | `result-track:3edefdb0900005e15cb66e4eb7756241e63da07a22af78b1789d479e1eb65496` |
| 14 | `theorem` | [bernoulli_corrected_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/bernoulli-corrected-second--7f6bcd44b58e54c417e9559b.md) | 147 | `result-track:7f6bcd44b58e54c417e9559bad074ce0404cfcd214e87d38057aba3eaa8f55b2` |
| 15 | `theorem` | [bernoulli_sign_separation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant223002c5b151f1561bc28f2c631dcb4c0633214c193212ef2195bb3e1224a81e.lean/declarations/bernoulli-sign-separation--69697e39fa8b8eca9d610082.md) | 158 | `result-track:69697e39fa8b8eca9d61008214d57a925e35a0ecc3008a7245ec92961fe3c645` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
