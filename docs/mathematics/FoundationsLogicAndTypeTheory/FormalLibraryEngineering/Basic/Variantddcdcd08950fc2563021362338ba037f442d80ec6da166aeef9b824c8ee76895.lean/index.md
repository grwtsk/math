# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e447047ed43f813890b8b82b08eae7c0bc592ac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeapNode](declarations/heapnode--5cd746877b46c122cd292cba.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HeapNode.realSize](declarations/heapnode-realsize--4ced378f2b25bc5092dd07ce.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HeapNode.singleton](declarations/heapnode-singleton--d2eb100d9f99bc36590e56c7.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HeapNode.rank](declarations/heapnode-rank--4964193ab31fbe93bb557db9.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [HeapNode.rankTR](declarations/heapnode-ranktr--c57ed125ac7693596fd28658.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HeapNode.rankTR_eq](declarations/heapnode-ranktr-eq--2ff4e883497de3d4a157da1d.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Heap](declarations/heap--b6f2349309e01b4a75064cd0.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.realSize](declarations/heap-realsize--35526c1e4a9d6ddfc55bd5ae.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.size](declarations/heap-size--82b1e712982ef3ccb9f3cc22.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.isEmpty](declarations/heap-isempty--514cd02333b1ce0bfe1cb3c1.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.singleton](declarations/heap-singleton--2e627757df0a5011303d6033.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Heap.rankGT](declarations/heap-rankgt--1a580e844068f7202dbdba9f.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--354525938bae1523d4adae0c.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Heap.length](declarations/heap-length--c61c326b9ec4a03a0546c24b.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [combine](declarations/combine--f3f3dfb659e5c4cc776d0b10.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Heap.merge](declarations/heap-merge--922fe1fc9cfa50304f5c01ea.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HeapNode.toHeap](declarations/heapnode-toheap--d0a8294f925660c517d95a43.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Heap.headD](declarations/heap-headd--f52131cfe11a26d4cd2d6e54.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Heap.head?](declarations/heap-head--7d0c55707903c21af12f6102.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FindMin](declarations/findmin--b225ce7aaa232838270f64cc.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Heap.findMin](declarations/heap-findmin--97cacd46a790ea1dfc856c69.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Heap.deleteMin](declarations/heap-deletemin--75b40a1391c70e8ce4c5c64f.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Heap.tail?](declarations/heap-tail--0b640a0f280392c09c0e1c2d.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Heap.tail](declarations/heap-tail--d1d676a9603330845e1a23dc.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.realSize_merge](declarations/heap-realsize-merge--5ab16ae760a228ebc5679e58.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FindMin.HasSize](declarations/findmin-hassize--3c2c1a7f63774b48f68e54fe.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Heap.realSize_findMin](declarations/heap-realsize-findmin--006da8bfdedf5791a5ff0a8f.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HeapNode.realSize_toHeap](declarations/heapnode-realsize-toheap--ffe0cb350127e3559d992ef7.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Heap.realSize_deleteMin](declarations/heap-realsize-deletemin--333b06f74d0abe2d7d73c918.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Heap.realSize_tail?](declarations/heap-realsize-tail--863fbd081a586849b4006028.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Heap.realSize_tail](declarations/heap-realsize-tail--9c8c39f1e7cb5a6588535975.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldM](declarations/heap-foldm--42682e178387cd8e8f1df880.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.fold](declarations/heap-fold--7d83f70b7a778f493ab874ac.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArray](declarations/heap-toarray--c26bf76b19d86d664a05dd8d.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.toList](declarations/heap-tolist--2c168bd8061044c7895eb860.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [HeapNode.foldTreeM](declarations/heapnode-foldtreem--4c332de354826d9570b671ad.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem--d007f48c0cc66ff87d6a20fb.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Heap.foldTree](declarations/heap-foldtree--4f1b48a224977d346d8784ba.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered--340141d4a75790a637b84023.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered--e3b6b7b907e0d3de4b3a1c9f.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [HeapNode.WF](declarations/heapnode-wf--be32e17ee7b96f50b51e525f.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Heap.WF](declarations/heap-wf--a658563cf5972564deff78b5.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.nil](declarations/heap-wf-nil--f30647ad18cb40b390807919.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton--ce2974d73d1a61de41ccdc7b.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Heap.WF.of_rankGT](declarations/heap-wf-of-rankgt--02f86386acf9b04df668d670.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Heap.WF.of_le](declarations/heap-wf-of-le--e0e7ee7ccfef869828f78500.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Heap.rankGT.of_le](declarations/heap-rankgt-of-le--9419ef6cde713429ef7dd6ed.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Heap.WF.rankGT](declarations/heap-wf-rankgt--7d453122b23e7e47c38a902e.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Heap.WF.merge'](declarations/heap-wf-merge--063a8b7aac7ed7c22d5cb00c.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge--d704e48c3e0ada5f33a6814d.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HeapNode.WF.rank_eq](declarations/heapnode-wf-rank-eq--6af527367f3997fb848da5f2.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HeapNode.WF.toHeap](declarations/heapnode-wf-toheap--2636329fabae68b2d656e917.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [FindMin.WF](declarations/findmin-wf--a93665d032f34bed6dbe0e61.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Heap.WF.findMin](declarations/heap-wf-findmin--43104517469b62b6b34d8d3b.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin--793c2c7bed53ab19891a927b.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail--4177158584c9dcf4adea6dd6.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail--8fcb807b25ab4615fb95f77b.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [BinomialHeap](declarations/binomialheap--180d0bea489ab5b49e54f586.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mkBinomialHeap](declarations/mkbinomialheap--861f554a53201be3ade691ea.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [empty](declarations/empty--ea14dc22c66c9b8a08f946e1.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance--50a078be86635e7fc1c629db.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance--f18c8acf654671dd090c661d.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [isEmpty](declarations/isempty--b76e1b4bf9e1daa290045ea5.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [size](declarations/size--eac7db19e1beb27bc92f6beb.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [singleton](declarations/singleton--a2daa2649234c16a48e34360.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [merge](declarations/merge--f0886eecec19b0a7732a68c4.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [insert](declarations/insert--cfb4160e17b8a687e7fd6ae0.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [ofList](declarations/oflist--77459087fcc9f0e34b631cfd.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [ofArray](declarations/ofarray--d2263c6fe2e5167cbc16026d.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [deleteMin](declarations/deletemin--fb6687b30466c1575f45d155.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance--27e1a9df7dd915567912f874.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [forIn](declarations/forin--8c9d6479d7a234295b254c91.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance--c118beea405af79184476ba4.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [head?](declarations/head--642616f93473cce64c30a55e.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [head!](declarations/head--7b22ae339dedf039dbd3af49.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [headI](declarations/headi--bbce63f46bc51c33a190a24a.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [tail?](declarations/tail--a64628c9cb0b08f0afbd58a2.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [tail](declarations/tail--0dfeadba3f5f1309e9fe1f2a.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [foldM](declarations/foldm--954f17828246f11bd7e5be2d.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [fold](declarations/fold--b988597946a2e06d75a70be1.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [toList](declarations/tolist--929c89d1cc0585dcdaf8c205.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toArray](declarations/toarray--303a8d222ec958184d573693.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toListUnordered](declarations/tolistunordered--ed72b5676ee357fb7ed6e387.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [toArrayUnordered](declarations/toarrayunordered--adea019af4b6f99204b300c4.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
