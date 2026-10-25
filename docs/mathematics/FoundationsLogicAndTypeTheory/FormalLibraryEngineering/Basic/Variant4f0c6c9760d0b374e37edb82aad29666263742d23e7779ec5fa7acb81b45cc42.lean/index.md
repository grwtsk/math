# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3051ad42ee714d97ee0c2949e1d9c7f356e6fa0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeapNode](declarations/heapnode--2bfcc6a1c76e1f66385aed4d.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HeapNode.realSize](declarations/heapnode-realsize--0922a17aa0996e1f8dc7f78e.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HeapNode.singleton](declarations/heapnode-singleton--c0115a027391413352c366a8.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HeapNode.rank](declarations/heapnode-rank--5d2d5bc409aba97caff2f617.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [HeapNode.rankTR](declarations/heapnode-ranktr--0cca0c06c13725fda42c9e98.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HeapNode.rankTR_eq](declarations/heapnode-ranktr-eq--12606697090259b1b29a43d0.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Heap](declarations/heap--a4109531ecaf05ae94b5ee8c.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.realSize](declarations/heap-realsize--20a8bf98b684e28490ca5552.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.size](declarations/heap-size--aec57402d791782b7acf2303.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.isEmpty](declarations/heap-isempty--76bcc9a0e1828f8076156fd4.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.singleton](declarations/heap-singleton--1738bba7a08f87395388b2d0.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Heap.rankGT](declarations/heap-rankgt--164b8fbe2e8c838cb252e606.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--efa576f1c7271c40778ba5ef.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Heap.length](declarations/heap-length--48a9e43046e624ec524cbfc5.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [combine](declarations/combine--2f73f792a4ce4d11c415fad4.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Heap.merge](declarations/heap-merge--a02b9c0f211de5e96ed4c37a.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HeapNode.toHeap](declarations/heapnode-toheap--7444d16eeb76fadb94545585.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Heap.headD](declarations/heap-headd--7c3357e3ea502e48e75d5d2a.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Heap.head?](declarations/heap-head--a9ba1642cd3e9498e39f9d86.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FindMin](declarations/findmin--8c1edf698fa9fe92f59c0f2d.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Heap.findMin](declarations/heap-findmin--dc3fdf8c685ffc55b199cc47.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Heap.deleteMin](declarations/heap-deletemin--e30f2f4b77b9220bc50cff8e.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Heap.tail?](declarations/heap-tail--efe4ad84279a7a0c9c0ceb33.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Heap.tail](declarations/heap-tail--d6278c7d332e176f81e294a9.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.realSize_merge](declarations/heap-realsize-merge--9e8295d613b688fa4b2c8d2f.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FindMin.HasSize](declarations/findmin-hassize--27e6bc55b6bb7886f3947830.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Heap.realSize_findMin](declarations/heap-realsize-findmin--c63b5d593bb8613b67cb6c29.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HeapNode.realSize_toHeap](declarations/heapnode-realsize-toheap--17743315fa56a581f6a6f74c.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Heap.realSize_deleteMin](declarations/heap-realsize-deletemin--ac85c2f639564e58da34bcb8.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Heap.realSize_tail?](declarations/heap-realsize-tail--776f74da327b8b14d0aef06a.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Heap.realSize_tail](declarations/heap-realsize-tail--73cb0ff3c12f5569c0471cb1.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldM](declarations/heap-foldm--27e8877bf6e026b879e413fa.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.fold](declarations/heap-fold--8d79834c276fa3c4bb1982c2.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArray](declarations/heap-toarray--a17674f1a0c12302cd65d272.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.toList](declarations/heap-tolist--2114e8791917ef7de06b5318.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [HeapNode.foldTreeM](declarations/heapnode-foldtreem--41aa76d0cf7e33e00031fa5b.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem--cc3e87325b540c252c9e7458.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Heap.foldTree](declarations/heap-foldtree--015dc0fe203bb2ec87aa4bc4.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered--35dec46d89ddbae61bfcfcf4.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered--149b8173269505a231df2ec2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [HeapNode.WF](declarations/heapnode-wf--fd6c24a0b471345f7f7b6abb.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Heap.WF](declarations/heap-wf--c0d3adbfa7289dfe6eacd6a8.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.nil](declarations/heap-wf-nil--5fd0fe665c8b386b0d12a549.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton--c529ab7fdefb970d1fada2ad.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Heap.WF.of_rankGT](declarations/heap-wf-of-rankgt--99beddf26eb6eaccaa695abc.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Heap.WF.of_le](declarations/heap-wf-of-le--a47f02b1efd4a28e8db3954f.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Heap.rankGT.of_le](declarations/heap-rankgt-of-le--50d950fe756808680eeeaaeb.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Heap.WF.rankGT](declarations/heap-wf-rankgt--62e8799b674d91c19e5e9cfe.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Heap.WF.merge'](declarations/heap-wf-merge--aafa05e4eb2e7781684008da.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge--b4521abb234c3002d9087c2f.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HeapNode.WF.rank_eq](declarations/heapnode-wf-rank-eq--299f47c15c70d66b06d15137.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HeapNode.WF.toHeap](declarations/heapnode-wf-toheap--b2c3661511235d3a04e07c1f.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [FindMin.WF](declarations/findmin-wf--c8f77b57d54928bf9a22f52e.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Heap.WF.findMin](declarations/heap-wf-findmin--e4220f89ff5359a7131583e5.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin--e780aa8ce63a58af00be9d02.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail--dbad8f222611b240508d6da3.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail--62b0139beb8c8cae416d109b.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [BinomialHeap](declarations/binomialheap--a03176f6e4ff4a19fc3d632d.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mkBinomialHeap](declarations/mkbinomialheap--21f9a4ed14b6fea2f7f97311.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [empty](declarations/empty--d494efaa0882a68b8168f7e5.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance--5924e538a24a15be9b2a568f.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [isEmpty](declarations/isempty--065b7a93c31e601d679a33cb.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [size](declarations/size--76293c4b513aff5d0a2c7f54.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [singleton](declarations/singleton--cf6ea85bf403b3c9f0444074.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [merge](declarations/merge--431b9ef7db68748a86723a8a.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [insert](declarations/insert--417c3f60cded224fbb3617a6.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [ofList](declarations/oflist--30d1bd892cd6c6580858b9b3.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [ofArray](declarations/ofarray--5579bb6792f4cf4857c7a239.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [deleteMin](declarations/deletemin--f81561d3febbab07f75c31a3.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance--ae295538b6797c6463d19032.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [forIn](declarations/forin--c96da022504f0d4b07c737ff.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance--92ce2c368657ddd22cc55981.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [head?](declarations/head--f6fd0c876e9b0ad5d81e17f2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [head!](declarations/head--4397b507c39a34e5c921465c.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [headI](declarations/headi--8425aa2b6366857ca3d684d0.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [tail?](declarations/tail--4ba6c217e2bacc72f66cb06f.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [tail](declarations/tail--8b9a37bc4545fde54c846e00.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [foldM](declarations/foldm--a70d192f70969552103dbc04.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [fold](declarations/fold--40dc686ee86a4d3990370448.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [toList](declarations/tolist--b5bfca020dd481b8e3de54ea.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [toArray](declarations/toarray--109058e10077295871081c4d.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toListUnordered](declarations/tolistunordered--30d0baca18e533ff74dcaecb.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toArrayUnordered](declarations/toarrayunordered--0950545d17dd682e13f4748f.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
