# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cone.Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d58503898a0005754549ae145c150f1f304245b6` · SHA-256 `a282a9f41531345b21aa58f5d6aeefc5169c187ab8494eb8f073d8c0a630767e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaFromOver.Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CommaFromOver.Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/WithTerminal/Cone.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Moisés Herradón Cueto. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moisés Herradón Cueto
-/
import Mathlib.CategoryTheory.Comma.Over.Basic
import Mathlib.CategoryTheory.WithTerminal.Basic

/-!
# Relations between `Cone`, `WithTerminal` and `Over`

Given categories `C` and `J`, an object `X : C` and a functor `K : J ⥤ Over X`,
it has an obvious lift `liftFromOver K : WithTerminal J ⥤ C`, namely, send the terminal
object to `X`. These two functors have equivalent categories of cones (`coneEquiv`).
As a corollary, the limit of `K` is the limit of `liftFromOver K`, and viceversa.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaFromOver.Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098

open CategoryTheory Limits

universe w w' v₁ v₂ u₁ u₂
variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]
variable {J : Type w} [Category.{w'} J]

namespace CategoryTheory.WithTerminal
variable {X : C} {K : J ⥤ Over X} {F : C ⥤ D} {t : Cone K}

/-- The category of functors `J ⥤ Over X` can be seen as part of a comma category,
namely the comma category constructed from the identity of the category of functors
`J ⥤ C` and the functor that maps `X : C` to the constant functor `J ⥤ C`.

Given a functor `K : J ⥤ Over X`, it is mapped to a natural transformation from the
obvious functor `J ⥤ C` to the constant functor `X`. -/
@[simps]
def commaFromOver : (J ⥤ Over X) ⥤ Comma (𝟭 (J ⥤ C)) (Functor.const J) where
  obj K := {
    left := K ⋙ Over.forget X
    right := X
    hom.app a := (K.obj a).hom
  }
  map f := {
    left := whiskerRight f (Over.forget X)
    right := 𝟙 X
  }

/-- For any functor `K : J ⥤ Over X`, there is a canonical extension
`WithTerminal J ⥤ C`, that sends `star` to `X`. -/
@[simps!]
def liftFromOver : (J ⥤ Over X) ⥤ WithTerminal J ⥤ C := commaFromOver ⋙ equivComma.inverse

/-- The extension of a functor to over categories behaves well with compositions. -/
@[simps]
def liftFromOverComp : liftFromOver.obj (K ⋙ Over.post F) ≅ liftFromOver.obj K ⋙ F where
  hom.app | star | of a => 𝟙 _
  inv.app | star | of a => 𝟙 _

/-- A cone of a functor `K : J ⥤ Over X` consists of an object of `Over X`, together
with morphisms. This same object is a cone of the extended functor
`liftFromOver.obj K : WithTerminal J ⥤ C`. -/
@[simps]
private def coneLift : Cone K ⥤ Cone (liftFromOver.obj K) where
  obj t := {
    pt := t.pt.left
    π.app
    | of a => (t.π.app a).left
    | star => t.pt.hom
    π.naturality
    | star, star, _
    | of a, star, _ => by aesop
    | of a, of b, f => by simp [← Comma.comp_left]
  }
  map {t₁ t₂} f := {
    hom := f.hom.left
    w
    | star => by aesop_cat
    | of a => by simp [← Comma.comp_left]
  }

/-- This is the inverse of the previous construction: a cone of an extended functor
`liftFromOver.obj K : WithTerminal J ⥤ C` consists of an object of `C`, together
with morphisms. This same object is a cone of the original functor `K : J ⥤ Over X`. -/
@[simps]
private def coneBack : Cone (liftFromOver.obj K) ⥤ Cone K where
  obj t := {
    pt := .mk (t.π.app star)
    π.app a := {
      left := t.π.app (of a)
      right := 𝟙 _
      w := by simpa using t.w (homFrom a)
    }
    π.naturality a b f := by ext; simpa using t.π.naturality (incl.map f)
  }
  map {t₁ t₂ f} := {
    hom := Over.homMk f.hom
  }

/-- Given a functor `K : J ⥤ Over X` and its extension `liftFromOver K : WithTerminal J ⥤ C`,
there is an obvious equivalence between cones of these two functors.
A cone of `K` is an object of `Over X`, so it has the form `t ⟶ X`.
Equivalently, a cone of `WithTerminal K` is an object `t : C`,
and we can recover the structure morphism as `π.app X : t ⟶ X`. -/
@[simps! functor_obj_pt functor_map_hom inverse_obj_pt_left inverse_obj_pt_right_as
  inverse_obj_pt_hom inverse_obj_π_app_left inverse_map_hom_left unitIso_hom_app_hom_left
  unitIso_inv_app_hom_left counitIso_hom_app_hom counitIso_inv_app_hom]
def coneEquiv : Cone K ≌ Cone (liftFromOver.obj K) where
  functor := coneLift
  inverse := coneBack
  unitIso := .refl _
  counitIso := NatIso.ofComponents fun t ↦ Cones.ext <| .refl _

@[simp]
lemma coneEquiv_functor_obj_π_app_star : (coneEquiv.functor.obj t).π.app star = t.pt.hom := rfl

@[simp]
lemma coneEquiv_functor_obj_π_app_of (Y : J) :
    (coneEquiv.functor.obj t).π.app (of Y) = (t.π.app Y).left := rfl

/-- A cone `t` of `K : J ⥤ Over X` is a limit if and only if the corresponding cone
`coneLift t` of `liftFromOver.obj K : WithTerminal K ⥤ C` is a limit. -/
@[simps!]
def isLimitEquiv : IsLimit (coneEquiv.functor.obj t) ≃ IsLimit t := IsLimit.ofConeEquiv coneEquiv

end WithTerminal

namespace WithInitial
variable {X : C} {K : J ⥤ Under X} {F : C ⥤ D} {t : Cocone K}

/-- The category of functors `J ⥤ Under X` can be seen as part of a comma category,
namely the comma category constructed from the identity of the category of functors
`J ⥤ C` and the functor that maps `X : C` to the constant functor `J ⥤ C`.

Given a functor `K : J ⥤ Under X`, it is mapped to a natural transformation to the
obvious functor `J ⥤ C` from the constant functor `X`. -/
@[simps]
def commaFromUnder : (J ⥤ Under X) ⥤ Comma (Functor.const J) (𝟭 (J ⥤ C)) where
  obj K := {
    left := X
    right := K ⋙ Under.forget X
    hom.app a := (K.obj a).hom
  }
  map f := {
    left := 𝟙 X
    right := whiskerRight f (Under.forget X)
  }

/-- For any functor `K : J ⥤ Under X`, there is a canonical extension
`WithInitial J ⥤ C`, that sends `star` to `X`. -/
@[simps!]
def liftFromUnder : (J ⥤ Under X) ⥤ WithInitial J ⥤ C := commaFromUnder ⋙ equivComma.inverse

/-- The extension of a functor to under categories behaves well with compositions. -/
@[simps]
def liftFromUnderComp : liftFromUnder.obj (K ⋙ Under.post F) ≅ liftFromUnder.obj K ⋙ F where
  hom.app | star | of a => 𝟙 _
  inv.app | star | of a => 𝟙 _

/-- A cocone of a functor `K : J ⥤ Under X` consists of an object of `Under X`, together
with morphisms. This same object is a cocone of the extended functor
`liftFromUnder.obj K : WithInitial J ⥤ C`. -/
@[simps]
private def coconeLift : Cocone K ⥤ Cocone (liftFromUnder.obj K) where
  obj t := {
    pt := t.pt.right
    ι.app
    | of a => (t.ι.app a).right
    | star => t.pt.hom
    ι.naturality
    | star, star, _
    | star, of b, _ => by aesop
    | of a, of b, f => by simp [← Comma.comp_right]
  }
  map {t₁ t₂} f := {
    hom := f.hom.right
    w
    | star => by aesop_cat
    | of a => by simp [← Comma.comp_right]
  }

/-- This is the inverse of the previous construction: a cocone of an extended functor
`liftFromUnder.obj K : WithInitial J ⥤ C` consists of an object of `C`, together
with morphisms. This same object is a cocone of the original functor `K : J ⥤ Under X`. -/
@[simps]
private def coconeBack : Cocone (liftFromUnder.obj K) ⥤ Cocone K where
  obj t := {
    pt := .mk (t.ι.app star)
    ι.app a := {
      left := 𝟙 _
      right := t.ι.app (of a)
      w := by simpa using (t.w (homTo a)).symm
    }
    ι.naturality a b f := by ext; simpa using t.ι.naturality (incl.map f)
  }
  map {t₁ t₂ f} := {
    hom := Under.homMk f.hom
  }

/-- Given a functor `K : J ⥤ Under X` and its extension `liftFromUnder K : WithInitial J ⥤ C`,
there is an obvious equivalence between cocones of these two functors.
A cocone of `K` is an object of `Under X`, so it has the form `X ⟶ t`.
Equivalently, a cocone of `WithInitial K` is an object `t : C`,
and we can recover the structure morphism as `ι.app X : X ⟶ t`. -/
@[simps! functor_obj_pt functor_map_hom inverse_obj_pt_right inverse_obj_pt_left_as
  inverse_obj_pt_hom inverse_obj_ι_app_right inverse_map_hom_right unitIso_hom_app_hom_right
  unitIso_inv_app_hom_right counitIso_hom_app_hom counitIso_inv_app_hom]
def coconeEquiv : Cocone K ≌ Cocone (liftFromUnder.obj K) where
  functor := coconeLift
  inverse := coconeBack
  unitIso := .refl _
  counitIso := NatIso.ofComponents fun t ↦ Cocones.ext <| .refl _

@[simp]
lemma coconeEquiv_functor_obj_ι_app_star : (coconeEquiv.functor.obj t).ι.app star = t.pt.hom := rfl

@[simp]
lemma coconeEquiv_functor_obj_ι_app_of (Y : J) :
   (coconeEquiv.functor.obj t).ι.app (of Y) = (t.ι.app Y).right := rfl

/-- A cocone `t` of `K : J ⥤ Under X` is a colimit if and only if the corresponding cocone
`coconeLift t` of `liftFromUnder.obj K : WithInitial K ⥤ C` is a colimit. -/
@[simps!]
def isColimitEquiv : IsColimit (coconeEquiv.functor.obj t) ≃ IsColimit t :=
  IsColimit.ofCoconeEquiv coconeEquiv

end CategoryTheory.WithInitial
```
