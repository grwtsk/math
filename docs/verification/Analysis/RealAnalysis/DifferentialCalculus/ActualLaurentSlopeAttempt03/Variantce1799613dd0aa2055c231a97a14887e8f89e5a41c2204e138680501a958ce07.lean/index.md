# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt03.Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c42676d1c39d37d1f790274a784a932e459490f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c42676d1c39d37d1f790274a784a932e459490f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean.json)

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
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/declarations/regularnegativelogderivative--b940caf7a79b40ed1ffd6e1a.md) | 19 | `declaration-track:b940caf7a79b40ed1ffd6e1a3638acf0fce130fb27a88d09a5b33af9ab7c34a5` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/declarations/actual-regular-zeta-derivative--262293fe2c421e9c4eecebd9.md) | 22 | `result-track:262293fe2c421e9c4eecebd9a567e50476bf025de4738317d59d63184697bab9` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/declarations/actual-regular-zeta-second-derivative-at-one--f5173d647be99b88c13d2038.md) | 28 | `result-track:f5173d647be99b88c13d203836fd332bd18ef5ec6b6d6cc5328e354b0c741684` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/declarations/actual-regular-negative-value--2b8c7828f13e03d11d981cfb.md) | 41 | `result-track:2b8c7828f13e03d11d981cfbc3b29c108aaaa1abc8c203d9d19e8f146f1dfc31` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/declarations/actual-regular-negative-derivative--f85a6f4b84844220fef877f8.md) | 45 | `result-track:f85a6f4b84844220fef877f8ab7c7be81c80a060ef276c26ed7c03196c48ada2` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/declarations/actual-regular-negative-slope--d8093019e2931afd585d6454.md) | 52 | `result-track:d8093019e2931afd585d6454e20f3f6ca45242203f4aa979fb3a0e9a0cd60af7` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variantce1799613dd0aa2055c231a97a14887e8f89e5a41c2204e138680501a958ce07.lean/declarations/actual-negative-log-regularization--b2909fadd1c51b9b7c20fa53.md) | 60 | `result-track:b2909fadd1c51b9b7c20fa539d8feeff13c0e23cba3756bca7980f364bc503db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
