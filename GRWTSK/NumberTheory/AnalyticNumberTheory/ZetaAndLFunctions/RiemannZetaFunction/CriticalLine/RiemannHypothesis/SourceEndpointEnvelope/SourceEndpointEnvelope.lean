import SourceMangoldtColumnQuotient
import Mathlib.Algebra.BigOperators.Intervals

/-!
# The literal quotient endpoint of the joint Mangoldt column

Derived local proof candidate, not accepted source. This unit bounds only the inclusive endpoint.
The interior signed increments, complete centered diagonal and independent main
term retain their original meanings. The prerequisite review modules remain
unmerged; a private kernel check is separate from maintained acceptance.

AI attribution: prepared with OpenAI Codex; source extraction and verification by OpenAI Codex.
-/

namespace FormalResearch.RiemannHypothesis.SourceEndpointEnvelope

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
    nlinarith [show (0 : ℝ) ≤ (a : ℝ) from Nat.cast_nonneg a, Real.exp_pos A]
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
  change 2 ≤ a at ha
  change a ≤ K at hK
  change N / K = a at hq
  have hk0 : 0 < K := by omega
  have hs : a * a ≤ N := square_adjacent_le_upper A hA
  have haN : a ≤ N := by nlinarith
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
  change 2 ≤ a at ha
  change a ≤ K at hK
  change N < 2 * (a * K) at hdouble
  have hn : 0 < (n : ℝ) := by
    exact_mod_cast (Nat.mul_pos (by omega : 0 < a) (by omega : 0 < K))
  have hsN : a * a ≤ N := square_adjacent_le_upper A hA
  have hN : 1 ≤ N := by nlinarith
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
  change 2 ≤ a at ha
  change a ≤ K at hK
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

/-- Native fixed-source exponential envelope, before any scalar simplification. -/
theorem actual_centered_column_endpoint_abs_le_envelope (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let R : ℕ → ℝ := fun k =>
      ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
    |B K * R K| ≤ 2 * A ^ 3 * Real.exp (-A) :=
  endpoint_abs_le_exponential A hA

end
end FormalResearch.RiemannHypothesis.SourceEndpointEnvelope
