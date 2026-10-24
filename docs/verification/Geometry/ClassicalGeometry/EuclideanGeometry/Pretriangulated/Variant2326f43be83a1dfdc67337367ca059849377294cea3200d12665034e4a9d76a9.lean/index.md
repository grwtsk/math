# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Pretriangulated.Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a06c9cca3b97c36cf8cefde35d3c03e20debe312",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a06c9cca3b97c36cf8cefde35d3c03e20debe312`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/triangle--f380c84a6218358159c66c4c.md) | 62 | `declaration-track:f380c84a6218358159c66c4c6238887e115c1cb63d146bfa3a89b023ce733b71` |
| 2 | `lemma` | [inl_v_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/inl-v-triangle-mor-f--8710b5302aefeb660eb925e1.md) | 68 | `result-track:8710b5302aefeb660eb925e1d2e16558b7e5ee8d3734c69359b106622d853b5e` |
| 3 | `lemma` | [inr_f_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/inr-f-triangle-mor-f--29375d6694f08c3d8e1ad2c0.md) | 81 | `result-track:29375d6694f08c3d8e1ad2c0d169761d5741613881377cfe8c0d5a4f46291420` |
| 4 | `lemma` | [inr_triangleδ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/inr-triangle--05cc44700a648d9e9596434f.md) | 92 | `result-track:05cc44700a648d9e9596434f12f3a2a25957ebe9f43bc93af1c2e7a11bcef2f4` |
| 5 | `abbrev` | [triangleh](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/triangleh--071e7f2fb01b26fe89688dd8.md) | 96 | `declaration-track:071e7f2fb01b26fe89688dd893a69cf6d04eeeb8373157ee27bb634d020a7974` |
| 6 | `def` | [homotopyToZeroOfId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/homotopytozeroofid--a4b685100cfc795413d6f0fe.md) | 101 | `declaration-track:a4b685100cfc795413d6f0fef5e30715a876e1cd0387404fd38eb761e16df324` |
| 7 | `def` | [mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/mapofhomotopy--296f62b4b297d8b2d2f0dac7.md) | 111 | `declaration-track:296f62b4b297d8b2d2f0dac71e4dad17cdc599ed3ac93781457c36631cd1c032` |
| 8 | `lemma` | [triangleMapOfHomotopy_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/trianglemapofhomotopy-comm--e13efa32d2f0cb90859bf923.md) | 118 | `result-track:e13efa32d2f0cb90859bf923e28146462c919d3b1f8caad022a4b79d22773f16` |
| 9 | `lemma` | [triangleMapOfHomotopy_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/trianglemapofhomotopy-comm--65048c95654205c53009a874.md) | 125 | `result-track:65048c95654205c53009a8742de09f907a1d67cac3a90198f1cb55b019c131fd` |
| 10 | `def` | [trianglehMapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/trianglehmapofhomotopy--374574ac249b809a9a816cfc.md) | 144 | `declaration-track:374574ac249b809a9a816cfc74c364cd3a321cf30ae915e98be628316bd7f924` |
| 11 | `def` | [map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/map--141bf27a4c568e1e2f912683.md) | 169 | `declaration-track:141bf27a4c568e1e2f91268368e4d6ad5974fbd6180b8d306c19f33a0c0d246a` |
| 12 | `lemma` | [map_eq_mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/map-eq-mapofhomotopy--f7ef063a668791fa380b0544.md) | 175 | `result-track:f7ef063a668791fa380b054451a140fe88cadd538ece4096d3767fac9f6ea323` |
| 13 | `lemma` | [map_id](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/map-id--35c41bc422d6fcafe0f70554.md) | 178 | `result-track:35c41bc422d6fcafe0f705549ba06408880676ff17876fbea9e208a25bb3eae9` |
| 14 | `lemma` | [map_comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/map-comp--102e79ca5fe04634e2617440.md) | 185 | `result-track:102e79ca5fe04634e2617440e74f8fb155d25d02b097b9d6253f9fcd919fe7ec` |
| 15 | `def` | [triangleMap](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/trianglemap--e0d118e4f2b9e2ddeccf631d.md) | 195 | `declaration-track:e0d118e4f2b9e2ddeccf631d0def38439d290428ce227daea8ed7eb53bb644f5` |
| 16 | `def` | [rotateHomotopyEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/rotatehomotopyequiv--0060a210cf9ea9cce7e16538.md) | 216 | `declaration-track:0060a210cf9ea9cce7e165385f4c963fcb88cfcef3529366a7d208f268242824` |
| 17 | `def` | [rotateHomotopyEquivComm₂Homotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/rotatehomotopyequivcomm-homotopy--3e4333fd548c9d9dbcc5f11b.md) | 245 | `declaration-track:3e4333fd548c9d9dbcc5f11ba9ff1c8120ff20eae91f2bc8aec4f7496fb5182f` |
| 18 | `lemma` | [rotateHomotopyEquiv_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/rotatehomotopyequiv-comm--0c1ab1f15dde525347c53a04.md) | 257 | `result-track:0c1ab1f15dde525347c53a040dd99d497dd8ee3e665730e2298ffaab3194a61f` |
| 19 | `lemma` | [rotateHomotopyEquiv_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/rotatehomotopyequiv-comm--ebd1e4320bb18cf8abe101b8.md) | 266 | `result-track:ebd1e4320bb18cf8abe101b846a38d8a4b09e8f73875e6a821cebb7867dd7453` |
| 20 | `def` | [rotateTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/rotatetrianglehiso--f6015f4a58c6d371ae5e2d3e.md) | 275 | `declaration-track:f6015f4a58c6d371ae5e2d3e7c53be6abe922f91d0d10368b4346dbd2796b1ee` |
| 21 | `def` | [shiftIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/shiftiso--36b3ce27d48f4fd2847743f7.md) | 293 | `declaration-track:36b3ce27d48f4fd2847743f7585f5702f9ba9f4cd0d7d3fb11cd23368a9145f9` |
| 22 | `def` | [shiftTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/shifttriangleiso--57bf027b435ae9bad22774df.md) | 326 | `declaration-track:57bf027b435ae9bad22774df5e1117c00a0d812079a28aa8726048754bda4bb8` |
| 23 | `def` | [shiftTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/shifttrianglehiso--69db3c51bd9ef779dc1ab68b.md) | 350 | `declaration-track:69db3c51bd9ef779dc1ab68bf067c65869a1a087af83b66afb5200d10328fbfd` |
| 24 | `lemma` | [map_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/map--469a986dc92e83e37b965269.md) | 365 | `result-track:469a986dc92e83e37b96526923a944abd3b6079ac1d7132d302be7254f513d50` |
| 25 | `def` | [mapTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/maptriangleiso--55a83096ea224b1e4fe8ce17.md) | 386 | `declaration-track:55a83096ea224b1e4fe8ce1774862496b464b997afb3a1b5074f68cba3a47670` |
| 26 | `def` | [mapTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/maptrianglehiso--cb575b26f0c15f44367232b5.md) | 399 | `declaration-track:cb575b26f0c15f44367232b5016a61cb646c01bc66628aa9cdb83e4150cca041` |
| 27 | `def` | [distinguishedTriangles](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/distinguishedtriangles--8a429de2e8969588e06309c1.md) | 423 | `declaration-track:8a429de2e8969588e06309c17a6c65cda41c5ea190775a82e2ecb1c88df51bce` |
| 28 | `lemma` | [isomorphic_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/isomorphic-distinguished--8da24772ad23c6501ecdeb81.md) | 429 | `result-track:8da24772ad23c6501ecdeb81b18443d8a5601595abf37af546d101f594a5e55a` |
| 29 | `lemma` | [contractible_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/contractible-distinguished--56d45b834fb5862e6acdb13b.md) | 438 | `result-track:56d45b834fb5862e6acdb13ba8dcfd8e33ae81d17afd90ec57e2124ba5d90230` |
| 30 | `lemma` | [distinguished_cocone_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/distinguished-cocone-triangle--54bf2e80765e945a9e76e730.md) | 446 | `result-track:54bf2e80765e945a9e76e730d045b5ddb8c657ebcbe3002e754d05a9c047ea54` |
| 31 | `lemma` | [rotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/rotate-distinguished-triangle--085107ceaae89f6ee4b30059.md) | 452 | `result-track:085107ceaae89f6ee4b30059c2d26886bd65023d29828a8495cdd94701c12632` |
| 32 | `lemma` | [shift_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/shift-distinguished-triangle--910fbbd1e8b4212cf24baa4b.md) | 457 | `result-track:910fbbd1e8b4212cf24baa4b1a7dc94ceb73dbd2680d6a6a4a0109ef90afdb99` |
| 33 | `lemma` | [invRotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/invrotate-distinguished-triangle--ba1fc2edf6e85192b4e0b3c2.md) | 463 | `result-track:ba1fc2edf6e85192b4e0b3c2e053bf45b17e756b98fc95f860221c72555ddf54` |
| 34 | `lemma` | [rotate_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/rotate-distinguished-triangle--95ae0254296ddb669305e40b.md) | 470 | `result-track:95ae0254296ddb669305e40b740e3f248e1aeb8d4e5c3a3dddc3263e1a334a0e` |
| 35 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/complete-distinguished-triangle-morphism--252693c79dedabb105745130.md) | 481 | `result-track:252693c79dedabb105745130408a3d10ab1f9a1e1278e636209628fa93c438cd` |
| 36 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/instance--c595b44f0799940bef6fd863.md) | 523 | `declaration-track:c595b44f0799940bef6fd863bddd7cab309fcb153caa3bb0de3480175ad510fe` |
| 37 | `lemma` | [mappingCone_triangleh_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/mappingcone-triangleh-distinguished--e1f1a65dd6e7e4606b53ae75.md) | 534 | `result-track:e1f1a65dd6e7e4606b53ae75114d0d976af14ee3dc58dca7e5f520bbf986ac8c` |
| 38 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/declarations/instance--18fb92440006d9844f0d734a.md) | 540 | `declaration-track:18fb92440006d9844f0d734a2c97c6d403dd611614db12762fc29d05ba8b861a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
