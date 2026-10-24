# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellPartition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04e67d645db5ccd101ecbaad75dd1cada95fc64f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04e67d645db5ccd101ecbaad75dd1cada95fc64f`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPartition`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [every_boundary_point_positive](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/declarations/every-boundary-point-positive--78590a4293e3d938b7965d08.md) | 34 | `result-track:78590a4293e3d938b7965d087aca53ab9998783fedeabe1e75c8980e56ae918c` |
| 2 | `theorem` | [positive_endpoint_eq_vertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/declarations/positive-endpoint-eq-vertex--4e31169287bef6b2ed6ddedc.md) | 43 | `result-track:4e31169287bef6b2ed6ddedcb5d72ca763ebe712f8b5d873869a985ba54cf432` |
| 3 | `theorem` | [vertex_or_positive_interior](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/declarations/vertex-or-positive-interior--e12e9662ecdef0272864fe45.md) | 55 | `result-track:e12e9662ecdef0272864fe459dff798de8a8f3966fe9b690411ee9c07730c1b3` |
| 4 | `theorem` | [positive_interior_not_vertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/declarations/positive-interior-not-vertex--4374bc228d4385585f293a99.md) | 66 | `result-track:4374bc228d4385585f293a99f7cdf4838a7655ac186ec43c749d160894f9343a` |
| 5 | `theorem` | [positive_interior_unique](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/declarations/positive-interior-unique--ea8e708b116a6331d3e8b4e3.md) | 74 | `result-track:ea8e708b116a6331d3e8b4e3a397f8614881d81fb8a74810b00382b3e2d9fa98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
