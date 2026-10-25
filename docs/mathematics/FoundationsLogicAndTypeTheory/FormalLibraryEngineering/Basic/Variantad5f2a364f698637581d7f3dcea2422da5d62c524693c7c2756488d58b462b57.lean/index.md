# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d66d28a07acca798415d7647d96223c00662948`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instDecidableEq](declarations/instdecidableeq--5610f8e29bffb28381f6c0f2.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableEqNone](declarations/decidableeqnone--bbd733380c2e4e42b64f16fb.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [decidableNoneEq](declarations/decidablenoneeq--226698ed5a8689d46fac3144.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [getD_none](declarations/getd-none--ae1c6942d2988a25fc8b8df8.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [getD_some](declarations/getd-some--6d5be0aa2e40e7d5574a1a7f.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [map_none](declarations/map-none--9a6821e7c7beeba5358ebab1.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_some](declarations/map-some--22f6adc67ce9283c5b760685.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [getM](declarations/getm--afcdead02ff74088d906abcb.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [getM_none](declarations/getm-none--2f1a28785685d93b31b5f66c.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [getM_some](declarations/getm-some--1a54f43515d8935e584af696.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isSome](declarations/issome--fa58813d5bfd0a37decd2d42.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSome_none](declarations/issome-none--05ebfd849b96ceaf3a9f54a1.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isSome_some](declarations/issome-some--09802c06ab9cbebfe59abb56.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isNone](declarations/isnone--afe4cffacb224c18b76cae35.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isNone_none](declarations/isnone-none--92ed860ca54767da089214ce.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isNone_some](declarations/isnone-some--2955f3fd94e84a196a1e5c51.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isEqSome](declarations/iseqsome--58d4927c586dba847bc10066.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [bind](declarations/bind--b0c66117f0703aa03336fb0d.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bind_none](declarations/bind-none--b86b2e433ab502bb040924ca.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bind_some](declarations/bind-some--fc9b9eaa29764ff4895b0df8.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [bindM](declarations/bindm--0bde39d8fac804ca5b5706e6.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mapM](declarations/mapm--27fdfe16232eb821a8c01611.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mapM_none](declarations/mapm-none--e01715fee5f82f85df3b7003.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mapM_some](declarations/mapm-some--746c2279cba2ee41aa948bc8.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapA](declarations/mapa--e7fa3734979066b4530a6e5d.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mapA_eq_mapM](declarations/mapa-eq-mapm--4c3313228c988ccf4a649189.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_id](declarations/map-id--06428e0001809a32f938a748.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [filterM](declarations/filterm--163fef566cda057a75094a54.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [filter](declarations/filter--3079a60d4a90fa8ec516dc33.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [all](declarations/all--e2b3b26aae1bb0a1783cf71d.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [all_none](declarations/all-none--8e592503ffb58be5bc18dced.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [all_some](declarations/all-some--798269634c183b8697b768ca.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [any](declarations/any--c002e4f666424abd493059b4.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [any_none](declarations/any-none--92164c77c56bdf42a604b424.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [any_some](declarations/any-some--b5e6325aa44b8c5213a99c8b.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [orElse](declarations/orelse--68e9c68e428fe171d00cf6ee.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orElse_some](declarations/orelse-some--9de22e042b1d6fc5d40b2f3f.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [orElse_none](declarations/orelse-none--03c6909fda8acd69b487d4a8.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance--68b88755049c6bee9d5ce190.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [or](declarations/or--5d981c4437450293ace109e2.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [lt](declarations/lt--eeac777456f2de098a63b0de.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [le](declarations/le--69a2fd00cfea0017557d0180.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance--b3d9f7a43e9aee0a3a24f94d.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [lt](declarations/lt--1447b02a7f4e9dbc5e468379.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [le](declarations/le--28fd64d091fb7ca76cb8d473.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [merge](declarations/merge--a4b751b06b12dbf02c0902e7.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [elim](declarations/elim--13f64416b55df9cd23a6c141.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [get](declarations/get--60b5fbb0fa0d107e95a44760.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [some_get](declarations/some-get--4ebe98e8b3db42f072ec668d.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [get_some](declarations/get-some--076f136189ecb5852befd879.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [guard](declarations/guard--4e5da5ec1bd9a07eb91893ac.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toList](declarations/tolist--d62f6011744b71ba37a0e04d.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [toArray](declarations/toarray--5517129aef134b03d262a492.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `inductive` | [Rel](declarations/rel--9eab8a500a2e92140178ab01.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [join](declarations/join--835e6757256ae8cccff538a9.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [join_none](declarations/join-none--99e9f344d79cb51510bdb780.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [join_some](declarations/join-some--28f6b6a2f0d6e14bdeae3fe7.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [sequence](declarations/sequence--d1d9e44a2664fdaeefe80461.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sequence_none](declarations/sequence-none--3ad6d3e3fc2f34a4c0a5cb68.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sequence_some](declarations/sequence-some--ea2fd5a6fb11f3a8d1425d6c.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [elimM](declarations/elimm--184ff63129dfe1f041097680.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [getDM](declarations/getdm--fd33b58057baff9e58da8d2b.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [getDM_none](declarations/getdm-none--74090839045e64573d6b62e0.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [getDM_some](declarations/getdm-some--2ba794db907ee53f341e1599.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance--d3778e4567ed1ae9ecc31249.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance--e3bc0c3fd593cc16e46f78d5.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [min](declarations/min--dc9ce9dd15d56cc7368455da.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance--d85db6ab2a153a7b9e1511df.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [min_some_some](declarations/min-some-some--62de5670b4af75d2bb7d507d.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [min_none_left](declarations/min-none-left--438533bb0c6d809dfada77a7.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [min_none_right](declarations/min-none-right--f821ef11e13639add1d62767.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [max](declarations/max--8be4d7908bede6e5e14509ba.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance--ca8aed26c12a196c58adb2cb.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [max_some_some](declarations/max-some-some--438f5723c418826d62bae7a0.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [max_none_left](declarations/max-none-left--7284ed174f0b550597860e12.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [max_none_right](declarations/max-none-right--e349875b8da54df7744b4a03.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance--22976cc6d3e5f49f88244c00.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance--bf8e1b5f40a1c7f0ef892a54.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance--68e4ba34e3a7511d53e25bff.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance--288fa11141cd6d1afa38029d.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance--85aaf570907471765ec8ec01.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [liftOption](declarations/liftoption--0ec706bbcb28828919165ab4.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [Option.tryCatch](declarations/option-trycatch--3e3e96892df346d27c9ff5a4.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance--b2f830d3674bc764ecb050b3.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
