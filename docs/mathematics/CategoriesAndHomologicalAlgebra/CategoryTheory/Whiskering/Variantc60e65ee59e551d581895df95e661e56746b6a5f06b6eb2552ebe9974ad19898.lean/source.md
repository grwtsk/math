# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Whiskering.Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ae15f9f00badf247d7ce7e38e300a451e6adee8` · SHA-256 `3a599dffb471e3c7e143cbd3b365a615141fe98e533ed886e4851eb7fefb599a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MulticospanComp.Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"daa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MulticospanComp.Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"daa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Whiskering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Sites.Sheaf


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MulticospanComp.Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3

#align_import category_theory.sites.whiskering from "leanprover-community/mathlib"@"9f9015c645d85695581237cc761981036be8bd37"

/-!

In this file we construct the functor `Sheaf J A ⥤ Sheaf J B` between sheaf categories
obtained by composition with a functor `F : A ⥤ B`.

In order for the sheaf condition to be preserved, `F` must preserve the correct limits.
The lemma `Presheaf.IsSheaf.comp` says that composition with such an `F` indeed preserves the
sheaf condition.

The functor between sheaf categories is called `sheafCompose J F`.
Given a natural transformation `η : F ⟶ G`, we obtain a natural transformation
`sheafCompose J F ⟶ sheafCompose J G`, which we call `sheafCompose_map J η`.

-/


namespace CategoryTheory

open CategoryTheory.Limits

universe v₁ v₂ v₃ u₁ u₂ u₃

variable {C : Type u₁} [Category.{v₁} C]

variable {A : Type u₂} [Category.{v₂} A]

variable {B : Type u₃} [Category.{v₃} B]

variable {J : GrothendieckTopology C}

variable {U : C} (R : Presieve U)

variable (F G H : A ⥤ B) (η : F ⟶ G) (γ : G ⟶ H)

namespace GrothendieckTopology.Cover

variable (P : Cᵒᵖ ⥤ A) {X : C} (S : J.Cover X)

/-- The multicospan associated to a cover `S : J.Cover X` and a presheaf of the form `P ⋙ F`
is isomorphic to the composition of the multicospan associated to `S` and `P`,
composed with `F`. -/
def multicospanComp : (S.index (P ⋙ F)).multicospan ≅ (S.index P).multicospan ⋙ F :=
  NatIso.ofComponents
    (fun t =>
      match t with
      | WalkingMulticospan.left a => eqToIso rfl
      | WalkingMulticospan.right b => eqToIso rfl)
    (by
      rintro (a | b) (a | b) (f | f | f)
      all_goals aesop_cat)
#align category_theory.grothendieck_topology.cover.multicospan_comp CategoryTheory.GrothendieckTopology.Cover.multicospanComp

@[simp]
theorem multicospanComp_app_left (a) :
    (S.multicospanComp F P).app (WalkingMulticospan.left a) = eqToIso rfl :=
  rfl
#align category_theory.grothendieck_topology.cover.multicospan_comp_app_left CategoryTheory.GrothendieckTopology.Cover.multicospanComp_app_left

@[simp]
theorem multicospanComp_app_right (b) :
    (S.multicospanComp F P).app (WalkingMulticospan.right b) = eqToIso rfl :=
  rfl
#align category_theory.grothendieck_topology.cover.multicospan_comp_app_right CategoryTheory.GrothendieckTopology.Cover.multicospanComp_app_right

@[simp]
theorem multicospanComp_hom_app_left (a) :
    (S.multicospanComp F P).hom.app (WalkingMulticospan.left a) = eqToHom rfl :=
  rfl
#align category_theory.grothendieck_topology.cover.multicospan_comp_hom_app_left CategoryTheory.GrothendieckTopology.Cover.multicospanComp_hom_app_left

@[simp]
theorem multicospanComp_hom_app_right (b) :
    (S.multicospanComp F P).hom.app (WalkingMulticospan.right b) = eqToHom rfl :=
  rfl
#align category_theory.grothendieck_topology.cover.multicospan_comp_hom_app_right CategoryTheory.GrothendieckTopology.Cover.multicospanComp_hom_app_right

@[simp]
theorem multicospanComp_hom_inv_left (P : Cᵒᵖ ⥤ A) {X : C} (S : J.Cover X) (a) :
    (S.multicospanComp F P).inv.app (WalkingMulticospan.left a) = eqToHom rfl :=
  rfl
