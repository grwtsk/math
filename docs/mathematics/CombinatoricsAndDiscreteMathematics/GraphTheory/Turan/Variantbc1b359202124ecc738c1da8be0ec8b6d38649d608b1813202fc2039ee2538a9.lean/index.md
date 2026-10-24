# GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Turan.Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff42de11d5bc83a29b72c85401a351e15fd390a3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTuranMaximal](declarations/isturanmaximal--4f054e9f9b2485d92d993959.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [turanGraph](declarations/turangraph--f4d19efde7421df7d87df0a8.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [turanGraph_adj](declarations/turangraph-adj--f74a9d85d09c9e75f134c0c3.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--a735ad6c0c4f39e28cf3785c.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [turanGraph_zero](declarations/turangraph-zero--596cd295bb9d04b21cb59a02.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [turanGraph_one](declarations/turangraph-one--7f516e9e381276fd2d11abfc.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [turanGraph_eq_top](declarations/turangraph-eq-top--3209126522cc6984269cbf5f.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [turanGraph_cliqueFree](declarations/turangraph-cliquefree--8d776598e9da03eed4e9f6af.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_cliqueFree_of_isTuranMaximal](declarations/not-cliquefree-of-isturanmaximal--68944565ca491874e2c2d267.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [exists_isTuranMaximal](declarations/exists-isturanmaximal--8c897f961589cfe708dd97ce.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [degree_eq_of_not_adj](declarations/degree-eq-of-not-adj--e631f51dbdec77cd18adc35c.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [not_adj_trans](declarations/not-adj-trans--f48cf182f73a86de187f06f8.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [equivalence_not_adj](declarations/equivalence-not-adj--0de23068a23f58a1fbfcdf81.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [setoid](declarations/setoid--11cd9fd57eea3f7bee1d167b.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--ae4ea08d7e6a19878e6e5ab6.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [finpartition](declarations/finpartition--861dbe5c9c45311cd4d4e5f1.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [not_adj_iff_part_eq](declarations/not-adj-iff-part-eq--08174aae703001618404c7e0.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [degree_eq_card_sub_part_card](declarations/degree-eq-card-sub-part-card--d15894a62479e8115fea26ff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isEquipartition](declarations/isequipartition--84f5d9f3901fa1f38d2f6c7b.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [card_parts_le](declarations/card-parts-le--71c31b39d6ec3230c266df8f.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [card_parts](declarations/card-parts--0225366fd1c16f0def3d0b5d.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nonempty_iso_turanGraph](declarations/nonempty-iso-turangraph--70532808bc1271d0aae5ad66.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isTuranMaximal_of_iso](declarations/isturanmaximal-of-iso--d1c5334a353e32e62f80dde8.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsTuranMaximal.iso](declarations/isturanmaximal-iso--f50182886e4c120a09f324aa.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isTuranMaximal_turanGraph](declarations/isturanmaximal-turangraph--55b8e249d967c3b2d64b6657.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](declarations/isturanmaximal-iff-nonempty-iso-turangraph--7dc04026a3b8f8db75c4b1c1.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isExtremal_top_free_iff_isTuranMaximal](declarations/isextremal-top-free-iff-isturanmaximal--3a631add8e11827e68a8b455.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isExtremal_top_free_turanGraph](declarations/isextremal-top-free-turangraph--3815bba3a8020834d1769687.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [extremalNumber_top](declarations/extremalnumber-top--366fdb2d25270110ac1052b0.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [card_edgeFinset_eq_extremalNumber_top_iff_nonempty_iso_turanGraph](declarations/card-edgefinset-eq-extremalnumber-top-iff-nonempty-iso-turangraph--b024b29af4db9c33a282e736.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [turanNumber](declarations/turannumber--b55438956275270955f1a292.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [sum_ne_add_mod_eq_sub_one](declarations/sum-ne-add-mod-eq-sub-one--21fcf7c8ff6a558ebf4a0cfa.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [turanNumber_add](declarations/turannumber-add--c52129567ad9978029494915.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [turanNumber_eq](declarations/turannumber-eq--1ef3d26db5ea9b47d37ddddc.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [turanNumber_two](declarations/turannumber-two--11bb59d1f7432369b1b22423.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [turanNumber_three](declarations/turannumber-three--9a6623ccfed40e8fa64d5b32.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mul_turanNumber_le](declarations/mul-turannumber-le--6a248cf7b501f143ee8fccfa.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [CliqueFree.card_edgeFinset_le](declarations/cliquefree-card-edgefinset-le--f52b469331cac7e875288bc7.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [strictMonoOn_turanNumber](declarations/strictmonoon-turannumber--36692f5530699c2115fc53ef.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
