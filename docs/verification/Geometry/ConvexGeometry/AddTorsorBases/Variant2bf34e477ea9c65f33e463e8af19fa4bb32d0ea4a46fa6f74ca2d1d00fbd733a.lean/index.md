# Verification target: GRWTSK.Geometry.ConvexGeometry.AddTorsorBases.Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "514c1cf7bca230843f74dbd2cfa63055218d1ad2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `514c1cf7bca230843f74dbd2cfa63055218d1ad2`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpenMap_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/isopenmap-barycentric-coord--bbcb14cab55a5d11209aac38.md) | 31 | `result-track:bbcb14cab55a5d11209aac382be37311287ed01d3c1c547b8a1984232db14c66` |
| 2 | `theorem` | [continuous_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/continuous-barycentric-coord--75f9b6788d479bc960dbdbbd.md) | 40 | `result-track:75f9b6788d479bc960dbdbbd866d62e597919f82af6d3148c180c1cb8a8942b7` |
| 3 | `theorem` | [AffineBasis.interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/affinebasis-interior-convexhull--b439b17b4f1ebcff2ddee868.md) | 53 | `result-track:b439b17b4f1ebcff2ddee86831993e8132caa30ccbf99025209596bbcd5cc338` |
| 4 | `theorem` | [IsOpen.exists_between_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/isopen-exists-between-affineindependent-span-eq-top--8f117a6196948119885c1264.md) | 78 | `result-track:8f117a6196948119885c1264d8bce16bf17259e0f6428ecd7c40adbd6301950d` |
| 5 | `theorem` | [IsOpen.exists_subset_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/isopen-exists-subset-affineindependent-span-eq-top--7653639bac9bbdfefbb404ce.md) | 105 | `result-track:7653639bac9bbdfefbb404cef0a22a9df578be94c50214e0a2826fbb981d6471` |
| 6 | `theorem` | [IsOpen.affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/isopen-affinespan-eq-top--53942ae455e37907407ee324.md) | 113 | `result-track:53942ae455e37907407ee324496a28e193b065320144418cdd9771f5c6455262` |
| 7 | `theorem` | [affineSpan_eq_top_of_nonempty_interior](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/affinespan-eq-top-of-nonempty-interior--3776dc3789fd1e9b972fd666.md) | 118 | `result-track:3776dc3789fd1e9b972fd66652886d85000fee9633baec811d908cde9a59edbf` |
| 8 | `theorem` | [AffineBasis.centroid_mem_interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/affinebasis-centroid-mem-interior-convexhull--5d225b1462fd88de18ae2f4d.md) | 123 | `result-track:5d225b1462fd88de18ae2f4d2b58a2f216016717b8f22f6cc942cae8790737db` |
| 9 | `theorem` | [interior_convexHull_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/interior-convexhull-nonempty-iff-affinespan-eq-top--181e158bb6e5d59ce144081e.md) | 129 | `result-track:181e158bb6e5d59ce144081e51524b7128af2b27ed5711d77cd5e1277cb8c4c9` |
| 10 | `theorem` | [Convex.interior_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/declarations/convex-interior-nonempty-iff-affinespan-eq-top--c7f8877c623f9588f9b1a18b.md) | 139 | `result-track:c7f8877c623f9588f9b1a18bf58a6b43c7893d90750038e19a50da20aa187c27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
