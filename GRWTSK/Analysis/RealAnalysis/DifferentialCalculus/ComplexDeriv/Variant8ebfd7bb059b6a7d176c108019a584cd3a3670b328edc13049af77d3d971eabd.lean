-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictDerivAtTan.Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasStrictDerivAtTan.Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b","mathematical_subject":"Analysis.Calculus","original_sha256":"46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/SpecialFunctions/Trigonometric/ComplexDeriv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Benjamin Davidson
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

/-!
# Complex trigonometric functions

Basic facts and derivatives for the complex trigonometric functions.
-/



namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictDerivAtTan.Variant46c3635a74d83f1bc8509993c4cc2d2203756d36131e01cf607b6f96b9f3e07b

noncomputable section

namespace Complex

open Set Filter

open scoped Real

theorem hasStrictDerivAt_tan {x : ℂ} (h : cos x ≠ 0) : HasStrictDerivAt tan (1 / cos x ^ 2) x := by
  convert (hasStrictDerivAt_sin x).div (hasStrictDerivAt_cos x) h using 1
  rw_mod_cast [← sin_sq_add_cos_sq x]
  ring

theorem hasDerivAt_tan {x : ℂ} (h : cos x ≠ 0) : HasDerivAt tan (1 / cos x ^ 2) x :=
  (hasStrictDerivAt_tan h).hasDerivAt

open scoped Topology

theorem tendsto_norm_tan_of_cos_eq_zero {x : ℂ} (hx : cos x = 0) :
    Tendsto (fun x => ‖tan x‖) (𝓝[≠] x) atTop := by
  simp only [tan_eq_sin_div_cos, norm_div]
  have A : sin x ≠ 0 := fun h => by simpa [*, sq] using sin_sq_add_cos_sq x
  have B : Tendsto cos (𝓝[≠] x) (𝓝[≠] 0) :=
    hx ▸ (hasDerivAt_cos x).tendsto_nhdsNE (neg_ne_zero.2 A)
  exact continuous_sin.continuousWithinAt.norm.pos_mul_atTop (norm_pos_iff.2 A)
    (tendsto_norm_nhdsNE_zero.comp B).inv_tendsto_nhdsGT_zero

theorem tendsto_norm_tan_atTop (k : ℤ) :
    Tendsto (fun x => ‖tan x‖) (𝓝[≠] ((2 * k + 1) * π / 2 : ℂ)) atTop :=
  tendsto_norm_tan_of_cos_eq_zero <| cos_eq_zero_iff.2 ⟨k, rfl⟩

@[deprecated (since := "2025-02-17")] alias tendsto_abs_tan_of_cos_eq_zero :=
  tendsto_norm_tan_of_cos_eq_zero
@[deprecated (since := "2025-02-17")] alias tendsto_abs_tan_atTop := tendsto_norm_tan_atTop

@[simp]
theorem continuousAt_tan {x : ℂ} : ContinuousAt tan x ↔ cos x ≠ 0 := by
  refine ⟨fun hc h₀ => ?_, fun h => (hasDerivAt_tan h).continuousAt⟩
  exact not_tendsto_nhds_of_tendsto_atTop (tendsto_norm_tan_of_cos_eq_zero h₀) _
    (hc.norm.tendsto.mono_left inf_le_left)

@[simp]
theorem differentiableAt_tan {x : ℂ} : DifferentiableAt ℂ tan x ↔ cos x ≠ 0 :=
  ⟨fun h => continuousAt_tan.1 h.continuousAt, fun h => (hasDerivAt_tan h).differentiableAt⟩

@[simp]
theorem deriv_tan (x : ℂ) : deriv tan x = 1 / cos x ^ 2 :=
  if h : cos x = 0 then by
    have : ¬DifferentiableAt ℂ tan x := mt differentiableAt_tan.1 (Classical.not_not.2 h)
    simp [deriv_zero_of_not_differentiableAt this, h, sq]
  else (hasDerivAt_tan h).deriv

@[simp]
theorem contDiffAt_tan {x : ℂ} {n : WithTop ℕ∞} : ContDiffAt ℂ n tan x ↔ cos x ≠ 0 :=
  ⟨fun h => continuousAt_tan.1 h.continuousAt, contDiff_sin.contDiffAt.div contDiff_cos.contDiffAt⟩

end Complex
