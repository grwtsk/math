# OrthocentricSystem.eq_insert_orthocenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59ecc003-889a-cf3a-5de8-5823ad88e3df",
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
  "slug": "orthocentricsystem-eq-insert-orthocenter--ec341b28dc226067a4395ddf",
  "source": {
    "blob": "f582cc6d4efac0da3198e0b3cbe489bfc5611cb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 693,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec341b28dc226067a4395ddfe1225dd1d279f2165ef92fb91a5facc887742be2",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59ecc003-889a-cf3a-5de8-5823ad88e3df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 693–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthocentricSystem.eq_insert_orthocenter {s : Set P} (ho : OrthocentricSystem s)
    {t : Triangle ℝ P} (ht : Set.range t.points ⊆ s) :
    s = insert t.orthocenter (Set.range t.points) := by
  rcases ho with ⟨t₀, ht₀o, ht₀s⟩
  rw [ht₀s] at ht
  rcases exists_of_range_subset_orthocentricSystem ht₀o ht t.independent.injective with
    (⟨i₁, i₂, i₃, j₂, j₃, h₁₂, h₁₃, h₂₃, h₁₂₃, h₁, hj₂₃, h₂, h₃⟩ | hs)
  · obtain ⟨j₁, hj₁₂, hj₁₃, hj₁₂₃⟩ :
        ∃ j₁ : Fin 3, j₁ ≠ j₂ ∧ j₁ ≠ j₃ ∧ ∀ j : Fin 3, j = j₁ ∨ j = j₂ ∨ j = j₃ := by
      clear h₂ h₃
      decide +revert
    suffices h : t₀.points j₁ = t.orthocenter by
      have hui : (Set.univ : Set (Fin 3)) = {i₁, i₂, i₃} := by ext x; simpa using h₁₂₃ x
      have huj : (Set.univ : Set (Fin 3)) = {j₁, j₂, j₃} := by ext x; simpa using hj₁₂₃ x
      rw [← h, ht₀s, ← Set.image_univ, huj, ← Set.image_univ, hui]
      simp_rw [Set.image_insert_eq, Set.image_singleton, h₁, ← h₂, ← h₃]
      rw [Set.insert_comm]
    exact
      (Triangle.orthocenter_replace_orthocenter_eq_point hj₁₂ hj₁₃ hj₂₃ h₁₂ h₁₃ h₂₃ h₁ h₂.symm
          h₃.symm).symm
  · rw [hs]
    convert! ht₀s using 2
    exact Triangle.orthocenter_eq_of_range_eq hs

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean#L693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f582cc6d4efac0da3198e0b3cbe489bfc5611cb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
