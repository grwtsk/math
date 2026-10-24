# Verification target: GRWTSK.Analysis.FunctionalAnalysis.NormDet.Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "322ac51cb5f120cd8166341a576cd6eb59cb3a63",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `322ac51cb5f120cd8166341a576cd6eb59cb3a63`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDimension` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normDet](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet--10a7fa378ccd553787ced532.md) | 78 | `declaration-track:10a7fa378ccd553787ced5320ac1a54124ea59a43b235f8abd059af7e7204ff0` |
| 2 | `theorem` | [normDet_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-nonneg--0c42f40e9c296bac0b9a5bcb.md) | 84 | `result-track:0c42f40e9c296bac0b9a5bcbad40dbdcba475833ecd092b847642ec51965d4ed` |
| 3 | `theorem` | [normDet_eq_norm_det_toMatrix_rangeRestrict](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-norm-det-tomatrix-rangerestrict--c8e9b1c51ca46e21820f03b7.md) | 91 | `result-track:c8e9b1c51ca46e21820f03b768d4cae881609be06f609f5cf1d5a0c3d93f966c` |
| 4 | `theorem` | [normDet_eq_zero_iff_ker_ne_bot](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-zero-iff-ker-ne-bot--5a4291f8710d85638aa1197a.md) | 120 | `result-track:5a4291f8710d85638aa1197a000bc21d5a2748fbe8d1cf626f83f3684eb9c148` |
| 5 | `theorem` | [normDet_eq_zero_iff_rank_range_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-zero-iff-rank-range-ne--6cbcd6dabb8972bbca2a9a1d.md) | 143 | `result-track:6cbcd6dabb8972bbca2a9a1de836883bf087fc16533886dc87c1fc3645963890` |
| 6 | `theorem` | [normDet_ne_zero_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-ne-zero-tfae--4bdbe1ce10dbc090d62bc07d.md) | 147 | `result-track:4bdbe1ce10dbc090d62bc07d106f1ff6bcfa6faadb24c4cfce9f05a07a2b9959` |
| 7 | `def` | [orthonormalBasis_range](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/orthonormalbasis-range--39d49a3e5c6fc622481e3235.md) | 165 | `declaration-track:39d49a3e5c6fc622481e32358356e0abe98a48287c96fbc91495bb181094eafd` |
| 8 | `theorem` | [normDet_eq_zero_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-zero-tfae--57f924628c9a523860068188.md) | 171 | `result-track:57f924628c9a523860068188be742282771b3a97e3ff1b178233fa34628a95c0` |
| 9 | `theorem` | [normDet_eq_norm_det_toMatrix](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-norm-det-tomatrix--668a51653b00d5eb3a1076f6.md) | 191 | `result-track:668a51653b00d5eb3a1076f623f66016013e7360dfa32e125d3acb1bd0b6c451` |
| 10 | `theorem` | [normDet_eq_norm_det](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-norm-det--923a00654e91e3d944b3002f.md) | 215 | `result-track:923a00654e91e3d944b3002febc9d55f1f1f80c6aebdacb516892909099f60bb` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.NormDet.Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.LinearIsometry.normDet_eq_one](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/root-grwtsk-analysis-functionalanalysis-normdet-variant02b6b5b5f990aefec--fe2389c2f7c3a78a9a25d447.md) | 222 | `result-track:fe2389c2f7c3a78a9a25d4471a8ea9e1fa63e13462d66c8a159c69df1ee71d7e` |
| 12 | `theorem` | [normDet_id](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-id--c992d11fe9fb1cbb8b200287.md) | 229 | `result-track:c992d11fe9fb1cbb8b2002870795100a561d8cc0547cac87afad1b4193648cd7` |
| 13 | `theorem` | [normDet_subtype](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-subtype--76c2247328c491317b8453e6.md) | 233 | `result-track:76c2247328c491317b8453e60746a5f43f98e5214893edbe3fb874d052d41143` |
| 14 | `theorem` | [normDet_of_subsingleton](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-of-subsingleton--68165f21f2f01559e4347bc5.md) | 237 | `result-track:68165f21f2f01559e4347bc51206cee703b5959a006b5c2dc1fac183e51a8fff` |
| 15 | `theorem` | [normDet_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-zero--be4087ea760d439f03f60cc3.md) | 245 | `result-track:be4087ea760d439f03f60cc3f6c9f4764f567f41a37495217f28a2175cdbbf45` |
| 16 | `theorem` | [normDet_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-smul--04dfe86fe64e6422fa6e2466.md) | 250 | `result-track:04dfe86fe64e6422fa6e246670c2c835a2ccdb28954da1d1672afaa97b07a6f9` |
| 17 | `theorem` | [normDet_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-neg--3abca1b927df7324add72a1f.md) | 270 | `result-track:3abca1b927df7324add72a1f52c3c6563358969a1329050b5260df76508fca0b` |
| 18 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.NormDet.Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.ContinuousLinearMap.normDet_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/root-grwtsk-analysis-functionalanalysis-normdet-variant02b6b5b5f990aefec--852e69719f18a7cd598454e9.md) | 276 | `result-track:852e69719f18a7cd598454e95a6b8b4848a7809480bf16bafdc59bb0f59d6a2a` |
| 19 | `theorem` | [normDet_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-sq--7862c1664c3828919dc2a2e5.md) | 303 | `result-track:7862c1664c3828919dc2a2e54236c7c469959c2693dfcc29193d67d030169cbc` |
| 20 | `theorem` | [normDet_sq_eq_det_gram](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-sq-eq-det-gram--23628656e2812dd4e64c60db.md) | 312 | `result-track:23628656e2812dd4e64c60dbf6a06a8b1c22bdd9075b63a8277fce06346b8779` |
| 21 | `theorem` | [normDet_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-comp--300264e1506f23363540f6ef.md) | 333 | `result-track:300264e1506f23363540f6ef92642e25e05e05a7c14a606c79d69cf62aec37aa` |
| 22 | `theorem` | [normDet_comp_of_finrank_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-comp-of-finrank-eq--9d9f8ce105e01e8a52d0e1be.md) | 357 | `result-track:9d9f8ce105e01e8a52d0e1bea6e93ec8c06321edd5a27a874f82c083f00aa8f9` |
| 23 | `theorem` | [normDet_codRestrict](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-codrestrict--e9f531f580f95edbc240bc71.md) | 374 | `result-track:e9f531f580f95edbc240bc71316044a39cb3fe690c997e4f531ea5d29ef614f2` |
| 24 | `theorem` | [normDet_eq_prod_singularValues](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-prod-singularvalues--59b3b868fafd2c6c36f29c55.md) | 383 | `result-track:59b3b868fafd2c6c36f29c5543516eaed99536fa5964b6f120597572c1c61085` |
| 25 | `theorem` | [normDet_eq_abs_det](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/normdet-eq-abs-det--af6b0fab300a8de485d64590.md) | 398 | `result-track:af6b0fab300a8de485d645909ccd1bee2679ff187c21ef1badd9b32453def09d` |
| 26 | `theorem` | [hausdorffMeasure_image](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/hausdorffmeasure-image--78c8b0af807b717d23b98088.md) | 405 | `result-track:78c8b0af807b717d23b98088bcc64ae95879e7b9ffee21095804b627d3f28ba0` |
| 27 | `theorem` | [euclideanHausdorffMeasure_image](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/euclideanhausdorffmeasure-image--bffe3c727bc7c3d3043ab49a.md) | 431 | `result-track:bffe3c727bc7c3d3043ab49a4cd9a64e59ea041b333ebbe5558be068656f714c` |
| 28 | `theorem` | [euclideanHausdorffMeasure_image_eq_normDet_mul_volume](../../../../../mathematics/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/declarations/euclideanhausdorffmeasure-image-eq-normdet-mul-volume--f145e3188d88ae6c047b1270.md) | 442 | `result-track:f145e3188d88ae6c047b12703d6c151dfafd38d5f67e0a006c200823015675d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
