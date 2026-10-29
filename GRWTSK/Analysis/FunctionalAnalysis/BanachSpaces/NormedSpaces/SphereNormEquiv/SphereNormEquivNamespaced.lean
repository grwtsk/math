-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.HomeomorphUnitSphereProd.Variantd0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.HomeomorphUnitSphereProd.Variantd0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"d0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/NormedSpace/SphereNormEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.LinearAlgebra.Basis.VectorSpace

/-!
# Homeomorphism between a normed space and sphere times `(0, +∞)`

In this file we define a homeomorphism between nonzero elements of a normed space `E`
and `Metric.sphere (0 : E) 1 × Set.Ioi (0 : ℝ)`.
One may think about it as generalization of polar coordinates to any normed space.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.HomeomorphUnitSphereProd.Variantd0c253d94972cf76c77071b4cba1ec8adec7bb9bb1507aa0e84fa72535235413

variable (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E]

open Set Metric

/-- The natural homeomorphism between nonzero elements of a normed space `E`
and `Metric.sphere (0 : E) 1 × Set.Ioi (0 : ℝ)`.

The forward map sends `⟨x, hx⟩` to `⟨‖x‖⁻¹ • x, ‖x‖⟩`,
the inverse map sends `(x, r)` to `r • x`.

One may think about it as generalization of polar coordinates to any normed space. -/
@[simps apply_fst_coe apply_snd_coe symm_apply_coe]
noncomputable def homeomorphUnitSphereProd :
    ({0}ᶜ : Set E) ≃ₜ (sphere (0 : E) 1 × Ioi (0 : ℝ)) where
  toFun x := (⟨‖x.1‖⁻¹ • x.1, by
    rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm,
      inv_mul_cancel₀ (norm_ne_zero_iff.2 x.2)]⟩, ⟨‖x.1‖, norm_pos_iff.2 x.2⟩)
  invFun x := ⟨x.2.1 • x.1.1, smul_ne_zero x.2.2.out.ne' (ne_of_mem_sphere x.1.2 one_ne_zero)⟩
  left_inv x := Subtype.eq <| by simp [smul_inv_smul₀ (norm_ne_zero_iff.2 x.2)]
  right_inv
  | (⟨x, hx⟩, ⟨r, hr⟩) => by
    rw [mem_sphere_zero_iff_norm] at hx
    rw [mem_Ioi] at hr
    ext <;> simp [hx, norm_smul, hr.le, abs_of_pos hr, hr.ne']
  continuous_toFun := by
    refine .prodMk (.codRestrict (.smul (.inv₀ ?_ ?_) ?_) _) ?_
    · fun_prop
    · simp
    · fun_prop
    · fun_prop
  continuous_invFun := by apply Continuous.subtype_mk (by fun_prop)
