# GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Clique.Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**145 observed declarations and anonymous commands**, 123 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dc19580174aabe33fed24944c87b5ccf551fa74`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsClique](declarations/isclique--4a3fc4d4cbb0ff315a36df88.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isClique_iff](declarations/isclique-iff--6f3e1e3c4376ad24d8d8f7e8.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [not_isClique_iff](declarations/not-isclique-iff--189dbe4955b9501074ce7dd0.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isClique_iff_induce_eq](declarations/isclique-iff-induce-eq--2ec9849d1a3d574df0b3ddbd.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance--c1854c0b770278f4ebdc0b5e.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isClique_empty](declarations/isclique-empty--0f673e2fef293114c7e5a9dc.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isClique_singleton](declarations/isclique-singleton--eefc187a7fc651e720433f85.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsClique.of_subsingleton](declarations/isclique-of-subsingleton--58d4e66d653a5459617a4aaf.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isClique_pair](declarations/isclique-pair--f8503bc697b91f785c6172f9.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isClique_insert](declarations/isclique-insert--990cf27d68986c4e2e390c8f.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isClique_insert_of_notMem](declarations/isclique-insert-of-notmem--3b6d0974131810175531f1e7.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsClique.insert](declarations/isclique-insert--228e793ec660ca4f472cbf97.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsClique.mono](declarations/isclique-mono--560a061950654f5d50d64623.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsClique.subset](declarations/isclique-subset--944b8942ecffb056a5699270.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isClique_bot_iff](declarations/isclique-bot-iff--0867d36106705d3c7c715f68.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsClique.map](declarations/isclique-map--712c902fef6364e0c8830642.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isClique_map_iff_of_nontrivial](declarations/isclique-map-iff-of-nontrivial--60e103dadd2c4e891f5e0846.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isClique_map_iff](declarations/isclique-map-iff--62eb01f3edb8c008f4f22fdc.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isClique_map_image_iff](declarations/isclique-map-image-iff--37a0ee255cba176ff77fa6ce.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isClique_map_finset_iff_of_nontrivial](declarations/isclique-map-finset-iff-of-nontrivial--11924dda8a23ea8dc4e5b78a.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isClique_map_finset_iff](declarations/isclique-map-finset-iff--c12a1cdf30dcce17efadf137.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsClique.finsetMap](declarations/isclique-finsetmap--c8b1c7ba862dbcb2e010033a.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsClique.of_induce](declarations/isclique-of-induce--1b78cfb1401e0c88804b0eec.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsClique.sdiff_of_sup_edge](declarations/isclique-sdiff-of-sup-edge--e2fd68b2f75d1dffeff6c833.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isClique_sup_edge_of_ne_sdiff](declarations/isclique-sup-edge-of-ne-sdiff--281ac0e05269389e0568d447.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isClique_sup_edge_of_ne_iff](declarations/isclique-sup-edge-of-ne-iff--ef5def13ada98b1cd3030039.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [IsNClique](declarations/isnclique--2d93e972705c8e7e42c5e839.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isNClique_iff](declarations/isnclique-iff--bec6ac6949e50b60495a18c4.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance--36a5d1ab5b1e26381db645ec.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isNClique_empty](declarations/isnclique-empty--30a5bd5d92e1e7cd3945a62e.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isNClique_singleton](declarations/isnclique-singleton--56966a083224153a14ec609e.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsNClique.mono](declarations/isnclique-mono--e1e7a715cd510dc6b0d5d1df.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsNClique.map](declarations/isnclique-map--6ce7e095d1ecc3046c988aea.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isNClique_map_iff](declarations/isnclique-map-iff--29f1fc8d572962c4fd1b5a33.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isNClique_bot_iff](declarations/isnclique-bot-iff--fff4c0c03e078f894e7f39ea.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isNClique_zero](declarations/isnclique-zero--3f58836d37a590d6c74871c0.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isNClique_one](declarations/isnclique-one--79ff6dd73984796113b2e59e.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsNClique.insert](declarations/isnclique-insert--606438204502502eca6e8342.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsNClique.erase_of_mem](declarations/isnclique-erase-of-mem--d21142ec67cb7a7dcdb1aa0d.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsNClique.insert_erase](declarations/isnclique-insert-erase--85c99417794ba7deb39e0449.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [is3Clique_triple_iff](declarations/is3clique-triple-iff--7209225623d5fb476b636f64.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [is3Clique_iff](declarations/is3clique-iff--82cb95a5989943c37bbf517d.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [is3Clique_iff_exists_cycle_length_three](declarations/is3clique-iff-exists-cycle-length-three--d8ad04547a523f338e556a7c.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsNClique.of_induce](declarations/isnclique-of-induce--aa43154a8d4c0f2ec67c1388.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [IsNClique.erase_of_sup_edge_of_mem](declarations/isnclique-erase-of-sup-edge-of-mem--68b86498e36063de80f500cd.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [CliqueFree](declarations/cliquefree--f73071250756f2ba0817a5df.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsNClique.not_cliqueFree](declarations/isnclique-not-cliquefree--fe1f398660a840dc9f8625ea.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_cliqueFree_of_top_embedding](declarations/not-cliquefree-of-top-embedding--07235854de1c6ce7ec4e4c48.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [topEmbeddingOfNotCliqueFree](declarations/topembeddingofnotcliquefree--cf1fc39307078b0d90307890.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_cliqueFree_iff](declarations/not-cliquefree-iff--342213e1d74811e5e8726d1a.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [cliqueFree_iff](declarations/cliquefree-iff--c7d42465d33926814765a4a8.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_cliqueFree_card_of_top_embedding](declarations/not-cliquefree-card-of-top-embedding--54e0f31abeed57dcb6d73c71.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [not_cliqueFree_zero](declarations/not-cliquefree-zero--9619af32b11471623127581e.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cliqueFree_bot](declarations/cliquefree-bot--e7ad018d59fe410a4e8ce085.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [CliqueFree.mono](declarations/cliquefree-mono--8f39b24c7437bef09ac93881.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [CliqueFree.anti](declarations/cliquefree-anti--e521c7cc0df821879a368a4a.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [CliqueFree.comap](declarations/cliquefree-comap--a26d5d3b1c2715fd11241043.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [cliqueFree_map_iff](declarations/cliquefree-map-iff--94fa8f56696b3651862107af.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cliqueFree_of_card_lt](declarations/cliquefree-of-card-lt--8a8f3980de8224230b1bece5.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cliqueFree_completeMultipartiteGraph](declarations/cliquefree-completemultipartitegraph--0a77524a5fb119febf073423.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [topEmbedding](declarations/topembedding--37f37da0de4af476b57ffb83.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [not_cliqueFree_of_le_card](declarations/not-cliquefree-of-le-card--262aae2f2c61ee8e333eeb5b.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [not_cliqueFree_of_infinite](declarations/not-cliquefree-of-infinite--344462068e4081bfeff79386.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [not_cliqueFree_of_le_enatCard](declarations/not-cliquefree-of-le-enatcard--6458f6c9b7261306c77e1f45.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [CliqueFree.replaceVertex](declarations/cliquefree-replacevertex--c79bf52261bfb390dec5da61.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [cliqueFree_one](declarations/cliquefree-one--df6c339373365758fb0899a4.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [cliqueFree_two](declarations/cliquefree-two--31bce77e8a9288300f9c7389.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [CliqueFree.mem_of_sup_edge_isNClique](declarations/cliquefree-mem-of-sup-edge-isnclique--d80f1315443c15791c795da4.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [CliqueFree.sup_edge](declarations/cliquefree-sup-edge--c233df3c8171a20f3f5ef15b.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [IsNClique.exists_not_adj_of_cliqueFree_succ](declarations/isnclique-exists-not-adj-of-cliquefree-succ--617e01c22ac768bb8c0a0524.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [exists_of_maximal_cliqueFree_not_adj](declarations/exists-of-maximal-cliquefree-not-adj--d591cdafa90ff1ab5bc5bd33.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [CliqueFreeOn](declarations/cliquefreeon--b71a6ed4b412149c0e76d4fd.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [CliqueFreeOn.subset](declarations/cliquefreeon-subset--dabd180addaaa1a4cdd6a417.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [CliqueFreeOn.mono](declarations/cliquefreeon-mono--d98132392058334490c7347f.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [CliqueFreeOn.anti](declarations/cliquefreeon-anti--69c71ebaee7aec6e19acf9fe.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [cliqueFreeOn_empty](declarations/cliquefreeon-empty--f403a0d65d063ccf996989b2.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [cliqueFreeOn_singleton](declarations/cliquefreeon-singleton--f5c4cab0e35c075b072c664b.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [cliqueFreeOn_univ](declarations/cliquefreeon-univ--840026871c8bb4b8e9e1d24b.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [CliqueFree.cliqueFreeOn](declarations/cliquefree-cliquefreeon--4bfe4b6b311757e55247fd69.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [cliqueFreeOn_of_card_lt](declarations/cliquefreeon-of-card-lt--96bf05153367ad1761dfd6cc.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [cliqueFreeOn_two](declarations/cliquefreeon-two--cea770cdc96828ca2004e60b.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [CliqueFreeOn.of_succ](declarations/cliquefreeon-of-succ--c717a90c3f6151124f362eb7.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [cliqueSet](declarations/cliqueset--aec1362720c259d9beaf692b.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [mem_cliqueSet_iff](declarations/mem-cliqueset-iff--3a28fb842350b1da3df7fca7.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [cliqueSet_eq_empty_iff](declarations/cliqueset-eq-empty-iff--d1e4ee5905d703c6e76241fc.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [cliqueSet_mono](declarations/cliqueset-mono--4f3881abfbc377177de5c9f2.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [cliqueSet_mono'](declarations/cliqueset-mono--e991764aa9321d02f1556b78.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [cliqueSet_zero](declarations/cliqueset-zero--7ea27f3124af438f322e6144.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [cliqueSet_one](declarations/cliqueset-one--1c39b3712c747d951c4da2f4.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [cliqueSet_bot](declarations/cliqueset-bot--701fd358bf0dca9054197e7f.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [cliqueSet_map](declarations/cliqueset-map--c2658eb8046ec1d788529685.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [cliqueSet_map_of_equiv](declarations/cliqueset-map-of-equiv--8a1461daee51b985d2e82ffe.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [cliqueNum](declarations/cliquenum--c9e50cb8b7aa8bb61ee547d1.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [fintype_cliqueNum_bddAbove](declarations/fintype-cliquenum-bddabove--5c987a76215d978ac63be4e4.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [IsClique.card_le_cliqueNum](declarations/isclique-card-le-cliquenum--0da3487b890df31be7eb7d91.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [exists_isNClique_cliqueNum](declarations/exists-isnclique-cliquenum--e4f62585799014eabd217e1c.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `structure` | [IsMaximumClique](declarations/ismaximumclique--cb86684da22f16d8a343e0b4.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isMaximumClique_iff](declarations/ismaximumclique-iff--965521b1b1fcc4f27b18fb9b.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [isMaximalClique_iff](declarations/ismaximalclique-iff--4030c1c06cca8ccc7484ebb2.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [IsMaximumClique.isMaximalClique](declarations/ismaximumclique-ismaximalclique--6f00bfc6b4995d6a866dff86.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [maximumClique_card_eq_cliqueNum](declarations/maximumclique-card-eq-cliquenum--dd0f2b69ba42a3b700c113a5.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [maximumClique_exists](declarations/maximumclique-exists--da45ae6aa3bbede562482321.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [cliqueFinset](declarations/cliquefinset--5de0a2e057f160628753808e.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mem_cliqueFinset_iff](declarations/mem-cliquefinset-iff--e97900881a039c49d79b2b29.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [coe_cliqueFinset](declarations/coe-cliquefinset--2006045efccfcb8ad24f3cc9.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [cliqueFinset_eq_empty_iff](declarations/cliquefinset-eq-empty-iff--45b3a86436a9ed28564bf6d4.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [card_cliqueFinset_le](declarations/card-cliquefinset-le--a8bfbbed9970ec7f661d6365.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [cliqueFinset_mono](declarations/cliquefinset-mono--54ad375c7729a264f8683023.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [cliqueFinset_map](declarations/cliquefinset-map--b36e6fc6b9ab4e6ce00ea372.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [cliqueFinset_map_of_equiv](declarations/cliquefinset-map-of-equiv--de3e565b513291c7726eae96.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [IsIndepSet](declarations/isindepset--57d7d4418cc370e21b8b08e2.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [isIndepSet_iff](declarations/isindepset-iff--9b2a83d48b4fd79bd8b618f5.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [isClique_compl](declarations/isclique-compl--93805c4299a2b68bcd3deb02.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [isIndepSet_compl](declarations/isindepset-compl--42941905da594407c52b1f2a.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [(anonymous)](declarations/instance--fe2ff8957d1f8bf4608df7da.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [IsIndepSet.nonempty_mem_compl_mem_edge](declarations/isindepset-nonempty-mem-compl-mem-edge--86d6e79e3a4a1ac56eb013a6.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [isIndepSet_neighborSet_of_triangleFree](declarations/isindepset-neighborset-of-trianglefree--04c7cb12e3d04f069f7f41a1.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [isIndepSet_induce](declarations/isindepset-induce--90dadc68058a204b53d01107.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `structure` | [IsNIndepSet](declarations/isnindepset--272bab88360e62fe22a61bc9.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [isNClique_compl](declarations/isnclique-compl--eecd5703447bddbc6b26d76a.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [isNIndepSet_compl](declarations/isnindepset-compl--7dd741ac80a59bb454cb96cf.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [(anonymous)](declarations/instance--ca19d52912ce37ba3935d397.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [isNIndepSet_induce](declarations/isnindepset-induce--ddbabbc9da29197417a91458.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [IndepSetFree](declarations/indepsetfree--a373a06468ab319005957746.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [cliqueFree_compl](declarations/cliquefree-compl--b4800c43998f2ffd002806b0.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [indepSetFree_compl](declarations/indepsetfree-compl--d9563f27bcc35433a0d6418e.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [IndepSetFreeOn](declarations/indepsetfreeon--4a5244a4f65fbbba859e54fd.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [indepSetSet](declarations/indepsetset--9ca21dfe3dea9e0e9bcc364f.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [mem_indepSetSet_iff](declarations/mem-indepsetset-iff--9ec602b82ba3fc8bc7c8e2a0.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [indepNum](declarations/indepnum--c49a383965dbfbfd7bf52300.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [cliqueNum_compl](declarations/cliquenum-compl--2c05f0605265fa14dc848717.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [indepNum_compl](declarations/indepnum-compl--69075e166209a64fafb86a85.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [IsIndepSet.card_le_indepNum](declarations/isindepset-card-le-indepnum--902fded3ed2ba76a6c0770ff.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [exists_isNIndepSet_indepNum](declarations/exists-isnindepset-indepnum--fa764cbe51f3f303d7ae39d1.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `structure` | [IsMaximumIndepSet](declarations/ismaximumindepset--fa16e601e837cc8e713156e5.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [isMaximumClique_compl](declarations/ismaximumclique-compl--52c9f5caf3b9510353b681fa.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [isMaximumIndepSet_compl](declarations/ismaximumindepset-compl--593f5d8791bb75220dd98326.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [isMaximalIndepSet_iff](declarations/ismaximalindepset-iff--2c5b1e2ac01ac57ce808ccbb.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [isMaximalClique_compl](declarations/ismaximalclique-compl--d9863af6fc2e585486090a1c.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [isMaximalIndepSet_compl](declarations/ismaximalindepset-compl--e079c2d6392962aca55b8086.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [IsMaximumIndepSet.isMaximalIndepSet](declarations/ismaximumindepset-ismaximalindepset--c3791a34c70c254f2c2d0c5d.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [maximumIndepSet_card_eq_indepNum](declarations/maximumindepset-card-eq-indepnum--6caf6634d572422bc9ba5809.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [maximumIndepSet_exists](declarations/maximumindepset-exists--dca5fd30e3c8f14d3311c556.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [indepSetFinset](declarations/indepsetfinset--2e20b80399b1ede1f5d55b38.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [mem_indepSetFinset_iff](declarations/mem-indepsetfinset-iff--52fc5617182c630d541fe7fb.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
