# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt02.Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d40b1202f9be237e0584f9acc8776bf9b88f3c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d40b1202f9be237e0584f9acc8776bf9b88f3c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/declarations/regularnegativelogderivative--834086cf8eb96868b2681c40.md) | 19 | `declaration-track:834086cf8eb96868b2681c40a1987dc99dcc9f520b3dda95a54452875a96a5b5` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/declarations/actual-regular-zeta-derivative--4d109a3446ee0c9ebcab68d9.md) | 22 | `result-track:4d109a3446ee0c9ebcab68d909fe38c1b555743915e2e64c3e3c80ceb4e7c693` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/declarations/actual-regular-zeta-second-derivative-at-one--4ca98bb028cf4d92926bb59e.md) | 28 | `result-track:4ca98bb028cf4d92926bb59e92b53f9f8992448adfb637eba6fef5fd026a852a` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/declarations/actual-regular-negative-value--ed07e52fd3961875f37d36d1.md) | 41 | `result-track:ed07e52fd3961875f37d36d1888996ff86dc030a7b7af62ac41bd2c9e34cc294` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/declarations/actual-regular-negative-derivative--38dc3b5e330ebbfc258ea7f7.md) | 45 | `result-track:38dc3b5e330ebbfc258ea7f7046f120fb1170ae5a1ee1eeaea7b87cdde4b11d3` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/declarations/actual-regular-negative-slope--dbb6fdd640e6a7adaec51bcf.md) | 55 | `result-track:dbb6fdd640e6a7adaec51bcf4577f131e1caa673fe646691d09664a457257450` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantfd2d19712c3a1ebd90bccf98ac30bd0de601076c60f5144e20787d69ef55bb3c.lean/declarations/actual-negative-log-regularization--fd2cf3870fad075973dff38e.md) | 63 | `result-track:fd2cf3870fad075973dff38e3064169d19bc99cc23179b4371d460f67d53ff13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
