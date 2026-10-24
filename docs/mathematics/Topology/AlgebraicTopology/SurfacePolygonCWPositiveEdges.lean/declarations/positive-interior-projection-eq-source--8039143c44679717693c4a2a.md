# positive_interior_projection_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cdb9996-a9ac-563d-2891-8c64a07137ce",
  "kind": "theorem",
  "lexical_name": "positive_interior_projection_eq_source",
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
  "slug": "positive-interior-projection-eq-source--8039143c44679717693c4a2a",
  "source": {
    "blob": "fd33f52fc5fdd60725282a01f8b4d4e20d8464f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8039143c44679717693c4a2a22944dbcc8c674b0782339397cde6aaf879dc75d",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cdb9996-a9ac-563d-2891-8c64a07137ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_interior_projection_eq_source (k : ℕ)
    (h h' : Handle k) (i j : Fin 2)
    (t u : unitInterval) (ht : ¬ IsEndpoint t)
    (heq : positiveOneCell k h i t =
      positiveOneCell k h' j u) :
    (((h, (i : Fin 4)), t) : BoundaryPoint k) =
      (((h', (j : Fin 4)), u) : BoundaryPoint k) := by
  have ho := interior_projection_eq_orbit k ht heq
  rcases ho with hsame | hop
  · exact hsame.symm
  · exact False.elim
      (positive_not_opposite_positive k h h' i j t u hop)

/-- Injectivity of each positive edge characteristic on nonendpoint
parameters. This is not yet an open topological embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd33f52fc5fdd60725282a01f8b4d4e20d8464f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
