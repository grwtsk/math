# Verification target: GRWTSK.Analysis.FunctionalAnalysis.NormDet.Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d36eca716e7bc840f48ca04b30c9a3461d3c0b96`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDimension` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normDet](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet--938c5e91a127d0fccae3ddcf.md) | 70 | `declaration-track:938c5e91a127d0fccae3ddcf01fbbed098e8318c814391eee43913e2db5394a1` |
| 2 | `theorem` | [normDet_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-nonneg--72e09dc7f1d458d42a49b5b7.md) | 76 | `result-track:72e09dc7f1d458d42a49b5b77b182500268558f8c08398369c20213a51c94489` |
| 3 | `theorem` | [normDet_eq_norm_det_toMatrix_rangeRestrict](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-norm-det-tomatrix-rangerestrict--2793a347acbfb27c1a997b47.md) | 83 | `result-track:2793a347acbfb27c1a997b473c996157eb47f7b290fd9e09cc32e55cdf36a959` |
| 4 | `theorem` | [normDet_eq_zero_iff_ker_ne_bot](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-zero-iff-ker-ne-bot--b559b35b9bb496b89c910c95.md) | 112 | `result-track:b559b35b9bb496b89c910c95632ef76d1cca7217223c1ade2f59a7dd81e6f220` |
| 5 | `theorem` | [normDet_eq_zero_iff_rank_range_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-zero-iff-rank-range-ne--ff0701761ef4c7e51e782c6b.md) | 135 | `result-track:ff0701761ef4c7e51e782c6bcdad77e2150f0d10b87f21503d1b21d005fbb0c7` |
| 6 | `theorem` | [normDet_ne_zero_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-ne-zero-tfae--884fa3704eb07b1291a3209b.md) | 139 | `result-track:884fa3704eb07b1291a3209ba37727c4714a51e1f5c7688902cc7b3b3eee1cd3` |
| 7 | `def` | [orthonormalBasis_range](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/orthonormalbasis-range--a5d5bda21a81005583a10a95.md) | 157 | `declaration-track:a5d5bda21a81005583a10a952efd71fec29ddc6f6f8c2e1283b9df93bf1b623a` |
| 8 | `theorem` | [normDet_eq_zero_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-zero-tfae--baa7ee639a2128a6c0c98bfe.md) | 163 | `result-track:baa7ee639a2128a6c0c98bfea0600626206683e356ad783c1943fba87237036a` |
| 9 | `theorem` | [normDet_eq_norm_det_toMatrix](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-norm-det-tomatrix--9c3fbd3c19aacd614684790a.md) | 183 | `result-track:9c3fbd3c19aacd614684790a0017e13d95664254144da167bc1d63e10118a94f` |
| 10 | `theorem` | [normDet_eq_norm_det](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-norm-det--52a10b59bd5a6e866f429e00.md) | 207 | `result-track:52a10b59bd5a6e866f429e00f52993c91a280ad59d228ddda7c5cef2e78ad4d1` |
| 11 | `theorem` | [_root_.LinearIsometry.normDet_eq_one](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/root-linearisometry-normdet-eq-one--5d6dd43b7726f410a8614341.md) | 214 | `result-track:5d6dd43b7726f410a8614341763140bcdb81498ef12a7605227714b51215b1a0` |
| 12 | `theorem` | [normDet_id](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-id--4a335c3802e0d2c7bc5a7060.md) | 221 | `result-track:4a335c3802e0d2c7bc5a70608a5aed9c2e59a82bdbfce55e0bc8e5204dfe2aa2` |
| 13 | `theorem` | [normDet_subtype](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-subtype--02be4ba97133e46db71391e9.md) | 225 | `result-track:02be4ba97133e46db71391e910169cd2b61c1e79df022691d5c4b5cbb2d52bf6` |
| 14 | `theorem` | [normDet_of_subsingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-of-subsingleton--79662416b29fd787722a6ef0.md) | 229 | `result-track:79662416b29fd787722a6ef00ef811e0e20d7625f5e0c7e4f594bed536934b1a` |
| 15 | `theorem` | [normDet_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-zero--3c395f7e0665c362cbc01e6c.md) | 237 | `result-track:3c395f7e0665c362cbc01e6c0c9fbd465a94d1829a47686f61bdbd9f20dd296e` |
| 16 | `theorem` | [normDet_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-smul--e594f8e70d72801206f8b0de.md) | 242 | `result-track:e594f8e70d72801206f8b0de70601c2987e5e6145e879aebaf9f7a7b376d334f` |
| 17 | `theorem` | [normDet_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-neg--8479b3b4b263d36582f650c9.md) | 262 | `result-track:8479b3b4b263d36582f650c983e1f97bf12aee794763d90f2e80755de84c7987` |
| 18 | `theorem` | [_root_.ContinuousLinearMap.normDet_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/root-continuouslinearmap-normdet-sq--d47b0359a44dca27584b9859.md) | 268 | `result-track:d47b0359a44dca27584b9859d6140ac60e4173a8cb04f86310300514c097f6d4` |
| 19 | `theorem` | [normDet_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-sq--6553b9cae95568842f71eae7.md) | 295 | `result-track:6553b9cae95568842f71eae7182427ce6c267cf7dbfc0d4fb3dc1370cdb41e83` |
| 20 | `theorem` | [normDet_sq_eq_det_gram](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-sq-eq-det-gram--d7390124d0677352b4b94b62.md) | 304 | `result-track:d7390124d0677352b4b94b62dae3041ba05d173924d66d5f90d910c6978119d4` |
| 21 | `theorem` | [normDet_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-comp--c727ca16f8561e1dbb3a9531.md) | 325 | `result-track:c727ca16f8561e1dbb3a9531d64166cf0622314d22fdba62043025bed8691b25` |
| 22 | `theorem` | [normDet_comp_of_finrank_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-comp-of-finrank-eq--5b775b05af745b4b73073d5a.md) | 349 | `result-track:5b775b05af745b4b73073d5a3477e30cd8565c5f19fa2e7d777da31e2ce728d5` |
| 23 | `theorem` | [normDet_codRestrict](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-codrestrict--84d3704899d78da8c88e5d8c.md) | 366 | `result-track:84d3704899d78da8c88e5d8c246d9330ecede70ab4d6080d8aa96dd60b4f1010` |
| 24 | `theorem` | [normDet_eq_prod_singularValues](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-prod-singularvalues--9241124dc5aacc7e8011dab4.md) | 375 | `result-track:9241124dc5aacc7e8011dab45cc59b7ffc24d44e8f746b17500548b050319b3a` |
| 25 | `theorem` | [normDet_eq_abs_det](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/normdet-eq-abs-det--e48ba6a6cc7c0c18d3b27890.md) | 390 | `result-track:e48ba6a6cc7c0c18d3b2789040b4f232fa3b695aa191c1982c7325ca38356fcc` |
| 26 | `theorem` | [hausdorffMeasure_image](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/hausdorffmeasure-image--ffc75c61a9efbef15a510393.md) | 397 | `result-track:ffc75c61a9efbef15a5103936268660cfc07dbc11fe50b0f7272330d6101d8e7` |
| 27 | `theorem` | [euclideanHausdorffMeasure_image](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/euclideanhausdorffmeasure-image--d745c09596a2415c39cf7cd6.md) | 423 | `result-track:d745c09596a2415c39cf7cd6a8f98e6a835e72e52aa96b989e96d8d531615caf` |
| 28 | `theorem` | [euclideanHausdorffMeasure_image_eq_normDet_mul_volume](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/declarations/euclideanhausdorffmeasure-image-eq-normdet-mul-volume--49b6bc436c8c872f45e23967.md) | 434 | `result-track:49b6bc436c8c872f45e239670fe21fc6dd1d90b4398f1cefd84ee1c161cee322` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
