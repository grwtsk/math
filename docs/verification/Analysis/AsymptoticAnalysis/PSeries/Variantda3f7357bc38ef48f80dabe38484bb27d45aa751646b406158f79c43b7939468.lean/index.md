# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PSeries.Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc053ee83f754bb12a8950c5708168075c539e39",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc053ee83f754bb12a8950c5708168075c539e39`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumOverResidueClass` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SuccDiffBounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/succdiffbounded--3cab699ed26bf0dcc2e93eeb.md) | 41 | `declaration-track:3cab699ed26bf0dcc2e93eebe41d2bcf3a66d19353ff7d66356059afc01f60ab` |
| 2 | `theorem` | [le_sum_schlomilch'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/le-sum-schlomilch--c8169c7a3c3b53d27432018b.md) | 49 | `result-track:c8169c7a3c3b53d27432018b60b00affb51ff3304177e89626586dcf05025623` |
| 3 | `theorem` | [le_sum_condensed'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/le-sum-condensed--f72f71c73e8b8e09784da34e.md) | 64 | `result-track:f72f71c73e8b8e09784da34e88e6070267ac3a7bc64481097194279d334a0889` |
| 4 | `theorem` | [le_sum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/le-sum-schlomilch--c47f2b0cc46088992d2406b5.md) | 70 | `result-track:c47f2b0cc46088992d2406b5837feeb7c8c0f985be4f33fcdfa4319a948975b8` |
| 5 | `theorem` | [le_sum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/le-sum-condensed--bb66046dbb3439385346e996.md) | 77 | `result-track:bb66046dbb3439385346e9961506224e51e6c317297f13ae89c82f8ab2bbc184` |
| 6 | `theorem` | [sum_schlomilch_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/sum-schlomilch-le--2205ec5eefb4cdcff834198e.md) | 82 | `result-track:2205ec5eefb4cdcff834198ea3ec85e1cca8bf20ba53a7dabfb6ef9b9d24da85` |
| 7 | `theorem` | [sum_condensed_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/sum-condensed-le--3560a87c4097e389d53c36ba.md) | 99 | `result-track:3560a87c4097e389d53c36ba0ee902c8416954d8b2c7693f8b211d32edd09579` |
| 8 | `theorem` | [sum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/sum-schlomilch-le--9f3724eacf87a34275b0a155.md) | 105 | `result-track:9f3724eacf87a34275b0a1559ef981c6f6c5c6faae36c09bae22483a689c1dd9` |
| 9 | `theorem` | [sum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/sum-condensed-le--0db258205a63f20e57f8da14.md) | 125 | `result-track:0db258205a63f20e57f8da14b75d5054508f4ce16dc4338b06c1021e56863cb3` |
| 10 | `theorem` | [le_tsum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/le-tsum-schlomilch--74817460522c99ef2ebb39b0.md) | 139 | `result-track:74817460522c99ef2ebb39b08ce46c1a0df4b5374d9507b7f5ed1f44bb2afd64` |
| 11 | `theorem` | [le_tsum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/le-tsum-condensed--f2ab6b538a5e722a02dec603.md) | 150 | `result-track:f2ab6b538a5e722a02dec60380a5cb7a651f0a4faea257c2e245d95bd6783f9a` |
| 12 | `theorem` | [tsum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/tsum-schlomilch-le--4b1c71ce07a5682819da89da.md) | 157 | `result-track:4b1c71ce07a5682819da89daf7f4970247508014d4a590ea30f8dc431c386707` |
| 13 | `theorem` | [tsum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/tsum-condensed-le--725bbea0a32f3c26816ed5f3.md) | 169 | `result-track:725bbea0a32f3c26816ed5f33efbfe7ed397d658248b93027c527b5377a8cb13` |
| 14 | `theorem` | [summable_schlomilch_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-schlomilch-iff--e95829136f3ef5e4ad62929a.md) | 187 | `result-track:e95829136f3ef5e4ad62929ac737ad32bcb472c131657a89a3216431a9b582df` |
| 15 | `theorem` | [summable_condensed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-condensed-iff--10fe9acaf4938e990a46c5f3.md) | 206 | `result-track:10fe9acaf4938e990a46c5f33bbd6bd65186a1b78a6d9b9074ac26d234657db9` |
| 16 | `theorem` | [summable_schlomilch_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-schlomilch-iff-of-nonneg--77cb8f28eb1965dcac595843.md) | 219 | `result-track:77cb8f28eb1965dcac595843aaa077b888819b43213a59178be581606dae4c1a` |
| 17 | `theorem` | [summable_condensed_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-condensed-iff-of-nonneg--13cee12d20179c25a33dd53a.md) | 232 | `result-track:13cee12d20179c25a33dd53a2648a34237e1f41e687e61b76afe924018967669` |
| 18 | `theorem` | [summable_nat_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-nat-rpow-inv--a3e4fe8bc5c32129f36202fc.md) | 260 | `result-track:a3e4fe8bc5c32129f36202fcc55f6b3a4e9610ba033fd4440e07fd199e0558a3` |
| 19 | `theorem` | [summable_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-nat-rpow--83e514318e641418faad60a8.md) | 291 | `result-track:83e514318e641418faad60a80dfeb83a48f1b494e4f250176ac2b3ecca5d9249` |
| 20 | `theorem` | [summable_one_div_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-one-div-nat-rpow--c19042beba2979df1e3f72a2.md) | 297 | `result-track:c19042beba2979df1e3f72a23141173b2e01d2349310f07a0409dbd76b2fe581` |
| 21 | `theorem` | [summable_nat_pow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-nat-pow-inv--e3bb72011d5aa176dccdf114.md) | 304 | `result-track:e3bb72011d5aa176dccdf1143e6215f64d7760df1adafa64df4fcd875256b7b8` |
| 22 | `theorem` | [summable_one_div_nat_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-one-div-nat-pow--be924de6fb18ef6bf0bb38a5.md) | 310 | `result-track:be924de6fb18ef6bf0bb38a505878b207e0a821a6e2f8656133e4b00ec004f9f` |
| 23 | `theorem` | [summable_one_div_int_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-one-div-int-pow--bb06cb8fd562bad4ca69a413.md) | 315 | `result-track:bb06cb8fd562bad4ca69a413502a8e664767f1b11ce56c6b59c86401384a5773` |
| 24 | `theorem` | [summable_abs_int_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-abs-int-rpow--be9376a76b21b3aa91b513f5.md) | 322 | `result-track:be9376a76b21b3aa91b513f5fe67698c90b1375f472abe6de88e47922080e5f7` |
| 25 | `theorem` | [not_summable_natCast_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/not-summable-natcast-inv--1904d38308a50bd4eac19249.md) | 331 | `result-track:1904d38308a50bd4eac192490a58aa5f3dbcd93822a1e1cc85e1078682cc2b0a` |
| 26 | `theorem` | [not_summable_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/not-summable-one-div-natcast--3573c918fc867aa562c5c6c0.md) | 337 | `result-track:3573c918fc867aa562c5c6c05da4427750c5ee680216c1e2443a3b9462b84183` |
| 27 | `theorem` | [tendsto_sum_range_one_div_nat_succ_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/tendsto-sum-range-one-div-nat-succ-attop--a70d345d72cb1c2aa0fbe7d6.md) | 341 | `result-track:a70d345d72cb1c2aa0fbe7d625237cf9048c0b9022840b0ec3fa269276adf687` |
| 28 | `theorem` | [summable_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-rpow-inv--1562f0e28fa774de8b2b638c.md) | 352 | `result-track:1562f0e28fa774de8b2b638c7fdf6772de5faf8a8d83ec016587f13c90459b91` |
| 29 | `theorem` | [summable_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-rpow--41fd9bb642809520e8fa3ab4.md) | 357 | `result-track:41fd9bb642809520e8fa3ab45f6e476fd562500562c83eb0cf98c028f916e513` |
| 30 | `theorem` | [summable_one_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-one-div-rpow--7721c694e805c9f887196e43.md) | 360 | `result-track:7721c694e805c9f887196e433b108a07f1069a8cc3abebc91233b002255e3ce7` |
| 31 | `theorem` | [sum_Ioc_inv_sq_le_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/sum-ioc-inv-sq-le-sub--08d120b75cfe8fb968f05fe3.md) | 374 | `result-track:08d120b75cfe8fb968f05fe39880cc482fc4906d1483cebaa64ad920d02e5d94` |
| 32 | `theorem` | [sum_Ioo_inv_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/sum-ioo-inv-sq-le--8a5d3a932c17c4a586ccbfc8.md) | 389 | `result-track:8a5d3a932c17c4a586ccbfc852d6cded033e69f62c0b4a90f6bb3de14fc037fc` |
| 33 | `lemma` | [Real.not_summable_indicator_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/real-not-summable-indicator-one-div-natcast--2267ebb66ab38cff0c16a227.md) | 418 | `result-track:2267ebb66ab38cff0c16a227f1b22199c5c0dc31d2e79b5a8662a746d3996227` |
| 34 | `lemma` | [Real.summable_one_div_nat_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/real-summable-one-div-nat-add-rpow--496560e8216792215438ae07.md) | 436 | `result-track:496560e8216792215438ae07ec6d46fdde22c582c99269916fa15555d5bdc970` |
| 35 | `lemma` | [Real.summable_one_div_int_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/real-summable-one-div-int-add-rpow--cddab1da574db9d3c69e3ce0.md) | 461 | `result-track:cddab1da574db9d3c69e3ce095886c7137a7acb79ad9b1c61c8c04163f81a3bb` |
| 36 | `theorem` | [summable_pow_div_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/declarations/summable-pow-div-add--5bbae455cb19b87a6efa1f83.md) | 466 | `result-track:5bbae455cb19b87a6efa1f83f7033a315220f14d6f0236477b6ce96f47566e0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
