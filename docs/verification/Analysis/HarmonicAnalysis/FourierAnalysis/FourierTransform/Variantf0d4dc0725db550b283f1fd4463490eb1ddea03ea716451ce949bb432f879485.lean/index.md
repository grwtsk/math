# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierTransform.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f84227ed144f01ce3088d6b35bb148e136ec7311",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f84227ed144f01ce3088d6b35bb148e136ec7311`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verticalIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/verticalintegral--b5f26cd782fc164e71df5a5a.md) | 45 | `declaration-track:b5f26cd782fc164e71df5a5a098be54bbe61599f9ae42ea3e270217d60ccf92a` |
| 2 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--4cc8218482a5d679e08c041e.md) | 50 | `result-track:4cc8218482a5d679e08c041ef9244ed92bce4382ef1f2f83fc78e8720ff85cb4` |
| 3 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--3af0de67803d7b33ab1c9b33.md) | 56 | `result-track:3af0de67803d7b33ab1c9b33a21629bcdb8257018a3812dd16841a1a5e32fa6b` |
| 4 | `theorem` | [verticalIntegral_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/verticalintegral-norm-le--77cdef338383d2183b339cd8.md) | 65 | `result-track:77cdef338383d2183b339cd8b33be41911a4d332ad69665f9f91a6a71ad0125c` |
| 5 | `theorem` | [tendsto_verticalIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/tendsto-verticalintegral--61370edf24d1d9c6db2043a2.md) | 108 | `result-track:61370edf24d1d9c6db2043a2caff49666ed5b4f878c950c428044960c62e0132` |
| 6 | `theorem` | [integrable_cexp_neg_mul_sq_add_real_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integrable-cexp-neg-mul-sq-add-real-mul-i--4fca0f3da065eef650b72b98.md) | 124 | `result-track:4fca0f3da065eef650b72b98dbb06fbd51c43d97fd5c5903eef411a0bfe671b7` |
| 7 | `theorem` | [integral_cexp_neg_mul_sq_add_real_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integral-cexp-neg-mul-sq-add-real-mul-i--cf4722d5357b8fc6873f859a.md) | 139 | `result-track:cf4722d5357b8fc6873f859add402408d94041259a6c711df321a1d205b6479e` |
| 8 | `theorem` | [_root_.integral_cexp_quadratic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-integral-cexp-quadratic--ac6efe66cc46b909332be24b.md) | 179 | `result-track:ac6efe66cc46b909332be24bd1155ee6d42ef3757063173cd078ccae80aea37a` |
| 9 | `lemma` | [_root_.integrable_cexp_quadratic'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-integrable-cexp-quadratic--c7871999889e57b598e426e8.md) | 194 | `result-track:c7871999889e57b598e426e80c4efcabf1d6c3dfce3a2ca86d24b4f0eb407308` |
| 10 | `lemma` | [_root_.integrable_cexp_quadratic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-integrable-cexp-quadratic--924795f03be535ea2f8cff65.md) | 201 | `result-track:924795f03be535ea2f8cff6568b3930da9cf1e1bb6242ce968f0de71d466ff5a` |
| 11 | `theorem` | [_root_.fourierIntegral_gaussian](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-fourierintegral-gaussian--464d5406ef18894b88054d74.md) | 206 | `result-track:464d5406ef18894b88054d74ce038bfb3e968e98a374211c6eee8f80744b6250` |
| 12 | `theorem` | [_root_.fourierIntegral_gaussian_pi'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-fourierintegral-gaussian-pi--f51028dfc2dfa37521c44e8a.md) | 213 | `result-track:f51028dfc2dfa37521c44e8a086638105310fce8612b8e6a999f0cf40a31ea8d` |
| 13 | `theorem` | [_root_.fourierIntegral_gaussian_pi](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-fourierintegral-gaussian-pi--7fc50f30e7ec3e44cd5f1149.md) | 233 | `result-track:7fc50f30e7ec3e44cd5f11492ba036cbcd3ad35b9a81718160f82c064a9eed51` |
| 14 | `theorem` | [integrable_cexp_neg_sum_mul_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integrable-cexp-neg-sum-mul-add--4d2a93fe5d84ebd23aa67c9c.md) | 243 | `result-track:4d2a93fe5d84ebd23aa67c9c0ea4b7f8d6770691f1254d14d1009bfd0980bba0` |
| 15 | `theorem` | [integrable_cexp_neg_mul_sum_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integrable-cexp-neg-mul-sum-add--0bb251ed6e4284ea38323ebd.md) | 251 | `result-track:0bb251ed6e4284ea38323ebd9e3c4f6ac12e9677bc09d53268360212ffc9facf` |
| 16 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integrable-cexp-neg-mul-sq-norm-add-of-euclideanspace--9499a65595fd4a5558d06a38.md) | 256 | `result-track:9499a65595fd4a5558d06a38dff0f6990cef874ed1d15c8f47dc1aae4564e893` |
| 17 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integrable-cexp-neg-mul-sq-norm-add--3674405afea4a486a24bf7d5.md) | 274 | `result-track:3674405afea4a486a24bf7d53c7956787d709c8aaa6733e5ff6fad809a987ee5` |
| 18 | `theorem` | [integral_cexp_neg_sum_mul_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integral-cexp-neg-sum-mul-add--22d6f39c31bc77097fc22513.md) | 284 | `result-track:22d6f39c31bc77097fc2251343523e8e925636ab500990adae48303fd0591f06` |
| 19 | `theorem` | [integral_cexp_neg_mul_sum_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integral-cexp-neg-mul-sum-add--fb65b6c709d59829dcf36b56.md) | 294 | `result-track:fb65b6c709d59829dcf36b56e7cf2248f39787507a912c009d7c56cea224e18c` |
| 20 | `theorem` | [integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integral-cexp-neg-mul-sq-norm-add-of-euclideanspace--8361e1ac47dbe97385562e3b.md) | 301 | `result-track:8361e1ac47dbe97385562e3b8ccafca09b3c3270d3cb6c4397baa90d42f09f6f` |
| 21 | `theorem` | [integral_cexp_neg_mul_sq_norm_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integral-cexp-neg-mul-sq-norm-add--bcce304231c040dec5fd2e1a.md) | 324 | `result-track:bcce304231c040dec5fd2e1a5ea1e3ce1cae9f459981c08b4284c0e19938fbe3` |
| 22 | `theorem` | [integral_cexp_neg_mul_sq_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integral-cexp-neg-mul-sq-norm--b3e26e5efdd473c4c059e570.md) | 333 | `result-track:b3e26e5efdd473c4c059e570f5780981a2d52bca03e26cb49ffff2e04c550789` |
| 23 | `theorem` | [integral_rexp_neg_mul_sq_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/integral-rexp-neg-mul-sq-norm--d69d159cf0c3b9495db34c61.md) | 337 | `result-track:d69d159cf0c3b9495db34c6152f80865569a28155d54527eb1fb9940490651bb` |
| 24 | `theorem` | [_root_.fourierIntegral_gaussian_innerProductSpace'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-fourierintegral-gaussian-innerproductspace--4818724d7d90b287242cdf1b.md) | 347 | `result-track:4818724d7d90b287242cdf1bdef74c05d02028e7d5517424607c0bb88fd164db` |
| 25 | `theorem` | [_root_.fourierIntegral_gaussian_innerProductSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/declarations/root-fourierintegral-gaussian-innerproductspace--a482aa3329d554235b58d787.md) | 360 | `result-track:a482aa3329d554235b58d787c76ed496a25455d83901bd3cf78bcc0c717b0591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
