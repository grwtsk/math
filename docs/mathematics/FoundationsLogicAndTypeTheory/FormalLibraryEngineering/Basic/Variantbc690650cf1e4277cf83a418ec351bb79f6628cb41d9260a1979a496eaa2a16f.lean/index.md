# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantbc690650cf1e4277cf83a418ec351bb79f6628cb41d9260a1979a496eaa2a16f

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbc690650cf1e4277cf83a418ec351bb79f6628cb41d9260a1979a496eaa2a16f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89527755fda093bdc4314bd4eaea06fdb829b6a7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbc690650cf1e4277cf83a418ec351bb79f6628cb41d9260a1979a496eaa2a16f.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instDecidableEq](declarations/instdecidableeq--b72d6061c25328e882541ae8.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableEqNone](declarations/decidableeqnone--2271b588b0afd8bd3ef43294.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [decidableNoneEq](declarations/decidablenoneeq--b381f045de881c2270afc7bc.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [getD_none](declarations/getd-none--d5933678903cd68c8ad30d7d.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [getD_some](declarations/getd-some--714fe0c6a3183f0610c57d33.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [map_none](declarations/map-none--8a48f3d8ce3e21032cb6bd47.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_some](declarations/map-some--c8057b50f7afdd60d2c74942.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [getM](declarations/getm--aaa27adc62e2d3932779cc7c.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [getM_none](declarations/getm-none--307ba76dacf888fb13e2a63d.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [getM_some](declarations/getm-some--dc7034458e05843bc4d6fb27.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isSome](declarations/issome--8e67a5313c4aa2cad986d04c.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSome_none](declarations/issome-none--7eec5cc1b219fdd1a172410e.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isSome_some](declarations/issome-some--68bbb670025233fac422f601.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isNone](declarations/isnone--2874769f9d1efe07556c0d2e.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isNone_none](declarations/isnone-none--e0ee096bf691e8072284346e.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isNone_some](declarations/isnone-some--637f1e31fe1eac1f26a2581f.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isEqSome](declarations/iseqsome--4f32e7173c43438771882ee5.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [bind](declarations/bind--8804a856618d104d2c8ac1f3.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bind_none](declarations/bind-none--55dfcc80fa514f6040c27886.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bind_some](declarations/bind-some--b82c859153e3d0a444dbf6d1.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [bindM](declarations/bindm--9c5a5414dbb8a589ee5f3378.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mapM](declarations/mapm--59d733566d099a993968c728.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mapM_none](declarations/mapm-none--741827a94ce665dcaa4568dc.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mapM_some](declarations/mapm-some--65e25be98f96cb41fcd5aa93.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapA](declarations/mapa--816f26793e60fed9e6ef5ae3.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mapA_eq_mapM](declarations/mapa-eq-mapm--82a67378c1eecf9453a58b16.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_id](declarations/map-id--d4d52054d8a84d535c9fbc69.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [filterM](declarations/filterm--96209fe5e03fd31ac0f3bcab.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [filter](declarations/filter--9fea8a1add20ab57bf5abd75.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [all](declarations/all--019926d7210c6f3da72ea114.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [all_none](declarations/all-none--1ba7c9ef812eaa2ef869e3a0.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [all_some](declarations/all-some--6d85a18906b590b5a22457c3.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [any](declarations/any--fc4f23d1b43f3e015a1709c8.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [any_none](declarations/any-none--a63c937a3277c64d7871c819.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [any_some](declarations/any-some--eb62b6407b1440d85a6fe1d8.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [orElse](declarations/orelse--2004b674dd178c9d9936e0b2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orElse_some](declarations/orelse-some--c2b9adb5db2927b555c37340.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [orElse_none](declarations/orelse-none--2989430f417a814f41f2d4c0.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance--0668ceb93a4fbceaa3315358.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [or](declarations/or--bd63f8db00605255ff562c50.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [lt](declarations/lt--c347600cb6a7c0fc9e8fb44a.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [le](declarations/le--9991dad6c70aceceb0e4ed79.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance--4b231f3a8a22b06cb453f100.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [lt](declarations/lt--86118ca723fdbd789973934e.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [le](declarations/le--201a90465304485e3ff82127.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [merge](declarations/merge--c37f8ff725eb7664d1bef441.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [elim](declarations/elim--5bbc171fc2857da43e8b509a.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [get](declarations/get--8d59cd1330774381d056bfea.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [some_get](declarations/some-get--9433a9cf53d4573cf7d51def.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [get_some](declarations/get-some--21b5a84817b6c514419a7de8.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [guard](declarations/guard--3235e7400e1b9e33e947cb59.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toList](declarations/tolist--4af9fd1c0701fb8790b5e1b8.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [toArray](declarations/toarray--91607416b699b00547e8b3b5.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `inductive` | [Rel](declarations/rel--9fe40a6b48e5d6e8748e8776.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [join](declarations/join--0d866f46bcb784a0259dce6c.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [join_none](declarations/join-none--2ffc1c8b609a2375e0d3f50d.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [join_some](declarations/join-some--508d4a01c49b87a806e547f8.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [sequence](declarations/sequence--87f3527296c25e0d3effdeee.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sequence_none](declarations/sequence-none--a9d7d254eb85d1cfd56c5c3a.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sequence_some](declarations/sequence-some--cc886e6adb11c25ea45cb5a4.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [elimM](declarations/elimm--4d35b4983b7ad6913258683f.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [getDM](declarations/getdm--563713b637784993a117af43.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [getDM_none](declarations/getdm-none--af1efc443a6a1c5ca8ef0810.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [getDM_some](declarations/getdm-some--1d608cf9b9ef5157048b79dd.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance--3dfd1b3b028f746bab9fb29c.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance--dcce84dc78c87113d3ab4f17.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [min](declarations/min--ecc53678aafe354cde9266f7.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance--dfacc93527a280667a986b2b.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [min_some_some](declarations/min-some-some--454098cecbcf7b1466552a13.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [min_none_left](declarations/min-none-left--da213a0297de783c2d934c20.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [min_none_right](declarations/min-none-right--c3c4ff9b8ac322494eef3334.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [max](declarations/max--589f27c456e0746b0705ea80.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance--78c5840c8e76e5256c55a9c0.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [max_some_some](declarations/max-some-some--edd73510cc342bb8d09cc81a.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [max_none_left](declarations/max-none-left--82db6697b7b5cf50c73756bf.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [max_none_right](declarations/max-none-right--409db3470e8f959b123f94a5.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance--e8168f1c20ac6207497fd5d5.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance--ab61ae9fdd5ee5d0ef1f2ce8.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance--5ba5b635f1640322f5a34020.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance--759ac9b8c6b4aa5f3063d9f5.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance--a8ba80d6ccf86cf377b8e825.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [liftOption](declarations/liftoption--152b159c7bae2690800e90c5.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [Option.tryCatch](declarations/option-trycatch--54ccb4bd380a24417ab8eac4.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance--f569d71ad5bca2858248b3e5.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
