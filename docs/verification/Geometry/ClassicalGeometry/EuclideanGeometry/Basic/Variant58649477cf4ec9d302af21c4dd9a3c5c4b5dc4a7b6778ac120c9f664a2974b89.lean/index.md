# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Basic.Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8017fc00e9cc0acf0c364420ca3b36ce0197ebb7",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8017fc00e9cc0acf0c364420ca3b36ce0197ebb7`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.StrictConvexBetween` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere--231824378c9e03ce15c23602.md) | 43 | `declaration-track:231824378c9e03ce15c2360240bb78d6699bcf2039689124dbfb430cc29583b6` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/instance--28335bb477df863dbe457a24.md) | 54 | `declaration-track:28335bb477df863dbe457a2418491ad6c60290bde831ccf954b63668b62cca21` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/instance--ba5643d057f6c733e736072f.md) | 57 | `declaration-track:ba5643d057f6c733e736072f9e245497bf5cf7ab7bc867671fe02b4b4cce7711` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/instance--c216a0d9121513a6d602a4dc.md) | 60 | `declaration-track:c216a0d9121513a6d602a4dc6f4cc8f14732470889fed0ba7a80b0fa184a67db` |
| 5 | `theorem` | [Sphere.mk_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-mk-center--dff2ee4fb5e6b1ee998219ea.md) | 63 | `result-track:dff2ee4fb5e6b1ee998219eae437d3b10f483ce898de7179f06ffcc9bfba07ca` |
| 6 | `theorem` | [Sphere.mk_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-mk-radius--e19505e6627a68bc82442148.md) | 67 | `result-track:e19505e6627a68bc8244214803ab343e7cfbac6f4d60ec9120741688d47504b9` |
| 7 | `theorem` | [Sphere.mk_center_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-mk-center-radius--c7c16e8bc5ebdd92b0267fe5.md) | 72 | `result-track:c7c16e8bc5ebdd92b0267fe5bc9ef28d24172981514805067ac1cdbfbc7b022b` |
| 8 | `theorem` | [Sphere.coe_mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-coe-mk--8d55b301c167162303c49db7.md) | 82 | `result-track:8d55b301c167162303c49db7d58a287db0c8abb17fb32a4b5ae7136c8407d776` |
| 9 | `theorem` | [Sphere.mem_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-mem-coe--d4a30bf6838355963c4be78b.md) | 87 | `result-track:d4a30bf6838355963c4be78b5621fe9bf0d7c64f4575a5880e342b23b7746119` |
| 10 | `theorem` | [Sphere.mem_coe'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-mem-coe--ca1223ae97af0a0a7ea46e48.md) | 92 | `result-track:ca1223ae97af0a0a7ea46e489a85845e924bbed227a14c58fe03a52d595f39e6` |
| 11 | `theorem` | [mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/mem-sphere--11b0c3c337fbc1d7a7d62a5e.md) | 95 | `result-track:11b0c3c337fbc1d7a7d62a5ec7e05b577dba0ad5669ac7ff557bcb98ba29b7ec` |
| 12 | `theorem` | [mem_sphere'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/mem-sphere--68cb75d9671329581a810087.md) | 99 | `result-track:68cb75d9671329581a810087d945e0c0c082a79d24a2bd4c6972b774fdcd20b8` |
| 13 | `theorem` | [subset_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/subset-sphere--39f5c9e4872d4093da1fd767.md) | 103 | `result-track:39f5c9e4872d4093da1fd7675c2d868db48f832d6cedd2d152e2e9c48a5f0136` |
| 14 | `theorem` | [dist_of_mem_subset_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/dist-of-mem-subset-sphere--a56fd33f5143ebf58397838c.md) | 107 | `result-track:a56fd33f5143ebf58397838cda4b17bbcdea629b5eed365ce7e2ef5c7c7780a6` |
| 15 | `theorem` | [dist_of_mem_subset_mk_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/dist-of-mem-subset-mk-sphere--2944aaee2b1757454133189e.md) | 112 | `result-track:2944aaee2b1757454133189eee41b2e6f616f4de150901c7bd9d281c81371191` |
| 16 | `theorem` | [Sphere.ne_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-ne-iff--e9c1a9f5414a327ddb66c9ca.md) | 117 | `result-track:e9c1a9f5414a327ddb66c9ca05221088106b2bcd7f66fa6289a809d31623d932` |
| 17 | `theorem` | [Sphere.center_eq_iff_eq_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-center-eq-iff-eq-of-mem--2fe85121463dcdc7d3ae8224.md) | 122 | `result-track:2fe85121463dcdc7d3ae822408ebcdeddf0a69825aac19b368458e4a787dd96d` |
| 18 | `theorem` | [Sphere.center_ne_iff_ne_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-center-ne-iff-ne-of-mem--90ee99dc0e4575768d37bf66.md) | 129 | `result-track:90ee99dc0e4575768d37bf66a3085a3a37aa9fcde72eccf917f080f3f4723737` |
| 19 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/dist-center-eq-dist-center-of-mem-sphere--fdf6084ddc8c80d96e3ba520.md) | 134 | `result-track:fdf6084ddc8c80d96e3ba5208c0f01ad946f4833fc5f3f329c8ae74e637b6a5b` |
| 20 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/dist-center-eq-dist-center-of-mem-sphere--50c5a09fd62b3e6ceda13018.md) | 139 | `result-track:50c5a09fd62b3e6ceda1301856988c2a7c04b0bb5486b30dd740d01ffc741177` |
| 21 | `def` | [Cospherical](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical--07b78361026777b8834b587a.md) | 147 | `declaration-track:07b78361026777b8834b587a217c02a1c2669fb2ae6ada711d63e84697c90777` |
| 22 | `theorem` | [cospherical_def](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-def--82e1c10ca03e466c140de578.md) | 152 | `result-track:82e1c10ca03e466c140de5784054cb0149c6c9019c87159fab5fc95d3acde7fd` |
| 23 | `theorem` | [cospherical_iff_exists_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-iff-exists-sphere--72b52d97b8673b473dc97420.md) | 158 | `result-track:72b52d97b8673b473dc97420bd663605dbd8f460eea2aad1d34bd8f0b5573f1f` |
| 24 | `theorem` | [Sphere.cospherical](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sphere-cospherical--5753bb64dbc79ff037510928.md) | 168 | `result-track:5753bb64dbc79ff037510928265ce2db4c657d87647650606324203b1f2038ad` |
| 25 | `theorem` | [Cospherical.subset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-subset--c70d1e883c60a02a3ad4e6f2.md) | 173 | `result-track:c70d1e883c60a02a3ad4e6f248f2199355f8d5c2d8912963c8c7c5a367236895` |
| 26 | `theorem` | [cospherical_empty](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-empty--5153c0ba0c6ebc5474eb51f4.md) | 180 | `result-track:5153c0ba0c6ebc5474eb51f44372297683da0693f60d42789e256c438ad55cc1` |
| 27 | `theorem` | [cospherical_singleton](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-singleton--5a945894c01d42990da69f4c.md) | 186 | `result-track:5a945894c01d42990da69f4cb9101ee58ec5e433cd93f2e4202e17c6a78a1dc9` |
| 28 | `theorem` | [cospherical_pair](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-pair--19d93024fd7bd4427d8a5cbd.md) | 198 | `result-track:19d93024fd7bd4427d8a5cbdbd9a3a85f6c308cac489a3e7770a20a1c850de14` |
| 29 | `structure` | [Concyclic](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/concyclic--5fbf80ae62598d65efb4f45d.md) | 207 | `declaration-track:5fbf80ae62598d65efb4f45d3aeb9f25c2cf423849e2f27d761b0d9df21b3f73` |
| 30 | `theorem` | [Concyclic.subset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/concyclic-subset--f3f6cd4f2cfb7c97d7a95f9e.md) | 213 | `result-track:f3f6cd4f2cfb7c97d7a95f9e9f6fff18314fb941faabe7f8da50f056b1ad06d2` |
| 31 | `theorem` | [concyclic_empty](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/concyclic-empty--6bbfbfc7347079c41abe9a8c.md) | 218 | `result-track:6bbfbfc7347079c41abe9a8c475aceda635f4d088343474e064b898a9c08ff66` |
| 32 | `theorem` | [concyclic_singleton](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/concyclic-singleton--b10a546a4d65c084a73b74aa.md) | 223 | `result-track:b10a546a4d65c084a73b74aa44489009e27bdb98688c833877b0a4a3661e02f7` |
| 33 | `theorem` | [concyclic_pair](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/concyclic-pair--ca1e55ff473f34d2427e83dd.md) | 228 | `result-track:ca1e55ff473f34d2427e83ddd0e43c23119bddf3cc9e30f7110f8aa3e6926e4e` |
| 34 | `theorem` | [Cospherical.affineIndependent](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-affineindependent--b5743867bb1627069cad5b38.md) | 239 | `result-track:b5743867bb1627069cad5b38e2b2b54e580dfe9a455d63ff282a54febb573a64` |
| 35 | `theorem` | [Cospherical.affineIndependent_of_mem_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-affineindependent-of-mem-of-ne--ca9b9f7cd68ca5280fbbf266.md) | 277 | `result-track:ca9b9f7cd68ca5280fbbf266d86c08373f18be06cea32ec9861cc4e6d9701026` |
| 36 | `theorem` | [Cospherical.affineIndependent_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/cospherical-affineindependent-of-ne--640a3b47d8555f800863b630.md) | 287 | `result-track:640a3b47d8555f800863b6300388d144965206f8818522f7d86f808951f3ffdf` |
| 37 | `theorem` | [inner_vsub_vsub_of_mem_sphere_of_mem_sphere](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/inner-vsub-vsub-of-mem-sphere-of-mem-sphere--77868e357f0afefaea4f0891.md) | 298 | `result-track:77868e357f0afefaea4f0891cd9c391ca9b881a7098b3d3806f68c56920cf78c` |
| 38 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_mem_of_finrank_eq_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-mem-of-finrank-eq-two--1b56945668d0fe5468dc7781.md) | 308 | `result-track:1b56945668d0fe5468dc7781edd3c6c93a0f995c4f5ba0c912808d8f38751fb5` |
| 39 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_finrank_eq_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-finrank-eq-two--bdf24853566981af6f1f2645.md) | 319 | `result-track:bdf24853566981af6f1f2645e7594cbdf4ed15cd1af06e8b51f053f8ae1d4220` |
| 40 | `theorem` | [inner_pos_or_eq_of_dist_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/inner-pos-or-eq-of-dist-le-radius--b523abb86b7cdde818f0d41d.md) | 329 | `result-track:b523abb86b7cdde818f0d41d8f70554537b7a13ed0e10b4d5565566da4fe2119` |
| 41 | `theorem` | [inner_nonneg_of_dist_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/inner-nonneg-of-dist-le-radius--3e2f7211b8deb43454236f0f.md) | 359 | `result-track:3e2f7211b8deb43454236f0ff4afd1d013189df4e5455aaf9583ea2dfd38423e` |
| 42 | `theorem` | [inner_pos_of_dist_lt_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/inner-pos-of-dist-lt-radius--6490da39b4f66b16e396389c.md) | 368 | `result-track:6490da39b4f66b16e396389cc9a91f3d06a7672af984ecbafd5eb710703375de` |
| 43 | `theorem` | [wbtw_of_collinear_of_dist_center_le_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/wbtw-of-collinear-of-dist-center-le-radius--126cb398ce0dd9fb8780e3ff.md) | 378 | `result-track:126cb398ce0dd9fb8780e3ffca435542914339968d64410986c723a673aa27c6` |
| 44 | `theorem` | [sbtw_of_collinear_of_dist_center_lt_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/declarations/sbtw-of-collinear-of-dist-center-lt-radius--e95f06eae072da9782d0d654.md) | 386 | `result-track:e95f06eae072da9782d0d6540f272d31c104ccd75c6ec83c7eef3f67ce1478ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
