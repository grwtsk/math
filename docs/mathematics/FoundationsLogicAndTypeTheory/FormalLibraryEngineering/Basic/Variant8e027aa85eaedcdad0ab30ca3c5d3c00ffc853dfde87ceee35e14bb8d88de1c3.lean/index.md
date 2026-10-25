# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f910aafeff88f8de2c5228bdfea9253c4e06ef7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeapNode](declarations/heapnode--9ca52cd4b4948e6bb1c43a87.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HeapNode.realSize](declarations/heapnode-realsize--24caf5162c3d7280852405d9.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HeapNode.singleton](declarations/heapnode-singleton--532e1439dc635ef7f4af2d0c.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HeapNode.rank](declarations/heapnode-rank--fea4707b385907ecb42ba597.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [HeapNode.rankTR](declarations/heapnode-ranktr--3cc810063407313b4dde6348.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HeapNode.rankTR_eq](declarations/heapnode-ranktr-eq--63a57e443f339cf581ec385a.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Heap](declarations/heap--8104c4754d4fa113af3ade4f.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.realSize](declarations/heap-realsize--1d4361de434bd824d7fae96a.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.size](declarations/heap-size--fc8a2c8a9bf218218b3fbfaf.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.isEmpty](declarations/heap-isempty--e28e0c7b902624fb55ad5476.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.singleton](declarations/heap-singleton--d2679011dc46a5f8b9a5298a.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Heap.rankGT](declarations/heap-rankgt--b9ef96614e3e50706d2b9eab.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--57d75aca9c7cc244589f974e.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Heap.length](declarations/heap-length--880112df132558c40aef3cbf.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [combine](declarations/combine--4e5e03b60155d5af56bd8b1a.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Heap.merge](declarations/heap-merge--f107cac46a1ef4b8b94a64d8.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HeapNode.toHeap](declarations/heapnode-toheap--eedfdf9ff8deec7063c3cb77.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Heap.headD](declarations/heap-headd--efb806f32b62b2b8afe9882a.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Heap.head?](declarations/heap-head--c92996fad56c9482b54283e4.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FindMin](declarations/findmin--ad437f8eb948f051f53c510d.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Heap.findMin](declarations/heap-findmin--a26f50d42a46b40beda438ab.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Heap.deleteMin](declarations/heap-deletemin--cb318a47fb6218330e4ea16a.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Heap.tail?](declarations/heap-tail--d428485ab620860b3d65b5ae.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Heap.tail](declarations/heap-tail--486d37ee25e5c8e5c193a418.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.realSize_merge](declarations/heap-realsize-merge--a02e732a83f437fe3d53dd4e.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FindMin.HasSize](declarations/findmin-hassize--07d6a8c6c9092aa90c94e16a.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Heap.realSize_findMin](declarations/heap-realsize-findmin--5bca59c65dbb9b1f58479153.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HeapNode.realSize_toHeap](declarations/heapnode-realsize-toheap--5463ad7db749b6a9af4e29c3.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Heap.realSize_deleteMin](declarations/heap-realsize-deletemin--c2992ae8efcb5a4f4d876121.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Heap.realSize_tail?](declarations/heap-realsize-tail--b19d4e4bc432b7d107c6d1ac.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Heap.realSize_tail](declarations/heap-realsize-tail--3d6a027ed68a187a17504ac3.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldM](declarations/heap-foldm--87313d89c496bedbc18b79c5.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.fold](declarations/heap-fold--d7d4b91d0ea9410de3c2338b.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArray](declarations/heap-toarray--20511da009636373fea85f65.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.toList](declarations/heap-tolist--49243d2d1d7418b6f9b22d16.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [HeapNode.foldTreeM](declarations/heapnode-foldtreem--1c7a64988cd5f7af454e90fc.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem--2f7aab4e0c19cca73b05cf77.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Heap.foldTree](declarations/heap-foldtree--394610750e956ec2782e91a5.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered--22879c14268fe51c36b34b81.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered--83f75a30b7762d1b3ba908d2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [HeapNode.WF](declarations/heapnode-wf--f9fea0f9036f4be38896a577.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Heap.WF](declarations/heap-wf--16650875b5cf5a557c7f25be.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.nil](declarations/heap-wf-nil--4d44b4a907bb5f771aba7bd1.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton--881f27fea8caff4bb1b17353.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Heap.WF.of_rankGT](declarations/heap-wf-of-rankgt--2b6d9d939125e9648fd9f912.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Heap.WF.of_le](declarations/heap-wf-of-le--86a42aaf782072c0fb1e5e18.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Heap.rankGT.of_le](declarations/heap-rankgt-of-le--94d5fca854ccb3cfb8b0a0e6.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Heap.WF.rankGT](declarations/heap-wf-rankgt--341c3bf09b0231c01c486148.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Heap.WF.merge'](declarations/heap-wf-merge--4ee655296a617ff55b60cda9.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge--0bcfb57fa8e65d7a17264c78.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HeapNode.WF.rank_eq](declarations/heapnode-wf-rank-eq--985090489dd79a24de6ca239.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HeapNode.WF.toHeap](declarations/heapnode-wf-toheap--f04a21faf5dc820ab3dca0e0.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [FindMin.WF](declarations/findmin-wf--87d5925e0606fd8699b9951b.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Heap.WF.findMin](declarations/heap-wf-findmin--de89a5d0fba190f7bf91399f.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin--45ab5586f7e5d1890ee724da.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail--eb66bfde6a37db0cdcc956f3.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail--22d82fae188bbbcda767dea9.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [BinomialHeap](declarations/binomialheap--c37d0a7b44e63bbbc2cd9580.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mkBinomialHeap](declarations/mkbinomialheap--ff251ada9b11ca700a8c5c31.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [empty](declarations/empty--7eccd70cf131b3c3506e6afb.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance--ecdc6e227da29f1eb2c0537e.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance--5e6bd910861949a9dc665d90.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [isEmpty](declarations/isempty--11b4d55d02ab17fcb12c1db7.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [size](declarations/size--4ade046fd0fdf3e00c94fffc.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [singleton](declarations/singleton--ec5162a1bb05e8d758bd1cfd.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [merge](declarations/merge--a35133c4f12bac8f9cdbcdac.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [insert](declarations/insert--14b5c323a1d9f36d6ed11bca.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [ofList](declarations/oflist--2221dc63d47f02316dfe9d12.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [ofArray](declarations/ofarray--e6419e13c7aa8c546ffb9d13.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [deleteMin](declarations/deletemin--bb6e9772a14a483c7eddee0b.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance--f76311267af56c0d48f007e4.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [forIn](declarations/forin--5c55ba182ba7bc4bdc95fc71.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance--5c63405fdae238ebdf4c21e3.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [head?](declarations/head--b9c3eff8914e3b23ed360537.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [head!](declarations/head--7ef4f4e5ea1587644b736eac.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [headI](declarations/headi--6c26ed226ad94b065a0dce7b.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [tail?](declarations/tail--ddf5a84312886dffc885d2ba.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [tail](declarations/tail--76465157065204df83428a78.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [foldM](declarations/foldm--b65a4d8015c3c79134054577.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [fold](declarations/fold--e6f9dc0559a92cfa4431b340.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [toList](declarations/tolist--53f7e2ff27ee96eed2019d52.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toArray](declarations/toarray--2b82a7575d57305fae69c91d.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toListUnordered](declarations/tolistunordered--fbc5845d695c4291e7e1bef0.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [toArrayUnordered](declarations/toarrayunordered--1555e4faa36dd149becce44b.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
