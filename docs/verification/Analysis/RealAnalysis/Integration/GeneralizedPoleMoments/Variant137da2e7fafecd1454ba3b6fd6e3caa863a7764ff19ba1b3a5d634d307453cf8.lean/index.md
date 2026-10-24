# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GeneralizedPoleMoments.Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96f4b4c71ba91299f9ad589a675405334844f092",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96f4b4c71ba91299f9ad589a675405334844f092`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.JointPhaseScaling` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_moment_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/first-moment-convolution--800886d7ef82d9f5838a71cf.md) | 28 | `result-track:800886d7ef82d9f5838a71cf335663ca0ee8b0b70a384a1c9086ab07823dafdd` |
| 2 | `theorem` | [integral_first_moment_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/integral-first-moment-convolution--ad5e5f42f08ab09d49b938b3.md) | 50 | `result-track:ad5e5f42f08ab09d49b938b3de8c0fede566d70cba31e6dacdbbde6510e195ee` |
| 3 | `theorem` | [weighted_test_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/weighted-test-first-moment-integrable--7d774e766aad871e6f2f28e6.md) | 69 | `result-track:7d774e766aad871e6f2f28e63ddd1dd82cb1ad3db951d12c4ce88dd81450f409` |
| 4 | `theorem` | [generalized_pole_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/generalized-pole-moment-integrable--371e530e4a4c850bb739e2d4.md) | 78 | `result-track:371e530e4a4c850bb739e2d464b0b30e2b908a329c46f467e8bae59e039e6aff` |
| 5 | `theorem` | [generalized_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/generalized-pole-moment-zero--753928a00a6db6405f8e2afc.md) | 87 | `result-track:753928a00a6db6405f8e2afcf97090d9e0daa024723034ac54ad5a278e8c79da` |
| 6 | `theorem` | [positive_generalized_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/positive-generalized-pole-moment-zero--ff9ad7c5fdc783bb0e7f7120.md) | 117 | `result-track:ff9ad7c5fdc783bb0e7f71209e2a408cdfef1a9565dc41e7ad64378051ac9d3c` |
| 7 | `theorem` | [negative_generalized_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/negative-generalized-pole-moment-zero--bfda723cd8b828635471e3c6.md) | 124 | `result-track:bfda723cd8b828635471e3c6ee4e8964cd25967fa2683adab68c5eef7cb72b78` |
| 8 | `theorem` | [ordinary_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/ordinary-pole-moment-zero--966a772a6614093e1bf4f519.md) | 131 | `result-track:966a772a6614093e1bf4f519977beb4016f66c97f8a41b447ed41cfe2ab485cf` |
| 9 | `theorem` | [affine_pole_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/affine-pole-moment-integrable--2c0b6e28e676d40f3794b498.md) | 140 | `result-track:2c0b6e28e676d40f3794b4987a79bf7b44f8bf14e30cdebcbfa64698c62364ba` |
| 10 | `theorem` | [affine_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/affine-pole-moment-zero--7338867b72b2b3e00ac939ea.md) | 149 | `result-track:7338867b72b2b3e00ac939eae5a7d039cd9d8ed63bda1ce0507978bb5aa58f0d` |
| 11 | `theorem` | [generalized_pole_half_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/generalized-pole-half-interval--849e9b25ad372c85c861023e.md) | 168 | `result-track:849e9b25ad372c85c861023e0191982676dfea60dbbeef72271ea7453c3ac3a7` |
| 12 | `theorem` | [positive_generalized_half_moment_abs_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/positive-generalized-half-moment-abs-le-four--0a331e33606ee5caebcd8cf8.md) | 214 | `result-track:0a331e33606ee5caebcd8cf85c3bf0abf03b4e4df2a68a1f21f51e998ff658c1` |
| 13 | `theorem` | [source_bump_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/source-bump-nonneg--5581426df7eb61474665d7b7.md) | 256 | `result-track:5581426df7eb61474665d7b7b677e46529b90a08f2b8a28a73baf0dd209cf11e` |
| 14 | `theorem` | [scaled_bump_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/scaled-bump-nonneg--bdac930b9b92d6be9a1e9dc7.md) | 263 | `result-track:bdac930b9b92d6be9a1e9dc719216ce348cf4ac07deabdccbb791b6e74504dad` |
| 15 | `theorem` | [scaled_bump_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/scaled-bump-continuous--34d95e2e93a6f9b0460b5b53.md) | 267 | `result-track:34d95e2e93a6f9b0460b5b5322c76bb0f5b97dfac165075e83f758495a2be651` |
| 16 | `theorem` | [weighted_bump_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/weighted-bump-eq-indicator--261b8e2c67ca0172fcf592f6.md) | 277 | `result-track:261b8e2c67ca0172fcf592f6c020baf57df41a9a41b39aee4d8b239c2db2f2db` |
| 17 | `theorem` | [weighted_bump_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/weighted-bump-integrable--65fd69feabb942672140c800.md) | 286 | `result-track:65fd69feabb942672140c800eec120842b26432991637219ed8a736031ce524e` |
| 18 | `theorem` | [weighted_bump_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/weighted-bump-integral-pos--f8f224e527f94f1e86eb7656.md) | 294 | `result-track:f8f224e527f94f1e86eb7656380eed718e90d8a1ec745f7fc706af9d1c2bec82` |
| 19 | `def` | [testFirstPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/testfirstprimitive--2b0cfb95c8e8beff05821a3f.md) | 305 | `declaration-track:2b0cfb95c8e8beff05821a3f5d679cc9e243ddc50bfccad3d0a4a5a3c69da62c` |
| 20 | `theorem` | [test_first_primitive_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/test-first-primitive-has-deriv-at--083cfbd57604769e479de656.md) | 309 | `result-track:083cfbd57604769e479de656048ff801c9068046cf8e4dbd15944c3dc7a9b3df` |
| 21 | `theorem` | [weighted_dilation_test_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/weighted-dilation-test-first-moment--f25e5b3c36ba2dc98c1e93ea.md) | 320 | `result-track:f25e5b3c36ba2dc98c1e93ea9306204d509e43e617d2a04d441402e6a25f990d` |
| 22 | `theorem` | [weighted_test_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/weighted-test-first-moment--94feb45e611051fd6ea2b49b.md) | 361 | `result-track:94feb45e611051fd6ea2b49b1813666b55be12169842e550df07f59fee25e2f7` |
| 23 | `theorem` | [weighted_test_first_moment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/weighted-test-first-moment-ne-zero--7b6178148ad2eee6eb14a053.md) | 370 | `result-track:7b6178148ad2eee6eb14a05306bb1b0a650cdbc96e84edf7664b4599c7f4d5d8` |
| 24 | `theorem` | [scaled_bump_has_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/scaled-bump-has-compact-support--9cd33709ff53134f2dcaf759.md) | 381 | `result-track:9cd33709ff53134f2dcaf759619184f7ba2fb50b63e9fda5481058e8f72014ae` |
| 25 | `theorem` | [compact_correlation_eq_integral_cos_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/compact-correlation-eq-integral-cos-source--7b72779e1ca67dfffd767739.md) | 389 | `result-track:7b72779e1ca67dfffd7677396aebbc8e3425487607eb4289268ec6a197edb688` |
| 26 | `theorem` | [fixed_kernel_zero_eq_bump_correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/fixed-kernel-zero-eq-bump-correlation--442fd0e5735d1b2fd4ae13f8.md) | 492 | `result-track:442fd0e5735d1b2fd4ae13f850d8641bc607bef25cf3220ad66d53467d165209` |
| 27 | `theorem` | [fixed_kernel_zero_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/declarations/fixed-kernel-zero-nonneg--251d903de044f547059d902e.md) | 520 | `result-track:251d903de044f547059d902eb57e15d80e557fadfe6e0437162b3a75b6873ef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
