# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashMap.Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4d81c5cc33ac8d6e67ad217402ec8688b11486e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Entry](declarations/entry--4ff0148ac915ae452180f139.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--8f2917eb8d972697a647011f.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Node](declarations/node--5ad8031ef81ffe59ac9dec3e.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Node.isEmpty](declarations/node-isempty--52c14d8ea45b45c694f1a58c.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance--4a1d653260ddc7a12e22473e.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [shift](declarations/shift--74c8c379ef0ba0dc54414e26.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [branching](declarations/branching--e4522cdbe61d61bb793e9ef1.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [maxDepth](declarations/maxdepth--179754a94c902d5977aa5f36.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [maxCollisions](declarations/maxcollisions--91c014883e53caf15c2bb4d2.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mkEmptyEntriesArray](declarations/mkemptyentriesarray--4f56b240b5985f952bb08592.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [PersistentHashMap](declarations/persistenthashmap--3ec329b31ee4cf602a174123.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [PHashMap](declarations/phashmap--a0a8c421cac4801c88d8b767.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [empty](declarations/empty--d2bb8727316c883ccd31ae1f.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isEmpty](declarations/isempty--4e28438b506e28f11e23f731.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--af100357e4f0e49f92e2c71b.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkEmptyEntries](declarations/mkemptyentries--89ff59cee61255853bbf1010.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [mul2Shift](declarations/mul2shift--06435afa63636509a1661965.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [div2Shift](declarations/div2shift--578b52c0595010f7ed8612a8.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [mod2Shift](declarations/mod2shift--60bc8f8febcebe4f10bedab5.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [IsCollisionNode](declarations/iscollisionnode--df82efe82d3bd90cffbcbe7b.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [CollisionNode](declarations/collisionnode--3a79084efe5b778173207be8.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [IsEntriesNode](declarations/isentriesnode--fe888c5ca43cf0678691c5c0.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [EntriesNode](declarations/entriesnode--9f1c94cd2fecef9ae08fda57.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [size_set](declarations/size-set--ceb2c0b235bd845473c35dcc.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [size_push](declarations/size-push--539119dcef035ae638002968.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [insertAtCollisionNodeAux](declarations/insertatcollisionnodeaux--9bc07158f66e86038897109d.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [insertAtCollisionNode](declarations/insertatcollisionnode--dced36616d3c9a1c551a083d.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getCollisionNodeSize](declarations/getcollisionnodesize--5585ab1b058a6b3975ee5e5d.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkCollisionNode](declarations/mkcollisionnode--137b7fbc66c82e12fc57d4d9.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [insertAux](declarations/insertaux--9acb1fdbd6a33fe099ccb9c6.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [insert](declarations/insert--f5ed38011d1126a6aa859058.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [findAtAux](declarations/findataux--d7f25215b49637824b774433.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [findAux](declarations/findaux--f28e16a6aa5a132627884f62.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [find?](declarations/find--80f09d256e4359e778618d0c.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance--96b3761bf40760e878b672ce.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [findD](declarations/findd--6236bbf58e2ba12114f79ef6.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [find!](declarations/find--157d3eae9b70be1c7271bb08.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [findEntryAtAux](declarations/findentryataux--b36e620afce7cefe49c3fa87.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [findEntryAux](declarations/findentryaux--b4a3a9f9478575d284b5d4cf.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [findEntry?](declarations/findentry--402f1769b2cd2e12b73d0472.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [findKeyDAtAux](declarations/findkeydataux--30b4b15bdf4cfd382416197b.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [findKeyDAux](declarations/findkeydaux--cf2c317295b13e94cd43cd99.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [findKeyD](declarations/findkeyd--41a64ab8a4ca18eb052a9409.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [containsAtAux](declarations/containsataux--fc17bebc3c36955e9dbe250f.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [containsAux](declarations/containsaux--950874de02339a0eff848cf2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [contains](declarations/contains--a3bb4f3f79e1dd2885b175c0.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [isUnaryEntries](declarations/isunaryentries--364ee0a4feb8b8ef80d43340.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [isUnaryNode](declarations/isunarynode--6c487d49d3f40c53504c30d2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [eraseAux](declarations/eraseaux--fc63c5be5be6d19f7794cb0c.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [erase](declarations/erase--a87d0040d9eca14afba9b717.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [alterAux](declarations/alteraux--2ca22ec4f6e2a9bb3b86c2d9.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [alter](declarations/alter--69d06032ecc8f7a8f707cac0.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [foldlMAux](declarations/foldlmaux--f8aa03ab53eb4bf0cb218ce4.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [foldlM](declarations/foldlm--91ed7a4baed895c820812873.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [forM](declarations/form--6b147e6a3d665cf13d6b82e2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [foldl](declarations/foldl--687333401dceac39653c9e4e.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [forIn](declarations/forin--c86d50afaae4631a151b3f21.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance--678856540184dfc97011df2f.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mapMAux](declarations/mapmaux--08ca0a63344be1692e54d920.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [mapM](declarations/mapm--c8b3f84c6f6dac6a9f165446.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [map](declarations/map--a26b245e673d8721ca910dab.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist--7e844b180e024c603594bfd4.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray--953e86e8ed5fe93f3ea5c151.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [Stats](declarations/stats--c342444131bd7fee1579fab2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [collectStats](declarations/collectstats--613f6ddaa93e73d398ad182e.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [stats](declarations/stats--2dd3371e071f83576d999ebd.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [Stats.toString](declarations/stats-tostring--f38d735aba9881665b6d99c2.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance--7e88d58e9026fb9e1a4300ce.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
