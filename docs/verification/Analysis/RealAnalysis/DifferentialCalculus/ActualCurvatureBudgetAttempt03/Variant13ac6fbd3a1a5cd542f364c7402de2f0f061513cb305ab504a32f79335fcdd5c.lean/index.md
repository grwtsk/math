# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudgetAttempt03.Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be3552e27df9e769a8a8e63fabf16b57412f1143",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be3552e27df9e769a8a8e63fabf16b57412f1143`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSecondAbel` — import line 1; external provider; requires a separately pinned dependency.
- `BridgeLipschitz` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/criticalprimetest-second-deriv--ea95346a3ecf1d361463374e.md) | 21 | `result-track:ea95346a3ecf1d361463374e0475aa4aa47d5068f7371e261b718d8bda903123` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/criticalprimetest-deriv-zero-after--a025b3eaa6351fc79b247ab0.md) | 43 | `result-track:a025b3eaa6351fc79b247ab099c91a0307d285c39b61878a4c4aa2a47c42df32` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/criticalprimetest-second-deriv-zero-after--31419b43c88ee0ba46bc62a8.md) | 51 | `result-track:31419b43c88ee0ba46bc62a8cf20b92a5297be502891ee9f4e2fa8edfad67702` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/criticalprimetest-second-deriv-abs-le--0889bc2bc6645954387a8582.md) | 59 | `result-track:0889bc2bc6645954387a858294ae0d7a452f3bfb512c052ce228a6fd943ef2a6` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--34abf64164d986eaee9e293e.md) | 89 | `result-track:34abf64164d986eaee9e293edbf2cabd2ce1fcc5955af216eb224a232adabe1e` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/mass-ratio-bounds--1fb538b6214feb06af981339.md) | 97 | `result-track:1fb538b6214feb06af9813393d17477132a9a3a3c5787dfefa6666545a34df3a` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/pairedtailcurvature-abs-le--59a8c448aede053f72f4377d.md) | 104 | `result-track:59a8c448aede053f72f4377d0b10d7cb59accd1e386d18674cebab4d536bb8dc` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/curvaturevariation--6c8fcfa6de5007b19b8267f1.md) | 130 | `declaration-track:6c8fcfa6de5007b19b8267f19f0dcd7584784a44b24335823aeee3abebbd2a89` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/curvaturevariation-nonneg--175ad5453b4289bde6f8701f.md) | 132 | `result-track:175ad5453b4289bde6f8701fb591ce95b03ced5f8fb1b3c467694bfe443b3608` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variant13ac6fbd3a1a5cd542f364c7402de2f0f061513cb305ab504a32f79335fcdd5c.lean/declarations/curvaturevariation-le--4d148a603681c4a9ef38bba9.md) | 135 | `result-track:4d148a603681c4a9ef38bba9e5e911bbb48c2ead4d8739f4bc756fb4fbdfb3e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
