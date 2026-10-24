# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinOrdCat.Variant84729edcf697319b641b9f62f0f46e9c0fb6d7371df58a92508ea74da1a45787

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72eda25c6e0cd0b5c2c3e15f019b6d6ecd5d6b20` · SHA-256 `8db4995f6e1154ced999e495231d4e0989a7e4f24ed44e0abdb791c961cb729d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinOrdCat.Variant8197c357c43943a6ba5d6e45fb0f8e9cc631b064d91aa9916a1e34f4654cc8fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8197c357c43943a6ba5d6e45fb0f8e9cc631b064d91aa9916a1e34f4654cc8fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LinOrdCat.Variant8197c357c43943a6ba5d6e45fb0f8e9cc631b064d91aa9916a1e34f4654cc8fe","mathematical_subject":"Algebra.OrderTheory","original_sha256":"8197c357c43943a6ba5d6e45fb0f8e9cc631b064d91aa9916a1e34f4654cc8fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/LinOrdCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Order.Category.LatCat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinOrdCat.Variant8197c357c43943a6ba5d6e45fb0f8e9cc631b064d91aa9916a1e34f4654cc8fe

#align_import order.category.LinOrd from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# Category of linear orders

This defines `LinOrdCat`, the category of linear orders with monotone maps.
-/


open CategoryTheory

universe u

/-- The category of linear orders. -/
def LinOrdCat :=
  Bundled LinearOrder
set_option linter.uppercaseLean3 false in
#align LinOrd LinOrdCat

namespace LinOrdCat

instance : BundledHom.ParentProjection @LinearOrder.toPartialOrder :=
  ⟨⟩

deriving instance LargeCategory for LinOrdCat

-- Porting note: Probably see https://github.com/leanprover-community/mathlib4/issues/5020
instance : ConcreteCategory LinOrdCat :=
  BundledHom.concreteCategory _

instance : CoeSort LinOrdCat (Type*) :=
  Bundled.coeSort

/-- Construct a bundled `LinOrdCat` from the underlying type and typeclass. -/
def of (α : Type*) [LinearOrder α] : LinOrdCat :=
  Bundled.of α
set_option linter.uppercaseLean3 false in
#align LinOrd.of LinOrdCat.of

@[simp]
theorem coe_of (α : Type*) [LinearOrder α] : ↥(of α) = α :=
  rfl
set_option linter.uppercaseLean3 false in
#align LinOrd.coe_of LinOrdCat.coe_of

instance : Inhabited LinOrdCat :=
  ⟨of PUnit⟩

instance (α : LinOrdCat) : LinearOrder α :=
  α.str

instance hasForgetToLatCat : HasForget₂ LinOrdCat LatCat where
  forget₂ :=
    { obj := fun X => LatCat.of X
      map := fun {X Y} (f : OrderHom _ _) => OrderHomClass.toLatticeHom X Y f }
set_option linter.uppercaseLean3 false in
#align LinOrd.has_forget_to_Lat LinOrdCat.hasForgetToLatCat

/-- Constructs an equivalence between linear orders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : LinOrdCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : OrderHom _ _)
  inv := (e.symm : OrderHom _ _)
  hom_inv_id := by
    ext x
    exact e.symm_apply_apply x
  inv_hom_id := by
    ext x
    exact e.apply_symm_apply x
set_option linter.uppercaseLean3 false in
#align LinOrd.iso.mk LinOrdCat.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : LinOrdCat ⥤ LinOrdCat where
  obj X := of Xᵒᵈ
  map := OrderHom.dual
set_option linter.uppercaseLean3 false in
#align LinOrd.dual LinOrdCat.dual

/-- The equivalence between `LinOrdCat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : LinOrdCat ≌ LinOrdCat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
set_option linter.uppercaseLean3 false in
#align LinOrd.dual_equiv LinOrdCat.dualEquiv

end LinOrdCat

theorem linOrdCat_dual_comp_forget_to_latCat :
    LinOrdCat.dual ⋙ forget₂ LinOrdCat LatCat = forget₂ LinOrdCat LatCat ⋙ LatCat.dual :=
  rfl
set_option linter.uppercaseLean3 false in
#align LinOrd_dual_comp_forget_to_Lat linOrdCat_dual_comp_forget_to_latCat
```
