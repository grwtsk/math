# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "533733eb09bfe43ac2d5a472829bf3da037f8456",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `533733eb09bfe43ac2d5a472829bf3da037f8456`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.HasIterationOfShape` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.PrincipalSeg` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.InitialSeg` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictionLT](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/restrictionlt--f9d735ea5a7229322f1d4b7b.md) | 82 | `declaration-track:f9d735ea5a7229322f1d4b7bb01b2764f4c229990c225fb46850ff312de47bc1` |
| 2 | `lemma` | [restrictionLT_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/restrictionlt-obj--55a21f57803856fed400f3ea.md) | 87 | `result-track:55a21f57803856fed400f3eaf59ef793a469020f7c60b85e6dfbc3df8bebed00` |
| 3 | `lemma` | [restrictionLT_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/restrictionlt-map--6d871d33e85bc961ce67064a.md) | 91 | `result-track:6d871d33e85bc961ce67064a4987f686521a36d353b1031cd9caea3de1ac3cfb` |
| 4 | `def` | [coconeOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/coconeofle--3cf6ad8b5fe9f90834bd59da.md) | 97 | `declaration-track:3cf6ad8b5fe9f90834bd59da64fe77efd5986978bea5edf50ed3c2922ded4f91` |
| 5 | `def` | [restrictionLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/restrictionle--94ac62e7e3b410019c296e90.md) | 102 | `declaration-track:94ac62e7e3b410019c296e900c8da16b19a393618ed7160350343e39f68bc913` |
| 6 | `lemma` | [restrictionLE_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/restrictionle-obj--40b24502e76f4b926e82f01a.md) | 106 | `result-track:40b24502e76f4b926e82f01ab9ac01a1ce8849e5dd43205b6d7e46d24c8066b3` |
| 7 | `lemma` | [restrictionLE_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/restrictionle-map--6acfef7236e24d0c7bd8a4c8.md) | 110 | `result-track:6acfef7236e24d0c7bd8a4c824f161af9b07500755bed1ca21ae85fd23da3a74` |
| 8 | `structure` | [SuccStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/succstruct--9d2e495b958ff947c521ca4a.md) | 120 | `declaration-track:9d2e495b958ff947c521ca4a80a55a542907e546131084c387127b582c473ae1` |
| 9 | `def` | [ofNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/ofnattrans--c57e6eae021eb7575db2874e.md) | 133 | `declaration-track:c57e6eae021eb7575db2874e62be2ebfb96eddbc7a2cf5af680e87d68fc66fe3` |
| 10 | `def` | [prop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/prop--fa0d04bb07e4f1870eed3572.md) | 141 | `declaration-track:fa0d04bb07e4f1870eed35727784af7a6ecf9d75209c90549e058f4d580280c6` |
| 11 | `lemma` | [prop_toSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/prop-tosucc--b02e8ce864a83bd587351584.md) | 143 | `result-track:b02e8ce864a83bd5873515843a1cfa8ce531becbff819be1c0b1ae1a8770568a` |
| 12 | `def` | [toSuccArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/tosuccarrow--51aaeb80f3708e5f2da7148a.md) | 147 | `declaration-track:51aaeb80f3708e5f2da7148a9cb14e6bb5f13722524d3dc76e0addaa0bec5045` |
| 13 | `lemma` | [prop_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/prop-iff--7afe7def2845ce8772f6dc9d.md) | 149 | `result-track:7afe7def2845ce8772f6dc9db75051dca481bfecb4d7cc9ae8eb8a19ed054922` |
| 14 | `lemma` | [prop.succ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/prop-succ-eq--4c6d5a191f4bea21f00f96fd.md) | 160 | `result-track:4c6d5a191f4bea21f00f96fd20713e30e5bde4d2d0d72855015d88bb94ecbd55` |
| 15 | `lemma` | [prop.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/prop-fac--9ee2bfe1b370f20310d95c8a.md) | 166 | `result-track:9ee2bfe1b370f20310d95c8a2c49d8515197a6e4faa30476cd751cdbb9df98f8` |
| 16 | `def` | [prop.arrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/prop-arrowiso--f8a33a5f088d7d3d060f92e8.md) | 175 | `declaration-track:f8a33a5f088d7d3d060f92e814a8f2f477dcc64ffb3a1c11cbc10e6fa6d8fe5d` |
| 17 | `def` | [arrowMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrowmap--2eae1c02aeaeed2e6ee5b6c8.md) | 184 | `declaration-track:2eae1c02aeaeed2e6ee5b6c8a5c7de26a5bb66ffe5fb2cbdc53b1c340280d73d` |
| 18 | `lemma` | [arrowMap_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrowmap-refl--61e5305b76636e5d0a580aca.md) | 189 | `result-track:61e5305b76636e5d0a580acacdc940ccdebdba637bc9114f345b7052cc097ea3` |
| 19 | `lemma` | [arrowMap_restrictionLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrowmap-restrictionle--35b39a7f9ad8c659cdf5d118.md) | 193 | `result-track:35b39a7f9ad8c659cdf5d118c5c05df7f83065967241d2a5cc957789b0a73810` |
| 20 | `def` | [arrowSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrowsucc--f77734d8a8578a94f89c73e9.md) | 204 | `declaration-track:f77734d8a8578a94f89c73e94bb7694f8fdb0ffac56fd254dd00dd75c7f52c9a` |
| 21 | `lemma` | [arrowSucc_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrowsucc-def--10cabf1d9eb9460386243f86.md) | 207 | `result-track:10cabf1d9eb9460386243f86daf8a0849e720fb0135b7fb8e5455c8ba357b2f7` |
| 22 | `def` | [arrowι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrow--aa71b570c0222247e0dfbf5f.md) | 220 | `declaration-track:aa71b570c0222247e0dfbf5f1a0ce4e7c7bb45efacca3990ce6a395ea86f6430` |
| 23 | `lemma` | [arrowι_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrow-def--f24b72a0895f13c39b4350a0.md) | 224 | `result-track:f24b72a0895f13c39b4350a0df7fd155a2aaacd635a7d7bf618bdac792a7cdcf` |
| 24 | `structure` | [Iteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/iteration--8afa37cf4992f4d2c8d3f48b.md) | 238 | `declaration-track:8afa37cf4992f4d2c8d3f48b7d28d13a7120ed1f29d176b540a31deb7629a904` |
| 25 | `lemma` | [obj_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/obj-succ--46a2a9ce97e84c57c81d1f26.md) | 261 | `result-track:46a2a9ce97e84c57c81d1f26c9f95c4eaac33011defe37ac38bbefcb5cc3e5a6` |
| 26 | `lemma` | [prop_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/prop-map-succ--b04fbab9a00db373026c3469.md) | 265 | `result-track:b04fbab9a00db373026c34695c70b6fae2cf24cafe5936a62ff0fba28669ae08` |
| 27 | `lemma` | [obj_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/obj-limit--160a33c69e0c29c8af085c2b.md) | 270 | `result-track:160a33c69e0c29c8af085c2b9427813e339f036488f3999a1a2e610d256d5c19` |
| 28 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/iscolimit--b173c4e9833340b684aada90.md) | 277 | `declaration-track:b173c4e9833340b684aada90439a0c99c406edbd26c98e34c9cd156480cc5d69` |
| 29 | `def` | [trunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/trunc--86d45ef6a2b6a03808c51222.md) | 291 | `declaration-track:86d45ef6a2b6a03808c512225ec3fff2aa67e8e093b6c3479aeee06a373a8ef3` |
| 30 | `def` | [MapEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/mapeq--9d143d65745aeeb4f6fbe39c.md) | 308 | `declaration-track:9d143d65745aeeb4f6fbe39c6854c3acd24a0c05244bbada3c60f2838d8e163f` |
| 31 | `lemma` | [src](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/src--4616f1922a85540d6f3be3e5.md) | 316 | `result-track:4616f1922a85540d6f3be3e5a7ef6728041d2f218f7c1a0fa66a46242226c881` |
| 32 | `lemma` | [tgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/tgt--7319c3c64bd221f25af6d181.md) | 319 | `result-track:7319c3c64bd221f25af6d181ae9b7defa963b8580417a0e9bafc7f77352fb515` |
| 33 | `lemma` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/w--c4ba2769424c7f655fc63915.md) | 322 | `result-track:c4ba2769424c7f655fc63915f53d224aa5074b27cb7d34cf1f01ed8bfaa406a3` |
| 34 | `lemma` | [mapEq_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/mapeq-refl--32aa7b3681342140891b74a6.md) | 335 | `result-track:32aa7b3681342140891b74a61756c52199ce52e975569c5c52485753d1741356` |
| 35 | `lemma` | [mapEq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/mapeq-trans--a63d32f98094c948e2eba53d.md) | 339 | `result-track:a63d32f98094c948e2eba53d65360205f430ce7cc75cb02c8b52ec780e9f62d5` |
| 36 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/ext--36dd2d3737499bf248bfd8c6.md) | 347 | `result-track:36dd2d3737499bf248bfd8c6def0da6286df7c125e67de4b4c02845475b273ec` |
| 37 | `instance` | [subsingleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/subsingleton--a3351a4af6463fa524b034a8.md) | 357 | `declaration-track:a3351a4af6463fa524b034a808f0be3fe9086cbeee2258f9dd1cca5b072c25ab` |
| 38 | `lemma` | [congr_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/congr-obj--c7df3e814d1b9d2b9f368345.md) | 406 | `result-track:c7df3e814d1b9d2b9f36834574c36a4fbaaa5f1d27381a6794c139e493edbc5b` |
| 39 | `lemma` | [congr_arrowMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/congr-arrowmap--9f2573bd75ddd37bd8d9064f.md) | 414 | `result-track:9f2573bd75ddd37bd8d9064feb256453188c3818927d3a03202cb83a62b95e41` |
| 40 | `lemma` | [congr_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/congr-map--5c494117f5f2c008797b8cd3.md) | 422 | `result-track:5c494117f5f2c008797b8cd397923d7322156bfe6a99fdec895a48e1b54335d9` |
| 41 | `def` | [mapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/mapobj--764d8c70273bbb2dfbebb862.md) | 434 | `declaration-track:764d8c70273bbb2dfbebb862dfa919c4b3e131e958889ac671c219e0317a912f` |
| 42 | `lemma` | [arrow_mk_mapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/arrow-mk-mapobj--9b38d36e9eac118929573871.md) | 440 | `result-track:9b38d36e9eac118929573871e6ac7bde36c88deeb36d3aedd05b2695ef753412` |
| 43 | `lemma` | [mapObj_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/mapobj-refl--022b1c7bdd599879ee2e45b5.md) | 447 | `result-track:022b1c7bdd599879ee2e45b55c498735e0df1a5103713f1f22587d21a805e2f7` |
| 44 | `lemma` | [mapObj_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/declarations/mapobj-trans--e4423abe71a4c69e057cb198.md) | 453 | `result-track:e4423abe71a4c69e057cb198a02486e5a4f394173821b4fc71c3b6cd4e7b012f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
