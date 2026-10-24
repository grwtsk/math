# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd33f52fc5fdd60725282a01f8b4d4e20d8464f8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd33f52fc5fdd60725282a01f8b4d4e20d8464f8`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positive_not_opposite_positive](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/declarations/positive-not-opposite-positive--241ad18497940cc1fa97eb5d.md) | 31 | `result-track:241ad18497940cc1fa97eb5d43685aa4a6e862f0dfcb0f1a48a634442a649ca1` |
| 2 | `theorem` | [positive_interior_projection_eq_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/declarations/positive-interior-projection-eq-source--8039143c44679717693c4a2a.md) | 41 | `result-track:8039143c44679717693c4a2a22944dbcc8c674b0782339397cde6aaf879dc75d` |
| 3 | `theorem` | [positiveOneCell_injective_interior](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/declarations/positiveonecell-injective-interior--9968c6abab9209d240a44cda.md) | 56 | `result-track:9968c6abab9209d240a44cda7fcb94be60043817e04b2bdd63fdf9850b639aa3` |
| 4 | `theorem` | [positiveOneCell_disjoint_interior](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/declarations/positiveonecell-disjoint-interior--d0f902c252af3d822e96b8bd.md) | 68 | `result-track:d0f902c252af3d822e96b8bdb88994befb6cd48b1c01c8546d050ea72ab27547` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
