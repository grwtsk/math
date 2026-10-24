# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinPartOrd.Variant651e99e4a557af3955c3c3fc3d82480be5a0b6cfeaaf24a40cadb1ef8aba6221

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82ee4344b813a5ce3c2d44cc2d365596ca06437d` · SHA-256 `b69037dc048b75cb3887219fb467de98b380b2a73966fe7bf4953d59c980b385`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinPartOrd.Variante4dbfd8a5dfb0ad92ef6bec47c4e6f2fcc68c0228b6d5d557a97a291142015e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4dbfd8a5dfb0ad92ef6bec47c4e6f2fcc68c0228b6d5d557a97a291142015e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FinPartOrd.Variante4dbfd8a5dfb0ad92ef6bec47c4e6f2fcc68c0228b6d5d557a97a291142015e8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e4dbfd8a5dfb0ad92ef6bec47c4e6f2fcc68c0228b6d5d557a97a291142015e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/FinPartOrd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.CategoryTheory.FintypeCat
public import Mathlib.Order.Category.PartOrd

/-!
# The category of finite partial orders

This defines `FinPartOrd`, the category of finite partial orders.

Note: `FinPartOrd` is *not* a subcategory of `BddOrd` because finite orders are not necessarily
bounded.

## TODO

`FinPartOrd` is equivalent to a small category.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinPartOrd.Variante4dbfd8a5dfb0ad92ef6bec47c4e6f2fcc68c0228b6d5d557a97a291142015e8

@[expose] public section


universe u v

open CategoryTheory


/-- The category of finite partial orders with monotone functions. -/
structure FinPartOrd extends PartOrd where
  [isFintype : Fintype toPartOrd]

namespace FinPartOrd

instance : CoeSort FinPartOrd Type* :=
  ⟨fun X => X.toPartOrd⟩

instance (X : FinPartOrd) : PartialOrder X :=
  X.toPartOrd.str

attribute [instance] FinPartOrd.isFintype

/-- Construct a bundled `FinPartOrd` from `PartialOrder` + `Fintype`. -/
abbrev of (α : Type*) [PartialOrder α] [Fintype α] : FinPartOrd where
  carrier := α

open Lean.PrettyPrinter.Delaborator in
/-- This prints `FinPartOrd.of X` as `↧X`. -/
@[app_delab FinPartOrd.of]
meta def delabOf : Delab := CategoryTheory.delabOf

instance : Inhabited FinPartOrd :=
  ⟨of PUnit⟩

instance largeCategory : LargeCategory FinPartOrd :=
  inferInstanceAs <| Category (InducedCategory _ toPartOrd)

instance concreteCategory : ConcreteCategory FinPartOrd (· →o ·) :=
  inferInstanceAs <| ConcreteCategory (InducedCategory _ toPartOrd) _

instance hasForgetToPartOrd : HasForget₂ FinPartOrd PartOrd :=
  inferInstanceAs <| HasForget₂ (InducedCategory _ toPartOrd) _

instance hasForgetToFintype : HasForget₂ FinPartOrd FintypeCat where
  forget₂.obj X := ↧X
  forget₂.map f := FintypeCat.homMk f.hom

/-- Typecheck a `OrderHom` as a morphism in `FinPartOrd`. -/
abbrev ofHom {X Y : Type u} [PartialOrder X] [Fintype X] [PartialOrder Y] [Fintype Y] (f : X →o Y) :
    of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := FinPartOrd) f

@[simp]
lemma hom_hom_id {X : FinPartOrd} : (𝟙 X : X ⟶ X).hom.hom = OrderHom.id := rfl

/- Provided for rewriting. -/
lemma id_apply (X : FinPartOrd) (x : X) :
    (𝟙 X : X ⟶ X) x = x := by simp

@[simp]
lemma hom_hom_comp {X Y Z : FinPartOrd} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom.hom = g.hom.hom.comp f.hom.hom := rfl

/- Provided for rewriting. -/
lemma comp_apply {X Y Z : FinPartOrd} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g) x = g (f x) := by simp

@[ext]
lemma hom_ext {X Y : FinPartOrd} {f g : X ⟶ Y} (hf : f.hom.hom = g.hom.hom) : f = g :=
  InducedCategory.hom_ext (ConcreteCategory.ext hf)

@[simp]
lemma hom_hom_ofHom {X Y : Type u} [PartialOrder X] [Fintype X] [PartialOrder Y] [Fintype Y]
    (f : X →o Y) :
  (ofHom f).hom.hom = f := rfl

@[simp]
lemma ofHom_hom_hom {X Y : FinPartOrd} (f : X ⟶ Y) :
    ofHom f.hom.hom = f := rfl

/-- Constructs an isomorphism of finite partial orders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : FinPartOrd.{u}} (e : α ≃o β) : α ≅ β where
  hom := ofHom e
  inv := ofHom e.symm

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : FinPartOrd ⥤ FinPartOrd where
  obj X := of Xᵒᵈ
  map f := ofHom f.hom.hom.dual

/-- The equivalence between `FinPartOrd` and itself induced by `OrderDual` both ways. -/
@[simps]
def dualEquiv : FinPartOrd ≌ FinPartOrd where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end FinPartOrd

theorem FinPartOrd_dual_comp_forget_to_partOrd :
    FinPartOrd.dual ⋙ forget₂ FinPartOrd PartOrd =
      forget₂ FinPartOrd PartOrd ⋙ PartOrd.dual := rfl
```
