# exists_dist_eq_iff_exists_dist_orthogonalProjection_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b6ce498-3c91-12ee-fed6-a33f356e92c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68e5ff6e-57a2-096d-62a0-188d501118fb",
  "kind": "theorem",
  "lexical_name": "exists_dist_eq_iff_exists_dist_orthogonalProjection_eq",
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
  "slug": "exists-dist-eq-iff-exists-dist-orthogonalprojection-eq--e7ab915a8fbc8c98767d5b49",
  "source": {
    "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 397,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7ab915a8fbc8c98767d5b4937a4699fd9b65bc0b42fc38cd7bf4bac9765ae9c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68e5ff6e-57a2-096d-62a0-188d501118fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dist_eq_iff_exists_dist_orthogonalProjection_eq {s : AffineSubspace 𝕜 P} [Nonempty s]
    [s.direction.HasOrthogonalProjection] {ps : Set P} (hps : ps ⊆ s) (p : P) :
    (∃ r, ∀ p₁ ∈ ps, dist p₁ p = r) ↔ ∃ r, ∀ p₁ ∈ ps, dist p₁ ↑(orthogonalProjection s p) = r := by
  have h := dist_set_eq_iff_dist_orthogonalProjection_eq hps p
  simp_rw [Set.pairwise_eq_iff_exists_eq] at h
  exact h

/-- Reflection in an affine subspace, which is expected to be nonempty
and complete. The word "reflection" is sometimes understood to mean
specifically reflection in a codimension-one subspace, and sometimes
more generally to cover operations such as reflection in a point. The
definition here, of reflection in an affine subspace, is a more
general sense of the word that includes both those common cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
