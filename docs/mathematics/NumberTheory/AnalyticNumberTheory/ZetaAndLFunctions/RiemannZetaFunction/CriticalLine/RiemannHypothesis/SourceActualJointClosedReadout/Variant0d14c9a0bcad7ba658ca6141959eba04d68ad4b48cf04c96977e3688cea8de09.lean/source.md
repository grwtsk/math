# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualJointClosedReadout.Variant0d14c9a0bcad7ba658ca6141959eba04d68ad4b48cf04c96977e3688cea8de09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e97f3d4ce38a12fc9816a6d6ac0459cb9ddd4b0` · SHA-256 `0d14c9a0bcad7ba658ca6141959eba04d68ad4b48cf04c96977e3688cea8de09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualJointCenteredDiscrepancy
import SourceActualClosedXiSignedMoment

/-!
Identify the joint Abel cancellation with the literal complete closed Xi
readout, including prime two, every prime power and the gamma companion.
No uniform signed arithmetic bound is supplied.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualJointClosedReadout
open MeasureTheory ArithmeticFunction SourceMangoldtAbel
open SourceActualJointMangoldtCancellation SourceActualJointCenteredDiscrepancy
open SourceActualClosedXiSqrtConsumers SourceActualClosedXiSignedMoment
open SourceFullXiCellBudgetObstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent
open scoped Interval BigOperators

theorem actual_half_log_sum_eq_closed (b : ℝ) :
    mangoldtLogSum b (fun t => Real.exp (t / 2)) =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp b⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
  unfold mangoldtLogSum
  calc
    _ = ∑ n ∈ primePowerInventory b, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      have he : Real.exp (Real.log (n : ℝ) / 2) = (n : ℝ) ^ (1 / 2 : ℝ) := by
        rw [Real.rpow_def_of_pos hp]
        congr 1
        ring
      have hr : (n : ℝ) ^ (-1 / 2 : ℝ) = (n : ℝ) ^ (1 / 2 : ℝ) / n := by
        rw [show (-1 / 2 : ℝ) = 1 / 2 - 1 by ring, Real.rpow_sub hp, Real.rpow_one]
      rw [he, hr]
      ring
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn' := Finset.mem_Icc.mp hn
        have hsmall : n < 2 := by
          simp only [primePowerInventory, Finset.mem_Icc, not_and, not_le] at hnnot
          omega
        have hcases : n = 0 ∨ n = 1 := by omega
        rcases hcases with rfl | rfl <;> simp

theorem actual_full_log_sum_eq_closed_psi (b : ℝ) :
    mangoldtLogSum b Real.exp = Chebyshev.psi (Real.exp b) := by
  unfold mangoldtLogSum
  rw [Chebyshev.psi_eq_sum_Icc]
  calc
    _ = ∑ n ∈ primePowerInventory b, vonMangoldt n := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      rw [Real.exp_log hp]
      exact div_mul_cancel₀ _ hp.ne'
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn' := Finset.mem_Icc.mp hn
        have hsmall : n < 2 := by
          simp only [primePowerInventory, Finset.mem_Icc, not_and, not_le] at hnnot
          omega
        have hcases : n = 0 ∨ n = 1 := by omega
        rcases hcases with rfl | rfl <;> simp

theorem actual_closed_readout_eq_joint (b : ℝ) :
    actualClosedXiSqrtReadout (Real.exp b) =
      2 * (actualJointMangoldtReadout b - Real.exp (b / 2)) +
        2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
          ((2 : ℝ) ^ (-1 / 2 : ℝ) - Real.exp (-b / 2)) +
            2 * (2 : ℝ) ^ (1 / 2 : ℝ) := by
  unfold actualClosedXiSqrtReadout actualJointMangoldtReadout
  rw [actual_half_log_sum_eq_closed, actual_full_log_sum_eq_closed_psi]
  rw [Chebyshev.psi_eq_sum_Icc]
  have hm : (Real.exp b) ^ (-1 / 2 : ℝ) = Real.exp (-b / 2) := by
    rw [← Real.exp_mul]
    congr 1
    ring
  have hp : (Real.exp b) ^ (1 / 2 : ℝ) = Real.exp (b / 2) := by
    rw [← Real.exp_mul]
    congr 1
    ring
  rw [hm, hp]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
  ring

theorem actual_closed_readout_eq_centered_integral (b : ℝ) (hb : 0 ≤ b) :
    actualClosedXiSqrtReadout (Real.exp b) =
      2 * (actualJointCenteredIntegral b +
        actualCenteredLogDiscrepancy b * (1 - Real.exp (-b / 2)) -
          Real.eulerMascheroniConstant - 2 +
            (Real.eulerMascheroniConstant + 1) * Real.exp (-b / 2)) +
        2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
          ((2 : ℝ) ^ (-1 / 2 : ℝ) - Real.exp (-b / 2)) +
            2 * (2 : ℝ) ^ (1 / 2 : ℝ) := by
  rw [actual_closed_readout_eq_joint, actual_joint_centered_identity b hb]

/-- Exact source substitution into the principal one-sided arithmetic moment. -/
theorem actual_signed_moment_eq_centered_joint (A : ℝ) (hA : 1 ≤ A) :
    actualClosedXiSignedMoment A =
      ∫ t in Real.log 2..2 * A,
        (2 * (actualJointCenteredIntegral t +
          actualCenteredLogDiscrepancy t * (1 - Real.exp (-t / 2)) -
            Real.eulerMascheroniConstant - 2 +
              (Real.eulerMascheroniConstant + 1) * Real.exp (-t / 2)) +
          2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
            ((2 : ℝ) ^ (-1 / 2 : ℝ) - Real.exp (-t / 2)) +
              2 * (2 : ℝ) ^ (1 / 2 : ℝ)) * deriv (fullXiLogWeight A) t := by
  unfold actualClosedXiSignedMoment
  apply intervalIntegral.integral_congr
  intro t ht
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  rw [Set.uIcc_of_le hL] at ht
  rw [actual_closed_readout_eq_centered_integral t
    ((Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)).trans ht.1)]

end FormalResearch.RiemannHypothesis.SourceActualJointClosedReadout
```
