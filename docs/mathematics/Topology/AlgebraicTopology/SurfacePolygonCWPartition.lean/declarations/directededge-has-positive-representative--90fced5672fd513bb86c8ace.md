# directedEdge_has_positive_representative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:befb867c-071b-9ce4-c703-e1a395170f5b",
  "kind": "theorem",
  "lexical_name": "directedEdge_has_positive_representative",
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
  "slug": "directededge-has-positive-representative--90fced5672fd513bb86c8ace",
  "source": {
    "blob": "e31e7e29fb5a8c3f158e4342c4c4f521aca96d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90fced5672fd513bb86c8ace7c1297c37e0fa7883126a6b6348aaa27907e2a89",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:befb867c-071b-9ce4-c703-e1a395170f5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directedEdge_has_positive_representative (k : ℕ)
    (h : Handle k) (i : Fin 4) (t : unitInterval) :
    ∃ (j : Fin 2) (u : unitInterval),
      orientedEdgeMap k h i t = positiveOneCell k h j u := by
  fin_cases i
  · exact ⟨0, t, rfl⟩
  · exact ⟨1, t, rfl⟩
  · exact ⟨0, unitInterval.symm t, by
      simpa using (negativeA_eq_positiveA_reverse k h
        (unitInterval.symm t))⟩
  · exact ⟨1, unitInterval.symm t, by
      simpa using (negativeB_eq_positiveB_reverse k h
        (unitInterval.symm t))⟩

/-- Every source point is already represented by a positive edge
interval; no finite-cardinality surrogate replaces the quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31e7e29fb5a8c3f158e4342c4c4f521aca96d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
