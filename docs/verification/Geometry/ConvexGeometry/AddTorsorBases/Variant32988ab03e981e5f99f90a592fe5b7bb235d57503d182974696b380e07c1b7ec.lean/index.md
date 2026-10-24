# Verification target: GRWTSK.Geometry.ConvexGeometry.AddTorsorBases.Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b70f42034fa02b8e527d33440c774974ded24b0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b70f42034fa02b8e527d33440c774974ded24b0`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.AffineMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Combination` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpenMap_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/isopenmap-barycentric-coord--d9be10bc78a9f209f07882b7.md) | 36 | `result-track:d9be10bc78a9f209f07882b73c02a68f8ce04c25080ef31ef960b7b33d84d1f4` |
| 2 | `theorem` | [continuous_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/continuous-barycentric-coord--ef64edf23aeee15abd573901.md) | 46 | `result-track:ef64edf23aeee15abd5739012286ae16f662467a700c6dcf118c671f165e40fa` |
| 3 | `theorem` | [smooth_barycentric_coord](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/smooth-barycentric-coord--86bd3103ab0c0b5dae6f5233.md) | 50 | `result-track:86bd3103ab0c0b5dae6f52335cb5198af490dda22b9bca944dc59e8a3a5edaf8` |
| 4 | `theorem` | [AffineBasis.interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/affinebasis-interior-convexhull--ee3dd5d8028ebf667a37a712.md) | 64 | `result-track:ee3dd5d8028ebf667a37a712ec016de5388e1aff9eb91b9da8e2788499a20229` |
| 5 | `theorem` | [IsOpen.exists_between_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/isopen-exists-between-affineindependent-span-eq-top--f1e3b763c304485a826e6c0d.md) | 90 | `result-track:f1e3b763c304485a826e6c0da0c69ae22efbe16d566e0d36d39cf0ae55d781b1` |
| 6 | `theorem` | [IsOpen.exists_subset_affineIndependent_span_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/isopen-exists-subset-affineindependent-span-eq-top--a17102233bd25249c097a545.md) | 118 | `result-track:a17102233bd25249c097a545fc763196c2070d34131356285774e90c5cc767cb` |
| 7 | `theorem` | [IsOpen.affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/isopen-affinespan-eq-top--027d637840b3040cfa40eac9.md) | 128 | `result-track:027d637840b3040cfa40eac9e13e7b3b78f44716f13ca39e3de576d03a75eeb2` |
| 8 | `theorem` | [affineSpan_eq_top_of_nonempty_interior](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/affinespan-eq-top-of-nonempty-interior--68c476350c6426962eb481a3.md) | 134 | `result-track:68c476350c6426962eb481a342babe2c8565cf1709d28c0a218bd58c31449261` |
| 9 | `theorem` | [AffineBasis.centroid_mem_interior_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/affinebasis-centroid-mem-interior-convexhull--892fbaad4c1b9f2445643fbe.md) | 140 | `result-track:892fbaad4c1b9f2445643fbe4c70abd96c8f0ba177d5a4736067f2c47ef16be1` |
| 10 | `theorem` | [interior_convexHull_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/interior-convexhull-nonempty-iff-affinespan-eq-top--e9b04b1a6df54336b7cf7cd9.md) | 147 | `result-track:e9b04b1a6df54336b7cf7cd9bee1cb2fa148c50135d313e6c5fbc924ee3acad5` |
| 11 | `theorem` | [Convex.interior_nonempty_iff_affineSpan_eq_top](../../../../../mathematics/Geometry/ConvexGeometry/AddTorsorBases/Variant32988ab03e981e5f99f90a592fe5b7bb235d57503d182974696b380e07c1b7ec.lean/declarations/convex-interior-nonempty-iff-affinespan-eq-top--f5877746f9203fd2d1d383da.md) | 159 | `result-track:f5877746f9203fd2d1d383da5826e239b420e6238e346cc0098c4a36e23c9a4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
