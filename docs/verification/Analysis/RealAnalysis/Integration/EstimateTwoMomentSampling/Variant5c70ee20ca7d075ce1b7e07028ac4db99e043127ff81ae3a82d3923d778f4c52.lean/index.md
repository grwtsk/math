# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSampling.Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57e6de61f7f89a0aa824faf916fc3b42eb5b83b4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57e6de61f7f89a0aa824faf916fc3b42eb5b83b4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean.json)

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
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/declarations/leftsamplesum--4c5c8774686b9f03117812bd.md) | 29 | `declaration-track:4c5c8774686b9f03117812bdfc01e867102432082046faaef9057dbed74cd864` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/declarations/unit-sampling-error-identity--3dae54e615e6000b9070cf1b.md) | 33 | `result-track:3dae54e615e6000b9070cf1bcbecc83f2a2d27727e7161868999e8de5af70414` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/declarations/abs-unit-sampling-error-le--97ceaf42e5d543824880a6d2.md) | 72 | `result-track:97ceaf42e5d543824880a6d28f968a70befc90975982cb5e4a976426cb21ee20` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/declarations/integral-eq-sum-unit-intervals--c81f0c34c435dce155c775da.md) | 101 | `result-track:c81f0c34c435dce155c775da65d19c7cc587e36931970d9acb3e63d50c847ff4` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/declarations/abs-leftsamplesum-sub-integral-le--6efc648b017ca8a4444c12b3.md) | 130 | `result-track:6efc648b017ca8a4444c12b3bec0a3185d9e2b30427d1367569523335be0723f` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/declarations/finitesamplingcheckpoint--ce22de297b0bdd135051fbf4.md) | 165 | `declaration-track:ce22de297b0bdd135051fbf4e8f344c2696cc10392cce6285569f8249ff9c44b` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean/declarations/finite-sampling-checkpoint--0af03977c84ca363cfabe6ad.md) | 173 | `result-track:0af03977c84ca363cfabe6adc5e4463a40969c45abadbeff1f477d705fdef664` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
