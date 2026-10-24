# Verification target: GRWTSK.Analysis.MeasureTheory.Jacobian.Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f39c34da90f57127c1bfa0b8c7576e29e66d2677",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f39c34da90f57127c1bfa0b8c7576e29e66d2677`.

Source path: `GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Inverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/macro-rules--f0b30019522431564af39d5e.md) | 100 | `declaration-track:f0b30019522431564af39d5e634fb1f594a42afa765713098e18d2ca369f16ae` |
| 2 | `theorem` | [exists_closed_cover_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/exists-closed-cover-approximateslinearon-of-hasfderivwithinat--e3fd9efc417c2207e1f06b33.md) | 119 | `result-track:e3fd9efc417c2207e1f06b33c63e890894ef83b1ea40f0f53765409311b1c7db` |
| 3 | `theorem` | [exists_partition_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/exists-partition-approximateslinearon-of-hasfderivwithinat--4d6529ee841d3f3817febff6.md) | 262 | `result-track:4d6529ee841d3f3817febff6e904a4c719655c5c51e429048ac7d43800288c35` |
| 4 | `theorem` | [addHaar_image_le_mul_of_det_lt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/addhaar-image-le-mul-of-det-lt--8ccc8bd6769d3fb9a9eb6a97.md) | 293 | `result-track:8ccc8bd6769d3fb9a9eb6a975f66ab9adb4f463d8d5fda8111418f6bc8969412` |
| 5 | `theorem` | [mul_le_addHaar_image_of_lt_det](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/mul-le-addhaar-image-of-lt-det--8358cdd08af8bbbcc8ee1500.md) | 400 | `result-track:8358cdd08af8bbbcc8ee1500b9a865b4cd78c14214cecfb77614e1c3ffd22ec9` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.ApproximatesLinearOn.norm_fderiv_sub_le](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--63e87240331dea11ef63158e.md) | 473 | `result-track:63e87240331dea11ef63158e37f42068cea7ae0a7ba8a6b5854480df82e1a0b1` |
| 7 | `theorem` | [addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/addhaar-image-eq-zero-of-differentiableon-of-addhaar-eq-zero--fe30e71c9da610166f7ee949.md) | 572 | `result-track:fe30e71c9da610166f7ee949d707521efff1654e44def45bcad4978135dc3ed9` |
| 8 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero_aux](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero-aux--a5d3f246d866b55810f06a53.md) | 614 | `result-track:a5d3f246d866b55810f06a53f0ae353820d34f7ac18d07165567eafe88acc44f` |
| 9 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero--4a5291116d1442c764055850.md) | 667 | `result-track:4a5291116d1442c764055850c00ecb88e57f00baa21aa5886957ad0a38c8a676` |
| 10 | `theorem` | [aemeasurable_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/aemeasurable-fderivwithin--4e9f2223785d27374f4a5db3.md) | 709 | `result-track:4e9f2223785d27374f4a5db31453885512bb621c42946c850e1811d217ebe737` |
| 11 | `theorem` | [aemeasurable_ofReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/aemeasurable-ofreal-abs-det-fderivwithin--ffd512f2626f6883927d45da.md) | 766 | `result-track:ffd512f2626f6883927d45dafe98c92cd4d699df4821087a39d2262d8ba8e249` |
| 12 | `theorem` | [aemeasurable_toNNReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/aemeasurable-tonnreal-abs-det-fderivwithin--18bb4e2e9e4d986afbbfc6f8.md) | 775 | `result-track:18bb4e2e9e4d986afbbfc6f8f463cc575cb43dfcb09d13e679897ce8c018f0ac` |
| 13 | `theorem` | [measurable_image_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/measurable-image-of-fderivwithin--13490208bd13314b0913b3e8.md) | 786 | `result-track:13490208bd13314b0913b3e877e38da14e641b14cc457c70df6156d90669d41f` |
| 14 | `theorem` | [measurableEmbedding_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/measurableembedding-of-fderivwithin--5573c6062ca01c121e9a273a.md) | 794 | `result-track:5573c6062ca01c121e9a273a59f7fffde90242766dc9a434c3670470f43328ef` |
| 15 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux1--355419110a89b3e29ddf4264.md) | 810 | `result-track:355419110a89b3e29ddf42644dac060ce44bc91fd5d2a35349df3ab5bc9e3c25` |
| 16 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux2--9ed70a4c2c415af47520185c.md) | 893 | `result-track:9ed70a4c2c415af47520185cf149266dcf7c214c4e3bfdace703e02562b0bf72` |
| 17 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv--a0b4798a213168b02139ec12.md) | 911 | `result-track:a0b4798a213168b02139ec127b1a2115015c7a150f93fcf9421fe007668d7ebb` |
| 18 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux1--db5519308879fc0b6831c7ac.md) | 942 | `result-track:db5519308879fc0b6831c7ac068eed1e95b98306224aa4bf6d3c102d1b5a839f` |
| 19 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux2--5f8894dd4b6d2bba1c8d1d46.md) | 1047 | `result-track:5f8894dd4b6d2bba1c8d1d468ebb4a652262e8249276bd550cab8e4bcefee594` |
| 20 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image--8fe12276973b1d05d9bfe7cb.md) | 1065 | `result-track:8fe12276973b1d05d9bfe7cb41ba6ca046f6404838eb4baebfb167a80c9a95c8` |
| 21 | `theorem` | [lintegral_abs_det_fderiv_eq_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/lintegral-abs-det-fderiv-eq-addhaar-image--dad17fd8d4538f7e418c43b7.md) | 1112 | `result-track:dad17fd8d4538f7e418c43b71a49e2c337f5042d5f597ebdd62849287298ca5b` |
| 22 | `theorem` | [map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/map-withdensity-abs-det-fderiv-eq-addhaar--e8a0bddf59fb6a142d550475.md) | 1126 | `result-track:e8a0bddf59fb6a142d550475167800814d538f78901068791fe77f9c7b36092c` |
| 23 | `theorem` | [restrict_map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/restrict-map-withdensity-abs-det-fderiv-eq-addhaar--fa0b23607ba0f685e932f3a3.md) | 1145 | `result-track:fa0b23607ba0f685e932f3a360c50f9110c167be521cc5ce57ef0bb19fb80ef5` |
| 24 | `theorem` | [lintegral_image_eq_lintegral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/lintegral-image-eq-lintegral-abs-det-fderiv-mul--2c7502b3f5f8229335af4d06.md) | 1178 | `result-track:2c7502b3f5f8229335af4d062df71ad259fe7c77eb569c5a0ed9669e0703eab8` |
| 25 | `theorem` | [integrableOn_image_iff_integrableOn_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/integrableon-image-iff-integrableon-abs-det-fderiv-smul--e805a2f43a83c4df9610cf55.md) | 1196 | `result-track:e805a2f43a83c4df9610cf556e4d374a6741f9207801fe24ed731b284bdfd065` |
| 26 | `theorem` | [integral_image_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/integral-image-eq-integral-abs-det-fderiv-smul--745e3b221cfbfcc64364fb51.md) | 1215 | `result-track:745e3b221cfbfcc64364fb51aee01bc0e0950c63c00cc390f015847105bdd4d1` |
| 27 | `theorem` | [det_one_smulRight](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/det-one-smulright--0d083d3f4f05738321c8eb08.md) | 1230 | `result-track:0d083d3f4f05738321c8eb08ac54f1af5caa0c1fa82c8d99635e60991837221c` |
| 28 | `theorem` | [integrableOn_image_iff_integrableOn_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/integrableon-image-iff-integrableon-abs-deriv-smul--b8928637d17306349bddb603.md) | 1245 | `result-track:b8928637d17306349bddb60393054dbbbb4aa59d4d9bb8f5b532f4fb9eb411c8` |
| 29 | `theorem` | [integral_image_eq_integral_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/integral-image-eq-integral-abs-deriv-smul--25b640db0c5cf87c7a8508fc.md) | 1256 | `result-track:25b640db0c5cf87c7a8508fc1de79b185223b92e0366d89c3e5b708a4b45c6f3` |
| 30 | `theorem` | [integral_target_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/declarations/integral-target-eq-integral-abs-det-fderiv-smul--4f3a4eed44f0dc05aaac0e30.md) | 1264 | `result-track:4f3a4eed44f0dc05aaac0e301bb00f1265a51e6d5a48bbb0ebc284363bd7af9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
