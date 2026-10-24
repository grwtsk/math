# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarChartCorrection.Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb040af9eb0387ae07b6d0081250802b6c46fe8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb040af9eb0387ae07b6d0081250802b6c46fe8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean.json)

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
| 1 | `theorem` | [hasDerivAt_composite_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/hasderivat-composite-second--c2a9acd768d81095e5db9fd3.md) | 27 | `result-track:c2a9acd768d81095e5db9fd3e734729de223a2d4a95a435bfb42798d1c53e895` |
| 2 | `theorem` | [scalar_hessian_correction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/scalar-hessian-correction--247b450f70317232f55abca5.md) | 48 | `result-track:247b450f70317232f55abca53ebcb0dc1e3de9b831632bc9ed44c076a4061d87` |
| 3 | `theorem` | [corrected_hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/corrected-hessian-nonnegative--f4f311ec26815c3a753e3ae9.md) | 62 | `result-track:f4f311ec26815c3a753e3ae9ef2929033c219d91578eb3819a66fbfdd42040f3` |
| 4 | `def` | [logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/logoneplus--ad8c410c1c85e7fd0a87e2e8.md) | 75 | `declaration-track:ad8c410c1c85e7fd0a87e2e891fbf83f18a087c63076129c3fae80d14c092ddc` |
| 5 | `theorem` | [hasDerivAt_logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/hasderivat-logoneplus--8c1faa9c9993397f40dbd4c4.md) | 78 | `result-track:8c1faa9c9993397f40dbd4c44030036a3eddde694bb768ab6f3e92fdaea3ad7f` |
| 6 | `theorem` | [hasDerivAt_logOnePlusSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/hasderivat-logoneplusslope--722eca21ee893e215f210013.md) | 86 | `result-track:722eca21ee893e215f210013bc84692e18fdd0001fe4c556a13bfe3b84d0f604` |
| 7 | `theorem` | [logOnePlus_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/logoneplus-second--0b1a4a1387b70a4d7494b7dd.md) | 93 | `result-track:0b1a4a1387b70a4d7494b7ddcdae68d543633c22c5f0a9b686fb8efd8e28cfbb` |
| 8 | `theorem` | [hasDerivAt_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/hasderivat-logchart--5de08bad8ec05a75c7e1b1f9.md) | 102 | `result-track:5de08bad8ec05a75c7e1b1f9fe1481ab0c9fdd6fbc529142ccb97d462639fd9f` |
| 9 | `theorem` | [hasDerivAt_logChartSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/hasderivat-logchartslope--e10798a9d12ffb008e057779.md) | 107 | `result-track:e10798a9d12ffb008e057779ac66dcd394b86a0f046d33b184d32d085bb152b2` |
| 10 | `def` | [bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/bernoullipotential--d520d7a92408d9bd83eed3aa.md) | 112 | `declaration-track:d520d7a92408d9bd83eed3aac0a29faf434581e0b587eecec7045f18d4c21e66` |
| 11 | `theorem` | [hasDerivAt_bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/hasderivat-bernoullipotential--08923d483b2e7d745816cb23.md) | 115 | `result-track:08923d483b2e7d745816cb2304475a8cce48cedeb0c25a078074377be5b9a720` |
| 12 | `theorem` | [bernoulli_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/bernoulli-logchart--a1b34d49ae8031ae50c5ed12.md) | 125 | `result-track:a1b34d49ae8031ae50c5ed12d3e43dd3af799a9ec9fc0ece39da297e8c01b584` |
| 13 | `theorem` | [bernoulli_chart_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/bernoulli-chart-term--8e71eb1f0a278a15af3b4e0e.md) | 130 | `result-track:8e71eb1f0a278a15af3b4e0ec83bc3996a410b9a5c93860403e89c736ecde65c` |
| 14 | `theorem` | [bernoulli_corrected_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/bernoulli-corrected-second--39998016ba2440e554ac7085.md) | 139 | `result-track:39998016ba2440e554ac70859bb24f4b86d03aa71f2fa256a7ae90e197832a7d` |
| 15 | `theorem` | [bernoulli_sign_separation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/declarations/bernoulli-sign-separation--3a16f8e8b2bc0a8873bf05e6.md) | 150 | `result-track:3a16f8e8b2bc0a8873bf05e636d750107d2721d6e52795704b73daedbfea1148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
