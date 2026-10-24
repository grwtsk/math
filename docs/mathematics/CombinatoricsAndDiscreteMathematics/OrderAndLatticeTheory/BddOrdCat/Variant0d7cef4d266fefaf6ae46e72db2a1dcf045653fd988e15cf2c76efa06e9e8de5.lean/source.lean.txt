-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddOrdCat.Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.BddOrdCat.Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1","mathematical_subject":"Algebra.OrderTheory","original_sha256":"1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/BddOrdCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.CategoryTheory.Category.Bipointed
import Mathlib.Order.Category.PartOrdCat
import Mathlib.Order.Hom.Bounded


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddOrdCat.Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1

#align_import order.category.BddOrd from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# The category of bounded orders

This defines `BddOrdCat`, the category of bounded orders.
-/

set_option linter.uppercaseLean3 false

universe u v

open CategoryTheory

/-- The category of bounded orders with monotone functions. -/
structure BddOrdCat where
  /-- The underlying object in the category of partial orders. -/
  toPartOrd : PartOrdCat
  [isBoundedOrder : BoundedOrder toPartOrd]
#align BddOrd BddOrdCat

namespace BddOrdCat

instance : CoeSort BddOrdCat (Type*) :=
  InducedCategory.hasCoeToSort toPartOrd

instance (X : BddOrdCat) : PartialOrder X :=
  X.toPartOrd.str

attribute [instance] BddOrdCat.isBoundedOrder

/-- Construct a bundled `BddOrdCat` from a `Fintype` `PartialOrder`. -/
def of (α : Type*) [PartialOrder α] [BoundedOrder α] : BddOrdCat :=
  -- Porting note: was ⟨⟨α⟩⟩, see https://github.com/leanprover-community/mathlib4/issues/4998
  ⟨{ α := α }⟩
#align BddOrd.of BddOrdCat.of

@[simp]
theorem coe_of (α : Type*) [PartialOrder α] [BoundedOrder α] : ↥(of α) = α :=
  rfl
#align BddOrd.coe_of BddOrdCat.coe_of

instance : Inhabited BddOrdCat :=
  ⟨of PUnit⟩

instance largeCategory : LargeCategory.{u} BddOrdCat where
  Hom X Y := BoundedOrderHom X Y
  id X := BoundedOrderHom.id X
  comp f g := g.comp f
  id_comp := BoundedOrderHom.comp_id
  comp_id := BoundedOrderHom.id_comp
  assoc _ _ _ := BoundedOrderHom.comp_assoc _ _ _
#align BddOrd.large_category BddOrdCat.largeCategory

-- Porting note: added.
-- see https://github.com/leanprover-community/mathlib4/issues/5017
instance instFunLike (X Y : BddOrdCat) : FunLike (X ⟶ Y) X (fun _ => Y) :=
  show FunLike (BoundedOrderHom X Y) X (fun _ => Y) from inferInstance

instance concreteCategory : ConcreteCategory BddOrdCat where
  forget :=
    { obj := (↥)
      map := FunLike.coe }
  forget_faithful := ⟨(FunLike.coe_injective ·)⟩
#align BddOrd.concrete_category BddOrdCat.concreteCategory

instance hasForgetToPartOrd : HasForget₂ BddOrdCat PartOrdCat where
  forget₂ :=
    { obj := fun X => X.toPartOrd
      map := fun {X Y} => BoundedOrderHom.toOrderHom }
#align BddOrd.has_forget_to_PartOrd BddOrdCat.hasForgetToPartOrd

instance hasForgetToBipointed : HasForget₂ BddOrdCat Bipointed where
  forget₂ :=
    { obj := fun X => ⟨X, ⊥, ⊤⟩
      map := fun f => ⟨f, f.map_bot', f.map_top'⟩ }
  forget_comp := rfl
#align BddOrd.has_forget_to_Bipointed BddOrdCat.hasForgetToBipointed

/-- `OrderDual` as a functor. -/
@[simps]
def dual : BddOrdCat ⥤ BddOrdCat where
  obj X := of Xᵒᵈ
  map {X Y} := BoundedOrderHom.dual
#align BddOrd.dual BddOrdCat.dual

/-- Constructs an equivalence between bounded orders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : BddOrdCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : BoundedOrderHom _ _)
  inv := (e.symm : BoundedOrderHom _ _)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _
#align BddOrd.iso.mk BddOrdCat.Iso.mk

/-- The equivalence between `BddOrd` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : BddOrdCat ≌ BddOrdCat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
#align BddOrd.dual_equiv BddOrdCat.dualEquiv

end BddOrdCat

theorem bddOrd_dual_comp_forget_to_partOrdCat :
    BddOrdCat.dual ⋙ forget₂ BddOrdCat PartOrdCat =
    forget₂ BddOrdCat PartOrdCat ⋙ PartOrdCat.dual :=
  rfl
#align BddOrd_dual_comp_forget_to_PartOrd bddOrd_dual_comp_forget_to_partOrdCat

theorem bddOrd_dual_comp_forget_to_bipointed :
    BddOrdCat.dual ⋙ forget₂ BddOrdCat Bipointed =
    forget₂ BddOrdCat Bipointed ⋙ Bipointed.swap :=
  rfl
#align BddOrd_dual_comp_forget_to_Bipointed bddOrd_dual_comp_forget_to_bipointed
