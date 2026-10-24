# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartOrdCat.Variantaa31479b12b6bdfbbf4736ab2bf38951f6f40ae61fea53c86a8e75acdf3e20d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cda5e613df02b02dc6f48d231c8c2d715c4a62b` · SHA-256 `789ac26ff71fe74cd839824f8a971e1e01d9fe7b7dc8c5a262794df6d6741161`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartOrdCat.Variantee116bde36accfaaef002d1609d30816d2916c34d308fd6170e707ec8051b676","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee116bde36accfaaef002d1609d30816d2916c34d308fd6170e707ec8051b676","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.PartOrdCat.Variantee116bde36accfaaef002d1609d30816d2916c34d308fd6170e707ec8051b676","mathematical_subject":"Algebra.OrderTheory","original_sha256":"ee116bde36accfaaef002d1609d30816d2916c34d308fd6170e707ec8051b676","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/PartOrdCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Order.Antisymmetrization
import Mathlib.Order.Category.PreordCat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartOrdCat.Variantee116bde36accfaaef002d1609d30816d2916c34d308fd6170e707ec8051b676

#align_import order.category.PartOrd from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# Category of partial orders

This defines `PartOrdCat`, the category of partial orders with monotone maps.
-/


open CategoryTheory

universe u

/-- The category of partially ordered types. -/
def PartOrdCat :=
  Bundled PartialOrder
set_option linter.uppercaseLean3 false in
#align PartOrd PartOrdCat

namespace PartOrdCat

instance : BundledHom.ParentProjection @PartialOrder.toPreorder :=
  ⟨⟩

deriving instance LargeCategory for PartOrdCat

-- Porting note: probably see https://github.com/leanprover-community/mathlib4/issues/5020
instance : ConcreteCategory PartOrdCat :=
  BundledHom.concreteCategory _

instance : CoeSort PartOrdCat (Type*) :=
  Bundled.coeSort

/-- Construct a bundled PartOrd from the underlying type and typeclass. -/
def of (α : Type*) [PartialOrder α] : PartOrdCat :=
  Bundled.of α
set_option linter.uppercaseLean3 false in
#align PartOrd.of PartOrdCat.of

@[simp]
theorem coe_of (α : Type*) [PartialOrder α] : ↥(of α) = α :=
  rfl
set_option linter.uppercaseLean3 false in
#align PartOrd.coe_of PartOrdCat.coe_of

instance : Inhabited PartOrdCat :=
  ⟨of PUnit⟩

instance (α : PartOrdCat) : PartialOrder α :=
  α.str

instance hasForgetToPreordCat : HasForget₂ PartOrdCat PreordCat :=
  BundledHom.forget₂ _ _
set_option linter.uppercaseLean3 false in
#align PartOrd.has_forget_to_Preord PartOrdCat.hasForgetToPreordCat

/-- Constructs an equivalence between partial orders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : PartOrdCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : OrderHom α β)
  inv := (e.symm : OrderHom β α)
  hom_inv_id := by
    ext x
    exact e.symm_apply_apply x
  inv_hom_id := by
    ext x
    exact e.apply_symm_apply x
set_option linter.uppercaseLean3 false in
#align PartOrd.iso.mk PartOrdCat.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : PartOrdCat ⥤ PartOrdCat where
  obj X := of Xᵒᵈ
  map := OrderHom.dual
set_option linter.uppercaseLean3 false in
#align PartOrd.dual PartOrdCat.dual

/-- The equivalence between `PartOrdCat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : PartOrdCat ≌ PartOrdCat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
set_option linter.uppercaseLean3 false in
#align PartOrd.dual_equiv PartOrdCat.dualEquiv

end PartOrdCat

theorem partOrdCat_dual_comp_forget_to_preordCat :
    PartOrdCat.dual ⋙ forget₂ PartOrdCat PreordCat =
      forget₂ PartOrdCat PreordCat ⋙ PreordCat.dual :=
  rfl
set_option linter.uppercaseLean3 false in
#align PartOrd_dual_comp_forget_to_Preord partOrdCat_dual_comp_forget_to_preordCat

/-- `antisymmetrization` as a functor. It is the free functor. -/
def preordCatToPartOrdCat : PreordCat.{u} ⥤ PartOrdCat where
  obj X := PartOrdCat.of (Antisymmetrization X (· ≤ ·))
  map f := f.antisymmetrization
  map_id X := by
    ext x
    exact Quotient.inductionOn' x fun x => Quotient.map'_mk'' _ (fun a b => id) _
  map_comp f g := by
    ext x
    exact Quotient.inductionOn' x fun x => OrderHom.antisymmetrization_apply_mk _ _
set_option linter.uppercaseLean3 false in
#align Preord_to_PartOrd preordCatToPartOrdCat

/-- `Preord_to_PartOrd` is left adjoint to the forgetful functor, meaning it is the free
functor from `PreordCat` to `PartOrdCat`. -/
def preordCatToPartOrdCatForgetAdjunction :
    preordCatToPartOrdCat.{u} ⊣ forget₂ PartOrdCat PreordCat :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ =>
        { toFun := fun f =>
            ⟨f.toFun ∘ toAntisymmetrization (· ≤ ·), f.mono.comp toAntisymmetrization_mono⟩
          invFun := fun f =>
            ⟨fun a => Quotient.liftOn' a f.toFun (fun _ _ h => (AntisymmRel.image h f.mono).eq),
              fun a b => Quotient.inductionOn₂' a b fun _ _ h => f.mono h⟩
          left_inv := fun _ =>
            OrderHom.ext _ _ <| funext fun x => Quotient.inductionOn' x fun _ => rfl
          right_inv := fun _ => OrderHom.ext _ _ <| funext fun _ => rfl }
      homEquiv_naturality_left_symm := fun _ _ =>
        OrderHom.ext _ _ <| funext fun x => Quotient.inductionOn' x fun _ => rfl
      homEquiv_naturality_right := fun _ _ => OrderHom.ext _ _ <| funext fun _ => rfl }
set_option linter.uppercaseLean3 false in
#align Preord_to_PartOrd_forget_adjunction preordCatToPartOrdCatForgetAdjunction

-- The `simpNF` linter would complain as `Functor.comp_obj`, `PreordCat.dual_obj` both apply to LHS
-- of `preordCatToPartOrdCatCompToDualIsoToDualCompPreordCatToPartOrdCat_hom_app_coe`
/-- `PreordCatToPartOrdCat` and `OrderDual` commute. -/
@[simps! inv_app_coe, simps! (config := .lemmasOnly) hom_app_coe]
def preordCatToPartOrdCatCompToDualIsoToDualCompPreordCatToPartOrdCat :
    preordCatToPartOrdCat.{u} ⋙ PartOrdCat.dual ≅ PreordCat.dual ⋙ preordCatToPartOrdCat :=
  NatIso.ofComponents (fun _ => PartOrdCat.Iso.mk <| OrderIso.dualAntisymmetrization _)
    (fun _ => OrderHom.ext _ _ <| funext fun x => Quotient.inductionOn' x fun _ => rfl)
set_option linter.uppercaseLean3 false in
#align Preord_to_PartOrd_comp_to_dual_iso_to_dual_comp_Preord_to_PartOrd preordCatToPartOrdCatCompToDualIsoToDualCompPreordCatToPartOrdCat
```
