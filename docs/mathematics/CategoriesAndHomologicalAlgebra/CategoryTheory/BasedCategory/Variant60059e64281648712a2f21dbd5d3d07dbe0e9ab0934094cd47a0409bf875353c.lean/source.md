# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BasedCategory.Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecc3582117dfb32a4edd54ad1f05de29daa57dbe` · SHA-256 `30540203cf2de8524dd559194969b34aa0be03dc3964bf7941092a005569c074`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BasedCategory.Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BasedCategory.Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/FiberedCategory/BasedCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Calle Sönne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau, Calle Sönne
-/

import Mathlib.CategoryTheory.FiberedCategory.HomLift
import Mathlib.CategoryTheory.Bicategory.Strict
import Mathlib.CategoryTheory.Functor.Category
import Mathlib.CategoryTheory.Functor.ReflectsIso.Basic

/-!
# The bicategory of based categories

In this file we define the type `BasedCategory 𝒮`, and give it the structure of a strict
bicategory. Given a category `𝒮`, we define the type `BasedCategory 𝒮` as the type of categories
`𝒳` equipped with a functor `𝒳.p : 𝒳 ⥤ 𝒮`.

We also define a type of functors between based categories `𝒳` and `𝒴`, which we call
`BasedFunctor 𝒳 𝒴` and denote as `𝒳 ⥤ᵇ 𝒴`. These are defined as functors between the underlying
categories `𝒳.obj` and `𝒴.obj` which commute with the projections to `𝒮`.

Natural transformations between based functors `F G : 𝒳 ⥤ᵇ 𝒴 ` are given by the structure
`BasedNatTrans F G`. These are defined as natural transformations `α` between the functors
underlying `F` and `G` such that `α.app a` lifts `𝟙 S` whenever `𝒳.p.obj a = S`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BasedCategory.Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c

universe v₅ u₅ v₄ u₄ v₃ u₃ v₂ u₂ v₁ u₁

namespace CategoryTheory

open Functor Category NatTrans IsHomLift

variable {𝒮 : Type u₁} [Category.{v₁} 𝒮]

/-- A based category over `𝒮` is a category `𝒳` together with a functor `p : 𝒳 ⥤ 𝒮`. -/
@[nolint checkUnivs]
structure BasedCategory (𝒮 : Type u₁) [Category.{v₁} 𝒮] where
  /-- The type of objects in a `BasedCategory` -/
  obj : Type u₂
  /-- The underlying category of a `BasedCategory`. -/
  category : Category.{v₂} obj := by infer_instance
  /-- The functor to the base. -/
  p : obj ⥤ 𝒮

instance (𝒳 : BasedCategory.{v₂, u₂} 𝒮) : Category 𝒳.obj := 𝒳.category

/-- The based category associated to a functor `p : 𝒳 ⥤ 𝒮`. -/
def BasedCategory.ofFunctor {𝒳 : Type u₂} [Category.{v₂} 𝒳] (p : 𝒳 ⥤ 𝒮) : BasedCategory 𝒮 where
  obj := 𝒳
  p := p

/-- A functor between based categories is a functor between the underlying categories that commutes
with the projections. -/
structure BasedFunctor (𝒳 : BasedCategory.{v₂, u₂} 𝒮) (𝒴 : BasedCategory.{v₃, u₃} 𝒮) extends
    𝒳.obj ⥤ 𝒴.obj where
  w : toFunctor ⋙ 𝒴.p = 𝒳.p := by aesop_cat

/-- Notation for `BasedFunctor`. -/
scoped infixr:26 " ⥤ᵇ " => BasedFunctor

namespace BasedFunctor

initialize_simps_projections BasedFunctor (+toFunctor, -obj, -map)

/-- The identity based functor. -/
@[simps]
def id (𝒳 : BasedCategory.{v₂, u₂} 𝒮) : 𝒳 ⥤ᵇ 𝒳 where
  toFunctor := 𝟭 𝒳.obj

variable {𝒳 : BasedCategory.{v₂, u₂} 𝒮} {𝒴 : BasedCategory.{v₃, u₃} 𝒮}

/-- Notation for the identity functor on a based category. -/
scoped notation "𝟭" => BasedFunctor.id

