-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypeToCatObjectsAdjHomEquiv.Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TypeToCatObjectsAdjHomEquiv.Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/Cat/Adjunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Nicolas Rolland. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolas Rolland
-/
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.ConnectedComponents

/-!
# Adjunctions related to Cat, the category of categories

The embedding `typeToCat: Type ⥤ Cat`, mapping a type to the corresponding discrete category, is
left adjoint to the functor `Cat.objects`, which maps a category to its set of objects.

Another functor `connectedComponents : Cat ⥤ Type` maps a category to the set of its connected
components and functors to functions between those sets.

## Notes
All this could be made with 2-functors

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypeToCatObjectsAdjHomEquiv.Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26

universe v u
namespace CategoryTheory.Cat

variable (X : Type u) (C : Cat)

private def typeToCatObjectsAdjHomEquiv : (typeToCat.obj X ⟶ C) ≃ (X ⟶ Cat.objects.obj C) where
  toFun f x := f.obj ⟨x⟩
  invFun := Discrete.functor
  left_inv F := Functor.ext (fun _ ↦ rfl) (fun ⟨_⟩ ⟨_⟩ f => by
    obtain rfl := Discrete.eq_of_hom f
    simp)
  right_inv _ := rfl

private def typeToCatObjectsAdjCounitApp : (Cat.objects ⋙ typeToCat).obj C ⥤ C where
  obj := Discrete.as
  map := eqToHom ∘ Discrete.eq_of_hom

/-- `typeToCat : Type ⥤ Cat` is left adjoint to `Cat.objects : Cat ⥤ Type` -/
def typeToCatObjectsAdj : typeToCat ⊣ Cat.objects :=
  Adjunction.mk' {
    homEquiv := typeToCatObjectsAdjHomEquiv
    unit := { app:= fun _  ↦ Discrete.mk }
    counit := {
      app := typeToCatObjectsAdjCounitApp
      naturality := fun _ _ _  ↦  Functor.hext (fun _ ↦ rfl)
        (by intro ⟨_⟩ ⟨_⟩ f
            obtain rfl := Discrete.eq_of_hom f
            aesop_cat ) } }

/-- The connected components functor -/
def connectedComponents : Cat.{v, u} ⥤ Type u where
  obj C := ConnectedComponents C
  map F := Functor.mapConnectedComponents F
  map_id _ := funext fun x ↦ (Quotient.exists_rep x).elim (fun _ h ↦ by subst h; rfl)
  map_comp _ _ := funext fun x ↦ (Quotient.exists_rep x).elim (fun _ h => by subst h; rfl)

/-- `typeToCat : Type ⥤ Cat` is right adjoint to `connectedComponents : Cat ⥤ Type` -/
def connectedComponentsTypeToCatAdj : connectedComponents ⊣ typeToCat :=
  Adjunction.mk' {
    homEquiv := fun C X ↦ ConnectedComponents.typeToCatHomEquiv C X
    unit :=
      { app:= fun C  ↦ ConnectedComponents.functorToDiscrete _ (𝟙 (connectedComponents.obj C)) }
    counit := {
        app := fun X => ConnectedComponents.liftFunctor _ (𝟙 typeToCat.obj X)
        naturality := fun _ _ _ =>
          funext (fun xcc => by
            obtain ⟨x,h⟩ := Quotient.exists_rep xcc
            aesop_cat) }
    homEquiv_counit := fun {C X G} => by
      funext cc
      obtain ⟨_, _⟩ := Quotient.exists_rep cc
      aesop_cat }

end CategoryTheory.Cat
