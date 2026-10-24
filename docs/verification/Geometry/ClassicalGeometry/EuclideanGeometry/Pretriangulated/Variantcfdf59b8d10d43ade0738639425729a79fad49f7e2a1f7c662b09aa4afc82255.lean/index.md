# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Pretriangulated.Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc050365104f805a2e7317d5de19bef4ac791cf7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc050365104f805a2e7317d5de19bef4ac791cf7`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.MappingCone` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.HomComplexShift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/triangle--0b1eac7c3908e440921d811d.md) | 58 | `declaration-track:0b1eac7c3908e440921d811df8b22fe04c4b41139a720537aa233e022d4f5dea` |
| 2 | `lemma` | [inl_v_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/inl-v-triangle-mor-f--8ef9c6e0f4e1cb96a739e8a7.md) | 62 | `result-track:8ef9c6e0f4e1cb96a739e8a704f01c30e796de69d24443700dd25c0564af8d6b` |
| 3 | `lemma` | [inr_f_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/inr-f-triangle-mor-f--8101a723495f20e21de3ca71.md) | 73 | `result-track:8101a723495f20e21de3ca71410fd0d0ddfcf4b807f1d05dbf1ac1794d19b2e7` |
| 4 | `lemma` | [inr_triangleδ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/inr-triangle--1f395cf68725ca7335f4e532.md) | 83 | `result-track:1f395cf68725ca7335f4e53223400696b5460319bb999e868a16f37493808aa0` |
| 5 | `abbrev` | [triangleh](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/triangleh--499767f06177a55703872e7b.md) | 87 | `declaration-track:499767f06177a55703872e7bcac5904d6f3daf3b3dd242148ff0cb259c35089e` |
| 6 | `def` | [homotopyToZeroOfId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/homotopytozeroofid--3254144a1a4d51038632b47a.md) | 92 | `declaration-track:3254144a1a4d51038632b47adbaf70fa3426104a624392a0088aa5f020c8f2db` |
| 7 | `def` | [mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/mapofhomotopy--5ab0dbcdb0d1bd99ae67a1ae.md) | 102 | `declaration-track:5ab0dbcdb0d1bd99ae67a1ae140b214a873b81aa09b075f54da6a71a873995c2` |
| 8 | `lemma` | [triangleMapOfHomotopy_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/trianglemapofhomotopy-comm--a0bcc7001e90f3ac23bf66aa.md) | 109 | `result-track:a0bcc7001e90f3ac23bf66aa1e7b1773992328f26f801f22c9bb783e5d79c5ed` |
| 9 | `lemma` | [triangleMapOfHomotopy_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/trianglemapofhomotopy-comm--b617956bce1fa8a350129ed8.md) | 114 | `result-track:b617956bce1fa8a350129ed87cfd36d1076ae5621a60c94731c9267ba4d008bb` |
| 10 | `def` | [trianglehMapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/trianglehmapofhomotopy--0355a3e7b4b503e419dd5216.md) | 131 | `declaration-track:0355a3e7b4b503e419dd5216da60704dbfc41d19f61e9cf5671548939add756d` |
| 11 | `def` | [map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/map--54fda5297573acb975103854.md) | 156 | `declaration-track:54fda5297573acb975103854d55bf2be258281484b6b6e7620e534d0f99eacdd` |
| 12 | `lemma` | [map_eq_mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/map-eq-mapofhomotopy--ddb43dce234a2c4ab767fbd1.md) | 162 | `result-track:ddb43dce234a2c4ab767fbd164eb0165e2408ebf0b68f20e019388d8076bab3a` |
| 13 | `lemma` | [map_id](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/map-id--f926a5cb45f9e12b2b0c324a.md) | 165 | `result-track:f926a5cb45f9e12b2b0c324a593108fe16301577a17a02d73ec41e4ac3300dd0` |
| 14 | `lemma` | [map_comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/map-comp--8d80623896c27e75e9610592.md) | 172 | `result-track:8d80623896c27e75e9610592c77543d8f64408350bff29592c311a5069339c68` |
| 15 | `def` | [triangleMap](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/trianglemap--07b137e9251d000158e82a5b.md) | 180 | `declaration-track:07b137e9251d000158e82a5b3c302145fa129ea5e26a8cf01cdfe9fde6832dac` |
| 16 | `def` | [rotateHomotopyEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/rotatehomotopyequiv--041defaa748147a3760e57a4.md) | 199 | `declaration-track:041defaa748147a3760e57a403772f06a744d02d9e9c7bc8871f0f6edf725613` |
| 17 | `def` | [rotateHomotopyEquivComm₂Homotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/rotatehomotopyequivcomm-homotopy--bc8f4b52e75823c2063a6bf8.md) | 257 | `declaration-track:bc8f4b52e75823c2063a6bf890d6ff93bd992ac54456a11664162dc5e2930063` |
| 18 | `lemma` | [rotateHomotopyEquiv_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/rotatehomotopyequiv-comm--669ff7ae7d70a595001563bb.md) | 289 | `result-track:669ff7ae7d70a595001563bb024ea245016e68357c680d4adcc0088628e9ea03` |
| 19 | `lemma` | [rotateHomotopyEquiv_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/rotatehomotopyequiv-comm--5c14762e05d17b7c8b40bf30.md) | 297 | `result-track:5c14762e05d17b7c8b40bf30e7b300b6bfedb4293e2abc589b82602bfbf313d1` |
| 20 | `def` | [rotateTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/rotatetrianglehiso--3e1f014eac0e9a21f654f93b.md) | 314 | `declaration-track:3e1f014eac0e9a21f654f93b40c66b019479a363c389a1a3b3522a5b08352147` |
| 21 | `def` | [shiftIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/shiftiso--2c21e0c1dac62a68e57b053e.md) | 331 | `declaration-track:2c21e0c1dac62a68e57b053e7030972f20df3cafbcddcd55faf936ea172ae199` |
| 22 | `def` | [shiftTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/shifttriangleiso--b274e2cc55c54812384cb275.md) | 362 | `declaration-track:b274e2cc55c54812384cb27566fe2a777a3a48832cdcf21635ba9978b9c1512b` |
| 23 | `def` | [shiftTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/shifttrianglehiso--01ce170a31236582b4aba828.md) | 387 | `declaration-track:01ce170a31236582b4aba82888e5ec54a9757eec99e07fbd5d28be30d7d61f12` |
| 24 | `lemma` | [map_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/map--16e053c42fd2f4653a0709b4.md) | 400 | `result-track:16e053c42fd2f4653a0709b40becc02680f5f33e3f6cd807c42dbe7185de14d7` |
| 25 | `def` | [mapTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/maptriangleiso--4ff959f08aa9da544c38c47a.md) | 419 | `declaration-track:4ff959f08aa9da544c38c47acd9fcf6bed1ea4b1deff9a39c4405883f6aef76a` |
| 26 | `def` | [mapTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/maptrianglehiso--1d7bc01c3e1cb8fc5d8509e6.md) | 433 | `declaration-track:1d7bc01c3e1cb8fc5d8509e62eea91a98e3403e3829b2b4728ef9805dccd77b4` |
| 27 | `def` | [distinguishedTriangles](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/distinguishedtriangles--5073b8321c75958bfe220bdf.md) | 457 | `declaration-track:5073b8321c75958bfe220bdf9b083b471efefe714d1b6d55b29aeaf108c80524` |
| 28 | `lemma` | [isomorphic_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/isomorphic-distinguished--9b5f376807ea9b52f0c44376.md) | 463 | `result-track:9b5f376807ea9b52f0c4437604a19f12568aad8c7b05cfa1919d556e233f0a42` |
| 29 | `lemma` | [contractible_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/contractible-distinguished--1571c47bc15c8a9683ce7064.md) | 470 | `result-track:1571c47bc15c8a9683ce706455980f4193407e6ab1a13457154e03decfde2f30` |
| 30 | `lemma` | [distinguished_cocone_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/distinguished-cocone-triangle--866add0910da36f0cb3b294b.md) | 478 | `result-track:866add0910da36f0cb3b294ba6f898eb89a1c1e1cace79addc5cf1c12c9e8a36` |
| 31 | `lemma` | [rotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/rotate-distinguished-triangle--117676fe246c0d6a7a7af89b.md) | 486 | `result-track:117676fe246c0d6a7a7af89bf8647d1cc45c8fb89ce4c60062a7270136e45862` |
| 32 | `lemma` | [shift_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/shift-distinguished-triangle--c12d9fe61abaff9b5ea4311c.md) | 491 | `result-track:c12d9fe61abaff9b5ea4311c07cb6d513c2b1f4bf6eb52befde3c3ee7d16cc0d` |
| 33 | `lemma` | [invRotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/invrotate-distinguished-triangle--9b930765b1be1b35269470e2.md) | 497 | `result-track:9b930765b1be1b35269470e20ce0a259ebc742b3b9e5d0a4f76128a5516efe09` |
| 34 | `lemma` | [rotate_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/rotate-distinguished-triangle--38f39774a603caebbc61b799.md) | 504 | `result-track:38f39774a603caebbc61b7992832a041466e824ef44b3e7ebdf1bc28e20404d2` |
| 35 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/complete-distinguished-triangle-morphism--063317a8870b717dcd836ebe.md) | 513 | `result-track:063317a8870b717dcd836ebe1424a1755816c03300974550cac623745768f2a0` |
| 36 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/instance--71d9129c4cc034632801397f.md) | 555 | `declaration-track:71d9129c4cc034632801397fec0425c2b069b979d7c5f88f3355b99c9b19a8e4` |
| 37 | `lemma` | [mappingCone_triangleh_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/mappingcone-triangleh-distinguished--9350dccc7d4caf9db090a0da.md) | 566 | `result-track:9350dccc7d4caf9db090a0da7303cf311b9341dcf03c098f9d53e68a0f7dd6a6` |
| 38 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/declarations/instance--cab79f53e93e2aed8ff53a03.md) | 572 | `declaration-track:cab79f53e93e2aed8ff53a03590e17fb1715c60f379f93ae076ae7a846b4574b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
