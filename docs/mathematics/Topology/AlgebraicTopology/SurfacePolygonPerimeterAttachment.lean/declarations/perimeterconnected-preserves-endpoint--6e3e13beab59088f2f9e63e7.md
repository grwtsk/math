# perimeterConnected_preserves_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f787ea-5e06-c9ea-89ec-349db15091ce",
  "kind": "theorem",
  "lexical_name": "perimeterConnected_preserves_endpoint",
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
  "slug": "perimeterconnected-preserves-endpoint--6e3e13beab59088f2f9e63e7",
  "source": {
    "blob": "c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 272,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e3e13beab59088f2f9e63e7c58429020271062a6cd8c17ff5bd41dd0dc37ede",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f787ea-5e06-c9ea-89ec-349db15091ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perimeterConnected_preserves_endpoint (k : ℕ)
    {p q : BoundaryPoint k}
    (h : PerimeterConnected k p q) :
    IsEndpoint p.2 ↔ IsEndpoint q.2 := by
  induction h with
  | rel p q hpq =>
      exact ⟨fun _ => (seamStep_has_endpoints k hpq).2,
        fun _ => (seamStep_has_endpoints k hpq).1⟩
  | refl p => exact Iff.rfl
  | symm p q _ ih => exact ih.symm
  | trans p q r _ _ ih1 ih2 => exact ih1.trans ih2

/-- STRONG NONCOLLAPSE LEMMA: in the unpaired perimeter, a point with
strictly interior tangential parameter cannot be equivalent to any
DIFFERENT source point. Seam generators involve endpoints only, and
the EqvGen induction proves this through all possible seam chains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
