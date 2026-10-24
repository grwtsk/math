# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSamplingBound.Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7175ac6d367bdf6229571e787dd1ced570c40652",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7175ac6d367bdf6229571e787dd1ced570c40652`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean.json)

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
| 1 | `def` | [SamplingTailZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/samplingtailzero--67f7880e01c942aab5567dcd.md) | 37 | `declaration-track:67f7880e01c942aab5567dcd86936eac2ddd1a76b3de4c491ec7e5ab008fdde9` |
| 2 | `theorem` | [logSamplingDerivative_continuousOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/logsamplingderivative-continuouson-pos--008e19a439ce7c7caac72190.md) | 42 | `result-track:008e19a439ce7c7caac721908066d673b1429a673c2b318aa1f7cbc4ca3b0752` |
| 3 | `theorem` | [logSamplingTerm_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/logsamplingterm-intervalintegrable--c85926f35cb7ddd1f9ad0490.md) | 53 | `result-track:c85926f35cb7ddd1f9ad0490ca0f5309deb5909b6cb3a4ad6e844ac8c32a6357` |
| 4 | `theorem` | [logSamplingDerivative_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/logsamplingderivative-intervalintegrable--10e4bf163d69f30fcc75c756.md) | 63 | `result-track:10e4bf163d69f30fcc75c75608a54bfdab319c1704a0539692e7c267274511b4` |
| 5 | `theorem` | [unit_log_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/unit-log-sampling-error-identity--76c51860bc59514230bc7e4a.md) | 73 | `result-track:76c51860bc59514230bc7e4a5c229ff924184c541454e3906c043ec89f978674` |
| 6 | `theorem` | [abs_unit_log_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/abs-unit-log-sampling-error-le--f91244d1ec64d26aaaa7da32.md) | 119 | `result-track:f91244d1ec64d26aaaa7da322fcc16b844c93ba5f469f705d9eacd40890c9854` |
| 7 | `theorem` | [integral_logSampling_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/integral-logsampling-eq-sum-unit-intervals--07397e75a0173635447c2ce4.md) | 158 | `result-track:07397e75a0173635447c2ce4b9c92d5062f11bbcadc437596e2439f2e4dd0aed` |
| 8 | `theorem` | [finite_log_sampling_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/finite-log-sampling-error--32cfbb35f188844501b2a637.md) | 197 | `result-track:32cfbb35f188844501b2a637c1f9dcaf1d73609ce2a32c46f87f0e5021199174` |
| 9 | `theorem` | [logSamplingDerivative_integrableOn_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/logsamplingderivative-integrableon-ioi-one--0e92bd497b16cd877548d290.md) | 263 | `result-track:0e92bd497b16cd877548d290ff9c69a9344b6892f33ae5d814845b13c135dd2b` |
| 10 | `theorem` | [finite_log_sampling_error_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/finite-log-sampling-error-global--e18d17d649f80bfbb8bfb0a5.md) | 289 | `result-track:e18d17d649f80bfbb8bfb0a5e9eda177453a7572dbf23a1a01182bcefe36b8e8` |
| 11 | `theorem` | [logSampling_integral_Ioi_eq_shifted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/logsampling-integral-ioi-eq-shifted--a8825c3609b3a4287739aea4.md) | 327 | `result-track:a8825c3609b3a4287739aea4df4ac6fcfccafb96d2ca86a1cae547f0d16922fb` |
| 12 | `theorem` | [logSampling_integral_Ioi_eq_reflected](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/logsampling-integral-ioi-eq-reflected--0c9986fd1ed558e5bd4b3f04.md) | 362 | `result-track:0c9986fd1ed558e5bd4b3f040d67a17f284f8cfbe673e7e4c1a481a66bcaa418` |
| 13 | `theorem` | [abs_logSampling_integral_Ioi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/abs-logsampling-integral-ioi-le--045e244c58c61f40b860b05b.md) | 374 | `result-track:045e244c58c61f40b860b05b9c93de2c8f3a9119d17afa6bf30cef357a156624` |
| 14 | `theorem` | [finite_interval_eq_Ioi_of_tailZero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/finite-interval-eq-ioi-of-tailzero--c81735ac12e626c55b6d7af3.md) | 443 | `result-track:c81735ac12e626c55b6d7af312fe949a4e73d8a591a746b4a0c3899aac186a57` |
| 15 | `theorem` | [two_moment_sampling_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/two-moment-sampling-bound--300240f06d1e5fdcc3810c4b.md) | 480 | `result-track:300240f06d1e5fdcc3810c4b6d84ebf7fe423b96eb9c0d8030e119e1cf359b16` |
| 16 | `theorem` | [exp_neg_log_half_eq_inv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/exp-neg-log-half-eq-inv-sqrt--154050304aadb78895c06baa.md) | 527 | `result-track:154050304aadb78895c06baaa180ef4f2243f216463cbd3298ebd524449d7ede` |
| 17 | `theorem` | [two_moment_sampling_bound_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/two-moment-sampling-bound-sqrt--488c0d67d3372f4c65346d5d.md) | 534 | `result-track:488c0d67d3372f4c65346d5d1700b05fcfcc7f2e6accc7a67f34134442724a68` |
| 18 | `def` | [TwoMomentSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/twomomentsamplingcheckpoint--5a3a312372fb1476875d545b.md) | 551 | `declaration-track:5a3a312372fb1476875d545bfa2cf12475bcdc001bc16c0b72ce7b82b70ba59d` |
| 19 | `theorem` | [two_moment_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/declarations/two-moment-sampling-checkpoint--89857fcb31ab6feab642d2c8.md) | 563 | `result-track:89857fcb31ab6feab642d2c82dd40c69c67ec1fc34c723baeefef8b8ca76feed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
