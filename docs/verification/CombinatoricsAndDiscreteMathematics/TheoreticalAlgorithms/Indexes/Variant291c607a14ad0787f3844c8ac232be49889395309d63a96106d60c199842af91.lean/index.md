# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Indexes.Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e71ffe3e0832ff94cf98b0613fb8466ab449f23",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e71ffe3e0832ff94cf98b0613fb8466ab449f23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Induction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_reverse_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/list-reverse-induction--d16bacf073b4dde4554fd47c.md) | 35 | `result-track:d16bacf073b4dde4554fd47c0d01b9e9c04e2a81027e3f70fe05097988e06299` |
| 2 | `theorem` | [mapIdx_append_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidx-append-one--49997b0b36707bdaea179630.md) | 39 | `result-track:49997b0b36707bdaea179630e1d6f1f2c77f7b7b84f532535f669015eb0d104c` |
| 3 | `theorem` | [map_enumFrom_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/map-enumfrom-eq-zipwith--e191490dfab27f3d06f45020.md) | 45 | `result-track:e191490dfab27f3d06f45020ba96d1aa028062b3153f7f4d7a9cbfe1dc59aa0d` |
| 4 | `theorem` | [get_mapIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/get-mapidx--e967e6bce6fe7b5fd2e15f94.md) | 70 | `result-track:e967e6bce6fe7b5fd2e15f94d7c80a067ebe04d9c788f6841d6ce0e2271efa1f` |
| 5 | `theorem` | [mapIdx_eq_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidx-eq-offn--d04cf473c27f0ed1208a79a0.md) | 75 | `result-track:d04cf473c27f0ed1208a79a083748f965c82f1b33dc240e04ea275143d7c7106` |
| 6 | `def` | [foldrIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldridxspec--1727d680c09830040ba28e83.md) | 89 | `declaration-track:1727d680c09830040ba28e831dfab9a58395aa4b163d1bd09482c6eb5f9884be` |
| 7 | `theorem` | [foldrIdxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldridxspec-cons--1d8206ca4810595a17fa252b.md) | 94 | `result-track:1d8206ca4810595a17fa252bdcbd4c6e643e687dc65297f23aabf311d7a4019e` |
| 8 | `theorem` | [foldrIdx_eq_foldrIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldridx-eq-foldridxspec--fae56cdcf2bae912fca68813.md) | 100 | `result-track:fae56cdcf2bae912fca688134f1066b006378c31fc9e0d33e38fc0d00c96d13b` |
| 9 | `theorem` | [foldrIdx_eq_foldr_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldridx-eq-foldr-enum--2d4a3df232320f0f4f16f34f.md) | 108 | `result-track:2d4a3df232320f0f4f16f34fd30d6c85f1ad37a698fc1022f998d5ad72729c2e` |
| 10 | `theorem` | [indexesValues_eq_filter_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/indexesvalues-eq-filter-enum--c603c959f12724be84aee3de.md) | 116 | `result-track:c603c959f12724be84aee3de90b317e23a1fd80d46be587fe1666a61966276a6` |
| 11 | `theorem` | [findIdxs_eq_map_indexesValues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/findidxs-eq-map-indexesvalues--77933f3f7d5a87537b82c1b1.md) | 123 | `result-track:77933f3f7d5a87537b82c1b1e1c98d4ce93a2e6f5af120ace53016a5a5429a4c` |
| 12 | `def` | [foldlIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldlidxspec--f3b3814fd37e33cda162892d.md) | 135 | `declaration-track:f3b3814fd37e33cda162892d67c0530d7889ca856d36a8c599bc2741b0f28acb` |
| 13 | `theorem` | [foldlIdxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldlidxspec-cons--5ef58be925df9ce57fb1ac9d.md) | 140 | `result-track:5ef58be925df9ce57fb1ac9d49b9202ce84f3aea7b43d18342ffc6ab060f535a` |
| 14 | `theorem` | [foldlIdx_eq_foldlIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldlidx-eq-foldlidxspec--0127d106a1ecaac8dbdc77dd.md) | 146 | `result-track:0127d106a1ecaac8dbdc77dde60a2ec6f46fb47af08cdc685e62e3d72e3d0edc` |
| 15 | `theorem` | [foldlIdx_eq_foldl_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldlidx-eq-foldl-enum--c88344b137f369ab7f7cd59c.md) | 154 | `result-track:c88344b137f369ab7f7cd59cb22639b75aa6ddf00c9bef0ed5723602611551c7` |
| 16 | `theorem` | [foldrIdxM_eq_foldrM_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldridxm-eq-foldrm-enum--047a0f6e29c53b7e7d18c599.md) | 167 | `result-track:047a0f6e29c53b7e7d18c5994cd965bfd79a5b436caa72a2e03e16514bcac16d` |
| 17 | `theorem` | [foldlIdxM_eq_foldlM_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/foldlidxm-eq-foldlm-enum--8d1742ff66359fabef513769.md) | 174 | `result-track:8d1742ff66359fabef513769612200473daf6fd7e803a9e747ea1f75f5f2e2f2` |
| 18 | `def` | [mapIdxMAuxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidxmauxspec--085423f9d653ffede5a4fc0a.md) | 188 | `declaration-track:085423f9d653ffede5a4fc0a7eb2659bd8a7205bfbd105fedaf618435a81576d` |
| 19 | `theorem` | [mapIdxMAuxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidxmauxspec-cons--340331648849dd76a519dd80.md) | 195 | `result-track:340331648849dd76a519dd800b7722ab2b57c7bc71edf64261953a2593165b21` |
| 20 | `theorem` | [mapIdxMGo_eq_mapIdxMAuxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidxmgo-eq-mapidxmauxspec--a04db80c8cb798041511ab73.md) | 201 | `result-track:a04db80c8cb798041511ab73875b809a088db43b2f5db9b68cebc0b7f4e1eed2` |
| 21 | `theorem` | [mapIdxM_eq_mmap_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidxm-eq-mmap-enum--51ad49c22bf4f8f0910fe472.md) | 226 | `result-track:51ad49c22bf4f8f0910fe4727d2c4ec797e865a96d1ea87cd1c2eed1f8e761e6` |
| 22 | `theorem` | [mapIdxMAux'_eq_mapIdxMGo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidxmaux-eq-mapidxmgo--a8340e8510e7e898dbb5c1ac.md) | 238 | `result-track:a8340e8510e7e898dbb5c1ac3a8a3c544560c719704feabb84b8bbacdcfe46f4` |
| 23 | `theorem` | [mapIdxM'_eq_mapIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/declarations/mapidxm-eq-mapidxm--d88d6a166461bdaa7b127746.md) | 250 | `result-track:d88d6a166461bdaa7b127746111d17b7011511628a9eeed0d4451a5f3499271f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
