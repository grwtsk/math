# acuteAngled_reindex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:757ce53f-1857-d506-9896-3fca68bbae6d",
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
  "slug": "acuteangled-reindex-iff--b70f3c025c408f916676e10e",
  "source": {
    "blob": "e4f5101e2411c1707d83171147707e807efb22d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 62,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70f3c025c408f916676e10e538d2ef37025e9ae0607e8844eaf65b992e830d0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:757ce53f-1857-d506-9896-3fca68bbae6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–67.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4f5101e2411c1707d83171147707e807efb22d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
