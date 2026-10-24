# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Multivariate.Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d5620e6cc69a57ccaf0142a45cbb8da9bed0cf8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d5620e6cc69a57ccaf0142a45cbb8da9bed0cf8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Fernique` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Measurable` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/stdgaussian--d363c6d5eb66e9c8c7ccefc0.md) | 73 | `declaration-track:d363c6d5eb66e9c8c7ccefc0028a41b03a7bfc0c98567e16f0fd205fd2be5be5` |
| 2 | `instance` | [isProbabilityMeasure_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/isprobabilitymeasure-stdgaussian--02a83f44f65aa303a06b6104.md) | 79 | `declaration-track:02a83f44f65aa303a06b6104b2983d3e384a5690b8bd7c431281bd476d7389eb` |
| 3 | `lemma` | [integral_id_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/integral-id-stdgaussian--c107037a4c3bb59c53a5c4d3.md) | 84 | `result-track:c107037a4c3bb59c53a5c4d31ff6450dc8b43e6475702166c0a744016493071f` |
| 4 | `lemma` | [variance_dual_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/variance-dual-stdgaussian--14e8f40cff9efb6e2709559e.md) | 90 | `result-track:14e8f40cff9efb6e2709559efe156bd2d3cdce077c88bccd3749ce5f9eebcafc` |
| 5 | `lemma` | [charFun_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/charfun-stdgaussian--c7b09064a4dbcc082e6735a9.md) | 102 | `result-track:c7b09064a4dbcc082e6735a98254bc31e8eeacbcf990e72ee629514d39eecad8` |
| 6 | `instance` | [isGaussian_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/isgaussian-stdgaussian--629a213d39854365a75e6eb0.md) | 115 | `declaration-track:629a213d39854365a75e6eb066df884075cd38ce96f60f450a50430e876b8b57` |
| 7 | `lemma` | [integral_strongDual_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/integral-strongdual-stdgaussian--956493aa0aafff509590ee51.md) | 121 | `result-track:956493aa0aafff509590ee51563b436b2dbb51e8fd06239a580aaf581769c43a` |
| 8 | `lemma` | [charFunDual_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/charfundual-stdgaussian--22f4984bca13dc848fd291f8.md) | 124 | `result-track:22f4984bca13dc848fd291f86f0646e3b56bd206f9dc835218e8da1fc5c27f5a` |
| 9 | `lemma` | [covarianceBilin_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/covariancebilin-stdgaussian--ddaa3a7da6bc785a9d414d8b.md) | 128 | `result-track:ddaa3a7da6bc785a9d414d8b0be837b5701f9e1d046d584a26207ebc417d57f3` |
| 10 | `lemma` | [stdGaussian_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/stdgaussian-map--f2081e1cb6caa2cddc2e6da8.md) | 134 | `result-track:f2081e1cb6caa2cddc2e6da8a48b5583a9c8fe38b1e7f590b8b81c79b2fd7009` |
| 11 | `lemma` | [map_pi_eq_stdGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/map-pi-eq-stdgaussian--7f52865947608b2813ad05a5.md) | 143 | `result-track:7f52865947608b2813ad05a53751258eff34dde0a721c2e947b0cff0438fa04b` |
| 12 | `lemma` | [stdGaussian_eq_map_pi_orthonormalBasis](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/stdgaussian-eq-map-pi-orthonormalbasis--01542be42d99f8ef82197467.md) | 152 | `result-track:01542be42d99f8ef82197467b0ef98a755207890063390ba9f81201eb79eca77` |
| 13 | `def` | [multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/multivariategaussian--3e74f07aadf1cec7d2b973d6.md) | 174 | `declaration-track:3e74f07aadf1cec7d2b973d6015f701247a204be75a04b7467280a3e33484c4e` |
| 14 | `lemma` | [multivariateGaussian_of_not_posSemidef](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/multivariategaussian-of-not-possemidef--d069451472db8085a4d277eb.md) | 178 | `result-track:d069451472db8085a4d277eba00cadb4726e378c32496b87a9403da908bc8c97` |
| 15 | `lemma` | [multivariateGaussian_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/multivariategaussian-zero-one--6c6fc42a4edb9da678684a00.md) | 186 | `result-track:6c6fc42a4edb9da678684a0064f547ec3a987f639d83e6c0e6886f093fba081d` |
| 16 | `instance` | [isGaussian_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/isgaussian-multivariategaussian--553dcea0dafaa495b027d647.md) | 192 | `declaration-track:553dcea0dafaa495b027d64795a4c7136034b3e2f343714bd8f7fb1f962fe77b` |
| 17 | `lemma` | [integral_id_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/integral-id-multivariategaussian--a3c9cadb76d6bbe4737b3255.md) | 200 | `result-track:a3c9cadb76d6bbe4737b32556eaf221d4b5d6eac849d7639d967ae0615293c72` |
| 18 | `lemma` | [integral_id_multivariateGaussian'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/integral-id-multivariategaussian--d712edab41cd974747bdfb05.md) | 206 | `result-track:d712edab41cd974747bdfb05f8f0bd8427b808549cc3f808f8e78929baa34a6c` |
| 19 | `lemma` | [covarianceBilin_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/covariancebilin-multivariategaussian--3c20c5fe90a9c6482de223b0.md) | 208 | `result-track:3c20c5fe90a9c6482de223b01a7cd5ef6dc1aeb21c284960bff2bbe82ba98923` |
| 20 | `lemma` | [covariance_eval_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/covariance-eval-multivariategaussian--f0886886d77d97fb53015041.md) | 221 | `result-track:f0886886d77d97fb530150412a865f6f1706b7a55c1f1306f1cfc7ff36f8b31e` |
| 21 | `lemma` | [variance_eval_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/variance-eval-multivariategaussian--728193334f54d3a121e63625.md) | 229 | `result-track:728193334f54d3a121e63625ec9b93f0d30f95c9bdef4f290621f5292bc49c65` |
| 22 | `lemma` | [measurePreserving_eval_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/measurepreserving-eval-multivariategaussian--a08d9052a61b2eaee9e2ab41.md) | 234 | `result-track:a08d9052a61b2eaee9e2ab4131eba5b8ec95c0c1787159dbd6a90398a4f67519` |
| 23 | `lemma` | [charFun_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/charfun-multivariategaussian--eb3de6f1b0247dba4e39a8b4.md) | 244 | `result-track:eb3de6f1b0247dba4e39a8b4e54065f985ca460c4e50ed9ee5826c9b2cf6d531` |
| 24 | `lemma` | [measurePreserving_restrict₂_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/measurepreserving-restrict-multivariategaussian--b2603af23c857cb754545c07.md) | 252 | `result-track:b2603af23c857cb754545c073ce8f3981178ff5ed5f3a31a6e9edce68a6e19e2` |
| 25 | `lemma` | [measurable_multivariateGaussian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/declarations/measurable-multivariategaussian--707cbad475ca1b140021ce6f.md) | 277 | `result-track:707cbad475ca1b140021ce6fb06239e33716ecc8712f2fbd9704bbe19114e51e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