/-- The composition of two based functors. -/
@[simps]
def comp {𝒵 : BasedCategory.{v₄, u₄} 𝒮} (F : 𝒳 ⥤ᵇ 𝒴) (G : 𝒴 ⥤ᵇ 𝒵) : 𝒳 ⥤ᵇ 𝒵 where
  toFunctor := F.toFunctor ⋙ G.toFunctor
  w := by rw [Functor.assoc, G.w, F.w]

/-- Notation for composition of based functors. -/
scoped infixr:80 " ⋙ " => BasedFunctor.comp

@[simp]
lemma comp_id (F : 𝒳 ⥤ᵇ 𝒴) :  F ⋙ 𝟭 𝒴 = F :=
  rfl

@[simp]
lemma id_comp (F : 𝒳 ⥤ᵇ 𝒴) : 𝟭 𝒳 ⋙ F = F :=
  rfl

@[simp]
lemma comp_assoc {𝒵 : BasedCategory.{v₄, u₄} 𝒮} {𝒜 : BasedCategory.{v₅, u₅} 𝒮} (F : 𝒳 ⥤ᵇ 𝒴)
    (G : 𝒴 ⥤ᵇ 𝒵) (H : 𝒵 ⥤ᵇ 𝒜) : (F ⋙ G) ⋙ H = F ⋙ (G ⋙ H) :=
  rfl

@[simp]
lemma w_obj (F : 𝒳 ⥤ᵇ 𝒴) (a : 𝒳.obj) : 𝒴.p.obj (F.obj a) = 𝒳.p.obj a := by
  rw [← Functor.comp_obj, F.w]

instance (F : 𝒳 ⥤ᵇ 𝒴) (a : 𝒳.obj) : IsHomLift 𝒴.p (𝟙 (𝒳.p.obj a)) (𝟙 (F.obj a)) :=
  IsHomLift.id (w_obj F a)

section

variable (F : 𝒳 ⥤ᵇ 𝒴) {R S : 𝒮} {a b : 𝒳.obj} (f : R ⟶ S) (φ : a ⟶ b)

/-- For a based functor `F : 𝒳 ⟶ 𝒴`, then whenever an arrow `φ` in `𝒳` lifts some `f` in `𝒮`,
then `F(φ)` also lifts `f`. -/
instance preserves_isHomLift [IsHomLift 𝒳.p f φ] : IsHomLift 𝒴.p f (F.map φ) := by
  apply of_fac 𝒴.p f (F.map φ) (Eq.trans (F.w_obj a) (domain_eq 𝒳.p f φ))
    (Eq.trans (F.w_obj b) (codomain_eq 𝒳.p f φ))
  rw [← Functor.comp_map, congr_hom F.w]
  simpa using (fac 𝒳.p f φ)

/-- For a based functor `F : 𝒳 ⟶ 𝒴`, and an arrow `φ` in `𝒳`, then `φ` lifts an arrow `f` in `𝒮`
if `F(φ)` does. -/
lemma isHomLift_map [IsHomLift 𝒴.p f (F.map φ)] : IsHomLift 𝒳.p f φ := by
  apply of_fac 𝒳.p f φ  (F.w_obj a ▸ domain_eq 𝒴.p f (F.map φ))
    (F.w_obj b ▸ codomain_eq 𝒴.p f (F.map φ))
  simp [congr_hom F.w.symm, fac 𝒴.p f (F.map φ)]

lemma isHomLift_iff : IsHomLift 𝒴.p f (F.map φ) ↔ IsHomLift 𝒳.p f φ :=
  ⟨fun _ ↦ isHomLift_map F f φ, fun _ ↦ preserves_isHomLift F f φ⟩

end

end BasedFunctor


/-- A `BasedNatTrans` between two `BasedFunctor`s is a natural transformation `α` between the
underlying functors, such that for all `a : 𝒳`, `α.app a` lifts `𝟙 S` whenever `𝒳.p.obj a = S`. -/
structure BasedNatTrans {𝒳 : BasedCategory.{v₂, u₂} 𝒮} {𝒴 : BasedCategory.{v₃, u₃} 𝒮}
    (F G : 𝒳 ⥤ᵇ 𝒴) extends CategoryTheory.NatTrans F.toFunctor G.toFunctor where
  isHomLift' : ∀ (a : 𝒳.obj), IsHomLift 𝒴.p (𝟙 (𝒳.p.obj a)) (toNatTrans.app a) := by aesop_cat

