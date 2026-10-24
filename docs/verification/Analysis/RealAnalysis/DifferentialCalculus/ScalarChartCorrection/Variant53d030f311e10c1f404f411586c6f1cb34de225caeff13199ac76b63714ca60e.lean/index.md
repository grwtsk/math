# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarChartCorrection.Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "837852c22d7e2db1bdac0b9eb79d797cc823879a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `837852c22d7e2db1bdac0b9eb79d797cc823879a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean.json)

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
| 1 | `theorem` | [hasDerivAt_composite_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/hasderivat-composite-second--07b7ecbca7799da7befe70ba.md) | 27 | `result-track:07b7ecbca7799da7befe70ba8ee56ad5adedfc0d5115149e3cd2c9ef06b30de3` |
| 2 | `theorem` | [scalar_hessian_correction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/scalar-hessian-correction--4c014ac679683d725168de78.md) | 48 | `result-track:4c014ac679683d725168de7878381402f292e1cfabccb8761c192dd9e02f5d8d` |
| 3 | `theorem` | [corrected_hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/corrected-hessian-nonnegative--5d7052400b94d64a41c7f12f.md) | 62 | `result-track:5d7052400b94d64a41c7f12fcf93d5c3e7984c2c6106093d108f9dd2daea004d` |
| 4 | `def` | [logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/logoneplus--d300627b601878cca76bcb5d.md) | 75 | `declaration-track:d300627b601878cca76bcb5d09606e291c75503b54c7ae43c80cde62364b4f49` |
| 5 | `theorem` | [hasDerivAt_logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/hasderivat-logoneplus--b7dc05e8ff359a30c3c263aa.md) | 78 | `result-track:b7dc05e8ff359a30c3c263aa32005c3b2e759682e3947c3887316199b5c0e37b` |
| 6 | `theorem` | [hasDerivAt_logOnePlusSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/hasderivat-logoneplusslope--de95d98a8a474466017d69f1.md) | 86 | `result-track:de95d98a8a474466017d69f1391fb2813c29f829a66647a19b4bcfa31d0c42c2` |
| 7 | `theorem` | [logOnePlus_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/logoneplus-second--535be126ab7db4fde15b911d.md) | 93 | `result-track:535be126ab7db4fde15b911dfbca11f69458f1adee283d790ddb3d18b8253069` |
| 8 | `theorem` | [hasDerivAt_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/hasderivat-logchart--1b7de0de91e646c42cf33b2a.md) | 102 | `result-track:1b7de0de91e646c42cf33b2afa23fdf62ef19f5d8054444becb1774f18879be5` |
| 9 | `theorem` | [hasDerivAt_logChartSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/hasderivat-logchartslope--2880171f521652ea961abb8a.md) | 107 | `result-track:2880171f521652ea961abb8a31009ff0d4c4f634add841706faea8059da8bc13` |
| 10 | `def` | [bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/bernoullipotential--8ea678bd875e24d461e9bded.md) | 112 | `declaration-track:8ea678bd875e24d461e9bded327ad9b91cf43ce65218697810c3261655b1669e` |
| 11 | `theorem` | [hasDerivAt_bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/hasderivat-bernoullipotential--aacee8b27827a7a59a4ca03f.md) | 115 | `result-track:aacee8b27827a7a59a4ca03f2dc0bf1f0ea292d75e23ef3d8d836306b51c8157` |
| 12 | `theorem` | [bernoulli_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/bernoulli-logchart--fba0c3f8eb8734688e42565b.md) | 125 | `result-track:fba0c3f8eb8734688e42565b76b5e798445f63fe4a47ae492c151afaa6fad824` |
| 13 | `theorem` | [bernoulli_chart_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/bernoulli-chart-term--a780c6c45c090ddb4c180470.md) | 130 | `result-track:a780c6c45c090ddb4c1804700e74d0c160a0c43b60e01700e784d9f3b5d1d76e` |
| 14 | `theorem` | [bernoulli_corrected_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/bernoulli-corrected-second--fa15edbfc31b8bd96163e29a.md) | 139 | `result-track:fa15edbfc31b8bd96163e29a993f979e25f59cb4e9511c23f275f0399ffc0cd8` |
| 15 | `theorem` | [bernoulli_sign_separation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/declarations/bernoulli-sign-separation--6f1deccdbbf25154fbdbc697.md) | 150 | `result-track:6f1deccdbbf25154fbdbc6972bf1a4ca08410fa1bbd116c74ad5c02b49d225db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
