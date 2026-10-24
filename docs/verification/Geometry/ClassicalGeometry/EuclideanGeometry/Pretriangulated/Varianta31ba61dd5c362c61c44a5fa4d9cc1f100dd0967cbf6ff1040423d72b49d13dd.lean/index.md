# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Pretriangulated.Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f717c56b307f453a9753554abd9725284f07413a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f717c56b307f453a9753554abd9725284f07413a`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.MappingCone` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.HomComplexShift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/triangle--66dc6300ddd6d810193b346b.md) | 50 | `declaration-track:66dc6300ddd6d810193b346b43a2a830258c8fc0ebdac0b9efdec110bd7a400d` |
| 2 | `lemma` | [inl_v_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/inl-v-triangle-mor-f--b6415aff48b9bba6bdf20c9d.md) | 54 | `result-track:b6415aff48b9bba6bdf20c9dae6405b3d61b95765b205b6975d96d1251a7c990` |
| 3 | `lemma` | [inr_f_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/inr-f-triangle-mor-f--1e2b14060e524785d76773cc.md) | 65 | `result-track:1e2b14060e524785d76773ccf9679268d312bf19f52ecca308fc83fe8f856625` |
| 4 | `lemma` | [inr_triangleδ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/inr-triangle--293cb7f2265370468fc2bb97.md) | 75 | `result-track:293cb7f2265370468fc2bb97b9538a921f3f3755e416943d86c7582f7c9b036e` |
| 5 | `abbrev` | [triangleh](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/triangleh--5ffd02c1f170d5b107086562.md) | 79 | `declaration-track:5ffd02c1f170d5b107086562de43a155252b5406f5f6b76590a20123ba0c82c2` |
| 6 | `def` | [homotopyToZeroOfId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/homotopytozeroofid--4950a5f638abcbb47902144c.md) | 84 | `declaration-track:4950a5f638abcbb47902144c6eaaea8a4cc3b4bfe8a0b04e7c0c7c9b4501b9f7` |
| 7 | `def` | [mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/mapofhomotopy--e7c5a0ae686e732b48342d85.md) | 94 | `declaration-track:e7c5a0ae686e732b48342d857306544a0e20d1e629c388aee11662267c976012` |
| 8 | `lemma` | [triangleMapOfHomotopy_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/trianglemapofhomotopy-comm--725b47121ff3a1fd5fbe1e60.md) | 101 | `result-track:725b47121ff3a1fd5fbe1e60bc2a51e3ba2a72fd316b5d43f0fc8ecdf4421687` |
| 9 | `lemma` | [triangleMapOfHomotopy_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/trianglemapofhomotopy-comm--48f073edf1bdb38ed3ce9e91.md) | 106 | `result-track:48f073edf1bdb38ed3ce9e91d2ee61e1a0fbf0a9b443ac1448809267ac7f7ca9` |
| 10 | `def` | [trianglehMapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/trianglehmapofhomotopy--799cfa0733553aa0846c687a.md) | 123 | `declaration-track:799cfa0733553aa0846c687af5fc523fbfea45735d8e71800464293807350077` |
| 11 | `def` | [map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/map--7e3e6ee0e99428186fa7216a.md) | 148 | `declaration-track:7e3e6ee0e99428186fa7216aec831197852cdf74bd62913e6d9e9f17ae4d4234` |
| 12 | `lemma` | [map_eq_mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/map-eq-mapofhomotopy--180da56d397988931bbc6c5a.md) | 154 | `result-track:180da56d397988931bbc6c5a3d7f8af23d78c2a5d6968beef987340c2666657a` |
| 13 | `lemma` | [map_id](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/map-id--a21da5cefa127cc436d45a0e.md) | 157 | `result-track:a21da5cefa127cc436d45a0e4116ec4d0ddf7231cf06d5c68b515cc1b4d2924f` |
| 14 | `lemma` | [map_comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/map-comp--448a9bccdf5ac4ae20bb0d2d.md) | 164 | `result-track:448a9bccdf5ac4ae20bb0d2d2140c8b2d5d46873f1700bd831cb1b249ec168ca` |
| 15 | `def` | [triangleMap](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/trianglemap--123be99e4453279cfaad6073.md) | 172 | `declaration-track:123be99e4453279cfaad60733c1dc4c5be58e41a91e450830f23a645478ca4dd` |
| 16 | `def` | [rotateHomotopyEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/rotatehomotopyequiv--6b354aa9b09a793924db8144.md) | 191 | `declaration-track:6b354aa9b09a793924db81449e0bf47753eaff80c80c5b16ea7061eb4678ccdd` |
| 17 | `def` | [rotateHomotopyEquivComm₂Homotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/rotatehomotopyequivcomm-homotopy--af8a67c04297b553f7ae7ba0.md) | 249 | `declaration-track:af8a67c04297b553f7ae7ba01e950513d977ee542efab1e490815d4f339ce36b` |
| 18 | `lemma` | [rotateHomotopyEquiv_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/rotatehomotopyequiv-comm--60aa95ac7417a28599952451.md) | 281 | `result-track:60aa95ac7417a285999524516bbe94325be30f4090f04a503144b7f86aeb0fba` |
| 19 | `lemma` | [rotateHomotopyEquiv_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/rotatehomotopyequiv-comm--c2e5b39ab61b84d5163c8883.md) | 289 | `result-track:c2e5b39ab61b84d5163c8883d9e401d77a07bff7d1dadfc70d0b17b09852a5f5` |
| 20 | `def` | [rotateTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/rotatetrianglehiso--59c14098a1f2cac231d2308e.md) | 306 | `declaration-track:59c14098a1f2cac231d2308e9517620a10081e03a8d2533bb233c04cae6f7f11` |
| 21 | `def` | [shiftIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/shiftiso--d4dcd2b96c56b508b337821d.md) | 323 | `declaration-track:d4dcd2b96c56b508b337821deaf1a78023b9fe83fc668f8246ea05af56790f65` |
| 22 | `def` | [shiftTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/shifttriangleiso--599062e52db8b3188ae3d6c4.md) | 354 | `declaration-track:599062e52db8b3188ae3d6c4b32b00b1b76e0cfb6b4242ba74ff9f34158e87d4` |
| 23 | `def` | [shiftTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/shifttrianglehiso--d12f35b89d15cca3743711d3.md) | 379 | `declaration-track:d12f35b89d15cca3743711d33168d6bf50baef754cdd99ce79c7c3375c307b7a` |
| 24 | `lemma` | [map_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/map--8e43ccdfe70a49d3e293270a.md) | 392 | `result-track:8e43ccdfe70a49d3e293270afcd07c452e3157e44dd55001f93773f50fc90d94` |
| 25 | `def` | [mapTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/maptriangleiso--f09bcced98b56d7d7927f0fb.md) | 411 | `declaration-track:f09bcced98b56d7d7927f0fb1493d1a7252e344503215c34760466e285959342` |
| 26 | `def` | [mapTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/maptrianglehiso--99478bedcbf1e5097544aa52.md) | 425 | `declaration-track:99478bedcbf1e5097544aa5290f07d5af17033e1386eb93f3d2d829e02943cae` |
| 27 | `def` | [distinguishedTriangles](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/distinguishedtriangles--9b6eb33d02c25360c6f657ac.md) | 449 | `declaration-track:9b6eb33d02c25360c6f657ac5df2de5d52fca885b2d7b7e5bcf3df6e9c7a2873` |
| 28 | `lemma` | [isomorphic_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/isomorphic-distinguished--65d43a1a48b2736e1ad9253f.md) | 455 | `result-track:65d43a1a48b2736e1ad9253f129c66cbf8c1a41e2d82481d27c77a55169d50e9` |
| 29 | `lemma` | [contractible_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/contractible-distinguished--752168916241fafa92018b41.md) | 462 | `result-track:752168916241fafa92018b4105ca3c7edf41ef4a61ad0bf31750cf6c35036f6e` |
| 30 | `lemma` | [distinguished_cocone_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/distinguished-cocone-triangle--b73ba80891d766778ab24f99.md) | 470 | `result-track:b73ba80891d766778ab24f99f5e06a13b9e1310a5c3a84b95e4dcba5ad0aa8cd` |
| 31 | `lemma` | [rotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/rotate-distinguished-triangle--604ae27d38ff32d613a05ab8.md) | 478 | `result-track:604ae27d38ff32d613a05ab889001a5e9519d24356b2589db5cc654e50c688c2` |
| 32 | `lemma` | [shift_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/shift-distinguished-triangle--cb7fe0039c4e12cc206e7a60.md) | 483 | `result-track:cb7fe0039c4e12cc206e7a6022f280e207f225226d586013d418e199445b9ad9` |
| 33 | `lemma` | [invRotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/invrotate-distinguished-triangle--d7076ec2275e23a317ab8e52.md) | 489 | `result-track:d7076ec2275e23a317ab8e52d1f02eb144512a5b827eee1cc4613032b750f075` |
| 34 | `lemma` | [rotate_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/rotate-distinguished-triangle--70212988ad2c46ed37765121.md) | 496 | `result-track:70212988ad2c46ed377651219546b8a5794d4ae68b72cf4952da9858dc84e92f` |
| 35 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/complete-distinguished-triangle-morphism--ab65d018b56da9397cd1c689.md) | 505 | `result-track:ab65d018b56da9397cd1c689269eb40314d268519a9a4b5a85f3f7e6b7c9ab58` |
| 36 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/instance--00763f29e7a5bbb606d9416f.md) | 547 | `declaration-track:00763f29e7a5bbb606d9416f9cf68e6888fdbfe51289cbb53521c0e08b58b2eb` |
| 37 | `lemma` | [mappingCone_triangleh_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/mappingcone-triangleh-distinguished--c54cca30724170f8c2a9f0b6.md) | 558 | `result-track:c54cca30724170f8c2a9f0b6ec90348d69e0727e1261b7b1b8fc82ceac4b821e` |
| 38 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/declarations/instance--d482cdd852bfba730b68dcf5.md) | 564 | `declaration-track:d482cdd852bfba730b68dcf55ec40dd93f3020b14e8003a4e2a13e83035cf1da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
