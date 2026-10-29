-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredPrefix.Varianta4c1a77b7bb3285cb45c5aaa8207000a20fcb386e2ba6481d49208a77b12e160","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4c1a77b7bb3285cb45c5aaa8207000a20fcb386e2ba6481d49208a77b12e160","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CenteredPrefix.Varianta4c1a77b7bb3285cb45c5aaa8207000a20fcb386e2ba6481d49208a77b12e160","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a4c1a77b7bb3285cb45c5aaa8207000a20fcb386e2ba6481d49208a77b12e160","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791324315170015000/SourceSignedPrefixObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveTriangularConsumer
import Mathlib.Tactic

/-!
An actual signed-row obstruction to a one-sided Abel attempt.
The attempted inequality was that centering forces every long prefix nonpositive.
At the unchanged real source scale A = 7/4, U = floor(A^2) = 3, its prefixes
already have both signs. No statement about the compensated target is inferred.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredPrefix.Varianta4c1a77b7bb3285cb45c5aaa8207000a20fcb386e2ba6481d49208a77b12e160

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceSignedPrefixObstruction
open ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourceVaughanHankel
open FormalResearch.RiemannHypothesis.SourceAdaptiveTriangularConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateVaughanIdentity EstimateBetaCentering EstimateSourceMobiusKernel
noncomputable section

def centeredPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n

theorem actual_cutoff : vaughanCutoff (7 / 4 : ℝ) = 3 := by
  norm_num [vaughanCutoff]

theorem actual_alpha : alpha 3 = (1 / 6 : ℝ) := by
  have h2 : moebius 2 = -1 := moebius_apply_prime Nat.prime_two
  have h3 : moebius 3 = -1 := moebius_apply_prime (by norm_num)
  norm_num [alpha, Finset.sum_Icc_succ_top, h2, h3]

theorem centered_beta_short_examples :
    centeredBeta 3 4 = (1 / 6 : ℝ) ∧
    centeredBeta 3 5 = (-5 / 6 : ℝ) ∧
    centeredBeta 3 6 = (7 / 6 : ℝ) := by
  have h2 : moebius 2 = -1 := moebius_apply_prime Nat.prime_two
  have h3 : moebius 3 = -1 := moebius_apply_prime (by norm_num)
  have hb (n : ℕ) (hn : 0 < n) : beta 3 n =
      (if n = 1 then 1 else 0) -
        ∑ d ∈ Finset.Icc 1 3, if d ∣ n then (moebius d : ℝ) else 0 := by
    rw [beta_eq_delta_sub_short, short_divisor_sum_eq_indicator 3 n hn]
  norm_num [centeredBeta, actual_alpha, hb 4 (by norm_num), hb 5 (by norm_num),
    hb 6 (by norm_num), Finset.sum_Icc_succ_top, h2, h3]

theorem actual_prefix_values :
    centeredPrefix (7 / 4 : ℝ) 4 = 1 / 6 ∧
    centeredPrefix (7 / 4 : ℝ) 5 = -2 / 3 ∧
    centeredPrefix (7 / 4 : ℝ) 6 = 1 / 2 := by
  norm_num [centeredPrefix, actual_cutoff, Finset.sum_Ioc_succ_top,
    centered_beta_short_examples.1, centered_beta_short_examples.2.1,
    centered_beta_short_examples.2.2]

theorem actual_six_in_long_inventory : 6 ∈ longInventory (7 / 4 : ℝ) := by
  have hlow := Real.add_one_le_exp (7 / 4 : ℝ)
  have heq : Real.exp (7 / 2 : ℝ) = Real.exp (7 / 4 : ℝ) ^ 2 := by
    rw [show (7 / 2 : ℝ) = 7 / 4 + 7 / 4 by norm_num, Real.exp_add, pow_two]
  have h6 : (6 : ℝ) ≤ Real.exp (7 / 2 : ℝ) := by rw [heq]; nlinarith
  rw [longInventory, Finset.mem_Ioc, actual_cutoff]
  constructor
  · norm_num
  · change 6 ≤ ⌊Real.exp (2 * (7 / 4 : ℝ))⌋₊
    apply Nat.le_floor
    norm_num only [Nat.cast_ofNat]
    rw [heq]
    nlinarith [hlow]

theorem actual_four_in_long_inventory : 4 ∈ longInventory (7 / 4 : ℝ) := by
  have h6 := Finset.mem_Ioc.mp actual_six_in_long_inventory
  apply Finset.mem_Ioc.mpr
  constructor
  · rw [actual_cutoff]; norm_num
  · omega

theorem actual_positive_off_diagonal_coefficient :
    0 < coefficient (7 / 4 : ℝ) 4 6 := by
  have h4 : vonMangoldt 4 = Real.log 2 := by
    rw [show (4 : ℕ) = 2 ^ 2 by norm_num,
      vonMangoldt_apply_pow (by norm_num : (2 : ℕ) ≠ 0),
      vonMangoldt_apply_prime Nat.prime_two]
    norm_num
  unfold coefficient
  rw [actual_cutoff, centered_beta_short_examples.2.2, h4]
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  positivity

theorem centering_does_not_force_nonpositive_prefix :
    ¬ (∀ A : ℝ, 1 ≤ A → ∀ k : ℕ, vaughanCutoff A ≤ k → centeredPrefix A k ≤ 0) := by
  intro h
  have hv := h (7 / 4) (by norm_num) 4 (by rw [actual_cutoff]; norm_num)
  rw [actual_prefix_values.1] at hv
  norm_num at hv

theorem centering_does_not_force_nonnegative_prefix :
    ¬ (∀ A : ℝ, 1 ≤ A → ∀ k : ℕ, vaughanCutoff A ≤ k → 0 ≤ centeredPrefix A k) := by
  intro h
  have hv := h (7 / 4) (by norm_num) 5 (by rw [actual_cutoff]; norm_num)
  rw [actual_prefix_values.2.1] at hv
  norm_num at hv

end
end FormalResearch.RiemannHypothesis.SourceSignedPrefixObstruction
