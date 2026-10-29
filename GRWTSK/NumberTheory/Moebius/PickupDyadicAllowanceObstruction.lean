/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-!
# The unsigned count allowance cannot supply the signed dyadic budget

The existing finite Cauchy--Schwarz estimate bounds the actual pickup energy
by `2 * exp T * T^2`. Its right-hand side fails the all-positive-rate condition
even on the fixed dyadic grid. The proof below gives a concrete offending
index beyond every prescribed horizon, already at rate `1/2`.

This is an obstruction to using that unsigned allowance as the arithmetic
supplier. It is NOT a counterexample to the signed Mobius bound, a lower
bound for pickup energy, or a proof or disproof of RH. The actual source may
be much smaller than its upper allowance. No new arithmetic hypothesis is
introduced and no source coefficient is replaced.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupDyadicAllowanceObstruction

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential

/-- Exactly the right-hand side of the maintained finite-count estimate. -/
def countAllowance (T : ℝ) : ℝ := 2 * Real.exp T * T ^ 2

/-- The unchanged Mobius pickup is bounded ABOVE by this allowance. -/
theorem pickupEnergy_le_countAllowance {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤ countAllowance T :=
  pickupEnergy_exponential_allowance hT

/-- At integer dyadic horizons the count factor is exactly `2^j`. -/
theorem countAllowance_dyadic (j : ℕ) :
    countAllowance (dyadicTime j) =
      2 * ((2 ^ j : ℕ) : ℝ) * dyadicTime j ^ 2 := by
  rw [countAllowance, exp_dyadicTime]

/-- A concrete next-grid witness defeats every proposed constant at rate `1/2`,
even after an arbitrary starting horizon. No sign or monotonicity of the actual
pickup cross sum is used in this argument about its unsigned upper allowance. -/
theorem countAllowance_exceeds_half_rate (C R : ℝ) :
    ∃ j : ℕ, R ≤ dyadicTime j ∧
      C * Real.exp ((1 / 2 : ℝ) * dyadicTime j) <
        countAllowance (dyadicTime j) := by
  let T : ℝ := max 0 (max R (max 1 (C + 1)))
  let j : ℕ := ⌊T / Real.log 2⌋₊ + 1
  have hT : 0 ≤ T := le_max_left _ _
  have hnext : T ≤ dyadicTime j :=
    (next_time log_two_positive hT).1
  have hR : R ≤ T := by
    dsimp only [T]
    exact (le_max_left _ _).trans (le_max_right _ _)
  have hone : (1 : ℝ) ≤ T := by
    dsimp only [T]
    exact (le_max_left _ _).trans
      ((le_max_right _ _).trans (le_max_right _ _))
  have hC : C + 1 ≤ T := by
    dsimp only [T]
    exact (le_max_right _ _).trans
      ((le_max_right _ _).trans (le_max_right _ _))
  have ht : (1 : ℝ) ≤ dyadicTime j := hone.trans hnext
  have hc : C + 1 ≤ dyadicTime j := hC.trans hnext
  have hpoly : C < 2 * dyadicTime j ^ 2 := by
    nlinarith [sq_nonneg (dyadicTime j - 1)]
  have hexp : Real.exp ((1 / 2 : ℝ) * dyadicTime j) ≤
      Real.exp (dyadicTime j) :=
    Real.exp_le_exp.mpr (by linarith)
  refine ⟨j, hR.trans hnext, ?_⟩
  calc
    C * Real.exp ((1 / 2 : ℝ) * dyadicTime j) <
        (2 * dyadicTime j ^ 2) *
          Real.exp ((1 / 2 : ℝ) * dyadicTime j) :=
      mul_lt_mul_of_pos_right hpoly (Real.exp_pos _)
    _ ≤ (2 * dyadicTime j ^ 2) * Real.exp (dyadicTime j) :=
      mul_le_mul_of_nonneg_left hexp (by positivity)
    _ = countAllowance (dyadicTime j) := by
      unfold countAllowance
      ring

/-- The identical obstruction in the exact base-two notation of the signed target. -/
theorem countAllowance_exceeds_half_dyadic_rate (C R : ℝ) :
    ∃ j : ℕ, R ≤ dyadicTime j ∧
      C * (2 : ℝ) ^ ((1 / 2 : ℝ) * (j : ℝ)) <
        countAllowance (dyadicTime j) := by
  obtain ⟨j, hj, hb⟩ := countAllowance_exceeds_half_rate C R
  exact ⟨j, hj, by simpa only [dyadic_rate] using hb⟩

/-- The available unsigned envelope itself cannot be the required all-rate supplier.
The assertion concerns `countAllowance`, not `endpointSum` or `dyadicBirthSum`. -/
theorem not_subexponentialOn_countAllowance :
    ¬ SubexponentialOn countAllowance dyadicScales := by
  intro h
  obtain ⟨C, R, _hC, _hR, hb⟩ := h (1 / 2) (by norm_num)
  obtain ⟨j, hj, hstrict⟩ := countAllowance_exceeds_half_rate C R
  have hmem : dyadicTime j ∈ dyadicScales := ⟨j, rfl⟩
  exact (not_lt_of_ge (hb (dyadicTime j) hmem hj)) hstrict

end GRWTSK.NumberTheory.Moebius.PickupDyadicAllowanceObstruction
