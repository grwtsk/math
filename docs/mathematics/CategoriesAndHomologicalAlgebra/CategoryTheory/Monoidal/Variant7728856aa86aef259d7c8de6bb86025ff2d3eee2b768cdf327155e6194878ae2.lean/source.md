# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d4347cb63825b7c527b95dbebc175edbec9c988` · SHA-256 `7becaf08288b776fa627a5adf8c2b4f1c0e1c032dbe5da81a674ac61e0dc8a70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftUnitorHomAppApply.Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LeftUnitorHomAppApply.Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialSet/Monoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Jack McKoen
-/
import Mathlib.AlgebraicTopology.SimplicialSet.Basic
import Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory
import Mathlib.CategoryTheory.Monoidal.Types.Basic

/-!
# The monoidal category structure on simplicial sets

This file defines an instance of chosen finite products
for the category `SSet`. It follows from the fact
the `SSet` if a category of functors to the category
of types and that the category of types have chosen
finite products. As a result, we obtain a monoidal
category structure on `SSet`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftUnitorHomAppApply.Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166

universe u

open Simplicial CategoryTheory MonoidalCategory

namespace SSet

noncomputable instance : CartesianMonoidalCategory SSet.{u} :=
  (inferInstance : CartesianMonoidalCategory (SimplexCategoryᵒᵖ ⥤ Type u))

@[simp]
lemma leftUnitor_hom_app_apply (K : SSet.{u}) {Δ : SimplexCategoryᵒᵖ} (x : (𝟙_ _ ⊗ K).obj Δ) :
    (λ_ K).hom.app Δ x = x.2 := rfl

@[simp]
lemma leftUnitor_inv_app_apply (K : SSet.{u}) {Δ : SimplexCategoryᵒᵖ} (x : K.obj Δ) :
    (λ_ K).inv.app Δ x = ⟨PUnit.unit, x⟩ := rfl

@[simp]
lemma rightUnitor_hom_app_apply (K : SSet.{u}) {Δ : SimplexCategoryᵒᵖ} (x : (K ⊗ 𝟙_ _).obj Δ) :
    (ρ_ K).hom.app Δ x = x.1 := rfl

@[simp]
lemma rightUnitor_inv_app_apply (K : SSet.{u}) {Δ : SimplexCategoryᵒᵖ} (x : K.obj Δ) :
    (ρ_ K).inv.app Δ x = ⟨x, PUnit.unit⟩ := rfl

@[simp]
lemma tensorHom_app_apply {K K' L L' : SSet.{u}} (f : K ⟶ K') (g : L ⟶ L')
    {Δ : SimplexCategoryᵒᵖ} (x : (K ⊗ L).obj Δ) :
    (f ⊗ g).app Δ x = ⟨f.app Δ x.1, g.app Δ x.2⟩ := rfl

@[simp]
lemma whiskerLeft_app_apply (K : SSet.{u}) {L L' : SSet.{u}} (g : L ⟶ L')
    {Δ : SimplexCategoryᵒᵖ} (x : (K ⊗ L).obj Δ) :
    (K ◁ g).app Δ x = ⟨x.1, g.app Δ x.2⟩ := rfl

@[simp]
lemma whiskerRight_app_apply {K K' : SSet.{u}} (f : K ⟶ K') (L : SSet.{u})
    {Δ : SimplexCategoryᵒᵖ} (x : (K ⊗ L).obj Δ) :
    (f ▷ L).app Δ x = ⟨f.app Δ x.1, x.2⟩ := rfl

@[simp]
lemma associator_hom_app_apply (K L M : SSet.{u}) {Δ : SimplexCategoryᵒᵖ}
    (x : ((K ⊗ L) ⊗ M).obj Δ) :
    (α_ K L M).hom.app Δ x = ⟨x.1.1, x.1.2, x.2⟩ := rfl

@[simp]
lemma associator_inv_app_apply (K L M : SSet.{u}) {Δ : SimplexCategoryᵒᵖ}
    (x : (K ⊗ L ⊗ M).obj Δ) :
    (α_ K L M).inv.app Δ x = ⟨⟨x.1, x.2.1⟩, x.2.2⟩ := rfl

/-- The bijection `(𝟙_ SSet ⟶ K) ≃ K _⦋0⦌`. -/
def unitHomEquiv (K : SSet.{u}) : (𝟙_ _ ⟶ K) ≃ K _⦋0⦌ where
  toFun φ := φ.app _ PUnit.unit
  invFun x :=
    { app := fun Δ _ => K.map (SimplexCategory.const Δ.unop ⦋0⦌ 0).op x
      naturality := fun Δ Δ' f => by
        ext ⟨⟩
        dsimp
        rw [← FunctorToTypes.map_comp_apply]
        rfl }
  left_inv φ := by
    ext Δ ⟨⟩
    dsimp
    rw [← FunctorToTypes.naturality]
    rfl
  right_inv x := by simp

end SSet
```
