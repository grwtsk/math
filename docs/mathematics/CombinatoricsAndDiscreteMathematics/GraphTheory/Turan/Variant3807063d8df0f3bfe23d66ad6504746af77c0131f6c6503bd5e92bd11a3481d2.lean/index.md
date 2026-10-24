# GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Turan.Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f231edf97a6473d17beef716418cc486190271a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTuranMaximal](declarations/isturanmaximal--ca99ce68b1ff481d74f9a214.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [turanGraph](declarations/turangraph--7a370a1c74ac10a9d82d9d70.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [turanGraph_adj](declarations/turangraph-adj--7c0707b0ecb95c95c581584c.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--df623dea4d5d6084b2a9ca81.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [turanGraph_zero](declarations/turangraph-zero--5911b06102803b297dee1790.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [turanGraph_one](declarations/turangraph-one--8ebaa3dabbd0a263a7539ebc.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [turanGraph_eq_top](declarations/turangraph-eq-top--1b08196f08d1516a7d87e256.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [turanGraph_cliqueFree](declarations/turangraph-cliquefree--3267283a90929a66a375bc5a.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_cliqueFree_of_isTuranMaximal](declarations/not-cliquefree-of-isturanmaximal--b1e9a0e7d361add6bcb8da9d.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [exists_isTuranMaximal](declarations/exists-isturanmaximal--8e4c3247340f7a78d0943669.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [degree_eq_of_not_adj](declarations/degree-eq-of-not-adj--863d614a30c4f29392e1a620.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [not_adj_trans](declarations/not-adj-trans--da64267844abaa98d074158a.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [equivalence_not_adj](declarations/equivalence-not-adj--3d7522950853b82c8772c6ef.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [setoid](declarations/setoid--8c9aa386395469221a77693a.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--fae859085c6f8058a97dafec.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [finpartition](declarations/finpartition--d734d60f24b692de24becfa3.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [not_adj_iff_part_eq](declarations/not-adj-iff-part-eq--21bcf6d32ac6b39bfab86372.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [degree_eq_card_sub_part_card](declarations/degree-eq-card-sub-part-card--c0db52e44cdff7c14e71ad3d.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isEquipartition](declarations/isequipartition--5d40d4ef9876ce4be7ea2cb7.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [card_parts_le](declarations/card-parts-le--26f36fa1a07e6e319d902147.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [card_parts](declarations/card-parts--ee89938e26bda45bd5b0c354.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nonempty_iso_turanGraph](declarations/nonempty-iso-turangraph--e9a2f1a56db05ea0787c159c.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isTuranMaximal_of_iso](declarations/isturanmaximal-of-iso--e06c7f755aef2d38c4df5b41.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsTuranMaximal.iso](declarations/isturanmaximal-iso--3361dca5b7925c873ecbd6b7.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isTuranMaximal_turanGraph](declarations/isturanmaximal-turangraph--a3bf7e79cee6df437f0725c0.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](declarations/isturanmaximal-iff-nonempty-iso-turangraph--d4e88d5c87db1926df0938b9.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isExtremal_top_free_iff_isTuranMaximal](declarations/isextremal-top-free-iff-isturanmaximal--bd1dc6419e286549af64d123.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isExtremal_top_free_turanGraph](declarations/isextremal-top-free-turangraph--96166e263568842123312def.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [extremalNumber_top](declarations/extremalnumber-top--329db9886f24bd03b26a16f8.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [card_edgeFinset_eq_extremalNumber_top_iff_nonempty_iso_turanGraph](declarations/card-edgefinset-eq-extremalnumber-top-iff-nonempty-iso-turangraph--393a5cbdbaa33abbb1f2e1f7.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [turanNumber](declarations/turannumber--b4f5113b396fddc29fc6aa73.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [sum_ne_add_mod_eq_sub_one](declarations/sum-ne-add-mod-eq-sub-one--dcb3edebb95a27d0017678df.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [turanNumber_add](declarations/turannumber-add--3b43e217bf694e1921a49d92.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [turanNumber_eq](declarations/turannumber-eq--3922c5e512ebcd641fe0a7aa.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [turanNumber_two](declarations/turannumber-two--c5f4c6e809a8b6a20f3fcfa5.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [turanNumber_three](declarations/turannumber-three--19a94b1ec125dc56b46a821d.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mul_turanNumber_le](declarations/mul-turannumber-le--e2bce285c77c8b2d5db5c4b5.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [CliqueFree.card_edgeFinset_le](declarations/cliquefree-card-edgefinset-le--687caa2600c12ae8ca82dea3.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [strictMonoOn_turanNumber](declarations/strictmonoon-turannumber--b97ef73cedc51c4585be93f2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
