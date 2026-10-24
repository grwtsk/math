-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IsConformalMapIff.Variantff8b8bea4bea23e54c71cfdee9aadb0f06a00b3cc0a041b0864555f6075509d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff8b8bea4bea23e54c71cfdee9aadb0f06a00b3cc0a041b0864555f6075509d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.IsConformalMapIff.Variantff8b8bea4bea23e54c71cfdee9aadb0f06a00b3cc0a041b0864555f6075509d4","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"ff8b8bea4bea23e54c71cfdee9aadb0f06a00b3cc0a041b0864555f6075509d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/InnerProductSpace/ConformalLinearMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yourong Zang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yourong Zang
-/
import Mathlib.Analysis.NormedSpace.ConformalLinearMap
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-!
# Conformal maps between inner product spaces

In an inner product space, a map is conformal iff it preserves inner products up to a scalar factor.
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.IsConformalMapIff.Variantff8b8bea4bea23e54c71cfdee9aadb0f06a00b3cc0a041b0864555f6075509d4

variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]

open LinearIsometry ContinuousLinearMap

open RealInnerProductSpace

/-- A map between two inner product spaces is a conformal map if and only if it preserves inner
products up to a scalar factor, i.e., there exists a positive `c : ℝ` such that
`⟪f u, f v⟫ = c * ⟪u, v⟫` for all `u`, `v`. -/
theorem isConformalMap_iff (f : E →L[ℝ] F) :
    IsConformalMap f ↔ ∃ c : ℝ, 0 < c ∧ ∀ u v : E, ⟪f u, f v⟫ = c * ⟪u, v⟫ := by
  constructor
  · rintro ⟨c₁, hc₁, li, rfl⟩
    refine ⟨c₁ * c₁, mul_self_pos.2 hc₁, fun u v => ?_⟩
    simp only [real_inner_smul_left, real_inner_smul_right, mul_assoc, coe_smul',
      coe_toContinuousLinearMap, Pi.smul_apply, inner_map_map]
  · rintro ⟨c₁, hc₁, huv⟩
    obtain ⟨c, hc, rfl⟩ : ∃ c : ℝ, 0 < c ∧ c₁ = c * c :=
      ⟨√c₁, Real.sqrt_pos.2 hc₁, (Real.mul_self_sqrt hc₁.le).symm⟩
    refine ⟨c, hc.ne', (c⁻¹ • f : E →ₗ[ℝ] F).isometryOfInner fun u v => ?_, ?_⟩
    · simp only [real_inner_smul_left, real_inner_smul_right, huv, mul_assoc, coe_smul,
        inv_mul_cancel_left₀ hc.ne', LinearMap.smul_apply, ContinuousLinearMap.coe_coe]
    · ext1 x
      exact (smul_inv_smul₀ hc.ne' (f x)).symm
