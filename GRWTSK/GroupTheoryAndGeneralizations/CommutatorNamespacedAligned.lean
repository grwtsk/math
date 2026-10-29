-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CommutatorElementDef.Variant32a7b07f6ae5f0551bff57caf9ed4935f101e5630b7b93f259f0b698ed6c4b42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32a7b07f6ae5f0551bff57caf9ed4935f101e5630b7b93f259f0b698ed6c4b42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CommutatorElementDef.Variant32a7b07f6ae5f0551bff57caf9ed4935f101e5630b7b93f259f0b698ed6c4b42","mathematical_subject":"Algebra.Groups","original_sha256":"32a7b07f6ae5f0551bff57caf9ed4935f101e5630b7b93f259f0b698ed6c4b42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Group/Commutator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Data.Bracket


namespace GRWTSK.Algebra.GroupTheory.CommutatorElementDef.Variant32a7b07f6ae5f0551bff57caf9ed4935f101e5630b7b93f259f0b698ed6c4b42

#align_import algebra.group.commutator from "leanprover-community/mathlib"@"c4658a649d216f57e99621708b09dcb3dcccbd23"

/-!
# The bracket on a group given by commutator.
-/

/-- The commutator of two elements `g₁` and `g₂`. -/
instance commutatorElement {G : Type*} [Group G] : Bracket G G :=
  ⟨fun g₁ g₂ ↦ g₁ * g₂ * g₁⁻¹ * g₂⁻¹⟩
#align commutator_element commutatorElement

theorem commutatorElement_def {G : Type*} [Group G] (g₁ g₂ : G) :
  ⁅g₁, g₂⁆ = g₁ * g₂ * g₁⁻¹ * g₂⁻¹ :=
  rfl
#align commutator_element_def commutatorElement_def
