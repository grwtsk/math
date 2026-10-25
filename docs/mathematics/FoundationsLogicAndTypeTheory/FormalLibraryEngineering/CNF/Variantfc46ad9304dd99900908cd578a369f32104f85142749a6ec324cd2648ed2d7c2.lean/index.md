# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CNF.Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76c1c8241c3d94a1f8a2730d04846045dc7af272`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [falseToCNF](declarations/falsetocnf--84805abba79f33d4e233fa9b.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [atomToCNF](declarations/atomtocnf--ce4b6c4c1b348836e031d169.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gateToCNF](declarations/gatetocnf--01b5d80c42d90d7fb8b0928f.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [falseToCNF_eval](declarations/falsetocnf-eval--6bc99ffdfe31969f46ff63f7.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [atomToCNF_eval](declarations/atomtocnf-eval--fdeced95342182926429dd69.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gateToCNF_eval](declarations/gatetocnf-eval--82e86f31407c6435258543de.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mixAssigns](declarations/mixassigns--c301b1ba95bb70caea5ff3ab.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [projectLeftAssign](declarations/projectleftassign--4101b0267002187f8ad6a2da.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [projectRightAssign](declarations/projectrightassign--e4ef405807ff0cc9949bb4bc.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [projectLeftAssign_property](declarations/projectleftassign-property--18e9a0ced256b8de21ed6cc0.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [projectRightAssign_property](declarations/projectrightassign-property--25fd85ff5ec9ee0da9c56d5b.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [cnfSatAssignment](declarations/cnfsatassignment--2cd3797a1ccbc72cb1bfa25e.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [satAssignment_inl](declarations/satassignment-inl--9894f14c2c536c581b8364c7.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [satAssignment_inr](declarations/satassignment-inr--a9b4ce55479d1c5cc70d1950.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Cache.Inv](declarations/cache-inv--dcdcc294c114cf8ce51d41ec.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Cache.Inv_init](declarations/cache-inv-init--ce237c9203d02f5b2d40748b.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Cache](declarations/cache--62ec500cebebc9915ea67ba1.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Cache.IsExtensionBy](declarations/cache-isextensionby--bdb02a9749b5c980471e63e9.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Cache.IsExtensionBy_trans_left](declarations/cache-isextensionby-trans-left--07e011d5656f94875dbc0abb.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Cache.IsExtensionBy_trans_right](declarations/cache-isextensionby-trans-right--f90a09349cfb76d40232dd59.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Cache.IsExtensionBy_rfl](declarations/cache-isextensionby-rfl--172c84ac2d7c9aa17653935e.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Cache.IsExtensionBy_set](declarations/cache-isextensionby-set--83faeecbc84be140641b76b4.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Cache.init](declarations/cache-init--10e06c7ecef1456500994e2c.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Cache.addFalse](declarations/cache-addfalse--a6b4d94a9ac057f681a64da0.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Cache.addAtom](declarations/cache-addatom--76af924a9d1b03e90081cc93.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Cache.addGate](declarations/cache-addgate--95bcf93bbe03a27d2ad47a19.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [State.Inv](declarations/state-inv--2c25bee299c57b6c20da3fa4.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [State.Inv_nil](declarations/state-inv-nil--2d3abe4c5cde58be1c9e0f4a.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [State.Inv_append](declarations/state-inv-append--bd99cb743816f91ca38311b4.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [State.Inv_falseToCNF](declarations/state-inv-falsetocnf--96d57fc635d8a4b588b0378f.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [State.Inv_atomToCNF](declarations/state-inv-atomtocnf--f56dd7bc54f721e30aeb5c5c.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [State.Inv_gateToCNF](declarations/state-inv-gatetocnf--d4d0039649c2005c552fba65.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [State](declarations/state--5b0f3bac7c1170e6e0725cea.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [State.empty](declarations/state-empty--893185f57e04aee76e0dc5b8.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [State.IsExtensionBy](declarations/state-isextensionby--32b2c3b6a48c86fd07e60fc4.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [State.IsExtensionBy_trans_left](declarations/state-isextensionby-trans-left--bea92e5c5f1cbdd2e62a7e80.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [State.IsExtensionBy_trans_right](declarations/state-isextensionby-trans-right--b6bd8fe353052ea3b2926080.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [State.IsExtensionBy_rfl](declarations/state-isextensionby-rfl--533a5c16098f04c045ea6941.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [State.addFalse](declarations/state-addfalse--862449fd9ba5593dec4f248f.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [State.addAtom](declarations/state-addatom--831d1a3ca731adc7fdc9a89e.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [State.addGate](declarations/state-addgate--3d0fb145d0ca728c5d8f4fab.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [State.eval](declarations/state-eval--afcb9ef9238cbb2b71c954cc.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [State.Sat](declarations/state-sat--b5d2eba17a28a231967cb735.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [State.Unsat](declarations/state-unsat--8bdef9672b9d2de5c8b1a3cc.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [State.eval_eq](declarations/state-eval-eq--530692632a5f377fc838c6d5.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [State.sat_iff](declarations/state-sat-iff--96278f7fd88ff5bdaafb4eb6.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [State.unsat_iff](declarations/state-unsat-iff--8c2b03491fae81a46c27c7e9.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [toCNF](declarations/tocnf--6a2a9e37c5e41d72be72f8db.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toCNF.go_marks](declarations/tocnf-go-marks--e16653ab8b721eeccd2824d3.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toCNF.go_sat](declarations/tocnf-go-sat--898c798f7cb7f7b1e73dfa6b.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toCNF.go_as_denote'](declarations/tocnf-go-as-denote--3218a92d7137f0be1066626f.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toCNF.go_as_denote](declarations/tocnf-go-as-denote--06aa3e472b349388a3292992.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toCNF.denote_as_go](declarations/tocnf-denote-as-go--20adb2a38657f5d611df4bad.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toCNF_equisat](declarations/tocnf-equisat--62a717236ec1c455f5a1b25d.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
