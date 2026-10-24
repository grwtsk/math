# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "481935825b291019c9604d5549abcf3ddf084ffd",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `481935825b291019c9604d5549abcf3ddf084ffd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.HasIterationOfShape` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.PrincipalSeg` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.InitialSeg` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictionLT](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/restrictionlt--9bea2a7b2490e311478333ea.md) | 90 | `declaration-track:9bea2a7b2490e311478333ea02508c445fb6a1e2d3196defaf8643a15393d574` |
| 2 | `lemma` | [restrictionLT_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/restrictionlt-obj--a0111f9523d1889a2f4761f4.md) | 95 | `result-track:a0111f9523d1889a2f4761f4dc62917f797cfdc1ae34ffec0480bacfa06fa5d6` |
| 3 | `lemma` | [restrictionLT_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/restrictionlt-map--45151f26f238f30b22f41911.md) | 99 | `result-track:45151f26f238f30b22f419116901e8f21eb75ef3d986d2c4a151ac00458ab520` |
| 4 | `def` | [coconeOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/coconeofle--40118c0680add7c685043de7.md) | 105 | `declaration-track:40118c0680add7c685043de72d47643f9937ed604a2bc74d96e86b9cd478f28a` |
| 5 | `def` | [restrictionLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/restrictionle--e302ea88d10bce41cb1bb88d.md) | 110 | `declaration-track:e302ea88d10bce41cb1bb88dd6bab9dda7aae4b67603a03ee9135d9ba502f99e` |
| 6 | `lemma` | [restrictionLE_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/restrictionle-obj--20a232366625086a3952935f.md) | 114 | `result-track:20a232366625086a3952935fdcb5f96c29bb8dba9fa36a0ac8ff13d6c9dc3b1c` |
| 7 | `lemma` | [restrictionLE_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/restrictionle-map--169c4738d28c2c5198f3cd49.md) | 118 | `result-track:169c4738d28c2c5198f3cd4933ff71d1a3c890c77be0aab9d168f23c350b3580` |
| 8 | `structure` | [SuccStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/succstruct--59706729a03dbc87287df178.md) | 128 | `declaration-track:59706729a03dbc87287df1781f9e48778bd3920bb6ceb4a9855549b43a92cf1d` |
| 9 | `def` | [ofNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/ofnattrans--ca557cf854d5456d254c8a34.md) | 141 | `declaration-track:ca557cf854d5456d254c8a3411e8034c23492b2fdbd1a30db8e2815ced51a0f5` |
| 10 | `def` | [prop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/prop--7ebbb5c655a075bbb361c3bf.md) | 149 | `declaration-track:7ebbb5c655a075bbb361c3bfdaaaf118c31ffde0247f94bd03ccc3fadd1b85a1` |
| 11 | `lemma` | [prop_toSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/prop-tosucc--0dae0c78f239381dd2d79ebf.md) | 151 | `result-track:0dae0c78f239381dd2d79ebffe30ab44d464d51f13e417f0b87c59ee74e7c6a7` |
| 12 | `def` | [toSuccArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/tosuccarrow--8cc8cd2e82a427dc75fcdf48.md) | 155 | `declaration-track:8cc8cd2e82a427dc75fcdf48ae2a7ff9d05d5fd3b23e1d274c04afece7895a77` |
| 13 | `lemma` | [prop_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/prop-iff--181414b757fd157540b342d5.md) | 157 | `result-track:181414b757fd157540b342d54b3d0585209243ed306c29a4946fff41ad3d775a` |
| 14 | `lemma` | [prop.succ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/prop-succ-eq--b8ae725bee60950c991fb8fd.md) | 168 | `result-track:b8ae725bee60950c991fb8fd33b7124494be62edc218e45b75e99fd9a791b435` |
| 15 | `lemma` | [prop.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/prop-fac--c174b9f9a9db3272e16b8217.md) | 174 | `result-track:c174b9f9a9db3272e16b82174982535fd678e6e3a4aa964d8de9a8d59e441581` |
| 16 | `def` | [prop.arrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/prop-arrowiso--c473d9d1c20627399f76e616.md) | 183 | `declaration-track:c473d9d1c20627399f76e6162e184a8fe4ecedc9a86d78b581a09a95c15de63a` |
| 17 | `def` | [arrowMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrowmap--3a82f9f962e51d6e8477e561.md) | 192 | `declaration-track:3a82f9f962e51d6e8477e561b001ff40af3fccd688b2907cd06a0000d2957f15` |
| 18 | `lemma` | [arrowMap_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrowmap-refl--89a7fce4cd6695ef0253f31f.md) | 197 | `result-track:89a7fce4cd6695ef0253f31f5568ae4346098f6d79877b94e31fa4287af4ea8c` |
| 19 | `lemma` | [arrowMap_restrictionLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrowmap-restrictionle--ebf5e1b6461bd0cfd90360ec.md) | 201 | `result-track:ebf5e1b6461bd0cfd90360ecac80aee361b2e0eaacb73c7bbebe1ceee47b514c` |
| 20 | `def` | [arrowSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrowsucc--c96831342ae6657dcb0cc4bf.md) | 212 | `declaration-track:c96831342ae6657dcb0cc4bf87da81f206371139f106339d34615539d513f8ce` |
| 21 | `lemma` | [arrowSucc_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrowsucc-def--0b478d74de23887cb00a6ae7.md) | 215 | `result-track:0b478d74de23887cb00a6ae7b9344c88e8279a774d7a748faf823c2aea2a6215` |
| 22 | `def` | [arrowι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrow--43e114bfc8bc23bb8eb475f8.md) | 228 | `declaration-track:43e114bfc8bc23bb8eb475f8770da4d2de2e485cec8248844820fc297786b899` |
| 23 | `lemma` | [arrowι_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrow-def--ac78d80bbb8a0da05a7f1348.md) | 232 | `result-track:ac78d80bbb8a0da05a7f134864cde0e9ccbd729ae84cbe96021082792ccddaaf` |
| 24 | `structure` | [Iteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/iteration--3277242eaef7e0d625366105.md) | 246 | `declaration-track:3277242eaef7e0d62536610577fe3ba12be058beb0d4a1a43ae36b2b34dc3ab7` |
| 25 | `lemma` | [obj_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/obj-succ--5c01630e3b2b74e214563c4a.md) | 269 | `result-track:5c01630e3b2b74e214563c4afb4844b5644c633134e7b0381edec902009990cc` |
| 26 | `lemma` | [prop_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/prop-map-succ--16f763d1041da6474dfdb735.md) | 273 | `result-track:16f763d1041da6474dfdb7353da4f646e90244bee1e9390fe860c2366e37d38a` |
| 27 | `lemma` | [obj_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/obj-limit--5a3498d2ec2b1924c1afafe6.md) | 278 | `result-track:5a3498d2ec2b1924c1afafe6daec21a7a6d27830044f59f770e7e437bca3dce6` |
| 28 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/iscolimit--a7848a3958d975d04088a7e2.md) | 285 | `declaration-track:a7848a3958d975d04088a7e24d928493e9aa313f30c2ecc3c894e045d1272d35` |
| 29 | `def` | [trunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/trunc--3a604cb10e6191b984a21a4a.md) | 299 | `declaration-track:3a604cb10e6191b984a21a4ae4ea597cb35a1299560a1a5dda07831bfaa26fbd` |
| 30 | `def` | [MapEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/mapeq--37dccff5ecb4a20293a7f783.md) | 316 | `declaration-track:37dccff5ecb4a20293a7f7838f8d2403b70aea2232c20e94c26e8997427966fc` |
| 31 | `lemma` | [src](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/src--c172b748afc5e64f3825603b.md) | 324 | `result-track:c172b748afc5e64f3825603bfff833dd555ec5b3c993b610edaec8d9a6f07bfb` |
| 32 | `lemma` | [tgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/tgt--76282486965cd88b2c5f2b84.md) | 327 | `result-track:76282486965cd88b2c5f2b84219b405112c6354604236d15cf9369fe8112dbd9` |
| 33 | `lemma` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/w--4aaca469396c4b8410404073.md) | 330 | `result-track:4aaca469396c4b8410404073058a4a23e8fe993f9d99c8baed351ba1277a1556` |
| 34 | `lemma` | [mapEq_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/mapeq-refl--a10dc72b7b3a938e6629870d.md) | 343 | `result-track:a10dc72b7b3a938e6629870d1e509bc2887a80a1c9c9a71d78adfa42a87cec3f` |
| 35 | `lemma` | [mapEq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/mapeq-trans--7ce7bf3d0228d30e4658d5bd.md) | 347 | `result-track:7ce7bf3d0228d30e4658d5bd11949365f40d5a78945cdfafa5eb024b06b89869` |
| 36 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/ext--bfa03a4deadb65613be9b712.md) | 355 | `result-track:bfa03a4deadb65613be9b712479ec641639487f0e4edf58050c8a1ecf7b5d25f` |
| 37 | `instance` | [subsingleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/subsingleton--2f62876f662b05be5d8f2f2d.md) | 365 | `declaration-track:2f62876f662b05be5d8f2f2d5f8d6e7e1b360777e2d33dd8ecfbfd0f5208e634` |
| 38 | `lemma` | [congr_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/congr-obj--8b837dd4248b406671255af9.md) | 414 | `result-track:8b837dd4248b406671255af9481a4319014e9599aa29a6d81a31cbcd745d3c2f` |
| 39 | `lemma` | [congr_arrowMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/congr-arrowmap--8c27abf5eaaf5cb935c42808.md) | 422 | `result-track:8c27abf5eaaf5cb935c42808dd36df167e4616704c39c5c780fa56ff76c4415e` |
| 40 | `lemma` | [congr_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/congr-map--3739d160d33bffc9c82ea67f.md) | 430 | `result-track:3739d160d33bffc9c82ea67f431f216bd17235946c45fc6a2c7efcb5bcf1de7a` |
| 41 | `def` | [mapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/mapobj--c95076d5a9cf58b3fa9f358e.md) | 442 | `declaration-track:c95076d5a9cf58b3fa9f358e168a22b3b16757df2141aff0a0858b7eedb81599` |
| 42 | `lemma` | [arrow_mk_mapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/arrow-mk-mapobj--62ccdb98b10b297d602fd9cc.md) | 448 | `result-track:62ccdb98b10b297d602fd9cc1ee72ff52c857eef07981db8fe7e911bf8008b80` |
| 43 | `lemma` | [mapObj_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/mapobj-refl--39413f0b24fddb860244646e.md) | 455 | `result-track:39413f0b24fddb860244646e70591a70435556d34f14cb2308b7bb23bd6fdfcb` |
| 44 | `lemma` | [mapObj_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4935ce5b36191c2a223bb7cf93b6fe565bbb93e161289dba427f5dd388e7a0a4.lean/declarations/mapobj-trans--b9227bea939afa2b2ff649bb.md) | 461 | `result-track:b9227bea939afa2b2ff649bb3fa9d087a7933ab90742bb360266672ec9ce55a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
