# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sort.Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 82 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2849801dfccaa8fd66fa2985fee5e2cbc3d53ee`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Sorted](declarations/sorted--aa822dfc99a38c06a15f47e8.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableSorted](declarations/decidablesorted--95451e6e418c78aca1b121eb.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Sorted.le_of_lt](declarations/sorted-le-of-lt--baca3a74871586707adafc1a.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Sorted.lt_of_le](declarations/sorted-lt-of-le--ab69d796c41b8a4662143979.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Sorted.ge_of_gt](declarations/sorted-ge-of-gt--d8c6660de13ec08f297ab949.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Sorted.gt_of_ge](declarations/sorted-gt-of-ge--b07bdaf1e89c8d30adfeca53.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sorted_nil](declarations/sorted-nil--216150d3a7dac28e331d050f.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Sorted.of_cons](declarations/sorted-of-cons--4ae85949179f3944a5b2bc5a.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Sorted.tail](declarations/sorted-tail--8461a64f63fbb688a5a67bdd.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rel_of_sorted_cons](declarations/rel-of-sorted-cons--46b59385632ad7f2f084361b.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Sorted.cons](declarations/sorted-cons--b1d055a4191b48ad31b8b088.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sorted_cons_cons](declarations/sorted-cons-cons--0072d0e2418e0d010b0322c6.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Sorted.head!_le](declarations/sorted-head-le--0cf199944b5546896c8478f3.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Sorted.le_head!](declarations/sorted-le-head--f93678380077c5ca7d6d654a.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sorted_cons](declarations/sorted-cons--d38948332ccf5af5a9569d91.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Sorted.nodup](declarations/sorted-nodup--a918de89f143110ee3938802.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Sorted.filter](declarations/sorted-filter--efd21f9f6ffaee860ea01b7e.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_of_perm_of_sorted](declarations/eq-of-perm-of-sorted--2b5af1d93837ac67d65dd4fc.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Sorted.eq_of_mem_iff](declarations/sorted-eq-of-mem-iff--fd8ea52ad7c029f78c29d941.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sublist_of_subperm_of_sorted](declarations/sublist-of-subperm-of-sorted--787130b5ae537adf20109dca.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sorted_singleton](declarations/sorted-singleton--a3651537a2301256d82efbb8.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sorted_lt_range](declarations/sorted-lt-range--c3e39e611a4bd99179f5b6cb.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sorted_replicate](declarations/sorted-replicate--fb9ab47a09149d2db80b7446.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sorted_le_replicate](declarations/sorted-le-replicate--a3b35f379196c99184c2b151.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sorted_le_range](declarations/sorted-le-range--601236334b31463922ae2138.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [sorted_lt_range'](declarations/sorted-lt-range--42286c3ae93bd36efdea9243.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [sorted_le_range'](declarations/sorted-le-range--11d8af40043d8384ba88b93c.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Sorted.rel_get_of_lt](declarations/sorted-rel-get-of-lt--6dbec0db4ae1754307891b4c.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Sorted.rel_get_of_le](declarations/sorted-rel-get-of-le--3f9ef13cf718e9aacb940fe9.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Sorted.rel_of_mem_take_of_mem_drop](declarations/sorted-rel-of-mem-take-of-mem-drop--ed175af9e79b542f47d3e5d5.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Sorted.decide](declarations/sorted-decide--45a6403d5a096f921b114e1d.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sorted_ofFn_iff](declarations/sorted-offn-iff--a533bfdf578c824e4d66dfb9.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sorted_lt_ofFn_iff](declarations/sorted-lt-offn-iff--41cbdb1fde256707bb57e4be.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sorted_gt_ofFn_iff](declarations/sorted-gt-offn-iff--782a304a744ba667b4e626c9.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sorted_le_ofFn_iff](declarations/sorted-le-offn-iff--86fc9fc9cafe42e726fa59b0.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sorted_ge_ofFn_iff](declarations/sorted-ge-offn-iff--2e75c7a65547cd574a015fd4.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Sorted.filterMap](declarations/sorted-filtermap--7d39c2601dbb171fd1e6cee0.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sorted_listMap](declarations/sorted-listmap--69f8350a115a335c7cac04f1.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sorted_swap_listMap](declarations/sorted-swap-listmap--f65af81c40b0211b414eae0a.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sorted_lt_listMap](declarations/sorted-lt-listmap--529e3d807aa8eb54ffd17962.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [sorted_gt_listMap](declarations/sorted-gt-listmap--06db28d9fcd83a296ebd64c1.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sorted_listMap](declarations/sorted-listmap--f89afd6d6d0f40280430ab55.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sorted_swap_listMap](declarations/sorted-swap-listmap--813564a4ba95c27eb4d768b6.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sorted_lt_listMap](declarations/sorted-lt-listmap--9bc0edaf7cf70ec51f7cab50.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sorted_gt_listMap](declarations/sorted-gt-listmap--3f957a3fb25aad412af244de.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sorted_le_listMap](declarations/sorted-le-listmap--7afc5003d59e482a3f7e4662.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [sorted_ge_listMap](declarations/sorted-ge-listmap--b3f9bc4f4bb31e7029068e6e.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sorted_lt_listMap](declarations/sorted-lt-listmap--ba108de2b26d8fb838d1a8b2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [sorted_gt_listMap](declarations/sorted-gt-listmap--78c2f56dcaa9e99321e60bfc.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sorted_le_listMap](declarations/sorted-le-listmap--224d1a6bca31040a9f045c42.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [sorted_ge_listMap](declarations/sorted-ge-listmap--dbe532bcd52dc4bb6e2e1d87.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sorted_lt_listMap](declarations/sorted-lt-listmap--5a7b44c4472b9714fc756bf6.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sorted_gt_listMap](declarations/sorted-gt-listmap--d3220db6b7e33abc9c311185.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [orderedInsert](declarations/orderedinsert--024cfb7bc1ffc31422574270.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [orderedInsert_of_le](declarations/orderedinsert-of-le--4e64be47c169d915b05b3ef9.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [insertionSort](declarations/insertionsort--cd33aef019546c7ce6ca48d1.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `example` | [(anonymous)](declarations/example--c0900d06f04371d62821a73a.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [orderedInsert_nil](declarations/orderedinsert-nil--8417387014770e8111ec1d22.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [orderedInsert_length](declarations/orderedinsert-length--3c8b7e99e1135b19eaea4e55.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [orderedInsert_eq_take_drop](declarations/orderedinsert-eq-take-drop--671552d6512a8ea4c33d18a5.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [insertionSort_cons_eq_take_drop](declarations/insertionsort-cons-eq-take-drop--d4e2ab3331949c39948e444b.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_orderedInsert](declarations/mem-orderedinsert--a6b4a3cf76b54b9d62185d11.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_orderedInsert](declarations/map-orderedinsert--c4e0af9724399c060e2c6356.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [perm_orderedInsert](declarations/perm-orderedinsert--f1ebf9f8f9fa262a7edf809e.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [orderedInsert_count](declarations/orderedinsert-count--6dccd81d7685a2a517c06cd4.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [perm_insertionSort](declarations/perm-insertionsort--6c1ded8f2760cced88ac8d0f.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_insertionSort](declarations/mem-insertionsort--6f4b38b2c9ca8caa80a59740.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [length_insertionSort](declarations/length-insertionsort--5d21c522d98933a843a1b94e.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [insertionSort_cons](declarations/insertionsort-cons--b98f739b64e45983faeb749a.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [map_insertionSort](declarations/map-insertionsort--7ed87c614a999ac2770fee61.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Sorted.insertionSort_eq](declarations/sorted-insertionsort-eq--31d518bf363f17377c3e244b.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [erase_orderedInsert](declarations/erase-orderedinsert--5c58e47e4330f170acba6a39.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [erase_orderedInsert_of_notMem](declarations/erase-orderedinsert-of-notmem--cfee40a1b0a3b3cb76173129.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [orderedInsert_erase](declarations/orderedinsert-erase--edb6fcc39a981836ea84abb4.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [sublist_orderedInsert](declarations/sublist-orderedinsert--f498719a37bf1064b8da3226.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [cons_sublist_orderedInsert](declarations/cons-sublist-orderedinsert--379a0a3bfd86f69f7906baa8.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Sublist.orderedInsert_sublist](declarations/sublist-orderedinsert-sublist--16956c67746bb4ab18d21d97.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Sorted.orderedInsert](declarations/sorted-orderedinsert--ff7e2fc8855b053e21123256.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sorted_insertionSort](declarations/sorted-insertionsort--bd19402fb2549c16b2cc2043.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [sublist_insertionSort](declarations/sublist-insertionsort--40d6d29ee53b4a279cdfbe98.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [pair_sublist_insertionSort](declarations/pair-sublist-insertionsort--94eff11272dec4f2d37a515c.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [sublist_insertionSort'](declarations/sublist-insertionsort--298d9a197bb9ad36dd36f8e8.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pair_sublist_insertionSort'](declarations/pair-sublist-insertionsort--8e2f1582dfb88a031a2265e1.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `example` | [(anonymous)](declarations/example--a8f1a8c8153179b858626750.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Sorted.merge](declarations/sorted-merge--8fc9a11b60d9d0caef6ff932.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [sorted_mergeSort'](declarations/sorted-mergesort--81b61e55373f90930a97ef8b.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [mergeSort_eq_self](declarations/mergesort-eq-self--8f9194bb89df445e6dcfbf26.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mergeSort_eq_insertionSort](declarations/mergesort-eq-insertionsort--325a4400f4723efab391ec29.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
