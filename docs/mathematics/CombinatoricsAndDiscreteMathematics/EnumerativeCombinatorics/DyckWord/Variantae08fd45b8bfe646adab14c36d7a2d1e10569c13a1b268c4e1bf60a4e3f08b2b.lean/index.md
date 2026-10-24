# GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.DyckWord.Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab1681b522b333865243d333276793972141df09`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DyckStep](declarations/dyckstep--be0bea86cb44d25fdbced84a.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [DyckStep.dichotomy](declarations/dyckstep-dichotomy--918a61fd5033b3f889ef3ddf.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DyckWord](declarations/dyckword--6fc4df19e2795f55d15700e3.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--db363c54f5204adb04b76ac5.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance--570c13311508f43ba8f78d33.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance--b32ae56f6d6aec103057143a.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance--f5140ce621a9b7494044e129.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [toList_eq_nil](declarations/tolist-eq-nil--6fae350756dfdf2dc5573ccd.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [toList_ne_nil](declarations/tolist-ne-nil--9d8ffa9e274a68c4381cf39a.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--02c14dbd5db423bfde3d270b.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [head_eq_U](declarations/head-eq-u--df018a192bba8b72dd9c1d50.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [getLast_eq_D](declarations/getlast-eq-d--d6d3200d67386ea9677fd299.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [cons_tail_dropLast_concat](declarations/cons-tail-droplast-concat--c23bf2fead36dd54f69169c9.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [take](declarations/take--ec9ccfb4f5a7243f2f0bc6be.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [drop](declarations/drop--e997c7f527907431fb75cb6a.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [nest](declarations/nest--c1b0b5ed196726e82396931e.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [nest_ne_zero](declarations/nest-ne-zero--4102f3cd9099866d7af98143.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsNested](declarations/isnested--625ebe5403e87ee4105246a0.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsNested.nest](declarations/isnested-nest--7cfdce2b42091f3289889641.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [denest](declarations/denest--5e36a685dcddda1d6a68070d.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [nest_denest](declarations/nest-denest--a0ac414830e2e0cccc247f73.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [denest_nest](declarations/denest-nest--36d0bb06d5ef362d494a0931.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [semilength](declarations/semilength--72a49205dbf4c6d097144a87.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [semilength_zero](declarations/semilength-zero--8d7c5344300f2806a4fdee58.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [semilength_add](declarations/semilength-add--64b6a2095358c97fbe2d3856.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [semilength_nest](declarations/semilength-nest--ae357b51b28258ea72566074.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [semilength_eq_count_D](declarations/semilength-eq-count-d--2b7dffad0d85a08ad2ec7b8f.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [two_mul_semilength_eq_length](declarations/two-mul-semilength-eq-length--b0d1f99263b7bb03df1d89b5.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [firstReturn](declarations/firstreturn--5778e98003643dc423b2dabc.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [firstReturn_zero](declarations/firstreturn-zero--c4bdb60c3731d5aea857dadb.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [firstReturn_pos](declarations/firstreturn-pos--9a1e37dec52f3f3535a90de3.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [firstReturn_lt_length](declarations/firstreturn-lt-length--f1b7de69aefe218f6e8beca9.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [count_take_firstReturn_add_one](declarations/count-take-firstreturn-add-one--c8e2c12fca9da59700c8ba4b.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [count_D_lt_count_U_of_lt_firstReturn](declarations/count-d-lt-count-u-of-lt-firstreturn--1f81722213847ce6c0c212d0.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [firstReturn_add](declarations/firstreturn-add--4508ee377a4deeedf9fa6d38.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [firstReturn_nest](declarations/firstreturn-nest--b85f17ea1f0823b824e064ca.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [insidePart](declarations/insidepart--5863a2348fdb12398468d6f2.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [outsidePart](declarations/outsidepart--efb0e19b1df4de669eee7375.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [insidePart_zero](declarations/insidepart-zero--b6b0ace83f397998d47bc1d9.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [outsidePart_zero](declarations/outsidepart-zero--5092dc1fb41be8ee9b2998e4.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [insidePart_add](declarations/insidepart-add--136d1d21eafb96241f5fc6b3.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [outsidePart_add](declarations/outsidepart-add--0405aea3481a705bd38894f0.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [insidePart_nest](declarations/insidepart-nest--54c76de9035a803d6b3187c0.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [outsidePart_nest](declarations/outsidepart-nest--56cfdc6b75d668e4710dc564.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nest_insidePart_add_outsidePart](declarations/nest-insidepart-add-outsidepart--6364db35976fe81d93df371a.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [semilength_insidePart_add_semilength_outsidePart_add_one](declarations/semilength-insidepart-add-semilength-outsidepart-add-one--5dfab717fa7c9a7295e13d15.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [semilength_insidePart_lt](declarations/semilength-insidepart-lt--f10a7379835a6a39a6f6f810.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [semilength_outsidePart_lt](declarations/semilength-outsidepart-lt--b012876a3b1ca0deef415767.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance--2de906ed8b690fba9b62f752.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [le_add_self](declarations/le-add-self--974b0c4200aa84af05ef3a85.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [infix_of_le](declarations/infix-of-le--351ca04081c0893267796dda.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [le_of_suffix](declarations/le-of-suffix--ba39f653161541311cdfa295.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance--d83910938351983a4070ccba.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [pos_iff_ne_zero](declarations/pos-iff-ne-zero--2451e93c72a78894d3346158.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [monotone_semilength](declarations/monotone-semilength--34874a5b00f338523b91f7c4.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [strictMono_semilength](declarations/strictmono-semilength--f05a481143f13e80f3e83905.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [equivTreeToFun](declarations/equivtreetofun--236e3b498605a6e971558450.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [equivTreeInvFun](declarations/equivtreeinvfun--68f326dfb4b9613dee582f43.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [equivTree_left_inv](declarations/equivtree-left-inv--db359154e076b72d8b1c235e.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [equivTree_right_inv](declarations/equivtree-right-inv--3a58b48ef728a2359b70e126.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [equivTree](declarations/equivtree--691fd4e4bdd4637eb7c13d65.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [semilength_eq_numNodes_equivTree](declarations/semilength-eq-numnodes-equivtree--5059c946358455ff8de8323f.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [equivTreesOfNumNodesEq](declarations/equivtreesofnumnodeseq--5cce00392325fcf58317d51e.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance--3f044c21bd0a0fa3c4855619.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [card_dyckWord_semilength_eq_catalan](declarations/card-dyckword-semilength-eq-catalan--0b2973e0f05ecc4652c2726e.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [evalDyckWordFirstReturn](declarations/evaldyckwordfirstreturn--87131be80e91be1d81b7e1b2.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
