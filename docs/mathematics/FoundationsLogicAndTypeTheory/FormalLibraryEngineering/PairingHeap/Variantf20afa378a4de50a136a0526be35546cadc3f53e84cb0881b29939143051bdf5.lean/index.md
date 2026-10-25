# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PairingHeap.Variantf20afa378a4de50a136a0526be35546cadc3f53e84cb0881b29939143051bdf5

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variantf20afa378a4de50a136a0526be35546cadc3f53e84cb0881b29939143051bdf5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ea016795b6709c9754f8f392781f9c897f55d65`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variantf20afa378a4de50a136a0526be35546cadc3f53e84cb0881b29939143051bdf5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Heap](declarations/heap--c2d6ac59d2f1c4dfc809999d.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Heap.size](declarations/heap-size--7cdde5fed17dfa47c963953b.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Heap.singleton](declarations/heap-singleton--5785dd6f17e70e46f74a0188.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Heap.isEmpty](declarations/heap-isempty--1e27455583d51dc568ef81e4.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Heap.merge](declarations/heap-merge--45bed4c6243b29652aa23588.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Heap.combine](declarations/heap-combine--f0a2167c10a879ca9830b1da.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Heap.headD](declarations/heap-headd--1d3252cf84fb15f6d4702641.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.head?](declarations/heap-head--6af0ea483ec4f08a24a53569.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.deleteMin](declarations/heap-deletemin--d78d4ad0430107944bc46bfc.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.tail?](declarations/heap-tail--9834451dd47533a645a0abdf.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.tail](declarations/heap-tail--2adf20a4f96c2ef7246efbc7.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [Heap.NoSibling](declarations/heap-nosibling--9b9a46b721ffa6a26435be8c.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--c29b3a1edbb2038278c45e84.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Heap.noSibling_merge](declarations/heap-nosibling-merge--ca669d68eddc074e2679a1e3.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Heap.noSibling_combine](declarations/heap-nosibling-combine--afcd609e257e3a08d47f7e92.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Heap.noSibling_deleteMin](declarations/heap-nosibling-deletemin--d9a82556dc7ddeccd759bb1b.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Heap.noSibling_tail?](declarations/heap-nosibling-tail--0e61b990d48f841cc81a5ae0.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Heap.noSibling_tail](declarations/heap-nosibling-tail--3e0d4e80e67207ef270b98b8.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Heap.size_merge_node](declarations/heap-size-merge-node--c53fab69f91ea89681135df6.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Heap.size_merge](declarations/heap-size-merge--8de94860553fccb275c72c85.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Heap.size_combine](declarations/heap-size-combine--459ff5bfa2d67764c2a5a2e6.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Heap.size_deleteMin](declarations/heap-size-deletemin--c8697697a264aa4386dd796a.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Heap.size_tail?](declarations/heap-size-tail--eb7cd555f49a6f9cadb03c03.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Heap.size_tail](declarations/heap-size-tail--db799c0cf5076af968291b8e.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.size_deleteMin_lt](declarations/heap-size-deletemin-lt--b26ff58964aa570fc635dbf2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Heap.size_tail?_lt](declarations/heap-size-tail-lt--c0fd817f8b7ad26a313da2e9.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Heap.foldM](declarations/heap-foldm--779c6c163edb2d5f906405fe.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Heap.fold](declarations/heap-fold--bb2ff95912b3e60899cdf164.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Heap.toArray](declarations/heap-toarray--23197489cd743a31e8211d57.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Heap.toList](declarations/heap-tolist--07e9a0e3cc3f4251e10f5811.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem--26b27b1a188f1f66f717446a.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldTree](declarations/heap-foldtree--3df6c3a755f70663ab4669c2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered--f0c5c4726cf29183002ec30d.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered--aa23e1b5200778021491b125.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.NodeWF](declarations/heap-nodewf--1ceb3ce167e852dc43ee6d4f.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Heap.WF](declarations/heap-wf--115f3ba0fa506f1753b1558d.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton--9942d1c18ccbe7a1be2f6ad0.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Heap.WF.merge_node](declarations/heap-wf-merge-node--bd6ab96c79d2747f492e70ee.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge--501e47525a4110ad23354d11.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Heap.WF.combine](declarations/heap-wf-combine--969b23c926521c116851e5ee.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin--e4af3755823135089fd710b2.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail--50e2f3a48ff783a53530e5f8.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail--fc0359f50ec9e367c85cc9e0.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.deleteMin_fst](declarations/heap-deletemin-fst--58545b8bbf241a41087f47c4.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [PairingHeap](declarations/pairingheap--6b03d470c4e57d05e856e490.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mkPairingHeap](declarations/mkpairingheap--7c4245acb18f3089288751cf.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [empty](declarations/empty--750035d971defdbf141ec62e.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance--0295d79d29a691b4abd970ff.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isEmpty](declarations/isempty--87213fbac81b3779465455f9.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [size](declarations/size--da60cb9d160225d40a0e3d8c.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [singleton](declarations/singleton--4cd14c13f2b426ad283f23a7.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [merge](declarations/merge--9a885f5c8d0e4e95f7427b1c.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [insert](declarations/insert--36ac93ef5c75d8157ca284f9.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [ofList](declarations/oflist--0d1ad5e71694e5349fa6c239.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ofArray](declarations/ofarray--1503434f26487b5c94689a9c.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [deleteMin](declarations/deletemin--0effc8b22a4a9bdc87cfde8d.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [head?](declarations/head--0aff20d9e7ebbfc88917fb96.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [head!](declarations/head--54887ff4fb4b9710474645d7.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [headI](declarations/headi--e5198c10025087d47de1ea5b.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tail?](declarations/tail--c2de7deea3cb32998a3acdae.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [tail](declarations/tail--687d116f2af1fe4985e4bf64.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist--ee9560d62c4d6388187a8af5.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray--5939d77afac2e8df1e3796e2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toListUnordered](declarations/tolistunordered--7dccb2a14b6c085fd6ed1125.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [toArrayUnordered](declarations/toarrayunordered--042f65544105aa72975f1261.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
