# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreordCat.Variant888705dd17f2c0764f49d20134ff47d6f5efc0cb52b6d4cc6b7f8bd683465fe0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4b2053b9e32c529b7b3308dbb9550eb3f0a072b` · SHA-256 `94e45f21364a64026b4bfcfc804eb8eb6b711b75339f3189e2fc923d481cdc5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreordCat.Variante9b0dbb537e98e71c8d5ed96f3f7222482362e8b6df205e073382e0be3958497","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9b0dbb537e98e71c8d5ed96f3f7222482362e8b6df205e073382e0be3958497","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreordCat.Variante9b0dbb537e98e71c8d5ed96f3f7222482362e8b6df205e073382e0be3958497","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e9b0dbb537e98e71c8d5ed96f3f7222482362e8b6df205e073382e0be3958497","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/PreordCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.ConcreteCategory.BundledHom
import Mathlib.Order.Hom.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreordCat.Variante9b0dbb537e98e71c8d5ed96f3f7222482362e8b6df205e073382e0be3958497

#align_import order.category.Preord from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# Category of preorders

This defines `PreordCat`, the category of preorders with monotone maps.
-/


universe u

open CategoryTheory

/-- The category of preorders. -/
def PreordCat :=
  Bundled Preorder
set_option linter.uppercaseLean3 false in
#align Preord PreordCat

namespace PreordCat

instance : BundledHom @OrderHom where
  toFun := @OrderHom.toFun
  id := @OrderHom.id
  comp := @OrderHom.comp
  hom_ext := @OrderHom.ext

deriving instance LargeCategory for PreordCat

-- Porting note: probably see https://github.com/leanprover-community/mathlib4/issues/5020
instance : ConcreteCategory PreordCat :=
  BundledHom.concreteCategory _

instance : CoeSort PreordCat (Type*) :=
  Bundled.coeSort

/-- Construct a bundled PreordCat from the underlying type and typeclass. -/
def of (α : Type*) [Preorder α] : PreordCat :=
  Bundled.of α
set_option linter.uppercaseLean3 false in
#align Preord.of PreordCat.of

@[simp]
theorem coe_of (α : Type*) [Preorder α] : ↥(of α) = α :=
  rfl
set_option linter.uppercaseLean3 false in
#align Preord.coe_of PreordCat.coe_of

instance : Inhabited PreordCat :=
  ⟨of PUnit⟩

instance (α : PreordCat) : Preorder α :=
  α.str

/-- Constructs an equivalence between preorders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : PreordCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : OrderHom α β)
  inv := (e.symm : OrderHom β α)
  hom_inv_id := by
    ext x
    exact e.symm_apply_apply x
  inv_hom_id := by
    ext x
    exact e.apply_symm_apply x
set_option linter.uppercaseLean3 false in
#align Preord.iso.mk PreordCat.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : PreordCat ⥤ PreordCat where
  obj X := of Xᵒᵈ
  map := OrderHom.dual
set_option linter.uppercaseLean3 false in
#align Preord.dual PreordCat.dual

/-- The equivalence between `PreordCat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : PreordCat ≌ PreordCat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
set_option linter.uppercaseLean3 false in
#align Preord.dual_equiv PreordCat.dualEquiv

end PreordCat

/-- The embedding of `PreordCat` into `Cat`.
-/
@[simps]
def preordCatToCat : PreordCat.{u} ⥤ Cat where
  obj X := Cat.of X.1
  map f := f.monotone.functor
set_option linter.uppercaseLean3 false in
#align Preord_to_Cat preordCatToCat

instance : Faithful preordCatToCat.{u}
    where map_injective h := by ext x; exact Functor.congr_obj h x

instance : Full preordCatToCat.{u} where
  preimage {X Y} f := ⟨f.obj, @CategoryTheory.Functor.monotone X Y _ _ f⟩
```
