# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PairingHeap.Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3cd17927c23dbad6b37c8807f96bf999991ad53`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Heap](declarations/heap--33b3a08ed25a15d5d1ea94bf.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Heap.size](declarations/heap-size--eb839012993de4165895e173.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Heap.singleton](declarations/heap-singleton--0f36ba2ebce3f48774a5d76b.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Heap.isEmpty](declarations/heap-isempty--eabb86be0c27a32fc36323fa.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Heap.merge](declarations/heap-merge--a0c80771c489c007068b4679.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Heap.combine](declarations/heap-combine--005f40a339f3b8c9f28b1933.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Heap.headD](declarations/heap-headd--eea1537b5bb76b9152827248.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.head?](declarations/heap-head--4d44c65abcc6b950e27410bf.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.deleteMin](declarations/heap-deletemin--dcad38646919bc78a326fc0c.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.tail?](declarations/heap-tail--4ea2cfa69f21c7bd4c8b43f0.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.tail](declarations/heap-tail--e8e8c0167ef25f1d9ef24ec6.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [Heap.NoSibling](declarations/heap-nosibling--be86f4335bb7b4494cabd969.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--cada4a9f9913073b1160a4f8.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Heap.noSibling_merge](declarations/heap-nosibling-merge--4cd6d1f1e4aa76fb2ad8041e.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Heap.noSibling_combine](declarations/heap-nosibling-combine--f0efcc4467982f46a0f67ff6.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Heap.noSibling_deleteMin](declarations/heap-nosibling-deletemin--f48bc090eea55d8a59852251.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Heap.noSibling_tail?](declarations/heap-nosibling-tail--fe02a9e8745612cee82f02e4.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Heap.noSibling_tail](declarations/heap-nosibling-tail--e3a845c176ae7431fe05aea7.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Heap.size_merge_node](declarations/heap-size-merge-node--df4b470f1f8ed18e8940bb53.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Heap.size_merge](declarations/heap-size-merge--81a4c0a5faeac2d28bf6aad0.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Heap.size_combine](declarations/heap-size-combine--de93db95c9a627f229cb8887.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Heap.size_deleteMin](declarations/heap-size-deletemin--1061fb0d4a52f7772785b20d.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Heap.size_tail?](declarations/heap-size-tail--d7740c07eca9e760d5036a72.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Heap.size_tail](declarations/heap-size-tail--12db9ca0fc8f7151500a5d3e.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.size_deleteMin_lt](declarations/heap-size-deletemin-lt--94b23b968b8da8ee51979594.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Heap.size_tail?_lt](declarations/heap-size-tail-lt--f9ad81041962c294206eba29.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Heap.foldM](declarations/heap-foldm--0b9a8623cb00faacb4864a98.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Heap.fold](declarations/heap-fold--d22ce3c6183abcf565af6a5d.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Heap.toArray](declarations/heap-toarray--96eead59179678eb2bd73add.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Heap.toList](declarations/heap-tolist--338e7643b17549bfdd562d02.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem--f6de949b8d544f69c7eb0cd1.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldTree](declarations/heap-foldtree--b33d6bdf81e10f06082114df.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered--9d49cd078866d7e66900e95d.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered--dd48451d14ef50f1d5a9b451.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.NodeWF](declarations/heap-nodewf--575f367c60f0c90340b93657.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Heap.WF](declarations/heap-wf--50c59b60c3c834aa0bf519f9.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton--157b0bbd85e791302d6d318c.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Heap.WF.merge_node](declarations/heap-wf-merge-node--30bff0da2774675f5ac40904.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge--f0233f1d8a16243015b66913.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Heap.WF.combine](declarations/heap-wf-combine--e8436548ae243a9f808a1fe8.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin--56d06e8a506d5a7bea3e63bb.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail--6b00f6a87f774f33c00d11a1.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail--f309fec288ed6e9fa00d358b.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.deleteMin_fst](declarations/heap-deletemin-fst--86065b5bada9bbd5751aa11a.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [PairingHeap](declarations/pairingheap--d4b4d8308ecd13e762db76b8.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mkPairingHeap](declarations/mkpairingheap--f97afa40c6f369b5ab959408.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [empty](declarations/empty--6ceb2a5c851f7a8430f5c945.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance--29f4d8e0d4c120c419066271.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isEmpty](declarations/isempty--691d6b62d7c4df601d620227.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [size](declarations/size--2c17df9914089ea45b1c235c.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [singleton](declarations/singleton--df0608fb48aacaa41a881ad6.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [merge](declarations/merge--8b274e97492cde75d8355068.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [insert](declarations/insert--b90b7e3859f48b981971cb7d.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [ofList](declarations/oflist--c7145cdd6085b7ce94f405ce.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ofArray](declarations/ofarray--fc0ef73db4f3f4cd40a539c7.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [deleteMin](declarations/deletemin--d2c48a6d6f6c6c3ca13e61e8.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [head?](declarations/head--47d4ce82442870551f7b09a8.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [head!](declarations/head--a1a83167bfcbc56009782c7a.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [headI](declarations/headi--1ea13ec7797095b539ccb7d0.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tail?](declarations/tail--07b94c1c0042286fa0b49d4a.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [tail](declarations/tail--2390debca38c4d1768df0ed3.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist--a80774f2dba04e31d69a6f4c.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray--984879e5299e421e773a1274.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toListUnordered](declarations/tolistunordered--dded3784fb855d01b6db57cc.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [toArrayUnordered](declarations/toarrayunordered--ab43268fcd68ae7501af151c.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
