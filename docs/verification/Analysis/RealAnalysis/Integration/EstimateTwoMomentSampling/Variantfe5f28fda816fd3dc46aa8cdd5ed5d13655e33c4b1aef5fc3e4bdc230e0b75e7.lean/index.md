# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSampling.Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26f94a975b91c8060b3036e8eb3bb5f84955edb2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26f94a975b91c8060b3036e8eb3bb5f84955edb2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/declarations/leftsamplesum--f85bd197c0ede905d780848f.md) | 37 | `declaration-track:f85bd197c0ede905d780848fa7d7af582a0dd6503c95165c176b0cfe77a6c30f` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/declarations/unit-sampling-error-identity--9670855c4ba25349804a1bd6.md) | 41 | `result-track:9670855c4ba25349804a1bd64cc85f657eb1599126ed82118e3ac11bd267d44a` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/declarations/abs-unit-sampling-error-le--dd7c332d415540b4b8425f0e.md) | 80 | `result-track:dd7c332d415540b4b8425f0e3d7d6904466b8fd3bd7654ce0839b108626f0b59` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/declarations/integral-eq-sum-unit-intervals--67443a62b578778bd4857801.md) | 109 | `result-track:67443a62b578778bd485780149ebff7a49a9e8b094c21a7de7e877280bf6247b` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/declarations/abs-leftsamplesum-sub-integral-le--1445234364a1eb44e6b63b21.md) | 138 | `result-track:1445234364a1eb44e6b63b21aaefd904607d474ab6f0c0a70f9e50254540cf68` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/declarations/finitesamplingcheckpoint--b11df28ea56aad03e5ea6f3d.md) | 173 | `declaration-track:b11df28ea56aad03e5ea6f3d0c00564b3b15606f55b8b1bbc8b98d4b5323b7f2` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/declarations/finite-sampling-checkpoint--6db4478cab49cae692fab487.md) | 181 | `result-track:6db4478cab49cae692fab487b6bfc2fb2441a0da1f504df0d12819777bb05430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
