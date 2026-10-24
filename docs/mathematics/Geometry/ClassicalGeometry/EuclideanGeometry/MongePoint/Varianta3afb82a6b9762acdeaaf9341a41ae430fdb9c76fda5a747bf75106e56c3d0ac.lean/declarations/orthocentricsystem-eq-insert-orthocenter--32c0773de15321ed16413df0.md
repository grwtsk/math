# OrthocentricSystem.eq_insert_orthocenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd7c0b7c0360d55e119bd1fc6112048f448afdc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 771,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:850878ca-dddb-f39d-4b4d-4e21cc0a2217",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9211e61-7f66-e309-6e8f-db27b0b9d1fa",
  "kind": "theorem",
  "lexical_name": "OrthocentricSystem.eq_insert_orthocenter",
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
  "slug": "orthocentricsystem-eq-insert-orthocenter--32c0773de15321ed16413df0",
  "source": {
    "blob": "cd7c0b7c0360d55e119bd1fc6112048f448afdc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 797,
    "line": 771,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32c0773de15321ed16413df0b51a2f6609d9d458b0c66dc7612bb6930d881479",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9211e61-7f66-e309-6e8f-db27b0b9d1fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–797.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthocentricSystem.eq_insert_orthocenter {s : Set P} (ho : OrthocentricSystem s)
    {t : Triangle ℝ P} (ht : Set.range t.points ⊆ s) :
    s = insert t.orthocenter (Set.range t.points) := by
  rcases ho with ⟨t₀, ht₀o, ht₀s⟩
  rw [ht₀s] at ht
  rcases exists_of_range_subset_orthocentricSystem ht₀o ht t.Independent.injective with
    (⟨i₁, i₂, i₃, j₂, j₃, h₁₂, h₁₃, h₂₃, h₁₂₃, h₁, hj₂₃, h₂, h₃⟩ | hs)
  · obtain ⟨j₁, hj₁₂, hj₁₃, hj₁₂₃⟩ :
        ∃ j₁ : Fin 3, j₁ ≠ j₂ ∧ j₁ ≠ j₃ ∧ ∀ j : Fin 3, j = j₁ ∨ j = j₂ ∨ j = j₃ := by
      clear h₂ h₃
      -- porting note: was `decide!`
      fin_cases j₂ <;> fin_cases j₃ <;> simp at hj₂₃ ⊢
    suffices h : t₀.points j₁ = t.orthocenter
    · have hui : (Set.univ : Set (Fin 3)) = {i₁, i₂, i₃} := by ext x; simpa using h₁₂₃ x
      have huj : (Set.univ : Set (Fin 3)) = {j₁, j₂, j₃} := by ext x; simpa using hj₁₂₃ x
      rw [← h, ht₀s, ← Set.image_univ, huj, ← Set.image_univ, hui]
      simp_rw [Set.image_insert_eq, Set.image_singleton, h₁, ← h₂, ← h₃]
      rw [Set.insert_comm]
    exact
      (Triangle.orthocenter_replace_orthocenter_eq_point hj₁₂ hj₁₃ hj₂₃ h₁₂ h₁₃ h₂₃ h₁ h₂.symm
          h₃.symm).symm
  · rw [hs]
    convert ht₀s using 2
    exact Triangle.orthocenter_eq_of_range_eq hs
#align euclidean_geometry.orthocentric_system.eq_insert_orthocenter EuclideanGeometry.OrthocentricSystem.eq_insert_orthocenter

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7c0b7c0360d55e119bd1fc6112048f448afdc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