namespace BasedNatTrans

open BasedFunctor

variable {𝒳 : BasedCategory.{v₂, u₂} 𝒮} {𝒴 : BasedCategory.{v₃, u₃} 𝒮}

initialize_simps_projections BasedNatTrans (+toNatTrans, -app)

section

variable {F G : 𝒳 ⥤ᵇ 𝒴} (α : BasedNatTrans F G)

@[ext]
lemma ext (β : BasedNatTrans F G) (h : α.toNatTrans = β.toNatTrans) : α = β := by
  cases α; subst h; rfl

instance app_isHomLift (a : 𝒳.obj) : IsHomLift 𝒴.p (𝟙 (𝒳.p.obj a)) (α.toNatTrans.app a) :=
  α.isHomLift' a

lemma isHomLift {a : 𝒳.obj} {S : 𝒮} (ha : 𝒳.p.obj a = S) :
    IsHomLift 𝒴.p (𝟙 S) (α.toNatTrans.app a) := by
  subst ha; infer_instance

end

/-- The identity natural transformation is a `BasedNatTrans`. -/
@[simps]
def id (F : 𝒳 ⥤ᵇ 𝒴) : BasedNatTrans F F where
  toNatTrans := CategoryTheory.NatTrans.id F.toFunctor
  isHomLift' := fun a ↦ of_fac 𝒴.p _ _ (w_obj F a) (w_obj F a) (by simp)

/-- Composition of `BasedNatTrans`, given by composition of the underlying natural
transformations. -/
@[simps]
def comp {F G H : 𝒳 ⥤ᵇ 𝒴} (α : BasedNatTrans F G) (β : BasedNatTrans G H) : BasedNatTrans F H where
  toNatTrans := CategoryTheory.NatTrans.vcomp α.toNatTrans β.toNatTrans
  isHomLift' := by
    intro a
    rw [CategoryTheory.NatTrans.vcomp_app]
    infer_instance

@[simps]
instance homCategory (𝒳 : BasedCategory.{v₂, u₂} 𝒮) (𝒴 : BasedCategory.{v₃, u₃} 𝒮) :
    Category (𝒳 ⥤ᵇ 𝒴) where
  Hom := BasedNatTrans
  id := BasedNatTrans.id
  comp := BasedNatTrans.comp

@[ext]
lemma homCategory.ext {F G : 𝒳 ⥤ᵇ 𝒴} (α β : F ⟶ G) (h : α.toNatTrans = β.toNatTrans) : α = β :=
  BasedNatTrans.ext α β h

/-- The forgetful functor from the category of based functors `𝒳 ⥤ᵇ 𝒴` to the category of
functors of underlying categories, `𝒳.obj ⥤ 𝒴.obj`. -/
@[simps]
def forgetful (𝒳 : BasedCategory.{v₂, u₂} 𝒮) (𝒴 : BasedCategory.{v₃, u₃} 𝒮) :
    (𝒳 ⥤ᵇ 𝒴) ⥤ (𝒳.obj ⥤ 𝒴.obj) where
  obj := fun F ↦ F.toFunctor
  map := fun α ↦ α.toNatTrans

