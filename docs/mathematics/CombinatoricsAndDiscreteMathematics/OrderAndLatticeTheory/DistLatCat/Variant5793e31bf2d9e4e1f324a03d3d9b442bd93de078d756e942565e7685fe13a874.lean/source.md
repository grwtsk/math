# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DistLatCat.Variant5793e31bf2d9e4e1f324a03d3d9b442bd93de078d756e942565e7685fe13a874

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57219752ffe028d385aa328d3a4d9e725c39ff0e` · SHA-256 `495914b102e66accc1230d3898a6a4081210a3a656ef65149d2a6f973c9c46fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DistLatCat.Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.DistLatCat.Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68","mathematical_subject":"Algebra.OrderTheory","original_sha256":"8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/DistLatCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.LatCat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DistLatCat.Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68

#align_import order.category.DistLat from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# The category of distributive lattices

This file defines `DistLatCat`, the category of distributive lattices.

Note that [`DistLatCat`](https://ncatlab.org/nlab/show/DistLat) in the literature doesn't always
correspond to `DistLatCat` as we don't require bottom or top elements. Instead, this `DistLatCat`
corresponds to `BddDistLatCat`.
-/


universe u

open CategoryTheory

set_option linter.uppercaseLean3 false

/-- The category of distributive lattices. -/
def DistLatCat :=
  Bundled DistribLattice
#align DistLat DistLatCat

namespace DistLatCat

instance : CoeSort DistLatCat (Type*) :=
  Bundled.coeSort

instance (X : DistLatCat) : DistribLattice X :=
  X.str

/-- Construct a bundled `DistLatCat` from a `DistribLattice` underlying type and typeclass. -/
def of (α : Type*) [DistribLattice α] : DistLatCat :=
  Bundled.of α
#align DistLat.of DistLatCat.of

@[simp]
theorem coe_of (α : Type*) [DistribLattice α] : ↥(of α) = α :=
  rfl
#align DistLat.coe_of DistLatCat.coe_of

instance : Inhabited DistLatCat :=
  ⟨of PUnit⟩

instance : BundledHom.ParentProjection @DistribLattice.toLattice :=
  ⟨⟩

deriving instance LargeCategory for DistLatCat

-- Porting note: probably see https://github.com/leanprover-community/mathlib4/issues/5020
instance : ConcreteCategory DistLatCat :=
  BundledHom.concreteCategory _

instance hasForgetToLatCat : HasForget₂ DistLatCat LatCat :=
  BundledHom.forget₂ _ _
#align DistLat.has_forget_to_Lat DistLatCat.hasForgetToLatCat

/-- Constructs an equivalence between distributive lattices from an order isomorphism between them.
-/
@[simps]
def Iso.mk {α β : DistLatCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : LatticeHom α β)
  inv := (e.symm : LatticeHom β α)
  hom_inv_id := by
    ext
    exact e.symm_apply_apply _
  inv_hom_id := by
    ext
    exact e.apply_symm_apply _
#align DistLat.iso.mk DistLatCat.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : DistLatCat ⥤ DistLatCat where
  obj X := of Xᵒᵈ
  map := LatticeHom.dual
#align DistLat.dual DistLatCat.dual

/-- The equivalence between `DistLatCat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : DistLatCat ≌ DistLatCat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
#align DistLat.dual_equiv DistLatCat.dualEquiv

end DistLatCat

theorem distLatCat_dual_comp_forget_to_latCat :
    DistLatCat.dual ⋙ forget₂ DistLatCat LatCat = forget₂ DistLatCat LatCat ⋙ LatCat.dual :=
  rfl
#align DistLat_dual_comp_forget_to_Lat distLatCat_dual_comp_forget_to_latCat
```