#align category_theory.grothendieck_topology.cover.multicospan_comp_hom_inv_left CategoryTheory.GrothendieckTopology.Cover.multicospanComp_hom_inv_left

@[simp]
theorem multicospanComp_hom_inv_right (P : Cᵒᵖ ⥤ A) {X : C} (S : J.Cover X) (b) :
    (S.multicospanComp F P).inv.app (WalkingMulticospan.right b) = eqToHom rfl :=
  rfl
#align category_theory.grothendieck_topology.cover.multicospan_comp_hom_inv_right CategoryTheory.GrothendieckTopology.Cover.multicospanComp_hom_inv_right

/-- Mapping the multifork associated to a cover `S : J.Cover X` and a presheaf `P` with
respect to a functor `F` is isomorphic (upto a natural isomorphism of the underlying functors)
to the multifork associated to `S` and `P ⋙ F`. -/
def mapMultifork :
    F.mapCone (S.multifork P) ≅
      (Limits.Cones.postcompose (S.multicospanComp F P).hom).obj (S.multifork (P ⋙ F)) :=
  Cones.ext (eqToIso rfl)
    (by
      rintro (a | b)
      · dsimp
        erw [Category.id_comp, multicospanComp_hom_app_left, eqToHom_refl, Category.comp_id]
      · dsimp
        erw [Functor.map_comp, Category.assoc, Category.id_comp,
          multicospanComp_hom_app_right, eqToHom_refl, Category.comp_id]
        rfl)
#align category_theory.grothendieck_topology.cover.map_multifork CategoryTheory.GrothendieckTopology.Cover.mapMultifork

end GrothendieckTopology.Cover

variable [∀ (X : C) (S : J.Cover X) (P : Cᵒᵖ ⥤ A), PreservesLimit (S.index P).multicospan F]
variable [∀ (X : C) (S : J.Cover X) (P : Cᵒᵖ ⥤ A), PreservesLimit (S.index P).multicospan G]
variable [∀ (X : C) (S : J.Cover X) (P : Cᵒᵖ ⥤ A), PreservesLimit (S.index P).multicospan H]

theorem Presheaf.IsSheaf.comp {P : Cᵒᵖ ⥤ A} (hP : Presheaf.IsSheaf J P) :
    Presheaf.IsSheaf J (P ⋙ F) := by
  rw [Presheaf.isSheaf_iff_multifork] at hP ⊢
  intro X S
  obtain ⟨h⟩ := hP X S
  replace h := isLimitOfPreserves F h
  replace h := Limits.IsLimit.ofIsoLimit h (S.mapMultifork F P)
  exact ⟨Limits.IsLimit.postcomposeHomEquiv (S.multicospanComp F P) _ h⟩
#align category_theory.presheaf.is_sheaf.comp CategoryTheory.Presheaf.IsSheaf.comp

variable (J)

/-- Composing a sheaf with a functor preserving the appropriate limits yields a functor
between sheaf categories. -/
@[simps]
def sheafCompose : Sheaf J A ⥤ Sheaf J B where
  obj G := ⟨G.val ⋙ F, Presheaf.IsSheaf.comp _ G.2⟩
  map η := ⟨whiskerRight η.val _⟩
  map_id _ := Sheaf.Hom.ext _ _ <| whiskerRight_id _
  map_comp _ _ := Sheaf.Hom.ext _ _ <| whiskerRight_comp _ _ _
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf_compose CategoryTheory.sheafCompose

variable {F G}

/--
If `η : F ⟶ G` is a natural transformation then we obtain a morphism of functors
`sheafCompose J F ⟶ sheafCompose J G` by whiskering with `η` on the level of presheaves.
-/
def sheafCompose_map : sheafCompose J F ⟶ sheafCompose J G where
  app := fun X => .mk <| whiskerLeft _ η

@[simp]
lemma sheafCompose_id : sheafCompose_map (F := F) J (𝟙 _) = 𝟙 _ := rfl

@[simp]
lemma sheafCompose_comp :
  sheafCompose_map J (η ≫ γ) = sheafCompose_map J η ≫ sheafCompose_map J γ := rfl

end CategoryTheory
```
