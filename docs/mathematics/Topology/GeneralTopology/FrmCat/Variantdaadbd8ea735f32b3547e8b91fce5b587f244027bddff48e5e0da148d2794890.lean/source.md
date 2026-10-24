# Complete source: GRWTSK.Topology.GeneralTopology.FrmCat.Variantdaadbd8ea735f32b3547e8b91fce5b587f244027bddff48e5e0da148d2794890

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e04d63c4897f3664366973ba01816a772c08452` · SHA-256 `b6d2f4b5eca1a97d96dd9d151a896630712e773e938bfe4ce53116abfc35f783`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FrmCat.Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FrmCat.Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/FrmCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.LatCat
import Mathlib.Order.Hom.CompleteLattice
import Mathlib.Topology.Category.CompHaus.Basic
import Mathlib.Topology.Sets.Opens


namespace GRWTSK.Topology.GeneralTopology.FrmCat.Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6

#align_import order.category.Frm from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# The category of frames

This file defines `FrmCat`, the category of frames.

## References

* [nLab, *Frm*](https://ncatlab.org/nlab/show/Frm)
-/


universe u

open CategoryTheory Opposite Order TopologicalSpace

set_option linter.uppercaseLean3 false -- `Frm`

/-- The category of frames. -/
def FrmCat :=
  Bundled Frame
#align Frm FrmCat

namespace FrmCat

instance : CoeSort FrmCat (Type*) :=
  Bundled.coeSort

instance (X : FrmCat) : Frame X :=
  X.str

/-- Construct a bundled `FrmCat` from a `Frame`. -/
def of (α : Type*) [Frame α] : FrmCat :=
  Bundled.of α
#align Frm.of FrmCat.of

@[simp]
theorem coe_of (α : Type*) [Frame α] : ↥(of α) = α := rfl
#align Frm.coe_of FrmCat.coe_of

instance : Inhabited FrmCat :=
  ⟨of PUnit⟩

/-- An abbreviation of `FrameHom` that assumes `Frame` instead of the weaker `CompleteLattice`.
Necessary for the category theory machinery. -/
abbrev Hom (α β : Type*) [Frame α] [Frame β] : Type _ :=
  FrameHom α β
#align Frm.hom FrmCat.Hom

instance bundledHom : BundledHom Hom where
  toFun {α β} _ _ := ((↑) : FrameHom α β → α → β)
  id {α} _ := FrameHom.id α
  comp _ _ _ := FrameHom.comp
  hom_ext _ _ := FunLike.coe_injective
#align Frm.bundled_hom FrmCat.bundledHom

-- Porting note: Originally `deriving instance LargeCategory, ConcreteCategory for FrmCat`
-- see https://github.com/leanprover-community/mathlib4/issues/5020
deriving instance LargeCategory, Category for FrmCat

instance : ConcreteCategory FrmCat := by
  unfold FrmCat
  infer_instance

instance hasForgetToLat : HasForget₂ FrmCat LatCat where
  forget₂ :=
    { obj := fun X => ⟨X, _⟩
      map := fun {X Y} => FrameHom.toLatticeHom }
#align Frm.has_forget_to_Lat FrmCat.hasForgetToLat

/-- Constructs an isomorphism of frames from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : FrmCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : FrameHom _ _)
  inv := (e.symm : FrameHom _ _)
  hom_inv_id := by
    ext
    exact e.symm_apply_apply _
  inv_hom_id := by
    ext
    exact e.apply_symm_apply _
#align Frm.iso.mk FrmCat.Iso.mk

end FrmCat

/-- The forgetful functor from `TopCatᵒᵖ` to `FrmCat`. -/
@[simps]
def topCatOpToFrameCat : TopCatᵒᵖ ⥤ FrmCat where
  obj X := FrmCat.of (Opens (unop X : TopCat))
  map f := Opens.comap <| Quiver.Hom.unop f
  map_id X := Opens.comap_id
#align Top_op_to_Frame topCatOpToFrameCat

-- Note, `CompHaus` is too strong. We only need `T0Space`.
instance CompHausOpToFrame.faithful : Faithful (compHausToTop.op ⋙ topCatOpToFrameCat.{u}) :=
  ⟨fun h => Quiver.Hom.unop_inj <| Opens.comap_injective h⟩
#align CompHaus_op_to_Frame.faithful CompHausOpToFrame.faithful
```
