# successorSide_perimeter_seam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d817948d-c2e4-8ba2-9ce1-bcc10bda99e4",
  "kind": "theorem",
  "lexical_name": "successorSide_perimeter_seam",
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
  "slug": "successorside-perimeter-seam--c00b6c8abafe26b4dedb5815",
  "source": {
    "blob": "cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c00b6c8abafe26b4dedb5815f79b8ff9028ca0816ac05adab29d4e7971592548",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d817948d-c2e4-8ba2-9ce1-bcc10bda99e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem successorSide_perimeter_seam (k : ℕ)
    (c : PolygonCorner k) :
    PerimeterConnected k (c, 1) (successorSide k c, 0) := by
  rcases c with ⟨h, i⟩
  fin_cases i
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seam01 h))
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seam12 h))
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seam23 h))
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seamNext h))

/-- The half-open source normal form: endpoints with t=1 are
replaced by the actual successor at t=0; all other points are
left unchanged. The true wraparound is inherited from successorSide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
