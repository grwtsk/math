-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftAdjointObjIsDefined.Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LeftAdjointObjIsDefined.Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Adjunction/PartialAdjoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Limits.HasLimits
import Mathlib.CategoryTheory.Yoneda
import Mathlib.Order.CompleteLattice.Basic

/-!
# Domain of definition of the partial left adjoint

Given a functor `F : D ⥤ C`, we define a functor
`F.partialLeftAdjoint : F.PartialLeftAdjointSource ⥤ D` which is
defined on the full subcategory of `C` consisting of those objects `X : C`
such that `F ⋙ coyoneda.obj (op X) : D ⥤ Type _` is corepresentable.
We have a natural bijection
`(F.partialLeftAdjoint.obj X ⟶ Y) ≃ (X.obj ⟶ F.obj Y)`
that is similar to what we would expect for the image of the object `X`
by the left adjoint of `F`, if such an adjoint existed.

Indeed, if the predicate `F.LeftAdjointObjIsDefined` which defines
the `F.PartialLeftAdjointSource` holds for all
objects `X : C`, then `F` has a left adjoint.

When colimits indexed by a category `J` exist in `D`, we show that
the predicate `F.LeftAdjointObjIsDefined` is stable under colimits indexed by `J`.

## TODO
* consider dualizing the results to right adjoints

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftAdjointObjIsDefined.Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

namespace Functor

open Category Opposite Limits

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D] (F : D ⥤ C)

/-- Given a functor `F : D ⥤ C`, this is a predicate on objects `X : C` corresponding
to the domain of definition of the (partial) left adjoint of `F`. -/
def leftAdjointObjIsDefined : ObjectProperty C :=
  fun X ↦ IsCorepresentable (F ⋙ coyoneda.obj (op X))

@[deprecated (since := "2025-03-05")] alias LeftAdjointObjIsDefined := leftAdjointObjIsDefined

lemma leftAdjointObjIsDefined_iff (X : C) :
    F.leftAdjointObjIsDefined X ↔ IsCorepresentable (F ⋙ coyoneda.obj (op X)) := by rfl

variable {F} in
lemma leftAdjointObjIsDefined_of_adjunction {G : C ⥤ D} (adj : G ⊣ F) (X : C) :
    F.leftAdjointObjIsDefined X :=
  (adj.corepresentableBy X).isCorepresentable

/-- The full subcategory where `F.partialLeftAdjoint` shall be defined. -/
abbrev PartialLeftAdjointSource := F.leftAdjointObjIsDefined.FullSubcategory

instance (X : F.PartialLeftAdjointSource) :
    IsCorepresentable (F ⋙ coyoneda.obj (op X.obj)) := X.property

/-- Given `F : D ⥤ C`, this is `F.partialLeftAdjoint` on objects: it sends
`X : C` such that `F.leftAdjointObjIsDefined X` holds to an object of `D`
which represents the functor `F ⋙ coyoneda.obj (op X.obj)`. -/
noncomputable def partialLeftAdjointObj (X : F.PartialLeftAdjointSource) : D :=
  (F ⋙ coyoneda.obj (op X.obj)).coreprX

/-- Given `F : D ⥤ C`, this is the canonical bijection
`(F.partialLeftAdjointObj X ⟶ Y) ≃ (X.obj ⟶ F.obj Y)`
for all `X : F.PartialLeftAdjointSource` and `Y : D`. -/
noncomputable def partialLeftAdjointHomEquiv {X : F.PartialLeftAdjointSource} {Y : D} :
    (F.partialLeftAdjointObj X ⟶ Y) ≃ (X.obj ⟶ F.obj Y) :=
  (F ⋙ coyoneda.obj (op X.obj)).corepresentableBy.homEquiv

