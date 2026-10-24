-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopCatOpToFrm.Variantceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopCatOpToFrm.Variantceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/CompHaus/Frm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/

import Mathlib.Order.Category.Frm
import Mathlib.Topology.Category.CompHaus.Basic
import Mathlib.Topology.Sets.Opens

/-! The forgetful functor from `TopCatᵒᵖ` to `Frm`. -/


namespace GRWTSK.Topology.GeneralTopology.TopCatOpToFrm.Variantceecd8f07b67072dc81451fdfdfd96355310788b329809bcde7c51d9350ab078

universe u

open TopologicalSpace Opposite CategoryTheory

/-- The forgetful functor from `TopCatᵒᵖ` to `Frm`. -/
@[simps]
def topCatOpToFrm : TopCatᵒᵖ ⥤ Frm where
  obj X := Frm.of (Opens (unop X : TopCat))
  map f := Frm.ofHom <| Opens.comap <| (Quiver.Hom.unop f).hom

-- Note, `CompHaus` is too strong. We only need `T0Space`.
instance CompHausOpToFrame.faithful : (compHausToTop.op ⋙ topCatOpToFrm.{u}).Faithful :=
  ⟨fun {X _ _ _} h =>  Quiver.Hom.unop_inj <| ConcreteCategory.ext <|
    Opens.comap_injective (β := (unop X).toTop) <| FrameHom.ext <|
      CategoryTheory.congr_fun h⟩
