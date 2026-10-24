# Verification target: GRWTSK.Geometry.ConvexGeometry.StdSimplex.Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7f9b7d0aca42f7db84a2c58337e85c54285cb86",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7f9b7d0aca42f7db84a2c58337e85c54285cb86`.

Source path: `GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex--9124fce6b6ede7b737ff5f26.md) | 39 | `declaration-track:9124fce6b6ede7b737ff5f265fa2fbf5529599e77e25f98c708c335f8400cbc6` |
| 2 | `theorem` | [stdSimplex_eq_inter](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-eq-inter--f4ae2c5b43ffa51564d49e15.md) | 43 | `result-track:f4ae2c5b43ffa51564d49e158beb59667445a77f470a6f140913ffca4a8a112f` |
| 3 | `theorem` | [convex_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/convex-stdsimplex--086543cacff06d92fb8c6d52.md) | 48 | `result-track:086543cacff06d92fb8c6d52e6d59135ad5cd574487792b269b724bcdb5db3ba` |
| 4 | `lemma` | [stdSimplex_of_subsingleton](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-of-subsingleton--78562e1c42db3057cb8d2b82.md) | 56 | `result-track:78562e1c42db3057cb8d2b8216f23ccafb113759b7e5c9feec4c94abb95dbcb4` |
| 5 | `lemma` | [stdSimplex_of_isEmpty_index](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-of-isempty-index--cc78541a27172a0725353891.md) | 61 | `result-track:cc78541a27172a0725353891024a7784972c856b272a9c522e5094b39867bdca` |
| 6 | `lemma` | [stdSimplex_unique](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-unique--84bf666f483f04635d401dee.md) | 65 | `result-track:84bf666f483f04635d401deeca58066c3033e3c4311deb8861d2987079639780` |
| 7 | `theorem` | [mem_Icc_of_mem_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/mem-icc-of-mem-stdsimplex--d04f210c1b6e3beb6ba20a9c.md) | 78 | `result-track:d04f210c1b6e3beb6ba20a9ca962ba7f62c2c02a3cd3fec961ffc5b4204cb1f3` |
| 8 | `theorem` | [stdSimplex_subset_Icc](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-subset-icc--132049164d20cf748e6e7143.md) | 85 | `result-track:132049164d20cf748e6e714359ffd2f97dbd4e6c3aa44011efd0dca9e2ff5172` |
| 9 | `theorem` | [single_mem_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/single-mem-stdsimplex--b3d4f46732ddf8ac20ed0cc1.md) | 93 | `result-track:b3d4f46732ddf8ac20ed0cc101737792edc765ae3b21c3c64ce69611ffb2fe8c` |
| 10 | `theorem` | [ite_eq_mem_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/ite-eq-mem-stdsimplex--1ce5361af9930218427921e6.md) | 97 | `result-track:1ce5361af9930218427921e6c11bb71aca0d28f38a808e1bf93099fe43f307e6` |
| 11 | `lemma` | [segment_single_subset_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/segment-single-subset-stdsimplex--c70a279c79f35e3b6fc33eac.md) | 105 | `result-track:c70a279c79f35e3b6fc33eacf97110c6f9f3b5c6c0d05557783cacd3efa635b1` |
| 12 | `lemma` | [stdSimplex_fin_two](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-fin-two--39e3bbcab37666cf02e7855e.md) | 110 | `result-track:39e3bbcab37666cf02e7855e8ab98974ca1011d29d1278bf43f4f7f570681960` |
| 13 | `def` | [stdSimplexEquivIcc](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplexequivicc--c104a669c57601bf18b8ddd1.md) | 128 | `declaration-track:c104a669c57601bf18b8ddd13e9fa3fab52d90831084523ddcc7d91b09ce502d` |
| 14 | `lemma` | [stdSimplexEquivIcc_zero](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplexequivicc-zero--36122044803550e24de3d4c3.md) | 136 | `result-track:36122044803550e24de3d4c38c6cdf219a98018ccd8dd7bc5af35e3f097c2810` |
| 15 | `lemma` | [stdSimplexEquivIcc_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplexequivicc-one--28efaa5ccd4741e0d4b5818d.md) | 140 | `result-track:28efaa5ccd4741e0d4b5818db7ecaf8103d0b14074ab18542e4bdc602e39a311` |
| 16 | `theorem` | [convexHull_basis_eq_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/convexhull-basis-eq-stdsimplex--f3e4c1a75d6c4d49f3878468.md) | 151 | `result-track:f3e4c1a75d6c4d49f38784684aaff0fd05dab0aae8faa100f5e94bc455b1f25f` |
| 17 | `theorem` | [convexHull_rangle_single_eq_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/convexhull-rangle-single-eq-stdsimplex--34584e2b81b6975c7d3e66e0.md) | 164 | `result-track:34584e2b81b6975c7d3e66e01c0d3b33fe532d14f34df37bf7f2773cd22e6879` |
| 18 | `lemma` | [Convexity.ConvexSpace.AffineMap.convex_range](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/convexity-convexspace-affinemap-convex-range--60a9392d76a4b7959f3b7d57.md) | 171 | `result-track:60a9392d76a4b7959f3b7d57f0ec5f60e2a5663ae3ca0c1dfd3b68f4c64922bd` |
| 19 | `theorem` | [Set.convexHull_eq_range_iConvexComb](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/set-convexhull-eq-range-iconvexcomb--74310fbab074cad134974d3c.md) | 180 | `result-track:74310fbab074cad134974d3cfd1820ccbfbb028f1e8a73f114e5b6264d5a17d9` |
| 20 | `theorem` | [isClosed_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/isclosed-stdsimplex--356dda64cd25cdfcdb3694a3.md) | 208 | `result-track:356dda64cd25cdfcdb3694a37ac7dd17e22c7d5dbb9de0d4cf2b4afa56439b35` |
| 21 | `theorem` | [isCompact_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/iscompact-stdsimplex--66d8ffcb09e48056e86ec760.md) | 217 | `result-track:66d8ffcb09e48056e86ec76053ee2c3549ac3b668c04d484e14b40f982aa9a45` |
| 22 | `instance` | [stdSimplex.instCompactSpace_coe](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-instcompactspace-coe--c4e3ba9d24b7b8939c2d7052.md) | 222 | `declaration-track:c4e3ba9d24b7b8939c2d7052aeba41d0c1a91331054be01716e57cb5a6c60ab4` |
| 23 | `theorem` | [stdSimplex_subset_closedBall](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplex-subset-closedball--0d2d481f78a8f1f75f55157f.md) | 234 | `result-track:0d2d481f78a8f1f75f55157fd7990a12e79121d127f5c1062a417e92914701af` |
| 24 | `theorem` | [bounded_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/bounded-stdsimplex--2f6a969f555d442c45fb5a62.md) | 244 | `result-track:2f6a969f555d442c45fb5a6201f7ba4f6a4fd27d0c97e9d061ef6272eea103d0` |
| 25 | `theorem` | [isPathConnected_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/ispathconnected-stdsimplex--4db3a4029e85b1bfacaaa74e.md) | 249 | `result-track:4db3a4029e85b1bfacaaa74e845a834a94224a1bf92aa8d5cf5514e87f4bb1cb` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/instance--04b35cb35f7058bb87d2323c.md) | 256 | `declaration-track:04b35cb35f7058bb87d2323c0f0f803924be6ff7bb69e748ec41aa3905215532` |
| 27 | `def` | [stdSimplexHomeomorphUnitInterval](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplexhomeomorphunitinterval--167f1dd033bae0cb8144b417.md) | 262 | `declaration-track:167f1dd033bae0cb8144b41780670e874d63baef64e328e54ffd3782a0f8c9cb` |
| 28 | `lemma` | [stdSimplexHomeomorphUnitInterval_zero](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplexhomeomorphunitinterval-zero--0e04d8909d603536425d27c3.md) | 271 | `result-track:0e04d8909d603536425d27c38b140b16d76f21235fe9962f995031f50fad6ff9` |
| 29 | `lemma` | [stdSimplexHomeomorphUnitInterval_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/stdsimplexhomeomorphunitinterval-one--ea09f62771df744af86c21f7.md) | 275 | `result-track:ea09f62771df744af86c21f7c64141b90b307c9add99bfd932448ad8173e87ad` |
| 30 | `theorem` | [diam_stdSimplex_le](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/diam-stdsimplex-le--d421de0e17d44e901526b80b.md) | 284 | `result-track:d421de0e17d44e901526b80bfe638b356d108d0d5f194295c7d8cfc45435986d` |
| 31 | `theorem` | [diam_stdSimplex_of_subsingleton](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/diam-stdsimplex-of-subsingleton--80c87c7082520d4d0374adcc.md) | 294 | `result-track:80c87c7082520d4d0374adcc89b10207d5faf9730bf2c702b2bca4d587a8a4fa` |
| 32 | `theorem` | [diam_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/diam-stdsimplex--6936dbfd5663ae25964f7971.md) | 302 | `result-track:6936dbfd5663ae25964f7971b3d567e8a98ad7dc2c3e12dd26dbee45cca6996b` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/instance--9006593aaae34f417d556e4e.md) | 319 | `declaration-track:9006593aaae34f417d556e4e4e6aff6e7518b5a60d8241c4ac5d58164ee31c43` |
| 34 | `lemma` | [ext](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/ext--6e561066dfa9fe571bda3476.md) | 324 | `result-track:6e561066dfa9fe571bda3476fb4997626b50190a6e60010afe42b2782ddfd938` |
| 35 | `lemma` | [zero_le](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/zero-le--90567bf25650745e71741b1d.md) | 329 | `result-track:90567bf25650745e71741b1d86cfedba789ad51acb1192200548113b53229950` |
| 36 | `lemma` | [sum_eq_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/sum-eq-one--21b14072ac85bd70b912abcb.md) | 332 | `result-track:21b14072ac85bd70b912abcb9fe41b0749b60991fb2328fda670ef23137a671e` |
| 37 | `lemma` | [add_eq_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/add-eq-one--4d002d5ad3957b552886ea98.md) | 335 | `result-track:4d002d5ad3957b552886ea984d591c82ac992de8b4d3b09c8cdcb30eb6513f85` |
| 38 | `lemma` | [le_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/le-one--4f7dd42ea60dfead7ac084ec.md) | 344 | `result-track:4f7dd42ea60dfead7ac084ec12954393cc6a8675771cd51e3d43490115338062` |
| 39 | `lemma` | [image_linearMap](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/image-linearmap--f0ab22d9199cbee39372e179.md) | 349 | `result-track:f0ab22d9199cbee39372e17931c01437f6619a837c4c0133d750e31fa16b35ed` |
| 40 | `def` | [map](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/map--63317bc9272ef1de95131a37.md) | 361 | `declaration-track:63317bc9272ef1de95131a377bbd654eaeb42b32976065eecc96284ff34150bd` |
| 41 | `lemma` | [map_coe](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/map-coe--7939d94cc2692cd2bf3c4850.md) | 365 | `result-track:7939d94cc2692cd2bf3c4850e4cd5ce60441b14050b84a58de319fe8a4ec4303` |
| 42 | `lemma` | [map_id_apply](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/map-id-apply--c698080066f77e3d018d8e6e.md) | 369 | `result-track:c698080066f77e3d018d8e6ebe2aec2704a11031d035f14428355d297f39cc62` |
| 43 | `lemma` | [map_comp_apply](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/map-comp-apply--bc280a953c89f9f4c2c90d7a.md) | 373 | `result-track:bc280a953c89f9f4c2c90d7a1e22c320a0d046ba15fe01d500633b06a64dc163` |
| 44 | `abbrev` | [vertex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/vertex--69892262671c7de0c708f4ec.md) | 380 | `declaration-track:69892262671c7de0c708f4ec2674e2a02c5b4390109fceb297940fff7b11a451` |
| 45 | `lemma` | [vertex_coe](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/vertex-coe--32838a6bf4ea32438481bba2.md) | 384 | `result-track:32838a6bf4ea32438481bba2f2b7ac10305e8f144f40ffb0f43179a713276d02` |
| 46 | `lemma` | [map_vertex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/map-vertex--cdc518b5d3a0cc386af69383.md) | 388 | `result-track:cdc518b5d3a0cc386af6938321d2124ad9ec4ad587a5262d5f944251ea7fe687` |
| 47 | `lemma` | [continuous_map](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/continuous-map--798619bfd8e152af5be59009.md) | 393 | `result-track:798619bfd8e152af5be59009f7bdf32f72f234692185feb38b251d18b86e0bb3` |
| 48 | `lemma` | [vertex_injective](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/vertex-injective--6c92b7795d50dc09da759160.md) | 398 | `result-track:6c92b7795d50dc09da7591609b4c54143f7c475994219cec574783dba3f0c4b5` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/instance--98638505c0f81c95b76fa526.md) | 406 | `declaration-track:98638505c0f81c95b76fa52675bb151c115d6f006eb5d8e7fd8cf2507fcc6cd3` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/instance--d482098b0a2c5c94b495d794.md) | 411 | `declaration-track:d482098b0a2c5c94b495d794f3c7c813b2df1678dd91f486c2ecf80aca008161` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/instance--79a3f2b0c601bd9bb7c62763.md) | 418 | `declaration-track:79a3f2b0c601bd9bb7c62763a3294c75eb6e76ca5355f28ad33011c2dd0a5bc7` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/instance--0a79949cced2ab693cb3a134.md) | 428 | `declaration-track:0a79949cced2ab693cb3a134f431572e88ce74e60917b12e0d8577c7a87ec2fa` |
| 53 | `lemma` | [eq_one_of_unique](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/eq-one-of-unique--6d43f98dd0528819717a529e.md) | 433 | `result-track:6d43f98dd0528819717a529e5caa7fccf8a101eae4e15d3e8e5bdfd8a2dadbbd` |
| 54 | `def` | [barycenter](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/barycenter--91d19622bd553e72854743d6.md) | 449 | `declaration-track:91d19622bd553e72854743d6fc7dd0a380146e7f6096e8dcdd4a3b2497a81a4d` |
| 55 | `theorem` | [barycenter_apply](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/barycenter-apply--4054ef8850006aa80e25c894.md) | 454 | `result-track:4054ef8850006aa80e25c894dcdc77aa47abcee02cbf3d575a7f8de354933383` |
| 56 | `theorem` | [barycenter_eq_centerMass](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/declarations/barycenter-eq-centermass--a1cd7e654ff9d122e22b94d6.md) | 459 | `result-track:a1cd7e654ff9d122e22b94d6c867460398e8bdba60c1622172ce61b883f2f5e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
