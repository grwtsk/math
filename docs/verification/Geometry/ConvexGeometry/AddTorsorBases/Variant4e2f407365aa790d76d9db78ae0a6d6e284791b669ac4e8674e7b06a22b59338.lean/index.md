# Verification target: GRWTSK.Geometry.ConvexGeometry.AddTorsorBases.Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a20149adf21bf52aabae70ba6da519213f7325fa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a20149adf21bf52aabae70ba6da519213f7325fa`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean.json)

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
| 1 | `theorem` | [isOpenMap_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/isopenmap-barycentric-coord--c3d19698bc23b7c63520b30d.md) | 35 | `result-track:c3d19698bc23b7c63520b30dda4dfb32ab7e24fcf11e59d5f8ba62fae033f3d0` |
| 2 | `theorem` | [continuous_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/continuous-barycentric-coord--eedcdd2221dd91f5b2082ef9.md) | 44 | `result-track:eedcdd2221dd91f5b2082ef9a91a949095e33d217770eca53623fdd955dcf600` |
| 3 | `theorem` | [AffineBasis.interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/affinebasis-interior-convexhull--34a3a939699842788cf6c2e7.md) | 57 | `result-track:34a3a939699842788cf6c2e7178dbc110148f95eeef6ecea116a0fff86eaf6fb` |
| 4 | `theorem` | [IsOpen.exists_between_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/isopen-exists-between-affineindependent-span-eq-top--a7a87a136eb995501a2e31dc.md) | 82 | `result-track:a7a87a136eb995501a2e31dca73c3df9b7b7f15861fd3b1e272720c8d344f1a6` |
| 5 | `theorem` | [IsOpen.exists_subset_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/isopen-exists-subset-affineindependent-span-eq-top--139d863c9aa37f2a4a6803ca.md) | 109 | `result-track:139d863c9aa37f2a4a6803ca6eb706e877e75a7f15cdc80d6084d62793150cb7` |
| 6 | `theorem` | [IsOpen.affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/isopen-affinespan-eq-top--9559668b32a97779e6a38c5d.md) | 117 | `result-track:9559668b32a97779e6a38c5dce30a914a9e6d6505c9cf7036cc6ee68c2460edd` |
| 7 | `theorem` | [affineSpan_eq_top_of_nonempty_interior](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/affinespan-eq-top-of-nonempty-interior--a6bf62dd9da4de2a9e291377.md) | 122 | `result-track:a6bf62dd9da4de2a9e291377fb2f000b26d4c81936934cdd6b3a8945660d8b4e` |
| 8 | `theorem` | [AffineBasis.centroid_mem_interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/affinebasis-centroid-mem-interior-convexhull--562ab486063e8af8efae05cf.md) | 127 | `result-track:562ab486063e8af8efae05cf4300d290f9ef8280497de0a922f1731a921d1ff9` |
| 9 | `theorem` | [interior_convexHull_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/interior-convexhull-nonempty-iff-affinespan-eq-top--605e45774325e3806b79567d.md) | 133 | `result-track:605e45774325e3806b79567d37771bbd4a5d01ede838690e1140d6e6dfd69788` |
| 10 | `theorem` | [Convex.interior_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/declarations/convex-interior-nonempty-iff-affinespan-eq-top--7d78f747799cd71d4d3a1660.md) | 143 | `result-track:7d78f747799cd71d4d3a1660b5a493aa6840c8d21919c2ec8b5324a4eff097f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
