-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Locale.Variant4d7304fb1ef932fdb82c56f9ddc5646ec98853da53b078b7c1494336890afb3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d7304fb1ef932fdb82c56f9ddc5646ec98853da53b078b7c1494336890afb3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Locale.Variant4d7304fb1ef932fdb82c56f9ddc5646ec98853da53b078b7c1494336890afb3b","mathematical_subject":"Algebra.OrderTheory","original_sha256":"4d7304fb1ef932fdb82c56f9ddc5646ec98853da53b078b7c1494336890afb3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Category/Locale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.FrmCat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Locale.Variant4d7304fb1ef932fdb82c56f9ddc5646ec98853da53b078b7c1494336890afb3b

#align_import topology.category.Locale from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# The category of locales

This file defines `Locale`, the category of locales. This is the opposite of the category of frames.
-/


universe u

open CategoryTheory Opposite Order TopologicalSpace

set_option linter.uppercaseLean3 false

/-- The category of locales. -/
def Locale :=
  FrmCatᵒᵖ deriving LargeCategory
#align Locale Locale

namespace Locale

instance : CoeSort Locale (Type*) :=
  ⟨fun X => X.unop⟩

instance (X : Locale) : Frame X :=
  X.unop.str

/-- Construct a bundled `Locale` from a `Frame`. -/
def of (α : Type*) [Frame α] : Locale :=
  op <| FrmCat.of α
#align Locale.of Locale.of

@[simp]
theorem coe_of (α : Type*) [Frame α] : ↥(of α) = α :=
  rfl
#align Locale.coe_of Locale.coe_of

instance : Inhabited Locale :=
  ⟨of PUnit⟩

end Locale

/-- The forgetful functor from `Top` to `Locale` which forgets that the space has "enough points".
-/
@[simps!]
def topToLocale : TopCat ⥤ Locale :=
  topCatOpToFrameCat.rightOp
#align Top_to_Locale topToLocale

-- Note, `CompHaus` is too strong. We only need `T0Space`.
instance CompHausToLocale.faithful : Faithful (compHausToTop ⋙ topToLocale.{u}) :=
  ⟨fun h => by
    dsimp at h
    exact Opens.comap_injective (Quiver.Hom.op_inj h)⟩
#align CompHaus_to_Locale.faithful CompHausToLocale.faithful
