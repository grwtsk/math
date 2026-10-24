# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSamplingBound.Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eee53ebca76f68027e0e5d0b392171226dd8c2b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eee53ebca76f68027e0e5d0b392171226dd8c2b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SamplingTailZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/samplingtailzero--03c9ad7164795694ab4ec6a1.md) | 34 | `declaration-track:03c9ad7164795694ab4ec6a15ebad60577d26c1ac3a5e933661e891a9188482c` |
| 2 | `theorem` | [logSamplingDerivative_continuousOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/logsamplingderivative-continuouson-pos--34450f8a56cd1e7b998ef567.md) | 39 | `result-track:34450f8a56cd1e7b998ef567c6ebf76cdb6fe75083441519b1397385429e5747` |
| 3 | `theorem` | [logSamplingTerm_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/logsamplingterm-intervalintegrable--9fa1d684d89b2c039aa4c9ba.md) | 51 | `result-track:9fa1d684d89b2c039aa4c9ba1d4033629832dc9958608427e15aca204e6c5073` |
| 4 | `theorem` | [logSamplingDerivative_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/logsamplingderivative-intervalintegrable--4ad43128eaef95c3340cab4a.md) | 61 | `result-track:4ad43128eaef95c3340cab4a22b6722c5a0830456ad6f82858a4a2da1b057e4a` |
| 5 | `theorem` | [unit_log_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/unit-log-sampling-error-identity--e6beea61cd9d5a8368d4be93.md) | 71 | `result-track:e6beea61cd9d5a8368d4be932578735055c9ec431159a895052bda12d135e062` |
| 6 | `theorem` | [abs_unit_log_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/abs-unit-log-sampling-error-le--64484a04151c9cdfe172a153.md) | 120 | `result-track:64484a04151c9cdfe172a153ccee13908c8094550c2e60b4ad7da0fa3a9bf467` |
| 7 | `theorem` | [integral_logSampling_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/integral-logsampling-eq-sum-unit-intervals--0b2dff1fd9e33c8d2a45f6de.md) | 160 | `result-track:0b2dff1fd9e33c8d2a45f6de90dc0dfda4e3dca7469732727f18fa6fea77499d` |
| 8 | `theorem` | [finite_log_sampling_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/finite-log-sampling-error--7c6c7ae5a595b7a6c9fd66a0.md) | 199 | `result-track:7c6c7ae5a595b7a6c9fd66a090e3697cd7ce6059582a10fb4d2c935846d06a6b` |
| 9 | `theorem` | [logSamplingDerivative_integrableOn_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/logsamplingderivative-integrableon-ioi-one--6fd5e91aea51553f39e7750c.md) | 269 | `result-track:6fd5e91aea51553f39e7750ce84b5131f8060f62a1043517b9e6cfc32c4d9314` |
| 10 | `theorem` | [finite_log_sampling_error_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/finite-log-sampling-error-global--23ed2e27adc901201f827ed6.md) | 295 | `result-track:23ed2e27adc901201f827ed6aeaa52a63eb5c30f9ca386658a56c4cdf62668fa` |
| 11 | `theorem` | [logSampling_integral_Ioi_eq_shifted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/logsampling-integral-ioi-eq-shifted--d89c97b262547b8e671ac3f1.md) | 333 | `result-track:d89c97b262547b8e671ac3f14b634bf0c6bacdbf0e8fc7365ae0725cb287e939` |
| 12 | `theorem` | [logSampling_integral_Ioi_eq_reflected](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/logsampling-integral-ioi-eq-reflected--063dbd5a57b3e2c23aac56fb.md) | 368 | `result-track:063dbd5a57b3e2c23aac56fb09e2d912f234d47f1ffbeee161949e58b26d4bca` |
| 13 | `theorem` | [abs_logSampling_integral_Ioi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/abs-logsampling-integral-ioi-le--95af44dc7af9f7aacee7beea.md) | 380 | `result-track:95af44dc7af9f7aacee7beeaeec4e58ce683f0b3a266cd8fde5527276dc5add6` |
| 14 | `theorem` | [finite_interval_eq_Ioi_of_tailZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/finite-interval-eq-ioi-of-tailzero--5f95d73f47b0967726c04789.md) | 448 | `result-track:5f95d73f47b0967726c0478967ab8898112c883b812895c5c425f6c79ac9aedc` |
| 15 | `theorem` | [two_moment_sampling_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/two-moment-sampling-bound--0ff7dd5c6607a1fb22f02dbb.md) | 484 | `result-track:0ff7dd5c6607a1fb22f02dbbbdb649a4fddb9f6e6dc678162c07f44406c17eeb` |
| 16 | `theorem` | [exp_neg_log_half_eq_inv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/exp-neg-log-half-eq-inv-sqrt--a75ecec2a9e8035c84b66663.md) | 531 | `result-track:a75ecec2a9e8035c84b6666308725afb336017cd45797b5a40309f5426a52978` |
| 17 | `theorem` | [two_moment_sampling_bound_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/two-moment-sampling-bound-sqrt--5a92be2b47bdf78cc20612a7.md) | 538 | `result-track:5a92be2b47bdf78cc20612a7f153a933a7f7a65f37641dafd74a51e15e5ed7f5` |
| 18 | `def` | [TwoMomentSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/twomomentsamplingcheckpoint--87cdf45fca1d991cad616617.md) | 553 | `declaration-track:87cdf45fca1d991cad6166179f9b78131729080067d9bbac8a8124a6ac1ffdc4` |
| 19 | `theorem` | [two_moment_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantd7b4bbd78e864b7f441bdfa07f15b5d4ffbf9b96ce14c3ec37f5976c1ce40e49.lean/declarations/two-moment-sampling-checkpoint--cb3475c57e46e44bd8a5240d.md) | 565 | `result-track:cb3475c57e46e44bd8a5240d11cf2a2cdf531c059d85bb2846723d651d3793f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
