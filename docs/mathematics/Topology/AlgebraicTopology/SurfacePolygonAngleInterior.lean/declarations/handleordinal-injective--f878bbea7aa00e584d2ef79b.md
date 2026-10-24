# handleOrdinal_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2f7b0a0-fce1-6b40-2ff0-b82497aaac53",
  "kind": "theorem",
  "lexical_name": "handleOrdinal_injective",
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
  "slug": "handleordinal-injective--f878bbea7aa00e584d2ef79b",
  "source": {
    "blob": "a8d7acb224f85a0510345a325c6d2657ac85df83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 34,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f878bbea7aa00e584d2ef79b0bd8ef645d00d76c0c3688040ec7d0d6cafb27aa",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f7b0a0-fce1-6b40-2ff0-b82497aaac53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem handleOrdinal_injective (k : ℕ) :
    Function.Injective (handleOrdinal k) := by
  intro a b hab
  cases a with
  | inl i =>
      cases b with
      | inl j =>
          apply congrArg Sum.inl
          apply Fin.ext
          simpa [handleOrdinal] using hab
      | inr j =>
          have hi := i.isLt
          simp only [handleOrdinal] at hab
          omega
  | inr i =>
      cases b with
      | inl j =>
          have hj := j.isLt
          simp only [handleOrdinal] at hab
          omega
      | inr j =>
          have he : i.val = j.val := by
            simp only [handleOrdinal] at hab
            omega
          exact congrArg Sum.inr (Fin.ext he)

/-- The original directed side ordinal is injective on all 4g side IDs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d7acb224f85a0510345a325c6d2657ac85df83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
