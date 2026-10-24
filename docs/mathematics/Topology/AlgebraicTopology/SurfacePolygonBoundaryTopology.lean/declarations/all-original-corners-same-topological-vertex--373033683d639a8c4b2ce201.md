# all_original_corners_same_topological_vertex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ac06d37-6c5f-f5a9-4611-549126a99acb",
  "kind": "theorem",
  "lexical_name": "all_original_corners_same_topological_vertex",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "all-original-corners-same-topological-vertex--373033683d639a8c4b2ce201",
  "source": {
    "blob": "4d0f5d976ef27da7df26ee01540a2bee36c01c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 299,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:373033683d639a8c4b2ce20110f1115869107e57bb60b2ec92abfcb48437f5c6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ac06d37-6c5f-f5a9-4611-549126a99acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_original_corners_same_topological_vertex (k : ℕ)
    (u v : PolygonCorner k) :
    boundaryProjection k (originalCornerPoint k u) =
      boundaryProjection k (originalCornerPoint k v) :=
  Quotient.sound
    (corner_equivalence_preserved k (all_corners_connected k u v))

/-- A point on a directed source interval is an endpoint exactly
when its parameter equals 0 or 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d0f5d976ef27da7df26ee01540a2bee36c01c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
