# altitude_replace_orthocenter_eq_affineSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f709cac-604b-2609-1632-be22c184bed3",
  "kind": "theorem",
  "lexical_name": "altitude_replace_orthocenter_eq_affineSpan",
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
  "slug": "altitude-replace-orthocenter-eq-affinespan--035338437fb2b189aca47dd6",
  "source": {
    "blob": "1279a2e7b96731c6a97969d3d022508edc7025df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 580,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:035338437fb2b189aca47dd6d3e8272ce48ea243cd4f033131d9584ea8e42b48",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f709cac-604b-2609-1632-be22c184bed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem altitude_replace_orthocenter_eq_affineSpan {t₁ t₂ : Triangle ℝ P}
    {i₁ i₂ i₃ j₁ j₂ j₃ : Fin 3} (hi₁₂ : i₁ ≠ i₂) (hi₁₃ : i₁ ≠ i₃) (hi₂₃ : i₂ ≠ i₃) (hj₁₂ : j₁ ≠ j₂)
    (hj₁₃ : j₁ ≠ j₃) (hj₂₃ : j₂ ≠ j₃) (h₁ : t₂.points j₁ = t₁.orthocenter)
    (h₂ : t₂.points j₂ = t₁.points i₂) (h₃ : t₂.points j₃ = t₁.points i₃) :
    t₂.altitude j₂ = line[ℝ, t₁.points i₁, t₁.points i₂] := by
  symm
  rw [← h₂, t₂.affineSpan_pair_eq_altitude_iff]
  rw [h₂]
  use t₁.Independent.injective.ne hi₁₂
  have he : affineSpan ℝ (Set.range t₂.points) = affineSpan ℝ (Set.range t₁.points) := by
    refine' ext_of_direction_eq _
      ⟨t₁.points i₃, mem_affineSpan ℝ ⟨j₃, h₃⟩, mem_affineSpan ℝ (Set.mem_range_self _)⟩
    refine' eq_of_le_of_finrank_eq (direction_le (spanPoints_subset_coe_of_subset_coe _)) _
    · have hu : (Finset.univ : Finset (Fin 3)) = {j₁, j₂, j₃} := by
        clear h₁ h₂ h₃
        -- porting note: was `decide!`
        fin_cases j₁ <;> fin_cases j₂ <;> fin_cases j₃ <;> simp at hj₁₂ hj₁₃ hj₂₃ ⊢
      rw [← Set.image_univ, ← Finset.coe_univ, hu, Finset.coe_insert, Finset.coe_insert,
        Finset.coe_singleton, Set.image_insert_eq, Set.image_insert_eq, Set.image_singleton, h₁, h₂,
        h₃, Set.insert_subset_iff, Set.insert_subset_iff, Set.singleton_subset_iff]
      exact
        ⟨t₁.orthocenter_mem_affineSpan, mem_affineSpan ℝ (Set.mem_range_self _),
          mem_affineSpan ℝ (Set.mem_range_self _)⟩
    · rw [direction_affineSpan, direction_affineSpan,
        t₁.Independent.finrank_vectorSpan (Fintype.card_fin _),
        t₂.Independent.finrank_vectorSpan (Fintype.card_fin _)]
  rw [he]
  use mem_affineSpan ℝ (Set.mem_range_self _)
  have hu : Finset.univ.erase j₂ = {j₁, j₃} := by
    clear h₁ h₂ h₃
    -- porting note: was `decide!`
    fin_cases j₁ <;> fin_cases j₂ <;> fin_cases j₃ <;> simp at hj₁₂ hj₁₃ hj₂₃ ⊢
  rw [hu, Finset.coe_insert, Finset.coe_singleton, Set.image_insert_eq, Set.image_singleton, h₁, h₃]
  have hle : (t₁.altitude i₃).directionᗮ ≤ line[ℝ, t₁.orthocenter, t₁.points i₃].directionᗮ :=
    Submodule.orthogonal_le (direction_le (affineSpan_orthocenter_point_le_altitude _ _))
  refine' hle ((t₁.vectorSpan_isOrtho_altitude_direction i₃) _)
  have hui : Finset.univ.erase i₃ = {i₁, i₂} := by
    clear hle h₂ h₃
    -- porting note: was `decide!`
    fin_cases i₁ <;> fin_cases i₂ <;> fin_cases i₃ <;> simp at hi₁₂ hi₁₃ hi₂₃ ⊢
  rw [hui, Finset.coe_insert, Finset.coe_singleton, Set.image_insert_eq, Set.image_singleton]
  refine' vsub_mem_vectorSpan ℝ (Set.mem_insert _ _) (Set.mem_insert_of_mem _ (Set.mem_singleton _))
#align affine.triangle.altitude_replace_orthocenter_eq_affine_span Affine.Triangle.altitude_replace_orthocenter_eq_affineSpan

/-- Suppose we are given a triangle `t₁`, and replace one of its
vertices by its orthocenter, yielding triangle `t₂` (with vertices not
necessarily listed in the same order).  Then the orthocenter of `t₂`
is the vertex of `t₁` that was replaced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1279a2e7b96731c6a97969d3d022508edc7025df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
