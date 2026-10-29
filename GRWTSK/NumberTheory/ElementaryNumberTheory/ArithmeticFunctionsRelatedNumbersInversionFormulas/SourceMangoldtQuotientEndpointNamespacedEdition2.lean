-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.Column.Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.Column.Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-quotient-endpoint-budget-v1/prepared-v1/SourceMangoldtQuotientEndpoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMangoldtColumnQuotient
import Mathlib.Algebra.BigOperators.Intervals

/-!
# The literal quotient endpoint of the joint Mangoldt column

Research preparation, UNCOMPILED. This unit bounds only the inclusive endpoint.
The interior signed increments, complete centered diagonal and independent main
term retain their original meanings. The prerequisite review modules remain
unmerged; a private kernel check is separate from maintained acceptance.

AI attribution: prepared with OpenAI Codex; native verification is pending.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.Column.Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404

namespace FormalResearch.RiemannHypothesis.SourceMangoldtQuotientEndpoint

open ArithmeticFunction
open SourceVaughanHankel SourceMangoldtColumnQuotient
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateBetaCentering EstimateCorrelation

noncomputable section

private def column (A : ℝ) (k : ℕ) : ℝ :=
  ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)

private def centeredPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n

private theorem exp_gt_square_add_one (A : ℝ) (hA : 1 ≤ A) :
    A ^ 2 + 1 < Real.exp A := by
  have hsum := Real.sum_le_exp_of_nonneg (by linarith : 0 ≤ A) 5
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have ht : 0 ≤ A - 1 := sub_nonneg.mpr hA
  have hm : 0 < (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
      (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by positivity
  have he : 1 + A + A ^ 2 / 2 + A ^ 3 / 6 + A ^ 4 / 24 - (A ^ 2 + 1) =
      (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
        (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by ring
  linarith

private theorem square_adjacent_le_upper (A : ℝ) (hA : 1 ≤ A) :
    (vaughanCutoff A + 1) * (vaughanCutoff A + 1) ≤ sourceKernelCutoff A := by
  let a := vaughanCutoff A + 1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ha : (a : ℝ) < Real.exp A := by
    have hc : (a : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp [a]
    linarith [exp_gt_square_add_one A hA]
  have hs : ((a * a : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    rw [Nat.cast_mul, show 2 * A = A + A by ring, Real.exp_add]
    nlinarith [Nat.cast_nonneg a, Real.exp_pos A]
  exact (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 hs

private theorem quotient_geometry (A : ℝ) (hA : 1 ≤ A) :
    let a := vaughanCutoff A + 1
    let N := sourceKernelCutoff A
    let K := N / a
    2 ≤ a ∧ a ≤ K ∧ N / K = a ∧ N < 2 * (a * K) := by
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  have ha : 2 ≤ a := by have := vaughanCutoff_pos A hA; omega
  have ha0 : 0 < a := by omega
  have hs : a * a ≤ N := square_adjacent_le_upper A hA
  have hK : a ≤ K := (Nat.le_div_iff_mul_le ha0).2 hs
  have hk0 : 0 < K := by omega
  have hlo : a * K ≤ N := by simpa only [Nat.mul_comm] using Nat.div_mul_le_self N a
  have hhi : N < (K + 1) * a := (Nat.div_lt_iff_lt_mul ha0).1 (Nat.lt_succ_self K)
  have hnext : N < (a + 1) * K := by nlinarith
  have hqlo : a ≤ N / K := (Nat.le_div_iff_mul_le hk0).2 hlo
  have hqhi : N / K < a + 1 := (Nat.div_lt_iff_lt_mul hk0).2 hnext
  have hq : N / K = a := by omega
  have hp : a ≤ a * K := by
    simpa using Nat.mul_le_mul_left a (show 1 ≤ K by omega)
  have hdouble : N < 2 * (a * K) := by nlinarith
  exact ⟨ha, hK, hq, hdouble⟩

private theorem column_at_quotient (A : ℝ) (hA : 1 ≤ A) :
    let a := vaughanCutoff A + 1
    let K := sourceKernelCutoff A / a
    column A K = vonMangoldt a * sourcePlainWeight A ((a * K : ℕ) : ℝ) := by
  classical
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  rcases quotient_geometry A hA with ⟨ha, hK, hq, _⟩
  have hk0 : 0 < K := by omega
  have haN : a ≤ N := by nlinarith [square_adjacent_le_upper A hA]
  have hain : a ∈ longInventory A := Finset.mem_Ioc.mpr ⟨by omega, haN⟩
  change (∑ m ∈ longInventory A,
    vonMangoldt m * sourcePlainWeight A ((m * K : ℕ) : ℝ)) =
      vonMangoldt a * sourcePlainWeight A ((a * K : ℕ) : ℝ)
  apply Finset.sum_eq_single a
  · intro m hm hma
    have hma' : a < m := by have := (Finset.mem_Ioc.mp hm).1; omega
    have hdiv : N / K < m := by rw [hq]; exact hma'
    have hcut : N < m * K := (Nat.div_lt_iff_lt_mul hk0).1 hdiv
    rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * K) hcut, mul_zero]
  · intro hnot
    exact False.elim (hnot hain)

private theorem centeredPrefix_abs_le_cutoff (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : vaughanCutoff A ≤ k) :
    |centeredPrefix A k| ≤ (vaughanCutoff A : ℝ) := by
  apply (centeredBeta_interval_abs_le _ _ _ (vaughanCutoff_pos A hA) le_rfl hk).trans
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      exact_mod_cast (abs_moebius_le_one (n := d))
    _ = (vaughanCutoff A : ℝ) := by simp

private theorem endpoint_weight_abs_le (A : ℝ) (hA : 1 ≤ A) :
    let a := vaughanCutoff A + 1
    let K := sourceKernelCutoff A / a
    |sourcePlainWeight A ((a * K : ℕ) : ℝ)| ≤ 2 * Real.exp (-A) := by
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  let n := a * K
  rcases quotient_geometry A hA with ⟨ha, hK, _, hdouble⟩
  have hn : 0 < (n : ℝ) := by
    exact_mod_cast (Nat.mul_pos (by omega : 0 < a) (by omega : 0 < K))
  have hN : 1 ≤ N := by nlinarith [square_adjacent_le_upper A hA]
  have hf : Real.exp (2 * A) < (N : ℝ) + 1 := Nat.lt_floor_add_one _
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hpr : (N : ℝ) < 2 * (n : ℝ) := by exact_mod_cast hdouble
  have he : Real.exp (2 * A) ≤ 4 * (n : ℝ) := by linarith
  have hs : Real.exp A / 2 ≤ Real.sqrt (n : ℝ) := by
    apply Real.le_sqrt_of_sq_le
    rw [show 2 * A = A + A by ring, Real.exp_add] at he
    nlinarith
  have hinv : 1 / Real.sqrt (n : ℝ) ≤ 2 * Real.exp (-A) := by
    calc
      _ ≤ 1 / (Real.exp A / 2) :=
        one_div_le_one_div_of_le (by positivity) hs
      _ = _ := by rw [one_div_div, Real.exp_neg, div_eq_mul_inv]
  have hc := actual_correlation_abs_le_one A (Real.log (n : ℝ)) hA
  have hw : |sourcePlainWeight A (n : ℝ)| ≤ 1 / Real.sqrt (n : ℝ) := by
    unfold sourcePlainWeight
    rw [abs_div, abs_of_pos (Real.sqrt_pos.2 hn)]
    exact div_le_div_of_nonneg_right hc (Real.sqrt_nonneg _)
  exact hw.trans hinv

private theorem endpoint_abs_le_exponential (A : ℝ) (hA : 1 ≤ A) :
    let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
    |centeredPrefix A K * column A K| ≤ 2 * A ^ 3 * Real.exp (-A) := by
  let U := vaughanCutoff A
  let a := U + 1
  let K := sourceKernelCutoff A / a
  rcases quotient_geometry A hA with ⟨ha, hK, _, _⟩
  have ha0 : 0 < (a : ℝ) := by exact_mod_cast (by omega : 0 < a)
  have hf : (U : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have haexp : (a : ℝ) ≤ Real.exp A := by
    have hac : (a : ℝ) = (U : ℝ) + 1 := by simp [a]
    linarith [exp_gt_square_add_one A hA]
  have hlog : Real.log (a : ℝ) ≤ A := (Real.log_le_iff_le_exp ha0).2 haexp
  have hLambda : |vonMangoldt a| ≤ A := by
    rw [abs_of_nonneg vonMangoldt_nonneg]
    exact vonMangoldt_le_log.trans hlog
  have hB : |centeredPrefix A K| ≤ (U : ℝ) :=
    centeredPrefix_abs_le_cutoff A hA K (by omega)
  have hw := endpoint_weight_abs_le A hA
  have hprod : |vonMangoldt a| * |sourcePlainWeight A ((a * K : ℕ) : ℝ)| ≤
      A * (2 * Real.exp (-A)) :=
    mul_le_mul hLambda hw (abs_nonneg _) (by linarith)
  calc
    |centeredPrefix A K * column A K| =
        |centeredPrefix A K| *
          (|vonMangoldt a| * |sourcePlainWeight A ((a * K : ℕ) : ℝ)|) := by
      rw [column_at_quotient A hA, abs_mul, abs_mul]
    _ ≤ (U : ℝ) * (A * (2 * Real.exp (-A))) :=
      mul_le_mul hB hprod (mul_nonneg (abs_nonneg _) (abs_nonneg _)) (Nat.cast_nonneg U)
    _ ≤ A ^ 2 * (A * (2 * Real.exp (-A))) :=
      mul_le_mul_of_nonneg_right hf (by positivity)
    _ = 2 * A ^ 3 * Real.exp (-A) := by ring

/-- At the actual quotient endpoint, only the first literal Mangoldt row survives. -/
theorem actual_mangoldt_column_at_quotient_eq_first_row (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let K := sourceKernelCutoff A / (U + 1)
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * K : ℕ) : ℝ)) =
        vonMangoldt (U + 1) * sourcePlainWeight A (((U + 1) * K : ℕ) : ℝ) := by
  exact column_at_quotient A hA

/-- A uniform absolute bound for the single endpoint, not for the whole signed readout. -/
theorem actual_centered_column_endpoint_abs_le_twelve (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let R : ℕ → ℝ := fun k =>
      ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
    |B K * R K| ≤ 12 := by
  have hp := Real.pow_div_factorial_le_exp (by linarith : 0 ≤ A) 3
  norm_num at hp
  have hm := mul_le_mul_of_nonneg_right hp (Real.exp_pos (-A)).le
  have he : Real.exp A * Real.exp (-A) = 1 := by rw [← Real.exp_add]; simp
  rw [he] at hm
  have hb : 2 * A ^ 3 * Real.exp (-A) ≤ 12 := by nlinarith
  exact (endpoint_abs_le_exponential A hA).trans hb

/-- The strict quotient sum keeps its endpoint and both original compensation terms. -/
theorem covariance_sub_main_eq_strict_quotient_increments_with_endpoint
    (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      (∑ k ∈ Finset.Ico (U + 1) K, B k * (R k - R (k + 1))) + B K * R K -
        centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B := centeredPrefix A
  let R := column A
  rcases quotient_geometry A hA with ⟨_, hK, _, _⟩
  have hUK : U + 1 ≤ K := hK
  have hi : Finset.Ioc U K = Finset.Ico (U + 1) (K + 1) := by
    ext k
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  have htail : R (K + 1) = 0 :=
    actual_mangoldt_column_eq_zero_of_quotient_lt A hA (K + 1) (Nat.lt_succ_self K)
  have hj := covariance_sub_main_eq_quotient_truncated_column_increments A hA
  change VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A =
    (∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))) -
      centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A at hj
  rw [hi, Finset.sum_Ico_succ_top hUK, htail, sub_zero] at hj
  exact hj

end
end FormalResearch.RiemannHypothesis.SourceMangoldtQuotientEndpoint
