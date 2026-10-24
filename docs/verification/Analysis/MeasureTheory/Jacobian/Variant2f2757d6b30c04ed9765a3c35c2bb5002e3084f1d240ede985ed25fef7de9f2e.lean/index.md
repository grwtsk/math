# Verification target: GRWTSK.Analysis.MeasureTheory.Jacobian.Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7cad2063b178cca3d9a88bb2ae37986675b0814",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7cad2063b178cca3d9a88bb2ae37986675b0814`.

Source path: `GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.ApproximatesLinearOn` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Determinant` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_closed_cover_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/exists-closed-cover-approximateslinearon-of-hasfderivwithinat--9764d1d67fd821735900a10e.md) | 116 | `result-track:9764d1d67fd821735900a10eef700fafe0d0d0b6c83e6ac1569afa1356be6e3a` |
| 2 | `theorem` | [exists_partition_approximatesLinearOn_of_hasFDerivWithinAt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/exists-partition-approximateslinearon-of-hasfderivwithinat--5e3cb824cb89da3957098b67.md) | 259 | `result-track:5e3cb824cb89da3957098b6787df16d47d874bf62992a5e89427f5aae3cab742` |
| 3 | `theorem` | [addHaar_image_le_mul_of_det_lt](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/addhaar-image-le-mul-of-det-lt--f1858fdc7b589c1353568d0e.md) | 289 | `result-track:f1858fdc7b589c1353568d0eed9d54e3c4bae4f7427cba07eee2c8096317fdb8` |
| 4 | `theorem` | [mul_le_addHaar_image_of_lt_det](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/mul-le-addhaar-image-of-lt-det--7c3c51da1240579fc02581e0.md) | 396 | `result-track:7c3c51da1240579fc02581e0d0cca28312267a48b91bf8236e6d4575e95615bf` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.ApproximatesLinearOn.norm_fderiv_sub_le](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--82ff097833a102b34d8aa20b.md) | 468 | `result-track:82ff097833a102b34d8aa20b15314141d522176de7040914eb00ba5656b78731` |
| 6 | `theorem` | [addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/addhaar-image-eq-zero-of-differentiableon-of-addhaar-eq-zero--af13c13a2204e603bd5a4ae2.md) | 563 | `result-track:af13c13a2204e603bd5a4ae2a3e743142c655402a122ef38b31f1ee7677fc5ab` |
| 7 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero_aux](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero-aux--59905e5cb8892cde0f64ebdd.md) | 604 | `result-track:59905e5cb8892cde0f64ebdd381f0c3094399d2329b45f42798e1cd8f60526b4` |
| 8 | `theorem` | [addHaar_image_eq_zero_of_det_fderivWithin_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/addhaar-image-eq-zero-of-det-fderivwithin-eq-zero--eeeec3f33b123b9e28688c8a.md) | 654 | `result-track:eeeec3f33b123b9e28688c8a9b0b175d965604d30054cfb01dca5a5cbf02cf28` |
| 9 | `theorem` | [aemeasurable_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/aemeasurable-fderivwithin--664ee38536e4e77ad5e84544.md) | 695 | `result-track:664ee38536e4e77ad5e84544511d26f025f51dab7487bc6188849f1a9c06ef1e` |
| 10 | `theorem` | [aemeasurable_ofReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/aemeasurable-ofreal-abs-det-fderivwithin--db015af0d6b6eafdc42c6952.md) | 751 | `result-track:db015af0d6b6eafdc42c69521e3e815461f30b685328725175e764568601e504` |
| 11 | `theorem` | [aemeasurable_toNNReal_abs_det_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/aemeasurable-tonnreal-abs-det-fderivwithin--3e9ecddc83b2665f09caccaa.md) | 759 | `result-track:3e9ecddc83b2665f09caccaa3bd68f54acc92c8e6fdee090ef5c8a2edc35fa06` |
| 12 | `theorem` | [measurable_image_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/measurable-image-of-fderivwithin--d3f5630f109dbaba1af508dd.md) | 769 | `result-track:d3f5630f109dbaba1af508dd328dfba97deb16e158d4fc9742247f1e862b5b5d` |
| 13 | `theorem` | [measurableEmbedding_of_fderivWithin](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/measurableembedding-of-fderivwithin--dff52fcd44832038f23aa2bc.md) | 776 | `result-track:dff52fcd44832038f23aa2bc22728f6127f839cef725c544951f10e0559996e1` |
| 14 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux1--dfc6d0011daad2678120fe74.md) | 791 | `result-track:dfc6d0011daad2678120fe74e8d8f4cd6f65bf4872c591c9072a53421e154294` |
| 15 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv-aux2--93883b8d61d007c3ee3c02bb.md) | 870 | `result-track:93883b8d61d007c3ee3c02bb70035a773a78ae2cbbec412d83a26b33ef9d2802` |
| 16 | `theorem` | [addHaar_image_le_lintegral_abs_det_fderiv](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/addhaar-image-le-lintegral-abs-det-fderiv--e11b3676a9b5d02635693c47.md) | 888 | `result-track:e11b3676a9b5d02635693c47250b1cdb21350f15f9935cb692ee2b4567a63c12` |
| 17 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux1](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux1--a7492f1f874b5f7adf23aaa3.md) | 918 | `result-track:a7492f1f874b5f7adf23aaa30cb9670f17e4bcc96e72b19e6bf1c8b1ce1a2015` |
| 18 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image_aux2](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image-aux2--02f440a7fe858a4bef4720ff.md) | 1023 | `result-track:02f440a7fe858a4bef4720ffeb217dbbf003df742403db1c3d739d9b4d73eec9` |
| 19 | `theorem` | [lintegral_abs_det_fderiv_le_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/lintegral-abs-det-fderiv-le-addhaar-image--2298e35bc2f24db162aa1542.md) | 1041 | `result-track:2298e35bc2f24db162aa15425c5f5f9cf07c05a5fa01fa7e5e333030c5f073f1` |
| 20 | `theorem` | [lintegral_abs_det_fderiv_eq_addHaar_image](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/lintegral-abs-det-fderiv-eq-addhaar-image--25905e553c2f00acf3db06b5.md) | 1086 | `result-track:25905e553c2f00acf3db06b533a216c822121bb4996bc4b9a63ef9351b6ecb80` |
| 21 | `theorem` | [map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/map-withdensity-abs-det-fderiv-eq-addhaar--654506f30347f01636cbb9db.md) | 1099 | `result-track:654506f30347f01636cbb9dbfcb0ce6e6b3334d00b2316b982cba71d5d4539b9` |
| 22 | `theorem` | [restrict_map_withDensity_abs_det_fderiv_eq_addHaar](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/restrict-map-withdensity-abs-det-fderiv-eq-addhaar--f0dabf841325ce58c62236b4.md) | 1117 | `result-track:f0dabf841325ce58c62236b4e4cb65f2048600b802a828817135eead5fee4c95` |
| 23 | `theorem` | [lintegral_image_eq_lintegral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/lintegral-image-eq-lintegral-abs-det-fderiv-mul--dfa6936211e70e85cefab7ea.md) | 1149 | `result-track:dfa6936211e70e85cefab7eac9c40bc3741812743c646fd12cad40a399eaae08` |
| 24 | `theorem` | [integrableOn_image_iff_integrableOn_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/integrableon-image-iff-integrableon-abs-det-fderiv-smul--b9a25a3a4ff9160cd7148883.md) | 1165 | `result-track:b9a25a3a4ff9160cd714888311768417f92bc4553a43d3b6eddc46ba96820066` |
| 25 | `theorem` | [integral_image_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/integral-image-eq-integral-abs-det-fderiv-smul--118e861d6aa9eaa40c0aff5f.md) | 1179 | `result-track:118e861d6aa9eaa40c0aff5f284367ddb68fbb94c14400452ee590903720bb8b` |
| 26 | `theorem` | [integrableOn_image_iff_integrableOn_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/integrableon-image-iff-integrableon-abs-deriv-smul--fbf40cd034094f91c78e6158.md) | 1197 | `result-track:fbf40cd034094f91c78e6158a13e809138cc36ee5a76c0188d61de795203f77f` |
| 27 | `theorem` | [integral_image_eq_integral_abs_deriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/integral-image-eq-integral-abs-deriv-smul--c94691847b05a5809597ac8b.md) | 1207 | `result-track:c94691847b05a5809597ac8ba05e7285e958b877da7413b87cae755173c173e1` |
| 28 | `theorem` | [integral_target_eq_integral_abs_det_fderiv_smul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/integral-target-eq-integral-abs-det-fderiv-smul--b5eb1da4019262a1c2c0cd38.md) | 1214 | `result-track:b5eb1da4019262a1c2c0cd3823f12e9154237dd6101debffdbe6cad19e14b4b3` |
| 29 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--79a843139df696d7b424c07e.md) | 1225 | `result-track:79a843139df696d7b424c07e31efc611fe5d3b4f007d7ac75f8652bac9d89a03` |
| 30 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_det_fderiv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--a3a677e8fb3d76ef3496af6d.md) | 1238 | `result-track:a3a677e8fb3d76ef3496af6dbc618c2245abe1ccd5b345e166ebfea4e7ba9f67` |
| 31 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--400517bd2d7b38b74b6a84fc.md) | 1248 | `result-track:400517bd2d7b38b74b6a84fc652b76b49071d785f384e5637bbf189d61ee2c53` |
| 32 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--514a04a413af0533fda02728.md) | 1258 | `result-track:514a04a413af0533fda02728337c4807ce38e48e747d6a79e10d241f1a5df218` |
| 33 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_deriv_mul'](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--ca4193025874f67167d8d666.md) | 1268 | `result-track:ca4193025874f67167d8d666e1a351f7c09f5c949f960133a8d41213bc81be01` |
| 34 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEquiv.withDensity_ofReal_map_symm_apply_eq_integral_abs_deriv_mul'](../../../../../mathematics/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/declarations/root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--2812feb0d7ae7f6a51f32313.md) | 1278 | `result-track:2812feb0d7ae7f6a51f32313b7c39eb69219a611a197625e87e21a7ec7fa0c93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
