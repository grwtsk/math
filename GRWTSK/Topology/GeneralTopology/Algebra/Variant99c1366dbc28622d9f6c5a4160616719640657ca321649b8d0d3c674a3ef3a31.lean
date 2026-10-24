-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NormLeNormOne.Variant9949fd7140da5a91be3699a0eac6026653a32e931b07fc4e67583b5ac7d0b6e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9949fd7140da5a91be3699a0eac6026653a32e931b07fc4e67583b5ac7d0b6e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NormLeNormOne.Variant9949fd7140da5a91be3699a0eac6026653a32e931b07fc4e67583b5ac7d0b6e8","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9949fd7140da5a91be3699a0eac6026653a32e931b07fc4e67583b5ac7d0b6e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
import Mathlib.Topology.Algebra.Module.CharacterSpace
import Mathlib.Analysis.NormedSpace.WeakDual
import Mathlib.Analysis.NormedSpace.Spectrum


namespace GRWTSK.Topology.GeneralTopology.NormLeNormOne.Variant9949fd7140da5a91be3699a0eac6026653a32e931b07fc4e67583b5ac7d0b6e8

#align_import analysis.normed_space.algebra from "leanprover-community/mathlib"@"17ef379e997badd73e5eabb4d38f11919ab3c4b3"

/-!
# Normed algebras

This file contains basic facts about normed algebras.

## Main results

* We show that the character space of a normed algebra is compact using the Banach-Alaoglu theorem.

## TODO

* Show compactness for topological vector spaces; this requires the TVS version of Banach-Alaoglu.

## Tags

normed algebra, character space, continuous functional calculus

-/


variable {𝕜 : Type*} {A : Type*}

namespace WeakDual

namespace CharacterSpace

variable [NontriviallyNormedField 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A]

theorem norm_le_norm_one (φ : characterSpace 𝕜 A) : ‖toNormedDual (φ : WeakDual 𝕜 A)‖ ≤ ‖(1 : A)‖ :=
  ContinuousLinearMap.op_norm_le_bound _ (norm_nonneg (1 : A)) fun a =>
    mul_comm ‖a‖ ‖(1 : A)‖ ▸ spectrum.norm_le_norm_mul_of_mem (apply_mem_spectrum φ a)
#align weak_dual.character_space.norm_le_norm_one WeakDual.CharacterSpace.norm_le_norm_one

instance [ProperSpace 𝕜] : CompactSpace (characterSpace 𝕜 A) := by
  rw [← isCompact_iff_compactSpace]
  have h : characterSpace 𝕜 A ⊆ toNormedDual ⁻¹' Metric.closedBall 0 ‖(1 : A)‖ := by
    intro φ hφ
    rw [Set.mem_preimage, mem_closedBall_zero_iff]
    exact (norm_le_norm_one ⟨φ, ⟨hφ.1, hφ.2⟩⟩ : _)
  exact isCompact_of_isClosed_subset (isCompact_closedBall 𝕜 0 _) CharacterSpace.isClosed h

end CharacterSpace

end WeakDual