lemma partialLeftAdjointHomEquiv_comp {X : F.PartialLeftAdjointSource} {Y Y' : D}
    (f : F.partialLeftAdjointObj X ⟶ Y) (g : Y ⟶ Y') :
    F.partialLeftAdjointHomEquiv (f ≫ g) =
      F.partialLeftAdjointHomEquiv f ≫ F.map g := by
  apply CorepresentableBy.homEquiv_comp

/-- Given `F : D ⥤ C`, this is `F.partialLeftAdjoint` on morphisms. -/
noncomputable def partialLeftAdjointMap {X Y : F.PartialLeftAdjointSource}
    (f : X ⟶ Y) : F.partialLeftAdjointObj X ⟶ F.partialLeftAdjointObj Y :=
    F.partialLeftAdjointHomEquiv.symm (f ≫ F.partialLeftAdjointHomEquiv (𝟙 _))

@[simp]
lemma partialLeftAdjointHomEquiv_map {X Y : F.PartialLeftAdjointSource}
    (f : X ⟶ Y) :
    F.partialLeftAdjointHomEquiv (F.partialLeftAdjointMap f) =
      by exact f ≫ F.partialLeftAdjointHomEquiv (𝟙 _) := by
  simp [partialLeftAdjointMap]

lemma partialLeftAdjointHomEquiv_map_comp {X X' : F.PartialLeftAdjointSource} {Y : D}
    (f : X ⟶ X') (g : F.partialLeftAdjointObj X' ⟶ Y) :
    F.partialLeftAdjointHomEquiv (F.partialLeftAdjointMap f ≫ g) =
      by exact f ≫ F.partialLeftAdjointHomEquiv g := by
  rw [partialLeftAdjointHomEquiv_comp, partialLeftAdjointHomEquiv_map, assoc,
    ← partialLeftAdjointHomEquiv_comp, id_comp]

/-- Given `F : D ⥤ C`, this is the partial adjoint functor `F.PartialLeftAdjointSource ⥤ D`. -/
@[simps]
noncomputable def partialLeftAdjoint : F.PartialLeftAdjointSource ⥤ D where
  obj := F.partialLeftAdjointObj
  map := F.partialLeftAdjointMap
  map_id X := by
    apply F.partialLeftAdjointHomEquiv.injective
    dsimp
    rw [partialLeftAdjointHomEquiv_map]
    erw [id_comp]
  map_comp {X Y Z} f g := by
    apply F.partialLeftAdjointHomEquiv.injective
    dsimp
    rw [partialLeftAdjointHomEquiv_map, partialLeftAdjointHomEquiv_comp,
      partialLeftAdjointHomEquiv_map, assoc]
    erw [assoc]
    rw [← F.partialLeftAdjointHomEquiv_comp, id_comp,
      partialLeftAdjointHomEquiv_map]

variable {F}

lemma isRightAdjoint_of_leftAdjointObjIsDefined_eq_top
    (h : F.leftAdjointObjIsDefined = ⊤) : F.IsRightAdjoint := by
  replace h : ∀ X, IsCorepresentable (F ⋙ coyoneda.obj (op X)) := fun X ↦ by
    simp only [← leftAdjointObjIsDefined_iff, h, Pi.top_apply, Prop.top_eq_true]
  exact (Adjunction.adjunctionOfEquivLeft
    (fun X Y ↦ (F ⋙ coyoneda.obj (op X)).corepresentableBy.homEquiv)
    (fun X Y Y' g f ↦ by apply CorepresentableBy.homEquiv_comp)).isRightAdjoint

variable (F) in
lemma isRightAdjoint_iff_leftAdjointObjIsDefined_eq_top :
    F.IsRightAdjoint ↔ F.leftAdjointObjIsDefined = ⊤ := by
  refine ⟨fun h ↦ ?_, isRightAdjoint_of_leftAdjointObjIsDefined_eq_top⟩
  ext X
  simpa only [Pi.top_apply, Prop.top_eq_true, iff_true]
    using leftAdjointObjIsDefined_of_adjunction (Adjunction.ofIsRightAdjoint F) X

/-- Auxiliary definition for `leftAdjointObjIsDefined_of_isColimit`. -/
noncomputable def corepresentableByCompCoyonedaObjOfIsColimit {J : Type*} [Category J]
    {R : J ⥤ F.PartialLeftAdjointSource}
    {c : Cocone (R ⋙ ObjectProperty.ι _)} (hc : IsColimit c)
    {c' : Cocone (R ⋙ F.partialLeftAdjoint)} (hc' : IsColimit c') :
    (F ⋙ coyoneda.obj (op c.pt)).CorepresentableBy c'.pt where
  homEquiv {Y} :=
    { toFun := fun f ↦ hc.desc (Cocone.mk _
        { app := fun j ↦ F.partialLeftAdjointHomEquiv (c'.ι.app j ≫ f)
          naturality := fun j j' φ ↦ by
            dsimp
            rw [comp_id, ← c'.w φ, ← partialLeftAdjointHomEquiv_map_comp, assoc]
            dsimp })
      invFun := fun g ↦ hc'.desc (Cocone.mk _
        { app := fun j ↦ F.partialLeftAdjointHomEquiv.symm (c.ι.app j ≫ g)
          naturality := fun j j' φ ↦ by
            apply F.partialLeftAdjointHomEquiv.injective
            have := c.w φ
            dsimp at this ⊢
            rw [comp_id, Equiv.apply_symm_apply, partialLeftAdjointHomEquiv_map_comp,
              Equiv.apply_symm_apply, reassoc_of% this] })
      left_inv := fun f ↦ hc'.hom_ext (fun j ↦ by simp)
      right_inv := fun g ↦ hc.hom_ext (fun j ↦ by simp) }
  homEquiv_comp {Y Y'} g f := hc.hom_ext (fun j ↦ by
    dsimp
    simp only [IsColimit.fac, IsColimit.fac_assoc, partialLeftAdjointHomEquiv_comp,
      F.map_comp, assoc] )

lemma leftAdjointObjIsDefined_of_isColimit {J : Type*} [Category J] {R : J ⥤ C} {c : Cocone R}
    (hc : IsColimit c) [HasColimitsOfShape J D]
    (h : ∀ (j : J), F.leftAdjointObjIsDefined (R.obj j)) :
    F.leftAdjointObjIsDefined c.pt :=
  (corepresentableByCompCoyonedaObjOfIsColimit
    (R := ObjectProperty.lift _ R h) hc (colimit.isColimit _)).isCorepresentable

lemma leftAdjointObjIsDefined_colimit {J : Type*} [Category J] (R : J ⥤ C)
    [HasColimit R] [HasColimitsOfShape J D]
    (h : ∀ (j : J), F.leftAdjointObjIsDefined (R.obj j)) :
    F.leftAdjointObjIsDefined (colimit R) :=
  leftAdjointObjIsDefined_of_isColimit (colimit.isColimit R) h

end Functor

end CategoryTheory
