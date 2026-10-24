-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteMoebiusDirichlet.Variantc2ffc1c016abf240c33201c6d4080b4efe889c5fd7e2455cceb2d5495050f0e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2ffc1c016abf240c33201c6d4080b4efe889c5fd7e2455cceb2d5495050f0e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFiniteMoebiusDirichlet.Variantc2ffc1c016abf240c33201c6d4080b4efe889c5fd7e2455cceb2d5495050f0e5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c2ffc1c016abf240c33201c6d4080b4efe889c5fd7e2455cceb2d5495050f0e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/c2ffc1c016abf240c332-SourceActualFiniteMoebiusDirichlet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualVaughanMeanBound
import Mathlib.Algebra.BigOperators.Module

/-!
Actual finite Moebius Dirichlet sums inherit a unit bound throughout real
exponent sigma >= one from the genuine signed reciprocal prefix estimate.
The closed finite cutoff and all Moebius signs remain. The critical exponent
one half has increasing Abel weights, so this does not bound that frontier.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteMoebiusDirichlet.Variantc2ffc1c016abf240c33201c6d4080b4efe889c5fd7e2455cceb2d5495050f0e5

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFiniteMoebiusDirichlet
open ArithmeticFunction
open scoped BigOperators
open SourceActualVaughanMeanBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource
noncomputable section

/-- The independent complete actual signed finite Dirichlet inventory. -/
def actualFiniteMoebiusDirichlet (N : ℕ) (sigma : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / (n : ℝ) ^ sigma

private theorem actual_weighted_alpha_identity (N : ℕ) (w : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * w n) =
      alpha N * w N +
        ∑ n ∈ Finset.Icc 1 (N - 1), alpha n * (w n - w (n + 1)) := by
  induction N with
  | zero => simp [alpha]
  | succ N ih =>
    by_cases hN : N = 0
    · subst N
      simp [alpha]
    · have hn : 1 ≤ N := by omega
      have ha : alpha (N + 1) = alpha N + (moebius (N + 1) : ℝ) / (N + 1 : ℕ) := by
        unfold alpha
        rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      have hs : (∑ n ∈ Finset.Icc 1 N, alpha n * (w n - w (n + 1))) =
          (∑ n ∈ Finset.Icc 1 (N - 1), alpha n * (w n - w (n + 1))) +
            alpha N * (w N - w (N + 1)) := by
        simpa only [Nat.sub_add_cancel hn] using
          (Finset.sum_Icc_succ_top (f := fun n => alpha n * (w n - w (n + 1)))
            (by omega : 1 ≤ (N - 1) + 1))
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1), ih, Nat.succ_sub_one, hs, ha]
      ring

private theorem actual_weighted_alpha_variation_bound (N : ℕ) (w : ℕ → ℝ) :
    |∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * w n| ≤
      |w N| + ∑ n ∈ Finset.Icc 1 (N - 1), |w n - w (n + 1)| := by
  rw [actual_weighted_alpha_identity]
  apply (abs_add_le _ _).trans
  apply add_le_add
  · rw [abs_mul]
    exact (mul_le_mul_of_nonneg_right (actual_alpha_abs_le_one N) (abs_nonneg _)).trans_eq
      (one_mul _)
  · apply (Finset.abs_sum_le_sum_abs _ _).trans
    apply Finset.sum_le_sum
    intro n _
    rw [abs_mul]
    exact (mul_le_mul_of_nonneg_right (actual_alpha_abs_le_one n) (abs_nonneg _)).trans_eq
      (one_mul _)

private theorem finite_weight_differences_telescope (N : ℕ) (w : ℕ → ℝ) (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 1 (N - 1), (w n - w (n + 1))) = w 1 - w N := by
  have he (k : ℕ) : (∑ n ∈ Finset.Icc 1 k, (w n - w (n + 1))) = w 1 - w (k + 1) := by
    induction k with
    | zero => simp
    | succ k ih =>
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ k + 1), ih]
      ring
  simpa only [Nat.sub_add_cancel hN] using he (N - 1)

/-- Every exponent retains its exact complete actual Abel representation. -/
theorem actualFiniteMoebiusDirichlet_eq_abel (N : ℕ) (sigma : ℝ) :
    actualFiniteMoebiusDirichlet N sigma =
      alpha N * (N : ℝ) ^ (1 - sigma) +
        ∑ n ∈ Finset.Icc 1 (N - 1),
          alpha n * ((n : ℝ) ^ (1 - sigma) - (n + 1 : ℕ) ^ (1 - sigma : ℝ)) := by
  have he : actualFiniteMoebiusDirichlet N sigma =
      ∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * (n : ℝ) ^ (1 - sigma) := by
    unfold actualFiniteMoebiusDirichlet
    apply Finset.sum_congr rfl
    intro n hn
    have hp : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    rw [Real.rpow_sub hp, Real.rpow_one]
    field_simp
  rw [he, actual_weighted_alpha_identity]

/-- Actual signed prefix control gives a uniform unit bound for every real exponent at least one. -/
theorem actualFiniteMoebiusDirichlet_abs_le_one (N : ℕ) {sigma : ℝ} (hsigma : 1 ≤ sigma) :
    |actualFiniteMoebiusDirichlet N sigma| ≤ 1 := by
  by_cases hN : N = 0
  · subst N
    simp [actualFiniteMoebiusDirichlet]
  have hn : 1 ≤ N := by omega
  let w : ℕ → ℝ := fun n => (n : ℝ) ^ (1 - sigma)
  have he : actualFiniteMoebiusDirichlet N sigma =
      ∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * w n := by
    unfold actualFiniteMoebiusDirichlet
    apply Finset.sum_congr rfl
    intro n hmem
    have hp : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hmem).1
    dsimp [w]
    rw [Real.rpow_sub hp, Real.rpow_one]
    field_simp
  have hw (n : ℕ) : 0 ≤ w n := Real.rpow_nonneg (Nat.cast_nonneg _) _
  have hd (n : ℕ) (hm : n ∈ Finset.Icc 1 (N - 1)) : 0 ≤ w n - w (n + 1) := by
    have hp : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hm).1
    exact sub_nonneg.mpr (Real.rpow_le_rpow_of_nonpos hp
      (by exact_mod_cast (Nat.le_succ n)) (by linarith))
  rw [he]
  calc
    _ ≤ |w N| + ∑ n ∈ Finset.Icc 1 (N - 1), |w n - w (n + 1)| :=
      actual_weighted_alpha_variation_bound N w
    _ = w N + ∑ n ∈ Finset.Icc 1 (N - 1), (w n - w (n + 1)) := by
      rw [abs_of_nonneg (hw N)]
      congr 1
      apply Finset.sum_congr rfl
      intro n hm
      exact abs_of_nonneg (hd n hm)
    _ = w 1 := by rw [finite_weight_differences_telescope N w hn]; ring
    _ = 1 := by simp [w]

/-- Every actual real Vaughan scale keeps the same signed closed finite coefficient bound. -/
theorem actual_vaughan_finiteDirichlet_abs_le_one (A : ℝ) {sigma : ℝ} (hsigma : 1 ≤ sigma) :
    |actualFiniteMoebiusDirichlet (vaughanCutoff A) sigma| ≤ 1 :=
  actualFiniteMoebiusDirichlet_abs_le_one _ hsigma

end
end FormalResearch.RiemannHypothesis.SourceActualFiniteMoebiusDirichlet
