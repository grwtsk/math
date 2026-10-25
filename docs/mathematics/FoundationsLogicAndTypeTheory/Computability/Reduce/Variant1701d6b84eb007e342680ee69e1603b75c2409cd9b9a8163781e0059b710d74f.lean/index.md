# GRWTSK.FoundationsLogicAndTypeTheory.Computability.Reduce.Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `176545e6619036fad9ca82bfcfcbc32eebf8a7a8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant1701d6b84eb007e342680ee69e1603b75c2409cd9b9a8163781e0059b710d74f.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ManyOneReducible](declarations/manyonereducible--c297ec28b2097c956870722e.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ManyOneReducible.mk](declarations/manyonereducible-mk--351505bb7a26b242088c8e3a.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [manyOneReducible_refl](declarations/manyonereducible-refl--05b9da03335f654f697be8da.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ManyOneReducible.trans](declarations/manyonereducible-trans--4c8bf039aff9262a678e077d.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [stdRefl_manyOneReducible](declarations/stdrefl-manyonereducible--8e6e91f450647a1f237b701c.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [isTrans_manyOneReducible](declarations/istrans-manyonereducible--1664214e73b1a4901dd644d5.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [OneOneReducible](declarations/oneonereducible--8cc780c79b6fcc4f31c7bb32.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [OneOneReducible.mk](declarations/oneonereducible-mk--63d547f5a0e4448b3b0b84c4.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [oneOneReducible_refl](declarations/oneonereducible-refl--7319b1bf1f49e2b12e6c048f.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [OneOneReducible.trans](declarations/oneonereducible-trans--158978a1cd1f8ac969f349dd.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [OneOneReducible.to_many_one](declarations/oneonereducible-to-many-one--c565e5bb5dee0265b1e3f433.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [OneOneReducible.of_equiv](declarations/oneonereducible-of-equiv--17306e6615275e693fd67b31.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [OneOneReducible.of_equiv_symm](declarations/oneonereducible-of-equiv-symm--23280c4aaaf5c070106f62e7.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [stdRefl_oneOneReducible](declarations/stdrefl-oneonereducible--91967ec21c8eb9d84c34427d.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [isTrans_oneOneReducible](declarations/istrans-oneonereducible--2b6fc4aedaa78a585bea4c6f.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [computable_of_manyOneReducible](declarations/computable-of-manyonereducible--086b7af1cca89598f7d48145.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [computable_of_oneOneReducible](declarations/computable-of-oneonereducible--aba5c59cd5e0be1d5e10d684.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ManyOneEquiv](declarations/manyoneequiv--2a32020eb05daa2654f27e96.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [OneOneEquiv](declarations/oneoneequiv--52a0b0b1d55e3c69a370e00f.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [manyOneEquiv_refl](declarations/manyoneequiv-refl--b04a4dc4007e953f9069e36f.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ManyOneEquiv.symm](declarations/manyoneequiv-symm--c2ff1ac3f605612bbafeaa72.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ManyOneEquiv.trans](declarations/manyoneequiv-trans--c5d36882a59546aa4b3a0b67.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [equivalence_of_manyOneEquiv](declarations/equivalence-of-manyoneequiv--da9db82d6c59dd9d9eda937d.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oneOneEquiv_refl](declarations/oneoneequiv-refl--4901d84b8639aa1ccf427e3a.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [OneOneEquiv.symm](declarations/oneoneequiv-symm--8fa330e8083ae7cd998c9cd3.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [OneOneEquiv.trans](declarations/oneoneequiv-trans--3d364cdfbbe59e07a4f52661.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [equivalence_of_oneOneEquiv](declarations/equivalence-of-oneoneequiv--c26ab28245c302ad1f1a8585.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [OneOneEquiv.to_many_one](declarations/oneoneequiv-to-many-one--6ca9f4ac9718efe43ae11706.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Equiv.Computable](declarations/equiv-computable--9e57025ac953fccd3498bcce.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Equiv.Computable.symm](declarations/equiv-computable-symm--55ed81a3ea5db075d60a7fd4.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Equiv.Computable.trans](declarations/equiv-computable-trans--57eb1fd51ae4c193c743e016.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Computable.eqv](declarations/computable-eqv--022035ad8a316d297da0e902.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Computable.equiv₂](declarations/computable-equiv--afc25199c584e49ac6ee1566.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [OneOneEquiv.of_equiv](declarations/oneoneequiv-of-equiv--34ae6968ec031d1b2033c42b.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ManyOneEquiv.of_equiv](declarations/manyoneequiv-of-equiv--f4141c06841ed9eaeba0133e.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ManyOneEquiv.le_congr_left](declarations/manyoneequiv-le-congr-left--a62ec622c5020c4161d0784c.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ManyOneEquiv.le_congr_right](declarations/manyoneequiv-le-congr-right--e24d4d66755bdcea10502cd6.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [OneOneEquiv.le_congr_left](declarations/oneoneequiv-le-congr-left--3dc340297316f8efaf9292e5.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [OneOneEquiv.le_congr_right](declarations/oneoneequiv-le-congr-right--5b46e58cbf022aa7eaf6b2e4.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ManyOneEquiv.congr_left](declarations/manyoneequiv-congr-left--ae8d394939884171bbaccb66.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ManyOneEquiv.congr_right](declarations/manyoneequiv-congr-right--d31a125a14a5d899d7061f96.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [OneOneEquiv.congr_left](declarations/oneoneequiv-congr-left--586cf54a6a6690b9f8d2ba56.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [OneOneEquiv.congr_right](declarations/oneoneequiv-congr-right--2918870d0aedc896e5ea7711.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ULower.down_computable](declarations/ulower-down-computable--f242b3265c4a7d49274ce6ca.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [manyOneEquiv_up](declarations/manyoneequiv-up--db432842efebb922a243e4b2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [OneOneReducible.disjoin_left](declarations/oneonereducible-disjoin-left--4d48308e80de428bf7c015d2.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [OneOneReducible.disjoin_right](declarations/oneonereducible-disjoin-right--ef94764d5a7640732222061b.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [disjoin_manyOneReducible](declarations/disjoin-manyonereducible--839bef398e72d0d3d4d8b296.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [disjoin_le](declarations/disjoin-le--d57e0204ab9c72d260295c25.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toNat](declarations/tonat--331e78aad9f3287542877703.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toNat_manyOneReducible](declarations/tonat-manyonereducible--d8d6ca5bee9dd2a6804dd0fc.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [manyOneReducible_toNat](declarations/manyonereducible-tonat--d63e71e12bf89faa65391771.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [manyOneReducible_toNat_toNat](declarations/manyonereducible-tonat-tonat--3624d24bff7327516ae60240.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toNat_manyOneEquiv](declarations/tonat-manyoneequiv--c531ef6b8bb40baaa57967c5.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [manyOneEquiv_toNat](declarations/manyoneequiv-tonat--93769ff60c0a09f0b639e7bb.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ManyOneDegree](declarations/manyonedegree--4e29a96e4c63fa278a6be803.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [of](declarations/of--8c74a019d0350df7ffb83623.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ind_on](declarations/ind-on--58d09db9e1a8e30e65811305.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [liftOn](declarations/lifton--63d1bc21d1b617cd087bc3f0.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [liftOn_eq](declarations/lifton-eq--88f5bc0c23e43610748f9593.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [liftOn₂](declarations/lifton--cf42743ad9f3e630d247513e.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [liftOn₂_eq](declarations/lifton-eq--38813249fa5108e01631c363.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [of_eq_of](declarations/of-eq-of--dc6214260e80225f2e532146.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instInhabited](declarations/instinhabited--59121bfb7a0b31f431be3476.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instLE](declarations/instle--aedbc56586fc68523831a0e2.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [of_le_of](declarations/of-le-of--1a0860e906c715d666037216.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [le_refl](declarations/le-refl--02b623f573b097775c066042.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [le_antisymm](declarations/le-antisymm--da3ff41848455f90fb6b9695.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [le_trans](declarations/le-trans--4f3484fe3f3a7fe02e7d61a9.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instPartialOrder](declarations/instpartialorder--7846b7f0d32b7c8038e29fe8.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instAdd](declarations/instadd--64311fc121471565d4f37f4a.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [add_of](declarations/add-of--5f12a6677352c23566963b62.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [add_le](declarations/add-le--bba6343e2173bf5fb81413d4.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_add_left](declarations/le-add-left--eebf1f85a4c10b8ff2b1eac9.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [le_add_right](declarations/le-add-right--fcf6293972bd4a6c46c6f5f4.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instSemilatticeSup](declarations/instsemilatticesup--f6e14ad1561fcdd700c0160f.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
