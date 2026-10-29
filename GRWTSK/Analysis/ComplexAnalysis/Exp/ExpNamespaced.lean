-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.FunctionPeriodicImInvQParamPosOfNormLtOne.Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.FunctionPeriodicImInvQParamPosOfNormLtOne.Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"bf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/UpperHalfPlane/Exp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.Complex.Periodic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic

/-!
# Exp on the upper half plane

This file contains lemmas about the exponential function on the upper half plane. Useful for
q-expansions of modular forms.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.FunctionPeriodicImInvQParamPosOfNormLtOne.Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9

open Real Complex UpperHalfPlane Function

local notation "𝕢" => Periodic.qParam

theorem Function.Periodic.im_invQParam_pos_of_norm_lt_one
    {h : ℝ} (hh : 0 < h) {q : ℂ} (hq : ‖q‖ < 1) (hq_ne : q ≠ 0) :
    0 < im (Periodic.invQParam h q) :=
  im_invQParam .. ▸ mul_pos_of_neg_of_neg
    (div_neg_of_neg_of_pos (neg_lt_zero.mpr hh) Real.two_pi_pos)
    ((Real.log_neg_iff (norm_pos_iff.mpr hq_ne)).mpr hq)

lemma Function.Periodic.norm_qParam_le_of_one_half_le_im {ξ : ℂ} (hξ : 1 / 2 ≤ ξ.im) :
    ‖𝕢 1 ξ‖ ≤ rexp (-π) := by
  rwa [Periodic.qParam, ofReal_one, div_one, Complex.norm_exp, Real.exp_le_exp,
    mul_right_comm, mul_I_re, neg_le_neg_iff, ← ofReal_ofNat, ← ofReal_mul, im_ofReal_mul,
    mul_comm _ π, mul_assoc, le_mul_iff_one_le_right Real.pi_pos, ← div_le_iff₀' two_pos]

theorem UpperHalfPlane.norm_qParam_lt_one (n : ℕ) [NeZero n] (τ : ℍ) : ‖𝕢 n τ‖ < 1 := by
  rw [Periodic.norm_qParam, Real.exp_lt_one_iff, neg_mul, coe_im, neg_mul, neg_div, neg_lt_zero,
    div_pos_iff_of_pos_right (mod_cast Nat.pos_of_ne_zero <| NeZero.ne _)]
  positivity

theorem UpperHalfPlane.norm_exp_two_pi_I_lt_one (τ : ℍ) :
    ‖(Complex.exp (2 * π * Complex.I * τ))‖ < 1 := by
  simpa [Function.Periodic.norm_qParam, Complex.norm_exp] using τ.norm_qParam_lt_one 1

@[deprecated (since := "2025-02-17")] alias Function.Periodic.im_invQParam_pos_of_abs_lt_one :=
  Function.Periodic.im_invQParam_pos_of_norm_lt_one
@[deprecated (since := "2025-02-17")] alias Function.Periodic.abs_qParam_le_of_one_half_le_im :=
  Function.Periodic.norm_qParam_le_of_one_half_le_im
@[deprecated (since := "2025-02-17")] alias UpperHalfPlane.abs_qParam_lt_one :=
  UpperHalfPlane.norm_qParam_lt_one
@[deprecated (since := "2025-02-17")] alias UpperHalfPlane.abs_exp_two_pi_I_lt_one :=
  UpperHalfPlane.norm_exp_two_pi_I_lt_one
