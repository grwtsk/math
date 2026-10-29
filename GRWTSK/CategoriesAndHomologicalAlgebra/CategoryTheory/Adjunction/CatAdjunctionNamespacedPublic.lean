-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypeToCatObjectsAdjHomEquiv.Variant41fad14e90114151dbeb9be2f9598d46c747cdc945b85ab32ea64ce9a4bc083e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41fad14e90114151dbeb9be2f9598d46c747cdc945b85ab32ea64ce9a4bc083e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TypeToCatObjectsAdjHomEquiv.Variant41fad14e90114151dbeb9be2f9598d46c747cdc945b85ab32ea64ce9a4bc083e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"41fad14e90114151dbeb9be2f9598d46c747cdc945b85ab32ea64ce9a4bc083e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Category/Cat/Adjunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Nicolas Rolland. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolas Rolland
-/
module

public import Mathlib.CategoryTheory.Category.Cat
public import Mathlib.CategoryTheory.Adjunction.Basic
public import Mathlib.CategoryTheory.ConnectedComponents

/-!
# Adjunctions related to Cat, the category of categories

The embedding `typeToCat: Type ⥤ Cat`, mapping a type to the corresponding discrete category, is
left adjoint to the functor `Cat.objects`, which maps a category to its set of objects.

Another functor `connectedComponents : Cat ⥤ Type` maps a category to the set of its connected
components and functors to functions between those sets.

## Notes
All this could be made with 2-functors

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypeToCatObjectsAdjHomEquiv.Variant41fad14e90114151dbeb9be2f9598d46c747cdc945b85ab32ea64ce9a4bc083e

@[expose] public section

universe v u
namespace CategoryTheory.Cat

variable (X : Type u) (C : Cat)

set_option backward.privateInPublic true in
private def typeToCatObjectsAdjHomEquiv : (typeToCat.obj X ⟶ C) ≃ (X ⟶ Cat.objects.obj C) where
  toFun F := ↾fun x ↦ F.toFunctor.obj ⟨x⟩
  invFun f := (Discrete.functor f).toCatHom
  left_inv F := Hom.ext <| Functor.ext (fun _ ↦ rfl) (fun ⟨_⟩ ⟨_⟩ f => by
    obtain rfl := Discrete.eq_of_hom f
    simp)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.privateInPublic true in
private def typeToCatObjectsAdjCounitApp : (Cat.objects ⋙ typeToCat).obj C ⥤ C where
  obj := Discrete.as
  map := eqToHom ∘ Discrete.eq_of_hom

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- `typeToCat : Type ⥤ Cat` is left adjoint to `Cat.objects : Cat ⥤ Type` -/
def typeToCatObjectsAdj : typeToCat ⊣ Cat.objects :=
  Adjunction.mk' {
    homEquiv := typeToCatObjectsAdjHomEquiv
    unit := { app := fun _ ↦ ↾Discrete.mk }
    counit := {
      app C := (typeToCatObjectsAdjCounitApp C).toCatHom
      naturality := fun _ _ _ ↦ Hom.ext <| Functor.hext (fun _ ↦ rfl)
        (by intro ⟨_⟩ ⟨_⟩ f
            obtain rfl := Discrete.eq_of_hom f
            cat_disch) } }

/-- The connected components functor -/
def connectedComponents : Cat.{v, u} ⥤ Type u where
  obj C := ConnectedComponents C
  map F := ↾(Functor.mapConnectedComponents F.toFunctor)
  map_id _ := by ext x; simpa using (Quotient.exists_rep x).elim (fun _ h ↦ by subst h; rfl)
  map_comp _ _ := by ext x; simpa using (Quotient.exists_rep x).elim (fun _ h => by subst h; rfl)

/-- `typeToCat : Type ⥤ Cat` is right adjoint to `connectedComponents : Cat ⥤ Type` -/
def connectedComponentsTypeToCatAdj : connectedComponents.{u} ⊣ typeToCat.{u} :=
  Adjunction.mk' {
    homEquiv := fun C X ↦ by
      refine TypeCat.homEquiv.trans ?_
      exact (ConnectedComponents.typeToCatHomEquiv _ _).trans
        (Functor.equivCatHom _ _)
    unit :=
      { app := fun C ↦ Functor.toCatHom <|
          ConnectedComponents.functorToDiscrete _ (𝟙 (connectedComponents.obj C)) }
    counit := {
        app := fun X => ↾(ConnectedComponents.liftFunctor _
          (𝟙 typeToCat.obj X).toFunctor)
        naturality := fun _ _ _ => by
          ext xcc
          obtain ⟨x, h⟩ := Quotient.exists_rep xcc
          cat_disch }
    homEquiv_counit := fun {C X G} => by
      ext cc
      obtain ⟨_, _⟩ := Quotient.exists_rep cc
      cat_disch }

end CategoryTheory.Cat
