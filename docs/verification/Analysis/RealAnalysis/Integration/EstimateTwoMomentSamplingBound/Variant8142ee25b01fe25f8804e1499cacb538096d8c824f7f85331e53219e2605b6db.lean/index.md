# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSamplingBound.Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "077045859d21a5db0987247d29004a7e6334c399",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `077045859d21a5db0987247d29004a7e6334c399`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SamplingTailZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/samplingtailzero--68be650b6c4c277a727410aa.md) | 42 | `declaration-track:68be650b6c4c277a727410aa543ee9a100e883f27a1a4f4e6fd8e65f870b52ae` |
| 2 | `theorem` | [logSamplingDerivative_continuousOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/logsamplingderivative-continuouson-pos--5715e01d6053a372b08c109a.md) | 47 | `result-track:5715e01d6053a372b08c109a9f13d85cd6c97bc3c3f8de8173bd095ff7d0d461` |
| 3 | `theorem` | [logSamplingTerm_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/logsamplingterm-intervalintegrable--54d8e502fb0fd109e13f365d.md) | 59 | `result-track:54d8e502fb0fd109e13f365d986a46c3654da57f39aa65f02d15c4b6788d58ee` |
| 4 | `theorem` | [logSamplingDerivative_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/logsamplingderivative-intervalintegrable--cc4eda69d8003a165fb880c6.md) | 69 | `result-track:cc4eda69d8003a165fb880c661decb8ab4cadb1f51645e8c39976947599bd0a5` |
| 5 | `theorem` | [unit_log_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/unit-log-sampling-error-identity--bb218a3e9c446576451aa4cc.md) | 79 | `result-track:bb218a3e9c446576451aa4cc5832bff29464ff9e4b09f5af5f0b6fa027f5cd8a` |
| 6 | `theorem` | [abs_unit_log_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/abs-unit-log-sampling-error-le--18fc075ac2e6281cc4622cea.md) | 128 | `result-track:18fc075ac2e6281cc4622ceaba44c7dc79a9b1c3d2ac9ee09db3578207923aea` |
| 7 | `theorem` | [integral_logSampling_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/integral-logsampling-eq-sum-unit-intervals--c3534e24044d0cf45a5b00f5.md) | 168 | `result-track:c3534e24044d0cf45a5b00f530448579fe6bed4dd95d9ba8a071880a65987790` |
| 8 | `theorem` | [finite_log_sampling_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/finite-log-sampling-error--97e361f5c3d44fe9b3f9d7c1.md) | 207 | `result-track:97e361f5c3d44fe9b3f9d7c14feeb1f1ea311c1698db6704a50dfcf4da51f456` |
| 9 | `theorem` | [logSamplingDerivative_integrableOn_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/logsamplingderivative-integrableon-ioi-one--5046fa6f4f4a5687efa27c20.md) | 277 | `result-track:5046fa6f4f4a5687efa27c207850a42b0570f3a9671953b3ead2cdeee9d1c536` |
| 10 | `theorem` | [finite_log_sampling_error_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/finite-log-sampling-error-global--e13cf36d481d24f342db7ab2.md) | 303 | `result-track:e13cf36d481d24f342db7ab282cc9d24b8b382e423659c89adcc527c2aa6ae74` |
| 11 | `theorem` | [logSampling_integral_Ioi_eq_shifted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/logsampling-integral-ioi-eq-shifted--1557f793f84679a44982ba92.md) | 341 | `result-track:1557f793f84679a44982ba9221e68bf026f8a3082925f9cea7936401fd2d5fca` |
| 12 | `theorem` | [logSampling_integral_Ioi_eq_reflected](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/logsampling-integral-ioi-eq-reflected--25c1f6201d763ede737a7f57.md) | 376 | `result-track:25c1f6201d763ede737a7f5744468a8fd8c6a51603065928d1cd5037952d0bf9` |
| 13 | `theorem` | [abs_logSampling_integral_Ioi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/abs-logsampling-integral-ioi-le--e44df3ce66950bafe0feaefc.md) | 388 | `result-track:e44df3ce66950bafe0feaefc0a720ed92a58caebdf50937a5fba9fdced7f3d63` |
| 14 | `theorem` | [finite_interval_eq_Ioi_of_tailZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/finite-interval-eq-ioi-of-tailzero--b89de7d9f6a1ce07a2ae2da7.md) | 456 | `result-track:b89de7d9f6a1ce07a2ae2da7d129f9ebb5644c649f38a2033bb847d7b87afc37` |
| 15 | `theorem` | [two_moment_sampling_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/two-moment-sampling-bound--404cf63a9b2d82483f2b6ef4.md) | 492 | `result-track:404cf63a9b2d82483f2b6ef48bdac54f0deaab5d257481fa1bb78b73d5c22a74` |
| 16 | `theorem` | [exp_neg_log_half_eq_inv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/exp-neg-log-half-eq-inv-sqrt--d2d3571084bc364a6455f17e.md) | 539 | `result-track:d2d3571084bc364a6455f17ead1882b6ba100048f29b961f872f135ccd306f7e` |
| 17 | `theorem` | [two_moment_sampling_bound_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/two-moment-sampling-bound-sqrt--d1d4743005fe07087d2d5433.md) | 546 | `result-track:d1d4743005fe07087d2d54331be39555cd84210fae46fb7236611340f5ef4c9e` |
| 18 | `def` | [TwoMomentSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/twomomentsamplingcheckpoint--48db0b5b6e0e574966b3b9fc.md) | 561 | `declaration-track:48db0b5b6e0e574966b3b9fc3e5524feb5a888ae6f8ee4ddab903db5880b343e` |
| 19 | `theorem` | [two_moment_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/declarations/two-moment-sampling-checkpoint--f84268b1c12c8a58e46170c1.md) | 573 | `result-track:f84268b1c12c8a58e46170c15e1e0ac7b517ad0c71432d1904c592621d54f304` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
