# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PairingHeap.Variant01260e477fc745095a5c6d323c63e27dd243dd38672ade7cc0717424cba08cba

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant01260e477fc745095a5c6d323c63e27dd243dd38672ade7cc0717424cba08cba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc39075a5d5a4ed3f0764fe176a55431dc01ae83`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant01260e477fc745095a5c6d323c63e27dd243dd38672ade7cc0717424cba08cba.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Heap](declarations/heap--7a77cf88142193eeb9868bde.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Heap.size](declarations/heap-size--6da3bc0a2bb6c3e7b41645fd.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Heap.singleton](declarations/heap-singleton--f677238ca6d5f5c135e34619.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Heap.isEmpty](declarations/heap-isempty--c3780c2654c84747216f1b5f.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Heap.merge](declarations/heap-merge--5f6a6187b0ff21b71fb02354.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Heap.combine](declarations/heap-combine--48296140066ae4fad92dec04.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Heap.headD](declarations/heap-headd--7ff7f7ef37a631dbb426b81d.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.head?](declarations/heap-head--85bf6db379e83fc8430d34ff.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.deleteMin](declarations/heap-deletemin--0af4d5fa81d9eea69fc91306.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.tail?](declarations/heap-tail--cef2e4b642db276a146d9473.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.tail](declarations/heap-tail--16a7670d4eb253bded07c3ac.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [Heap.NoSibling](declarations/heap-nosibling--54090cb05788c3cca7a430c8.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--45f594dc2cfa859f006545ed.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Heap.noSibling_merge](declarations/heap-nosibling-merge--9e3648c8d147af6795a2bf91.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Heap.noSibling_combine](declarations/heap-nosibling-combine--94c9db22a6ae1ed16cecbf65.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Heap.noSibling_deleteMin](declarations/heap-nosibling-deletemin--2c9719c03d6f59a094af68b1.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Heap.noSibling_tail?](declarations/heap-nosibling-tail--9e2278767f99b65261c1a391.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Heap.noSibling_tail](declarations/heap-nosibling-tail--da7b5f9eada91d6449f23ce6.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Heap.size_merge_node](declarations/heap-size-merge-node--843a22b4d4a811dee8f3ab7e.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Heap.size_merge](declarations/heap-size-merge--ad68267adc6e19a764c07335.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Heap.size_combine](declarations/heap-size-combine--9e45ad7f6c75b6ce64d9ac2a.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Heap.size_deleteMin](declarations/heap-size-deletemin--36306b401042bd7c0a1f84cc.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Heap.size_tail?](declarations/heap-size-tail--b201d3d710cf18834ac365b2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Heap.size_tail](declarations/heap-size-tail--3f132ff2e334e180f1aa07ec.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.size_deleteMin_lt](declarations/heap-size-deletemin-lt--cb88bf3e5e599eb59081277d.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Heap.size_tail?_lt](declarations/heap-size-tail-lt--41ef7bd55128d937ad39a93a.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Heap.foldM](declarations/heap-foldm--856b33545b32caab88e4b66c.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Heap.fold](declarations/heap-fold--a9fe8f9e4452786cf4a12383.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Heap.toArray](declarations/heap-toarray--a0dfd68112afbc94b3d1f289.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Heap.toList](declarations/heap-tolist--fd92d6a9fef160ba2d0acc8e.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem--88ce938bf4358800cd99c522.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldTree](declarations/heap-foldtree--6066781e225bf30b84ba4ab9.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered--c853343aaafe9c1f291aabb9.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered--256a3941bf41b0cbf9728a20.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.NodeWF](declarations/heap-nodewf--534ff1de5a95338aca7333f6.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Heap.WF](declarations/heap-wf--a36dce3a8b0a9d34d9c049ff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton--273be9130a080a8da8348799.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Heap.WF.merge_node](declarations/heap-wf-merge-node--5d6c1d94117592a49f2ca9e8.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge--ec22aef3fc20d19e0e328e99.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Heap.WF.combine](declarations/heap-wf-combine--fa8d915ca5d065ed36de576d.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin--2faa23ab2383b30d76fecb9d.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail--7a3fee4904510ff7d43842a1.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail--735707b102606e7ba14e7783.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.deleteMin_fst](declarations/heap-deletemin-fst--83f3664a97600a1bc76f9cfd.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [PairingHeap](declarations/pairingheap--eada6a4462da9555ef236db9.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mkPairingHeap](declarations/mkpairingheap--e5fc470ae46e7bf41e01c315.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [empty](declarations/empty--a9f7cef8a4c8421da2c18a85.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance--e31a59ce348828a230abd5e9.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isEmpty](declarations/isempty--3877891c6e26b45feeb723e6.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [size](declarations/size--b3fbcf1076505aad56b3f9e6.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [singleton](declarations/singleton--b663aac023d52e3f70df384a.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [merge](declarations/merge--e24766c39f2a31f3050cb21c.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [insert](declarations/insert--046ee1279fa7b5849ccbce9e.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [ofList](declarations/oflist--882928e0b053abf27ae52dbe.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ofArray](declarations/ofarray--0e566b081db7e6348c6abc91.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [deleteMin](declarations/deletemin--9ad5d42d6e1f786b9d53790a.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [head?](declarations/head--1831ca82e8f16843093ac920.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [head!](declarations/head--292beaeb613e690432c79330.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [headI](declarations/headi--922562ac0d683132a4a50c3b.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tail?](declarations/tail--96463b295bd952d571dacb7f.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [tail](declarations/tail--432bd6de9b4e213662f5006a.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist--bdce22fd97dfdb1f572ac7f0.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray--adec86b892da11517e53458e.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toListUnordered](declarations/tolistunordered--5a3467eb75beea754afb6bbd.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [toArrayUnordered](declarations/toarrayunordered--ec06cd835f448bde8add7fef.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
