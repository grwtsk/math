# Verification target: GRWTSK.Geometry.ConvexGeometry.AddTorsorBases.Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11c70fcf6128379193c4d0afcc3f82fef111d21a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11c70fcf6128379193c4d0afcc3f82fef111d21a`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.AffineMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Combination` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpenMap_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/isopenmap-barycentric-coord--1f37a15d086a6013f229c9dd.md) | 44 | `result-track:1f37a15d086a6013f229c9ddb606469f430259132d413d06d1d34eb527401f6c` |
| 2 | `theorem` | [continuous_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/continuous-barycentric-coord--5af3ff0ce7ecd0349829d4b7.md) | 54 | `result-track:5af3ff0ce7ecd0349829d4b7ae5b7dbab3d61f8b9b7648d8c1deeb88248991b3` |
| 3 | `theorem` | [smooth_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/smooth-barycentric-coord--f287abbe2edebbc959d05765.md) | 58 | `result-track:f287abbe2edebbc959d05765bd9687fa20e6283bec1192659950d43eec54b44e` |
| 4 | `theorem` | [AffineBasis.interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/affinebasis-interior-convexhull--9c595ca1737bfb4e5a28adf9.md) | 72 | `result-track:9c595ca1737bfb4e5a28adf99adfb41920be77895bd405b073d09486759d1eba` |
| 5 | `theorem` | [IsOpen.exists_between_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/isopen-exists-between-affineindependent-span-eq-top--110e08f4acdbce35c0110bd5.md) | 98 | `result-track:110e08f4acdbce35c0110bd5fd21c0efb124e4fa98a8bc0269c287fef8a54c8e` |
| 6 | `theorem` | [IsOpen.exists_subset_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/isopen-exists-subset-affineindependent-span-eq-top--b488eca70effffd1f47bb861.md) | 126 | `result-track:b488eca70effffd1f47bb861910af9544dfec0acba5508a17f2f3bfa291ff5f8` |
| 7 | `theorem` | [IsOpen.affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/isopen-affinespan-eq-top--7033204dac82a0e1b688da2c.md) | 136 | `result-track:7033204dac82a0e1b688da2ca107d310a038587337cac983f311377a74e4195d` |
| 8 | `theorem` | [affineSpan_eq_top_of_nonempty_interior](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/affinespan-eq-top-of-nonempty-interior--94a112f20d8b12c754f59507.md) | 142 | `result-track:94a112f20d8b12c754f5950704f50fb3fa46bbd650a0f14d9fc016ea82a17bd9` |
| 9 | `theorem` | [AffineBasis.centroid_mem_interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/affinebasis-centroid-mem-interior-convexhull--cf42d2456db63f0c83ed946e.md) | 148 | `result-track:cf42d2456db63f0c83ed946ed12c9c01b607f28e32758e40717551fd18d0e304` |
| 10 | `theorem` | [interior_convexHull_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/interior-convexhull-nonempty-iff-affinespan-eq-top--16042fc16a75667b768b851a.md) | 155 | `result-track:16042fc16a75667b768b851a2bf16b241e2ac17f68a784cb48c148f20a93158b` |
| 11 | `theorem` | [Convex.interior_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/declarations/convex-interior-nonempty-iff-affinespan-eq-top--327471bb31933f35dfc7731d.md) | 167 | `result-track:327471bb31933f35dfc7731dbfa3506d24a2951e736ecc1bb441b8d5b18dc791` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
