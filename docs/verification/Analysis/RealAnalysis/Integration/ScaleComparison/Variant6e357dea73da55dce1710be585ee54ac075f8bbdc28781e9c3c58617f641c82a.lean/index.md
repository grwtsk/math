# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ScaleComparison.Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f16a4d7b8718bd1035ee13e143e263c3809508b5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f16a4d7b8718bd1035ee13e143e263c3809508b5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleComparisonCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/scalecomparisoncoefficient--ef13cc9ed9cc69e2699cba08.md) | 22 | `declaration-track:ef13cc9ed9cc69e2699cba08305be6ef10775d5caf7dcf799c25cb0e933cf6f6` |
| 2 | `theorem` | [scaleComparisonCoefficient_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/scalecomparisoncoefficient-nonneg--23cc9163dd577ed934685e8b.md) | 26 | `result-track:23cc9163dd577ed934685e8bbc538bff890dc0e156dc8bf920024629abdb2d8a` |
| 3 | `def` | [sqrtWeightedRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/sqrtweightedremainder--2ab21630a9fd30654d742705.md) | 33 | `declaration-track:2ab21630a9fd30654d74270590c1f9827e535ff0327acb1d8b7736d593274591` |
| 4 | `theorem` | [sqrtWeightedRemainder_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/sqrtweightedremainder-hasderivat--6aa2280f0752a28a8fbc8030.md) | 37 | `result-track:6aa2280f0752a28a8fbc8030ef3d8f5ae3d084452595e3b3c8a840bf2beebcae` |
| 5 | `theorem` | [sqrtWeightedRemainder_derivative_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/sqrtweightedremainder-derivative-abs-le--2d59a0f9289b0b1659e3b317.md) | 51 | `result-track:2d59a0f9289b0b1659e3b3174d4087a0d24611f128f915f268665440d363857b` |
| 6 | `theorem` | [sqrtWeightedRemainder_derivative_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/sqrtweightedremainder-derivative-intervalintegrable--6fcbd18c4445e865e5a093f9.md) | 63 | `result-track:6fcbd18c4445e865e5a093f9a9edc569086280de324c345513cb9e11c4642bf3` |
| 7 | `theorem` | [sqrtWeightedRemainder_integral_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/sqrtweightedremainder-integral-derivative--8355b991103fc2a18fd7d2e9.md) | 79 | `result-track:8355b991103fc2a18fd7d2e9416d5a9e1138142d311081f362b9e38bc4036648` |
| 8 | `theorem` | [sqrtWeightedRemainder_abs_sub_le_log_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/sqrtweightedremainder-abs-sub-le-log-ratio--369f2d6c33999ab7929f35ac.md) | 90 | `result-track:369f2d6c33999ab7929f35ac0c57dc5376b3e0e7033437bbc22e707c3c12e517` |
| 9 | `theorem` | [real_remainder_scale_comparison](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/real-remainder-scale-comparison--5fdf2360ba48f2a547d0d027.md) | 117 | `result-track:5fdf2360ba48f2a547d0d02700281f47d7fa9df84e7944b6446019bbcac9d38c` |
| 10 | `theorem` | [theta_remainder_scale_comparison](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/theta-remainder-scale-comparison--bb39029031b92c858e16911c.md) | 136 | `result-track:bb39029031b92c858e16911c6adbaef5919c74ae19d6d597ff6c37a3d46d703d` |
| 11 | `theorem` | [theta_remainder_two_difference_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/declarations/theta-remainder-two-difference-abs-le--d79aba6d87952d40c62c5ab4.md) | 149 | `result-track:d79aba6d87952d40c62c5ab44f4163cc97ab3b2ae5cebabe7dbbd8f215e520e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
