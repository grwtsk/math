# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSampling.Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93f49c2e7ac4c1a69ca0412abde2f442aa6c5d2f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93f49c2e7ac4c1a69ca0412abde2f442aa6c5d2f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/declarations/leftsamplesum--b0dff47a2ea053e5b3bf0414.md) | 30 | `declaration-track:b0dff47a2ea053e5b3bf04141f180c914cf0b3c6eff135f4d988f87b45ac4712` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/declarations/unit-sampling-error-identity--a60f6f0c1768cfcd7b61b063.md) | 34 | `result-track:a60f6f0c1768cfcd7b61b0630aecaa4d445c0ad79c782f073e1a36ee416a13d2` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/declarations/abs-unit-sampling-error-le--1d393572fc7f960890199d21.md) | 73 | `result-track:1d393572fc7f960890199d2117008342463c3d28bce958e126523ccb8f832728` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/declarations/integral-eq-sum-unit-intervals--f220b9c778914a48550e9a68.md) | 102 | `result-track:f220b9c778914a48550e9a683793ef6aa7c0cb61b185ea80bfd1824dfe0eca18` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/declarations/abs-leftsamplesum-sub-integral-le--fc2518a9baa4e91833b55b0c.md) | 132 | `result-track:fc2518a9baa4e91833b55b0cf31f40910a01cd210902470be3a223f045d6514f` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/declarations/finitesamplingcheckpoint--518b6d9b3d9664b9375f352d.md) | 167 | `declaration-track:518b6d9b3d9664b9375f352db0d548ee806352811d0e131e01d61cd3a8ae48a8` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/declarations/finite-sampling-checkpoint--b1f1a3c495f80003874be023.md) | 175 | `result-track:b1f1a3c495f80003874be02318f5c3bdf4f323c50e85d8485220da1580a0effb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
