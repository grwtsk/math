# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierTransform.Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "131c705142722e98094778ccce2fb735fe857519",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `131c705142722e98094778ccce2fb735fe857519`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verticalIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/verticalintegral--0c0c040b0eaf3f90905e5ea7.md) | 53 | `declaration-track:0c0c040b0eaf3f90905e5ea7317e83c658cfd34c4deb16ea927aee773bf1a0c2` |
| 2 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--07a7fd10c4dbb4c31f798752.md) | 58 | `result-track:07a7fd10c4dbb4c31f7987523bb17dbb4d134fb6e509037ab9ca967c78c93317` |
| 3 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--8da469fc615797af0f30ace8.md) | 64 | `result-track:8da469fc615797af0f30ace876d26b7f35e28ca06c1e921e5a19bc991b717f09` |
| 4 | `theorem` | [verticalIntegral_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/verticalintegral-norm-le--85eb66cfc1c2abb6e014baf3.md) | 73 | `result-track:85eb66cfc1c2abb6e014baf3c6317874d2a30676c55bc092760d1247659bd451` |
| 5 | `theorem` | [tendsto_verticalIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/tendsto-verticalintegral--c57f51f5756c15d3eaed8688.md) | 116 | `result-track:c57f51f5756c15d3eaed8688635d27a510ad90a44eb946b5841147517a7e1e47` |
| 6 | `theorem` | [integrable_cexp_neg_mul_sq_add_real_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integrable-cexp-neg-mul-sq-add-real-mul-i--09528d08983ae5086e0517c9.md) | 132 | `result-track:09528d08983ae5086e0517c9cfc93d7f53eee16fdc5f6f59d75d2bcab0e128fa` |
| 7 | `theorem` | [integral_cexp_neg_mul_sq_add_real_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integral-cexp-neg-mul-sq-add-real-mul-i--23c12a9f074c6b4381ef4e9d.md) | 147 | `result-track:23c12a9f074c6b4381ef4e9dc3093f94cbea8dce638083e78d635f2672b19573` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.integral_cexp_quadratic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--943707f2d002df758f88e67d.md) | 187 | `result-track:943707f2d002df758f88e67db4662112d7b21fe8fa3f2eb954b68f3756b967e5` |
| 9 | `lemma` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.integrable_cexp_quadratic'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--96e068b117e5f6a333487c8a.md) | 202 | `result-track:96e068b117e5f6a333487c8a51090a75e540508a5efe2d6b4d9df9eac9f11200` |
| 10 | `lemma` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.integrable_cexp_quadratic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--acaad22fb335e171b65c91b4.md) | 209 | `result-track:acaad22fb335e171b65c91b498f679cbddcbca46ff3d43466b20bcd179bad3a0` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--756492d769aa5ad583997f5d.md) | 214 | `result-track:756492d769aa5ad583997f5d1109e107abef467e113c9eec7f0cf502a1844af8` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian_pi'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--e8e8f90156f82e9e8d274a3d.md) | 221 | `result-track:e8e8f90156f82e9e8d274a3d4f843ea1127191d6489612061aa807b941e66293` |
| 13 | `theorem` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian_pi](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--ce93ac8d7719d6c8a56d55b5.md) | 241 | `result-track:ce93ac8d7719d6c8a56d55b514b96ea2cc1f2acf258ecae1a318f68b49834653` |
| 14 | `theorem` | [integrable_cexp_neg_sum_mul_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integrable-cexp-neg-sum-mul-add--f4364ec44e1da299d1a8c7be.md) | 251 | `result-track:f4364ec44e1da299d1a8c7bef22e0e7f73b577e503a38db844b159fd4d239548` |
| 15 | `theorem` | [integrable_cexp_neg_mul_sum_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integrable-cexp-neg-mul-sum-add--87f536a766619b1a6208965c.md) | 259 | `result-track:87f536a766619b1a6208965cbd6c214dd01240c04bd2b497b27ee3f7013c12cd` |
| 16 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integrable-cexp-neg-mul-sq-norm-add-of-euclideanspace--2f1196352c3ddbb6db6b4c15.md) | 264 | `result-track:2f1196352c3ddbb6db6b4c15e249a4450dddb1f233facbcd9eaf245dc5210c59` |
| 17 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integrable-cexp-neg-mul-sq-norm-add--43f9c50da1ca72cfa521f529.md) | 282 | `result-track:43f9c50da1ca72cfa521f529d64859b0b00fdb6e2339fc52dbe83ed785f18772` |
| 18 | `theorem` | [integral_cexp_neg_sum_mul_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integral-cexp-neg-sum-mul-add--a8e4ba2420869dc012b1b087.md) | 292 | `result-track:a8e4ba2420869dc012b1b087fc8ab006cc311529211fb84d4a1bfea71a64edb1` |
| 19 | `theorem` | [integral_cexp_neg_mul_sum_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integral-cexp-neg-mul-sum-add--8c3b973064776eaf37a276ca.md) | 302 | `result-track:8c3b973064776eaf37a276ca3a4812b9c7cc7c33a82876a8eb2519c28e103ca2` |
| 20 | `theorem` | [integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integral-cexp-neg-mul-sq-norm-add-of-euclideanspace--6a39a27a164f89b002503f15.md) | 309 | `result-track:6a39a27a164f89b002503f154b9b2c5d055546a7c3e60b58606f7a4ff7c0e318` |
| 21 | `theorem` | [integral_cexp_neg_mul_sq_norm_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integral-cexp-neg-mul-sq-norm-add--55f137d7fa16f24d2be857e5.md) | 332 | `result-track:55f137d7fa16f24d2be857e5dc0b6f8313574bb464d0ade2dcde147a581b2c22` |
| 22 | `theorem` | [integral_cexp_neg_mul_sq_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integral-cexp-neg-mul-sq-norm--ed598d61064a561e0ae59d53.md) | 341 | `result-track:ed598d61064a561e0ae59d5338f45dd730a9347ff10c89d2a22dd1b35ad62190` |
| 23 | `theorem` | [integral_rexp_neg_mul_sq_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/integral-rexp-neg-mul-sq-norm--c007a3fcddc11014ca165c63.md) | 345 | `result-track:c007a3fcddc11014ca165c6382f1256a3bd457afca76b362f02a0cb70ae13c7b` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian_innerProductSpace'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--d51b926491243ecbdf840f76.md) | 355 | `result-track:d51b926491243ecbdf840f760bd0288d8503225bb2a47326ccd7552005f68aab` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian_innerProductSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--e9ee6fdd426b00333100729f.md) | 368 | `result-track:e9ee6fdd426b00333100729fc48d68ab4afaa78ad22c3fb56b99349091224077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
