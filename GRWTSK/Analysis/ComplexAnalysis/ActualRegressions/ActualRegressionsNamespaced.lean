-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.SourceMinimalScale.Variant1b4b33a57c71025484e92797f0216a32e5b8f3dd44f59f689ae77aea4639a3ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b4b33a57c71025484e92797f0216a32e5b8f3dd44f59f689ae77aea4639a3ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.SourceMinimalScale.Variant1b4b33a57c71025484e92797f0216a32e5b8f3dd44f59f689ae77aea4639a3ba","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"1b4b33a57c71025484e92797f0216a32e5b8f3dd44f59f689ae77aea4639a3ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/inner-abel-20261005/independent-replay/ActualRegressions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LocalTheorem
import Regressions
import Mathlib.Analysis.Complex.ExponentialBounds

/-! Exact source-domain regressions. Direction: grwtsk contributors;
proof development: OpenAI Codex. These do not supply a uniform arithmetic witness. -/

namespace GRWTSK.Analysis.ComplexAnalysis.SourceMinimalScale.Variant1b4b33a57c71025484e92797f0216a32e5b8f3dd44f59f689ae77aea4639a3ba

set_option autoImplicit false
noncomputable section
namespace InnerAbel.ActualRegressions
open InnerAbel.Actual InnerAbelSourceCandidate
open FormalResearch.RiemannHypothesis.SourcePositiveSampling

theorem source_minimal_scale :
    |innerRemainder 1 1| ≤ 12 := by
  simpa using innerRemainder_abs_le_twelve (A := 1) (d := 1)
    (by norm_num) (by norm_num) (Real.one_le_exp (by norm_num))

theorem source_noninteger_cutoff : innerCutoff (Real.log 3) 6 = (3 / 2 : ℝ) := by
  unfold innerCutoff
  rw [show 2 * Real.log 3 = Real.log 3 + Real.log 3 by ring,
    Real.exp_add, Real.exp_log (by norm_num : (0 : ℝ) < 3)]
  norm_num

theorem source_noninteger_error :
    |innerRemainder (Real.log 3) 6| ≤ 12 / Real.sqrt 6 := by
  have hA : 1 ≤ Real.log 3 := by linarith [Real.log_three_gt_d9]
  apply innerRemainder_abs_le_twelve hA (by norm_num)
  rw [show 2 * Real.log 3 = Real.log 3 + Real.log 3 by ring,
    Real.exp_add, Real.exp_log (by norm_num : (0 : ℝ) < 3)]
  norm_num

theorem source_closed_touching_atom (A : ℝ) (_hA : 1 ≤ A) :
    logProfile A (Real.exp (2 * A)) 1 = 0 ∧
      innerRemainder A (Real.exp (2 * A)) = 0 := by
  exact ⟨logProfile_at_one A _, innerRemainder_at_support_equality rfl⟩

theorem source_integer_terminal_zero {A d : ℝ} {N : ℕ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hN : innerCutoff A d = N) :
    logProfile A d N = 0 := by
  rw [← hN]
  exact logProfile_at_cutoff hA hd

theorem missing_chain_factor_counterexample :
    deriv (fun y : ℝ => 2 * y) 3 = 2 ∧
      deriv (fun y : ℝ => 2 * y) 3 ≠ 1 := by
  have h : deriv (fun y : ℝ => 2 * y) 3 = 2 := by
    simp
  rw [h]
  norm_num

theorem spatial_parameter_derivatives_differ :
    deriv (fun x : ℝ => x) 3 = 1 ∧
      deriv (fun _A : ℝ => (3 : ℝ)) 1 = 0 := by simp

theorem centering_requires_nonzero_endpoint :
    (∑ _n ∈ Finset.Icc 1 1, (1 : ℝ)) ≠
      (∫ _y in (1 : ℝ)..1, (1 : ℝ)) +
        (∫ y in (1 : ℝ)..1, (CenteredAbelCandidate.fracPlus y - 1 / 2) * 0) := by
  norm_num

theorem integer_scales_do_not_cover_reals :
    (∀ n : ℕ, (⌊(n : ℝ)⌋₊ : ℝ) = n) ∧
      ¬ (∀ A : ℝ, 1 ≤ A → (⌊A⌋₊ : ℝ) = A) := by
  constructor
  · intro n
    rw [Nat.floor_natCast]
  · intro h
    have hf : ⌊(3 / 2 : ℝ)⌋₊ = 1 :=
      (Nat.floor_eq_iff (by norm_num)).mpr ⟨by norm_num, by norm_num⟩
    have hz := h (3 / 2) (by norm_num)
    rw [hf] at hz
    norm_num at hz

end InnerAbel.ActualRegressions
