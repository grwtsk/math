# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CNF.Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0184a078c2239ae7e1588b9d627c3fe939fbc5e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [falseToCNF](declarations/falsetocnf--2b27ee6ce3e4799cbd76a4f7.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [atomToCNF](declarations/atomtocnf--49b176c6a43b62fe065008d1.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gateToCNF](declarations/gatetocnf--54634882701f3fe923a38ad0.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [falseToCNF_eval](declarations/falsetocnf-eval--df373efb30582017e53e1eae.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [atomToCNF_eval](declarations/atomtocnf-eval--42a1ad982d82c531c74c8db8.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gateToCNF_eval](declarations/gatetocnf-eval--758194fe98af1378343c5f98.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mixAssigns](declarations/mixassigns--0416f35fad621c507349603c.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [projectLeftAssign](declarations/projectleftassign--c714b0b9195cd07f111937a3.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [projectRightAssign](declarations/projectrightassign--4b7f9b8d1a43e1f3ab294f8f.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [projectLeftAssign_property](declarations/projectleftassign-property--d9c568d1939e3452aefd3fd8.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [projectRightAssign_property](declarations/projectrightassign-property--b71f84beb83fc48bbc17f5cc.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [cnfSatAssignment](declarations/cnfsatassignment--1bd63571ef47bfb6b89ef4f2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [satAssignment_inl](declarations/satassignment-inl--47d1772056a0dbbc42e5a39c.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [satAssignment_inr](declarations/satassignment-inr--8de5d561349685a64f44ac0a.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Cache.Inv](declarations/cache-inv--ff454856ce9a746df7309218.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Cache.Inv_init](declarations/cache-inv-init--562ecff1ad8147a8e50acc3d.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Cache](declarations/cache--164d0090034d873bc9d4a995.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Cache.IsExtensionBy](declarations/cache-isextensionby--d14f88158f7851b3e7be34ce.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Cache.IsExtensionBy_trans_left](declarations/cache-isextensionby-trans-left--007371896f421d2328d06d2e.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Cache.IsExtensionBy_trans_right](declarations/cache-isextensionby-trans-right--50fbbad6a484b94aa9593a08.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Cache.IsExtensionBy_rfl](declarations/cache-isextensionby-rfl--ffdd3e1d47fd36b77fc2b922.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Cache.IsExtensionBy_set](declarations/cache-isextensionby-set--ddc249ecd415b8210dbccb50.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Cache.init](declarations/cache-init--e5a7687daf53e5576a3aebaf.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Cache.addFalse](declarations/cache-addfalse--8cefc15bfef45cb913557b68.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Cache.addAtom](declarations/cache-addatom--ce4957c4cec67c4811c0e563.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Cache.addGate](declarations/cache-addgate--96729130bf72453e054ca892.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [State.Inv](declarations/state-inv--5b0059eb260de7bb0189f98e.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [State.Inv_nil](declarations/state-inv-nil--b80c6cafb0b0a0d183a64da4.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [State.Inv_append](declarations/state-inv-append--9aab5659a6cba9579486ca91.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [State.Inv_falseToCNF](declarations/state-inv-falsetocnf--8a8d599b6a5c69c536825b09.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [State.Inv_atomToCNF](declarations/state-inv-atomtocnf--1a93ef82e9539c450334e82c.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [State.Inv_gateToCNF](declarations/state-inv-gatetocnf--6f09deddf57548368d34b07b.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [State](declarations/state--7688130168c36e3a02b0cca2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [State.empty](declarations/state-empty--e1ef7a9f264cd7fc6238bbb3.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [State.IsExtensionBy](declarations/state-isextensionby--dfcec16f3fc6b7bfb412fcd2.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [State.IsExtensionBy_trans_left](declarations/state-isextensionby-trans-left--88012c8cc277765f355ea88a.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [State.IsExtensionBy_trans_right](declarations/state-isextensionby-trans-right--069ab13fbd8526b95a666b2c.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [State.IsExtensionBy_rfl](declarations/state-isextensionby-rfl--ac31ef7fc3c417e25e8eba7d.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [State.addFalse](declarations/state-addfalse--a0c5114a5b1773735b7a0e75.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [State.addAtom](declarations/state-addatom--d98b0c5706d0d6b28d48929b.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [State.addGate](declarations/state-addgate--41d49c48f21e5303db2c2dcb.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [State.eval](declarations/state-eval--ae8251196af5f521b9c5958c.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [State.Sat](declarations/state-sat--b3b1ff6a8d3e75843b48fce4.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [State.Unsat](declarations/state-unsat--0d8345956f9dfa165981caac.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [State.eval_eq](declarations/state-eval-eq--bd421a37f4907cde8af52f33.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [State.sat_iff](declarations/state-sat-iff--54dfdc001d9ab87f5422ac58.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [State.unsat_iff](declarations/state-unsat-iff--816293f5dbb499cd2682e0bf.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [toCNF](declarations/tocnf--d9e511b8f2021ad3b8b03c9a.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toCNF.go_marks](declarations/tocnf-go-marks--720e41a85aa5eab23d759d70.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toCNF.go_sat](declarations/tocnf-go-sat--1107a3aa07feb9022abd9067.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toCNF.go_as_denote'](declarations/tocnf-go-as-denote--721ef9381664bf3e09a5614e.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toCNF.go_as_denote](declarations/tocnf-go-as-denote--a54dbd0cd9d8d4c78d033d52.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toCNF.denote_as_go](declarations/tocnf-denote-as-go--bf462e73282bd7b00f751bdf.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toCNF_equisat](declarations/tocnf-equisat--39a1c94d13604142201278aa.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
