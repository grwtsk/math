# interiorOrbit_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bb0f074-6d7a-4c0b-a5c5-f9a43589d690",
  "kind": "theorem",
  "lexical_name": "interiorOrbit_trans",
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
  "slug": "interiororbit-trans--de989ea42ec2c6dd84edfb10",
  "source": {
    "blob": "c8fa2c24daedd33d74b00c6b253bca2b6668c2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 60,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de989ea42ec2c6dd84edfb10d9797ec604a36db19320108d841c1e081511f9f1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bb0f074-6d7a-4c0b-a5c5-f9a43589d690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interiorOrbit_trans (k : ℕ)
    {p q r : BoundaryPoint k}
    (hpq : InteriorOrbit k p q)
    (hqr : InteriorOrbit k q r) :
    InteriorOrbit k p r := by
  rcases hpq with rfl | hpq
  · exact hqr
  · subst q
    rcases hqr with rfl | hqr
    · exact Or.inr rfl
    · exact Or.inl (hqr.trans (oppositeBoundaryPoint_involutive k p))

/-- Complete EqvGen fiber bound at every strict interior point:
only the point itself and its unique reversed opposite-side partner
can be equivalent. This is stronger than endpoint preservation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8fa2c24daedd33d74b00c6b253bca2b6668c2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
