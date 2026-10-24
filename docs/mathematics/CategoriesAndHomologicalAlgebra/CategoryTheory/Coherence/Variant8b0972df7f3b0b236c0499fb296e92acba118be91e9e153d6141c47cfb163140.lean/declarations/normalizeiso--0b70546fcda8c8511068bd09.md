# normalizeIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:394454fae59c33de6af2d20a64277a05b98b1cf4a42bb83032d33ee830a5f045",
  "kind": "def",
  "lexical_name": "normalizeIso",
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
  "slug": "normalizeiso--0b70546fcda8c8511068bd09",
  "source": {
    "blob": "afba63f365e0d00c913d9f626c02bac6d7c329fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 239,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b70546fcda8c8511068bd098f404fd7e2b965dd1f949183db8e1467fff48c7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:394454fae59c33de6af2d20a64277a05b98b1cf4a42bb83032d33ee830a5f045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizeIso : tensorFunc C ≅ normalize' C :=
  NatIso.ofComponents (normalizeIsoAux C)
    (by -- porting note: the proof has been mostly rewritten
      rintro X Y f
      induction' f using Quotient.recOn with f; swap; rfl
      induction' f with _ X₁ X₂ X₃ _ _ _ _ _ _ _ _ _ _ _ _ h₁ h₂ X₁ X₂ Y₁ Y₂ f g h₁ h₂
      · simp only [mk_id, Functor.map_id, Category.comp_id, Category.id_comp]
      · ext n
        dsimp
        rw [mk_α_hom, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [comp_tensor_id, associator_conjugation, tensor_id,
          Category.comp_id]
        simp only [← Category.assoc]
        congr 4
        simp only [Category.assoc, ← cancel_epi (𝟙 (inclusionObj n.as) ⊗ (α_ X₁ X₂ X₃).inv),
          pentagon_inv_assoc (inclusionObj n.as) X₁ X₂ X₃,
          tensor_inv_hom_id_assoc, tensor_id, Category.id_comp, Iso.inv_hom_id,
          Category.comp_id]
      · ext n
        dsimp
        rw [mk_α_inv, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [Category.assoc, comp_tensor_id, tensor_id, Category.comp_id,
          pentagon_inv_assoc, ← associator_inv_naturality_assoc]
        rfl
      · ext n
        dsimp [Functor.comp]
        rw [mk_l_hom, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [triangle_assoc_comp_right_assoc, Category.assoc, Category.comp_id]
        rfl
      · ext n
        dsimp [Functor.comp]
        rw [mk_l_inv, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [triangle_assoc_comp_left_inv_assoc, inv_hom_id_tensor_assoc, tensor_id,
          Category.id_comp, Category.comp_id]
        rfl
      · ext n
        dsimp
        rw [mk_ρ_hom, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [← (Iso.inv_comp_eq _).2 (rightUnitor_tensor _ _), Category.assoc,
          ← rightUnitor_naturality, Category.comp_id]; rfl
      · ext n
        dsimp
        rw [mk_ρ_inv, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [← (Iso.eq_comp_inv _).1 (rightUnitor_tensor_inv _ _), rightUnitor_conjugation,
          Category.assoc, Iso.hom_inv_id_assoc, Iso.inv_hom_id_assoc, Iso.inv_hom_id,
          Discrete.functor, Category.comp_id, Function.comp]
      · rw [mk_comp, Functor.map_comp, Functor.map_comp, Category.assoc, h₂, reassoc_of% h₁]
      · ext ⟨n⟩
        replace h₁ := NatTrans.congr_app h₁ ⟨n⟩
        replace h₂ := NatTrans.congr_app h₂ ((Discrete.functor (normalizeObj X₁)).obj ⟨n⟩)
        have h₃ := (normalizeIsoAux _ Y₂).hom.naturality ((normalizeMapAux f).app ⟨n⟩)
        have h₄ : ∀ (X₃ Y₃ : N C) (φ : X₃ ⟶ Y₃), (Discrete.functor inclusionObj).map φ ⊗ 𝟙 Y₂ =
            (Discrete.functor fun n ↦ inclusionObj n ⊗ Y₂).map φ := by
          rintro ⟨X₃⟩ ⟨Y₃⟩ φ
          obtain rfl : X₃ = Y₃ := φ.1.1
          simp only [discrete_functor_map_eq_id, tensor_id]
          rfl
        rw [NatTrans.comp_app, NatTrans.comp_app] at h₁ h₂ ⊢
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight,
          Functor.comp, Discrete.natTrans] at h₁ h₂ h₃ ⊢
        rw [mk_tensor, associator_inv_naturality_assoc, ← tensor_comp_assoc, h₁,
          Category.assoc, Category.comp_id, ← @Category.id_comp (F C) _ _ _ (@Quotient.mk _ _ g),
          tensor_comp, Category.assoc, Category.assoc, Functor.map_comp]
        congr 2
        erw [← reassoc_of% h₂]
        rw [← h₃, ← Category.assoc, ← id_tensor_comp_tensor_id, h₄]
        rfl )
#align category_theory.free_monoidal_category.normalize_iso CategoryTheory.FreeMonoidalCategory.normalizeIso

/-- The isomorphism between an object and its normal form is natural. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afba63f365e0d00c913d9f626c02bac6d7c329fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
