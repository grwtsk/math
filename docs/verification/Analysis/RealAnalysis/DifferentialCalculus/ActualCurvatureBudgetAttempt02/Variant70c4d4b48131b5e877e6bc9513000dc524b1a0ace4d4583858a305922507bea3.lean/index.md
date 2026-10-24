# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudgetAttempt02.Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5ff8f13d5403255b563a1201e7ff5ec635f88b3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5ff8f13d5403255b563a1201e7ff5ec635f88b3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean.json)

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
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/criticalprimetest-second-deriv--99663568a7fed2d3c659671c.md) | 21 | `result-track:99663568a7fed2d3c659671cf65f85b828f047ad2c6d925c16f064dced0405da` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/criticalprimetest-deriv-zero-after--7d0b55b7ce9190578a161c38.md) | 43 | `result-track:7d0b55b7ce9190578a161c38e9c9c4a26524a6a509d834074d4b826ae7395930` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/criticalprimetest-second-deriv-zero-after--42fd85fbcdfe086cc6ea03a8.md) | 51 | `result-track:42fd85fbcdfe086cc6ea03a8fd245c05ae43abd797907bb2dd13d5f023356347` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/criticalprimetest-second-deriv-abs-le--f2e6476fb8d898cfc1d0320c.md) | 59 | `result-track:f2e6476fb8d898cfc1d0320cba7d1573c3c23d42931d823d4ca99338e16124b9` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--28081b3bef49908072c768f1.md) | 89 | `result-track:28081b3bef49908072c768f190e9db4e62d4fddeadbe1b013f3abeac9e25d186` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/mass-ratio-bounds--0d82d8840bb79d6607e3186b.md) | 97 | `result-track:0d82d8840bb79d6607e3186bc01f8bbaf6bf9154851f0a2af60d717a83e295ea` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/pairedtailcurvature-abs-le--fe1c04e42069153760936e9d.md) | 104 | `result-track:fe1c04e42069153760936e9d07ddb566a50b78e93b8f7570780edf406b166a23` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/curvaturevariation--657557978642dd651d4e09d2.md) | 130 | `declaration-track:657557978642dd651d4e09d21849df5c2031c49853056ab7a26c82a4843fdb3c` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/curvaturevariation-nonneg--348d749a753060ff17840ede.md) | 132 | `result-track:348d749a753060ff17840edea78a258e585612507c535cd21eb1f9eb85421c52` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3.lean/declarations/curvaturevariation-le--266f9d7f565df620039be26b.md) | 135 | `result-track:266f9d7f565df620039be26b71492d6419d4cb72fc42da2c76ea2756d039d087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
