# acuteAngled_reindex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35518951-6bfa-144b-e0a3-7bccd61a658d",
  "kind": "lemma",
  "lexical_name": "acuteAngled_reindex_iff",
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
  "slug": "acuteangled-reindex-iff--390cd2364ef06b923f2367e9",
  "source": {
    "blob": "8964997ca5e9dd86ff6139b4c6d5eb3c582a1c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390cd2364ef06b923f2367e9f5eb4ef9a984c41a7f5015625fc65e444043cdc0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35518951-6bfa-144b-e0a3-7bccd61a658d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma acuteAngled_reindex_iff {s : Simplex ℝ P m} (e : Fin (m + 1) ≃ Fin (n + 1)) :
    (s.reindex e).AcuteAngled ↔ s.AcuteAngled := by
  refine ⟨fun h {i₁ i₂ i₃} h₁₂ h₁₃ h₂₃ ↦ ?_, fun h {i₁ i₂ i₃} h₁₂ h₁₃ h₂₃ ↦ ?_⟩
  · convert h (i₁ := e i₁) (i₂ := e i₂) (i₃ := e i₃) ?_ ?_ ?_ using 1 <;> simp [*]
  · convert h (i₁ := e.symm i₁) (i₂ := e.symm i₂) (i₃ := e.symm i₃) ?_ ?_ ?_ using 1 <;> simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant13b84fb79e81db32667cf9d47f006b9568aed7ad265e182590f5e8eacd780dbc.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8964997ca5e9dd86ff6139b4c6d5eb3c582a1c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
