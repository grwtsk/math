# Verification target: GRWTSK.Analysis.MeasureTheory.Jacobian.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0722dfdbd1a9925add31e85ce66111122561c45d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0722dfdbd1a9925add31e85ce66111122561c45d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.ApproximatesLinearOn` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Determinant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_closed_cover_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/exists-closed-cover-approximateslinearon-of-hasfderivwithinat--6d388ac59906d5fdecd383ec.md) | 108 | `result-track:6d388ac59906d5fdecd383ec517ebd653550398a2c347bda35b6a3f211bdeb92` |
| 2 | `theorem` | [exists_partition_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/exists-partition-approximateslinearon-of-hasfderivwithinat--a1daaf222c6eb01673f78f98.md) | 251 | `result-track:a1daaf222c6eb01673f78f980d6b01b6c2825d1abfed1d3d17ff66e211d85c2a` |
| 3 | `theorem` | [addHaar_image_le_mul_of_det_lt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/addhaar-image-le-mul-of-det-lt--5d1e946a7fc78241f244e9b5.md) | 281 | `result-track:5d1e946a7fc78241f244e9b581af9ffddf1ec8952683644aa8954a09429b09f7` |
| 4 | `theorem` | [mul_le_addHaar_image_of_lt_det](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/mul-le-addhaar-image-of-lt-det--5d7f6a26fab247f5608c75da.md) | 388 | `result-track:5d7f6a26fab247f5608c75da8e49bb981cd0c4ac19f7949ba8aebce507b33c2e` |
| 5 | `theorem` | [_root_.ApproximatesLinearOn.norm_fderiv_sub_le](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/root-approximateslinearon-norm-fderiv-sub-le--9513d5ad71dd0a421b9f8698.md) | 460 | `result-track:9513d5ad71dd0a421b9f869800c4b29db090ba384e2d50087402650d8d11b006` |
| 6 | `theorem` | [addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/addhaar-image-eq-zero-of-differentiableon-of-addhaar-eq-zero--8d380c051d701964815dabbd.md) | 555 | `result-track:8d380c051d701964815dabbd1910bc8db1351685ded778ee2108d5486db14672` |
| 7 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero_aux](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero-aux--ae0b2931eaff304a648d0243.md) | 596 | `result-track:ae0b2931eaff304a648d0243db652345b421e1d52b15290545e074f844a7795e` |
| 8 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero--f5ab9e3d363188f8a0ee6321.md) | 646 | `result-track:f5ab9e3d363188f8a0ee6321383786328522c66c2f44dcbd2371071f83aa9adf` |
| 9 | `theorem` | [aemeasurable_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/aemeasurable-fderivwithin--95d56ff7fd5dea8953ba7ea7.md) | 687 | `result-track:95d56ff7fd5dea8953ba7ea71baf685c5d57cab6dd46d309cf841bcff2e4468b` |
| 10 | `theorem` | [aemeasurable_ofReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/aemeasurable-ofreal-abs-det-fderivwithin--90c82e6cf7138c6a302468ad.md) | 743 | `result-track:90c82e6cf7138c6a302468ad8c83c3a2407ad671e282d2e4a597c2503249d60e` |
| 11 | `theorem` | [aemeasurable_toNNReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/aemeasurable-tonnreal-abs-det-fderivwithin--fca9c60e73b1f754f01be1c8.md) | 751 | `result-track:fca9c60e73b1f754f01be1c897913f401e6573bdbe7b0becbbec43c8b64b3f1a` |
| 12 | `theorem` | [measurable_image_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/measurable-image-of-fderivwithin--aea7548061e36bbdceb2caa6.md) | 761 | `result-track:aea7548061e36bbdceb2caa62f55181a3a19ee82ff7ebb3277a63a095a7fb81b` |
| 13 | `theorem` | [measurableEmbedding_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/measurableembedding-of-fderivwithin--90033757265baad14532f823.md) | 768 | `result-track:90033757265baad14532f82313cbd4f5613f7cdfbe8d35697b8c63a43d8aba72` |
| 14 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux1--f104ad3cab16c65ccd569648.md) | 783 | `result-track:f104ad3cab16c65ccd569648a5e61e48eeaeb4432f71a8e30b50958bf1f1a5ee` |
| 15 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux2--bf64f55fbdd5c907d405e510.md) | 862 | `result-track:bf64f55fbdd5c907d405e510aede261b4798edfb1c7a5588f8d1ccf4f6506be1` |
| 16 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv--54e0583001b6fbc36ea4e562.md) | 880 | `result-track:54e0583001b6fbc36ea4e5629c9259c1e0678a9fe538e753dea76e80b58871a0` |
| 17 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux1--506b84034019c65b29803188.md) | 910 | `result-track:506b84034019c65b29803188039830d98670a36c2daa470dd191f8ec442fd3e2` |
| 18 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux2--3b37ca0e62dd191efce7e130.md) | 1015 | `result-track:3b37ca0e62dd191efce7e13033b371ed5ce0fbe5b85f99d4cd105be30356d587` |
| 19 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image--e9a0079c7dcf28f13742ee78.md) | 1033 | `result-track:e9a0079c7dcf28f13742ee786831e004f4b1d42e52cd4727f7b0c376830f17f9` |
| 20 | `theorem` | [lintegral_abs_det_fderiv_eq_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/lintegral-abs-det-fderiv-eq-addhaar-image--b1a614701a72ac207b76cad1.md) | 1078 | `result-track:b1a614701a72ac207b76cad1b949135c417c2de41207c5b425303bbdddfb19be` |
| 21 | `theorem` | [map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/map-withdensity-abs-det-fderiv-eq-addhaar--6730588b352f571af4631064.md) | 1091 | `result-track:6730588b352f571af4631064ef38f94669b940742b763037e0a40ca394abae77` |
| 22 | `theorem` | [restrict_map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/restrict-map-withdensity-abs-det-fderiv-eq-addhaar--d8db75511aa503e62d257d74.md) | 1109 | `result-track:d8db75511aa503e62d257d74fe58bbeb72bb74fc814446e321d0104c4e88ac29` |
| 23 | `theorem` | [lintegral_image_eq_lintegral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/lintegral-image-eq-lintegral-abs-det-fderiv-mul--b204b98034218027e04d71c4.md) | 1141 | `result-track:b204b98034218027e04d71c4ffea16a9d145c6863d74c9581d9d3c9fa01f658e` |
| 24 | `theorem` | [integrableOn_image_iff_integrableOn_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/integrableon-image-iff-integrableon-abs-det-fderiv-smul--b33b18735717a8220ac0aa7a.md) | 1157 | `result-track:b33b18735717a8220ac0aa7ab7eec6b0603bd97bd8051e8be5f482312d04fe1a` |
| 25 | `theorem` | [integral_image_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/integral-image-eq-integral-abs-det-fderiv-smul--43e348392a7b1682a687bfa8.md) | 1171 | `result-track:43e348392a7b1682a687bfa860a5db95f9ab2ad471dee1638f2e4ab999b2f9f8` |
| 26 | `theorem` | [integrableOn_image_iff_integrableOn_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/integrableon-image-iff-integrableon-abs-deriv-smul--b8bcb57dbea2b7987eb94efc.md) | 1189 | `result-track:b8bcb57dbea2b7987eb94efc027e4b9969cde650d5f9fd0d9bd6182f36d9b583` |
| 27 | `theorem` | [integral_image_eq_integral_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/integral-image-eq-integral-abs-deriv-smul--2d2d8ef9487dae5b804504c9.md) | 1199 | `result-track:2d2d8ef9487dae5b804504c9f064ff3ac968c454ce0a936654fd0fa809c2bf5b` |
| 28 | `theorem` | [integral_target_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/integral-target-eq-integral-abs-det-fderiv-smul--a786126edba93a5950f681d6.md) | 1206 | `result-track:a786126edba93a5950f681d6bf06bb47e5e4b37c91570eaf7cf3012350ca535d` |
| 29 | `lemma` | [_root_.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/root-measurableembedding-withdensity-ofreal-comap-apply-eq-integral-abs--bf94fd404cdcd704e739c609.md) | 1217 | `result-track:bf94fd404cdcd704e739c609d7b6ab555c6b41fe722b3946dd778619145bc203` |
| 30 | `lemma` | [_root_.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/root-measurableequiv-withdensity-ofreal-map-symm-apply-eq-integral-abs-d--63a4952c2798b39ca093cbb6.md) | 1230 | `result-track:63a4952c2798b39ca093cbb60a0912605ecdbd3592a8b3276ec28c0067111878` |
| 31 | `lemma` | [_root_.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/root-measurableembedding-withdensity-ofreal-comap-apply-eq-integral-abs--a1a0833f733dabb4fb403cee.md) | 1240 | `result-track:a1a0833f733dabb4fb403ceec73c0c7102d4914e5000ffbce4b3b87e01e12da8` |
| 32 | `lemma` | [_root_.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/root-measurableequiv-withdensity-ofreal-map-symm-apply-eq-integral-abs-d--f267e30400895bc787eb8cfc.md) | 1250 | `result-track:f267e30400895bc787eb8cfcbb4757a1829d76b6e30551d98753553bf8adbaec` |
| 33 | `lemma` | [_root_.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul'](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/root-measurableembedding-withdensity-ofreal-comap-apply-eq-integral-abs--b23b642ace32afd5d31bb4dc.md) | 1260 | `result-track:b23b642ace32afd5d31bb4dc1c3c85eba462f3b4980d7b3fba892f8c5e063ee8` |
| 34 | `lemma` | [_root_.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul'](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/declarations/root-measurableequiv-withdensity-ofreal-map-symm-apply-eq-integral-abs-d--e84ccfb391dd0cb33a26b891.md) | 1270 | `result-track:e84ccfb391dd0cb33a26b891f1cdafef02b9f4514e2f6a22dca84adbfbac5d33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
