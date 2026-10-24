# GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.DyckWord.Variantff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0c70cab534ca340b58da8a0f603583dd3905fd0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DyckStep](declarations/dyckstep--22845ac8158fea0bccb95600.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [DyckStep.dichotomy](declarations/dyckstep-dichotomy--e29512003c130f116f54909e.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DyckWord](declarations/dyckword--6b0fc040f801618daa5811dc.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--2f6b562c67be9010c1effaa1.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance--7cbe728b63a831d7246055dd.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance--7c15e5fabeb9dced7e65caa8.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance--0aaaf685f480c027c1a55de3.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [toList_eq_nil](declarations/tolist-eq-nil--a1f3762444a1a3d6d05422fc.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [toList_ne_nil](declarations/tolist-ne-nil--2aba48c99adc668f918cc929.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--7ce2f243a52975fd9938042c.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [head_eq_U](declarations/head-eq-u--310f59a80e86c6c0fca3c2a8.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [getLast_eq_D](declarations/getlast-eq-d--8ac4c03e2c1ebea0386460fc.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [cons_tail_dropLast_concat](declarations/cons-tail-droplast-concat--02f7d56d06318b0214e2635f.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [take](declarations/take--fb6e2dffd1696e27cc5559cd.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [drop](declarations/drop--7bbea9cb3e27192136449d3a.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [nest](declarations/nest--c51460401a7e90aac19987e3.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [nest_ne_zero](declarations/nest-ne-zero--afd60c81d572bb6b7eedd0da.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsNested](declarations/isnested--040ce43773bc79eb094a930a.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsNested.nest](declarations/isnested-nest--0a0c8d810bbb893e23e6ac5c.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [denest](declarations/denest--ebcb9b6006cbd45c5b5dbfb2.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [nest_denest](declarations/nest-denest--3585c672e1c2cec665bb113f.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [denest_nest](declarations/denest-nest--d50d5f41315d5dbc649d3977.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [semilength](declarations/semilength--82e14c263808d10e5f46738f.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [semilength_zero](declarations/semilength-zero--1408c52861d33ab375b8c306.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [semilength_add](declarations/semilength-add--f7a0a412c8303850e3325022.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [semilength_nest](declarations/semilength-nest--f89aeb98e877f864c31e7f46.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [semilength_eq_count_D](declarations/semilength-eq-count-d--15c80746b158c86a200d1cd0.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [two_mul_semilength_eq_length](declarations/two-mul-semilength-eq-length--d2397fcc206bda1b1e136437.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [firstReturn](declarations/firstreturn--59e72633ded70d18044f4382.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [firstReturn_zero](declarations/firstreturn-zero--5d7b7e6cfdae4321904d76cc.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [firstReturn_pos](declarations/firstreturn-pos--732f7288132fe2f9435e738c.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [firstReturn_lt_length](declarations/firstreturn-lt-length--c6b8375d773c9f8d074bc4b1.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [count_take_firstReturn_add_one](declarations/count-take-firstreturn-add-one--59295f323fb8197b872fe590.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [count_D_lt_count_U_of_lt_firstReturn](declarations/count-d-lt-count-u-of-lt-firstreturn--f27bbf7d89f5113a21454a8a.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [firstReturn_add](declarations/firstreturn-add--7b4c991dc76485fc69753c4e.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [firstReturn_nest](declarations/firstreturn-nest--c02800a19fa9d2108b3d2a99.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [insidePart](declarations/insidepart--044b966588c290df14aef707.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [outsidePart](declarations/outsidepart--8a72ea9a8779c3f2f1172d6f.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [insidePart_zero](declarations/insidepart-zero--286dd3ed856c89a918c86dec.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [outsidePart_zero](declarations/outsidepart-zero--e67d46e27b35318c0aa8e07f.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [insidePart_add](declarations/insidepart-add--2927d1404b84a1ad28a15de8.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [outsidePart_add](declarations/outsidepart-add--fbe37b6e3255bacf72585982.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [insidePart_nest](declarations/insidepart-nest--7c2fd437cf80aa9bfb37df8a.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [outsidePart_nest](declarations/outsidepart-nest--55c8e08add2505433e2b18ac.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nest_insidePart_add_outsidePart](declarations/nest-insidepart-add-outsidepart--3897b58ca5879762586025b5.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [semilength_insidePart_add_semilength_outsidePart_add_one](declarations/semilength-insidepart-add-semilength-outsidepart-add-one--9353bfcfc338ee35ad049765.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [semilength_insidePart_lt](declarations/semilength-insidepart-lt--5b98b1ca561a252affc31139.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [semilength_outsidePart_lt](declarations/semilength-outsidepart-lt--636f732c67a06f34a806c071.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance--a6ee3bac5aa7e0f60441bf55.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [le_add_self](declarations/le-add-self--3b4f4b02d4bf7d8428ce8ed0.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [infix_of_le](declarations/infix-of-le--a4eb01eed44bd52dde0f6890.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [le_of_suffix](declarations/le-of-suffix--92747cff970efe28c2e59dda.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance--316399ac3b7cea11989fc72f.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [pos_iff_ne_zero](declarations/pos-iff-ne-zero--abcc24c266f158f9eea20b69.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [monotone_semilength](declarations/monotone-semilength--de37dc1f5cc8aec9ed9f0b6b.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [strictMono_semilength](declarations/strictmono-semilength--b5168357ccfbf492480fa02d.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [toTree](declarations/totree--3dfc931b5da365ffe4177bc1.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [ofTree](declarations/oftree--131f8c0243ea8282d231a111.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [ofTree_toTree](declarations/oftree-totree--8a5b0434df07769d2129cc73.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [toTree_ofTree](declarations/totree-oftree--9972ea18871920624d8a96d9.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [equivTree](declarations/equivtree--ee1c14a61c2eccf7d83255a1.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [numNodes_toTree](declarations/numnodes-totree--bcba12954958505c7489e772.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [equivTreesOfNumNodesEq](declarations/equivtreesofnumnodeseq--e2b0af2fbce3be7cfad036bb.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance--43c57c28a8b1b686c616280d.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [card_dyckWord_semilength_eq_catalan](declarations/card-dyckword-semilength-eq-catalan--f9252495adcf74f381e4134e.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [evalDyckWordFirstReturn](declarations/evaldyckwordfirstreturn--720fdd47c5807e8eb2c1db6e.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
