# d_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bac8d1b3-af47-1e32-9f39-b3805663f68b",
  "kind": "lemma",
  "lexical_name": "d_eq",
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
  "slug": "d-eq--1df35ac6c84c90e8a7f8fa74",
  "source": {
    "blob": "6fe480810a48ceb2e29311e442e53be568228752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 725,
    "line": 636,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df35ac6c84c90e8a7f8fa74d8be59e40848845a4998490be574c64fe571c249",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bac8d1b3-af47-1e32-9f39-b3805663f68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–725.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma d_eq :
    (mapBifunctor K₁ (mapBifunctor K₂ K₃ G₂₃ c₂₃) F c₄).d j j' =
      D₁ F G₂₃ K₁ K₂ K₃ c₂₃ c₄ j j' + D₂ F G₂₃ K₁ K₂ K₃ c₁₂ c₂₃ c₄ j j' +
      D₃ F G₂₃ K₁ K₂ K₃ c₁₂ c₂₃ c₄ j j' := by
  rw [mapBifunctor.d_eq]
  rw [add_assoc]
  congr 1
  apply mapBifunctor₂₃.hom_ext (c₁₂ := c₁₂)
  intros i₁ i₂ i₃ h
  simp only [Preadditive.comp_add, ι_D₂, ι_D₃]
  rw [ι_eq _ _ _ _ _ _ _ _ _ _ _ _ _ rfl
      (by rw [← h, ← ComplexShape.assoc c₁ c₂ c₃ c₁₂ c₂₃ c₄]; rfl),
    assoc, mapBifunctor.ι_D₂]
  set i₂₃ := ComplexShape.π c₂ c₃ c₂₃ ⟨i₂, i₃⟩
  by_cases h₁ : c₂₃.Rel i₂₃ (c₂₃.next i₂₃)
  · by_cases h₂ : ComplexShape.π c₁ c₂₃ c₄ (i₁, c₂₃.next i₂₃) = j'
    · rw [mapBifunctor.d₂_eq _ _ _ _ _ h₁ _ h₂, mapBifunctor.d_eq,
        Linear.comp_units_smul, Functor.map_add, Preadditive.add_comp,
        Preadditive.comp_add, smul_add]
      congr 1
      · rw [← Functor.map_comp_assoc, mapBifunctor.ι_D₁]
        by_cases h₃ : c₂.Rel i₂ (c₂.next i₂)
        · rw [d₂_eq _ _ _ _ _ _ _ _ _ h₃,
            mapBifunctor.d₁_eq _ _ _ _ h₃ _ _ (ComplexShape.next_π₁ c₃ c₂₃ h₃ i₃).symm,
            Functor.map_units_smul, Functor.map_comp, Linear.units_smul_comp,
            assoc, smul_smul, smul_left_cancel_iff,
            ιOrZero_eq _ _ _ _ _ _ _ _ _ _ _ _ (by
              dsimp [ComplexShape.r]
              rw [← h₂, ComplexShape.assoc c₁ c₂ c₃ c₁₂ c₂₃ c₄,
                ComplexShape.next_π₁ c₃ c₂₃ h₃ i₃]), ι_eq]
        · rw [d₂_eq_zero _ _ _ _ _ _ _ _ _ _ _ _ h₃,
            mapBifunctor.d₁_eq_zero _ _ _ _ _ _ _ h₃,
            Functor.map_zero, zero_comp, smul_zero]
      · rw [← Functor.map_comp_assoc, mapBifunctor.ι_D₂]
        by_cases h₃ : c₃.Rel i₃ (c₃.next i₃)
        · rw [d₃_eq _ _ _ _ _ _ _ _ _ _ h₃,
            mapBifunctor.d₂_eq _ _ _ _ _ h₃ _ (ComplexShape.next_π₂ c₂ c₂₃ i₂ h₃).symm,
            Functor.map_units_smul, Functor.map_comp, Linear.units_smul_comp, assoc,
            smul_smul, smul_left_cancel_iff]
          rw [ιOrZero_eq _ _ _ _ _ _ _ _ _ _ _ _ (by
            dsimp [ComplexShape.r]
            rw [← h₂, ComplexShape.assoc c₁ c₂ c₃ c₁₂ c₂₃ c₄, ComplexShape.next_π₂ c₂ c₂₃ i₂ h₃]),
            ι_eq]
        · rw [d₃_eq_zero _ _ _ _ _ _ _ _ _ _ _ _ h₃,
            mapBifunctor.d₂_eq_zero _ _ _ _ _ _ _ h₃,
            Functor.map_zero, zero_comp, smul_zero]
    · rw [mapBifunctor.d₂_eq_zero' _ _ _ _ _ h₁ _ h₂, comp_zero]
      trans 0 + 0
      · simp
      · congr 1
        · by_cases h₃ : c₂.Rel i₂ (c₂.next i₂)
          · rw [d₂_eq _ _ _ _ _ _ _ _ _ h₃, ιOrZero_eq_zero, comp_zero, smul_zero]
            intro h₄
            apply h₂
            rw [← h₄]
            dsimp [ComplexShape.r]
            rw [ComplexShape.assoc c₁ c₂ c₃ c₁₂ c₂₃ c₄, ComplexShape.next_π₁ c₃ c₂₃ h₃ i₃]
          · rw [d₂_eq_zero _ _ _ _ _ _ _ _ _ _ _ _ h₃]
        · by_cases h₃ : c₃.Rel i₃ (c₃.next i₃)
          · rw [d₃_eq _ _ _ _ _ _ _ _ _ _ h₃, ιOrZero_eq_zero, comp_zero, smul_zero]
            intro h₄
            apply h₂
            rw [← h₄]
            dsimp [ComplexShape.r]
            rw [ComplexShape.assoc c₁ c₂ c₃ c₁₂ c₂₃ c₄, ComplexShape.next_π₂ c₂ c₂₃ i₂ h₃]
          · rw [d₃_eq_zero _ _ _ _ _ _ _ _ _ _ _ _ h₃]
  · rw [mapBifunctor.d₂_eq_zero _ _ _ _ _ _ _ h₁, comp_zero]
    trans 0 + 0
    · simp only [add_zero]
    · congr 1
      · rw [d₂_eq_zero]
        intro h₂
        apply h₁
        simpa only [← ComplexShape.next_π₁ c₃ c₂₃ h₂ i₃]
          using ComplexShape.rel_π₁ c₃ c₂₃ h₂ i₃
      · rw [d₃_eq_zero]
        intro h₂
        apply h₁
        simpa only [i₂₃, ComplexShape.next_π₂ c₂ c₂₃ i₂ h₂]
          using ComplexShape.rel_π₂ c₂ c₂₃ i₂ h₂

end mapBifunctor₂₃

variable [DecidableEq ι₁₂] [DecidableEq ι₂₃]
  [HasMapBifunctor (mapBifunctor K₁ K₂ F₁₂ c₁₂) K₃ G c₄]
  [HasMapBifunctor K₁ (mapBifunctor K₂ K₃ G₂₃ c₂₃) F c₄]
  [HasGoodTrifunctor₁₂Obj F₁₂ G K₁ K₂ K₃ c₁₂ c₄]
  [HasGoodTrifunctor₂₃Obj F G₂₃ K₁ K₂ K₃ c₁₂ c₂₃ c₄]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantaa67fd4fc32ac284f4509b85b66a2e417c61b97b7f97bcdbe886caccb14a0fbc.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fe480810a48ceb2e29311e442e53be568228752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
