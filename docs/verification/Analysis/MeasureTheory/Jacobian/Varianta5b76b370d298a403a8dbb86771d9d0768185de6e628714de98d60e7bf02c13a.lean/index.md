# Verification target: GRWTSK.Analysis.MeasureTheory.Jacobian.Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df69e1e6f76d78b8db59cbf9ea29a278020dd71d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df69e1e6f76d78b8db59cbf9ea29a278020dd71d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Inverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/macro-rules--9a386105170e08ba590df27b.md) | 92 | `declaration-track:9a386105170e08ba590df27b00677fbc2cef0ece760f6c91b62e9702724a28c7` |
| 2 | `theorem` | [exists_closed_cover_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/exists-closed-cover-approximateslinearon-of-hasfderivwithinat--fbc54a4f9dc588d3c5c2419f.md) | 111 | `result-track:fbc54a4f9dc588d3c5c2419f03ee6ee3026443f40257548687fd223f79738415` |
| 3 | `theorem` | [exists_partition_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/exists-partition-approximateslinearon-of-hasfderivwithinat--d09ddc3ba4e67d9933f1d7ca.md) | 254 | `result-track:d09ddc3ba4e67d9933f1d7ca35147808451622a02b29f9f6c4ed5b5a14a0aea4` |
| 4 | `theorem` | [addHaar_image_le_mul_of_det_lt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/addhaar-image-le-mul-of-det-lt--ccb43044b03a9af6b4202553.md) | 285 | `result-track:ccb43044b03a9af6b4202553d61f2ca1ac6660d502d1ea9d28543985536807ba` |
| 5 | `theorem` | [mul_le_addHaar_image_of_lt_det](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/mul-le-addhaar-image-of-lt-det--77bf8b04d55765dfe550b881.md) | 392 | `result-track:77bf8b04d55765dfe550b8810b8a8ef7e024caf6360884eba1c2b69674f03724` |
| 6 | `theorem` | [_root_.ApproximatesLinearOn.norm_fderiv_sub_le](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/root-approximateslinearon-norm-fderiv-sub-le--e823bd2509dad305ed33fcba.md) | 465 | `result-track:e823bd2509dad305ed33fcba486bec04f30623cde2a7531f6bad2bdabf29ca69` |
| 7 | `theorem` | [addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/addhaar-image-eq-zero-of-differentiableon-of-addhaar-eq-zero--7b12027d434660fd3d5f3254.md) | 564 | `result-track:7b12027d434660fd3d5f32543a821e8f27f6ec5e6585cef1795fd0adcc67bd79` |
| 8 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero_aux](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero-aux--fba038218221722e3f9fd5da.md) | 606 | `result-track:fba038218221722e3f9fd5da5718f9ecb3c20d2e13c82f27e03dc21fa5f6c790` |
| 9 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero--84bbccaeb47fb65710678255.md) | 659 | `result-track:84bbccaeb47fb657106782555e099f63c0ac5d2b46f31f232122f1f72f35e631` |
| 10 | `theorem` | [aemeasurable_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/aemeasurable-fderivwithin--c1cba116bb5c57280e2f60c2.md) | 701 | `result-track:c1cba116bb5c57280e2f60c28bae9264b21c496e7a05bd151ca65e00b74c8f3a` |
| 11 | `theorem` | [aemeasurable_ofReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/aemeasurable-ofreal-abs-det-fderivwithin--d9d0cad834f0c71c15bbe664.md) | 758 | `result-track:d9d0cad834f0c71c15bbe66449bc4e179d698ce7a897be2c5a33c1bf7358da47` |
| 12 | `theorem` | [aemeasurable_toNNReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/aemeasurable-tonnreal-abs-det-fderivwithin--7e1c932b50834feb530ebcf4.md) | 767 | `result-track:7e1c932b50834feb530ebcf42d4b1c41cd611a187cb5a1e786d39ee9bd0145d2` |
| 13 | `theorem` | [measurable_image_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/measurable-image-of-fderivwithin--af9fb0ac27aab24fa29ab91c.md) | 778 | `result-track:af9fb0ac27aab24fa29ab91c0c6697bf42294f2ae441c3fd5a5b9a693d86c557` |
| 14 | `theorem` | [measurableEmbedding_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/measurableembedding-of-fderivwithin--085ed127f071df74649b708b.md) | 786 | `result-track:085ed127f071df74649b708b5d8ccac7a638b19f6785828167810eabf681cacf` |
| 15 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux1--818acf4e7a43b7f70f82e7ef.md) | 802 | `result-track:818acf4e7a43b7f70f82e7ef354a9cc12929d83694134c60b7444bbff430df22` |
| 16 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux2--73805204ef36ffb859da474b.md) | 885 | `result-track:73805204ef36ffb859da474be06737ff9576178f69acb80eaae7a32b87ed8a5b` |
| 17 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv--62861290243318e7ad8ed89b.md) | 903 | `result-track:62861290243318e7ad8ed89bdf7bac98b7ca82717909f298e70274d60858dc11` |
| 18 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux1--27201955efbec858e98a6bc5.md) | 934 | `result-track:27201955efbec858e98a6bc52e86a96ae972bd00f429de69fdc4f462482216c7` |
| 19 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux2--fc531595759fe7964b580adf.md) | 1039 | `result-track:fc531595759fe7964b580adfb53e0859ff96b174af74c4e2244332cff5972068` |
| 20 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image--0636bded8a591f8d260ba10c.md) | 1057 | `result-track:0636bded8a591f8d260ba10c5050d47fe9ebae9c4406115fe85722b5ccf67124` |
| 21 | `theorem` | [lintegral_abs_det_fderiv_eq_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/lintegral-abs-det-fderiv-eq-addhaar-image--7f8bf048346efb1337da72cd.md) | 1104 | `result-track:7f8bf048346efb1337da72cd9b19e27347859336edc78fb99537f2cd08e0abc8` |
| 22 | `theorem` | [map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/map-withdensity-abs-det-fderiv-eq-addhaar--9980338d96976463e88f534e.md) | 1118 | `result-track:9980338d96976463e88f534ebed264f0647bdbdb4c4feb377d098d5a832a1c4e` |
| 23 | `theorem` | [restrict_map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/restrict-map-withdensity-abs-det-fderiv-eq-addhaar--afef33d93a97b5afe356d310.md) | 1137 | `result-track:afef33d93a97b5afe356d3107f342287ec60a6261598334e46382e6037fc46b5` |
| 24 | `theorem` | [lintegral_image_eq_lintegral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/lintegral-image-eq-lintegral-abs-det-fderiv-mul--f408079a37242a4c3c3f7120.md) | 1170 | `result-track:f408079a37242a4c3c3f7120cedd707a5c1f4dc8c8362ef9d145dd591dd052cf` |
| 25 | `theorem` | [integrableOn_image_iff_integrableOn_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/integrableon-image-iff-integrableon-abs-det-fderiv-smul--612a8b7925ae5f44c520915c.md) | 1188 | `result-track:612a8b7925ae5f44c520915c4bc58d87061e29604a9fd37d6b6e34edceae1547` |
| 26 | `theorem` | [integral_image_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/integral-image-eq-integral-abs-det-fderiv-smul--d78e711991ab99e1e48a9854.md) | 1207 | `result-track:d78e711991ab99e1e48a9854efcf6acbf8afc03cc07591c18d07b64e2ba87289` |
| 27 | `theorem` | [det_one_smulRight](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/det-one-smulright--4d314e3199d9e42dc8081ae8.md) | 1222 | `result-track:4d314e3199d9e42dc8081ae8bedb1c5ce5b69d4100684353a168484f4dc2cb29` |
| 28 | `theorem` | [integrableOn_image_iff_integrableOn_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/integrableon-image-iff-integrableon-abs-deriv-smul--af24f9ac20124f0306a79850.md) | 1237 | `result-track:af24f9ac20124f0306a79850a23fa3adee4cae7adf0f64ca65a80b977042da60` |
| 29 | `theorem` | [integral_image_eq_integral_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/integral-image-eq-integral-abs-deriv-smul--d3fdff39ffe51569681e4b8a.md) | 1248 | `result-track:d3fdff39ffe51569681e4b8af8f13405efe944ce1f5bd4de78c6dada7fde0036` |
| 30 | `theorem` | [integral_target_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/declarations/integral-target-eq-integral-abs-det-fderiv-smul--365fa25d6b427af5e6c4b39d.md) | 1256 | `result-track:365fa25d6b427af5e6c4b39df34876d9eaee0da3f797c8ccd7e43bc96a31da7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
