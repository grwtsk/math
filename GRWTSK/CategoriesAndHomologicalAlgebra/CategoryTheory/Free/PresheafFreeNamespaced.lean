-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeObj.Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FreeObj.Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Presheaf/Free.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Joel Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf
import Mathlib.Algebra.Category.ModuleCat.Adjunctions

/-!
# The free presheaf of modules on a presheaf of sets

In this file, given a presheaf of rings `R` on a category `C`,
we construct the functor
`PresheafOfModules.free : (Cᵒᵖ ⥤ Type u) ⥤ PresheafOfModules.{u} R`
which sends a presheaf of types to the corresponding presheaf of free modules.
`PresheafOfModules.freeAdjunction` shows that this functor is the left
adjoint to the forget functor.

## Notes

This contribution was created as part of the AIM workshop
"Formalizing algebraic geometry" in June 2024.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeObj.Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e

universe u v₁ u₁

open CategoryTheory

namespace PresheafOfModules

variable {C : Type u₁} [Category.{v₁} C] (R : Cᵒᵖ ⥤ RingCat.{u})

variable {R} in
/-- Given a presheaf of types `F : Cᵒᵖ ⥤ Type u`, this is the presheaf
of modules over `R` which sends `X : Cᵒᵖ` to the free `R.obj X`-module on `F.obj X`. -/
@[simps]
noncomputable def freeObj (F : Cᵒᵖ ⥤ Type u) : PresheafOfModules.{u} R where
  obj X := (ModuleCat.free (R.obj X)).obj (F.obj X)
  map {X Y} f := ModuleCat.freeDesc (fun x ↦ ModuleCat.freeMk (F.map f x))
  map_id := by aesop

/-- The free presheaf of modules functor `(Cᵒᵖ ⥤ Type u) ⥤ PresheafOfModules.{u} R`. -/
@[simps]
noncomputable def free : (Cᵒᵖ ⥤ Type u) ⥤ PresheafOfModules.{u} R where
  obj := freeObj
  map {F G} φ :=
    { app := fun X ↦ (ModuleCat.free (R.obj X)).map (φ.app X)
      naturality := fun {X Y} f ↦ by
        dsimp
        ext x
        simp [FunctorToTypes.naturality] }

section

variable {R}

variable {F : Cᵒᵖ ⥤ Type u} {G : PresheafOfModules.{u} R}

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
/-- The morphism of presheaves of modules `freeObj F ⟶ G` corresponding to
a morphism `F ⟶ G.presheaf ⋙ forget _` of presheaves of types. -/
@[simps]
noncomputable def freeObjDesc (φ : F ⟶ G.presheaf ⋙ forget _) : freeObj F ⟶ G where
  app X := ModuleCat.freeDesc (φ.app X)
  naturality {X Y} f := by
    dsimp
    ext x
    simpa using NatTrans.naturality_apply φ f x

variable (F R) in
/-- The unit of `PresheafOfModules.freeAdjunction`. -/
@[simps]
noncomputable def freeAdjunctionUnit : F ⟶ (freeObj (R := R) F).presheaf ⋙ forget _ where
  app X x := ModuleCat.freeMk x
  naturality X Y f := by ext; simp [presheaf]

/-- The bijection `(freeObj F ⟶ G) ≃ (F ⟶ G.presheaf ⋙ forget _)` when
`F` is a presheaf of types and `G` a presheaf of modules. -/
noncomputable def freeHomEquiv : (freeObj F ⟶ G) ≃ (F ⟶ G.presheaf ⋙ forget _) where
  toFun ψ := freeAdjunctionUnit R F ≫ whiskerRight ((toPresheaf _).map ψ) _
  invFun φ := freeObjDesc φ
  left_inv ψ := by ext1 X; dsimp; ext x; simp [toPresheaf]
  right_inv φ := by ext; simp [toPresheaf]

lemma free_hom_ext {ψ ψ' : freeObj F ⟶ G}
    (h : freeAdjunctionUnit R F ≫ whiskerRight ((toPresheaf _).map ψ) _ =
      freeAdjunctionUnit R F ≫ whiskerRight ((toPresheaf _).map ψ') _ ) : ψ = ψ' :=
  freeHomEquiv.injective h

variable (R) in
/-- The free presheaf of modules functor is left adjoint to the forget functor
`PresheafOfModules.{u} R ⥤ Cᵒᵖ ⥤ Type u`. -/
noncomputable def freeAdjunction :
    free.{u} R ⊣ (toPresheaf R ⋙ (whiskeringRight _ _ _).obj (forget Ab)) :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ ↦ freeHomEquiv
      homEquiv_naturality_left_symm := fun {F₁ F₂ G} f g ↦
        free_hom_ext (by ext; simp [freeHomEquiv, toPresheaf])
      homEquiv_naturality_right := fun {F G₁ G₂} f g ↦ rfl }

variable (F G) in
@[simp]
lemma freeAdjunction_homEquiv : (freeAdjunction R).homEquiv F G = freeHomEquiv := by
  simp [freeAdjunction, Adjunction.mkOfHomEquiv_homEquiv]

variable (R F) in
@[simp]
lemma freeAdjunction_unit_app :
    (freeAdjunction R).unit.app F = freeAdjunctionUnit R F := rfl

end

end PresheafOfModules