instance : (forgetful 𝒳 𝒴).ReflectsIsomorphisms where
  reflects {F G} α _ := by
    constructor
    use {
      toNatTrans := inv ((forgetful 𝒳 𝒴).map α)
      isHomLift' := fun a ↦ by simp [lift_id_inv_isIso] }
    aesop

instance {F G : 𝒳 ⥤ᵇ 𝒴} (α : F ⟶ G) [IsIso α] : IsIso (X := F.toFunctor) α.toNatTrans := by
  rw [← forgetful_map]; infer_instance

end BasedNatTrans

namespace BasedNatIso

open BasedNatTrans

variable {𝒳 : BasedCategory.{v₂, u₂} 𝒮} {𝒴 : BasedCategory.{v₃, u₃} 𝒮}

/-- The identity natural transformation is a based natural isomorphism. -/
@[simps]
def id (F : 𝒳 ⥤ᵇ 𝒴) : F ≅ F where
  hom := 𝟙 F
  inv := 𝟙 F

variable {F G : 𝒳 ⥤ᵇ 𝒴}

/-- The inverse of a based natural transformation whose underlying natural transformation is an
isomorphism. -/
def mkNatIso (α : F.toFunctor ≅ G.toFunctor)
    (isHomLift' : ∀ a : 𝒳.obj, IsHomLift 𝒴.p (𝟙 (𝒳.p.obj a)) (α.hom.app a)) : F ≅ G where
  hom := { toNatTrans := α.hom }
  inv := {
    toNatTrans := α.inv
    isHomLift' := fun a ↦ by
      have : 𝒴.p.IsHomLift (𝟙 (𝒳.p.obj a)) (α.app a).hom := (Iso.app_hom α a) ▸ isHomLift' a
      rw [← Iso.app_inv]
      apply IsHomLift.lift_id_inv }

lemma isIso_of_toNatTrans_isIso (α : F ⟶ G) [IsIso (X := F.toFunctor) α.toNatTrans] : IsIso α :=
  have : IsIso ((forgetful 𝒳 𝒴).map α) := by simp_all
  Functor.ReflectsIsomorphisms.reflects (forgetful 𝒳 𝒴) α

end BasedNatIso

namespace BasedCategory

open BasedFunctor BasedNatTrans

section

variable {𝒳 : BasedCategory.{v₂, u₂} 𝒮} {𝒴 : BasedCategory.{v₃, u₃} 𝒮}

/-- Left-whiskering in the bicategory `BasedCategory` is given by whiskering the underlying functors
and natural transformations. -/
@[simps]
def whiskerLeft {𝒵 : BasedCategory.{v₄, u₄} 𝒮} (F : 𝒳 ⥤ᵇ 𝒴) {G H : 𝒴 ⥤ᵇ 𝒵} (α : G ⟶ H) :
    F ⋙ G ⟶ F ⋙ H where
  toNatTrans := CategoryTheory.whiskerLeft F.toFunctor α.toNatTrans
  isHomLift' := fun a ↦ α.isHomLift (F.w_obj a)

/-- Right-whiskering in the bicategory `BasedCategory` is given by whiskering the underlying
functors and natural transformations. -/
@[simps]
def whiskerRight {𝒵 : BasedCategory.{v₄, u₄} 𝒮} {F G : 𝒳 ⥤ᵇ 𝒴} (α : F ⟶ G) (H : 𝒴 ⥤ᵇ 𝒵) :
    F ⋙ H ⟶ G ⋙ H where
  toNatTrans := CategoryTheory.whiskerRight α.toNatTrans H.toFunctor
  isHomLift' := fun _ ↦ BasedFunctor.preserves_isHomLift _ _ _

end

/-- The category of based categories. -/
@[simps]
instance : Category (BasedCategory.{v₂, u₂} 𝒮) where
  Hom := BasedFunctor
  id := id
  comp := comp

/-- The bicategory of based categories. -/
instance bicategory : Bicategory (BasedCategory.{v₂, u₂} 𝒮) where
  Hom 𝒳 𝒴 :=  𝒳 ⥤ᵇ 𝒴
  id 𝒳 := 𝟭 𝒳
  comp F G := F ⋙ G
  homCategory 𝒳 𝒴 := homCategory 𝒳 𝒴
  whiskerLeft {_ _ _} F {_ _} α := whiskerLeft F α
  whiskerRight {_ _ _} _ _ α H := whiskerRight α H
  associator _ _ _ := BasedNatIso.id _
  leftUnitor {_ _} F := BasedNatIso.id F
  rightUnitor {_ _} F := BasedNatIso.id F

/-- The bicategory structure on `BasedCategory.{v₂, u₂} 𝒮` is strict. -/
instance : Bicategory.Strict (BasedCategory.{v₂, u₂} 𝒮) where

end BasedCategory

end CategoryTheory
```
