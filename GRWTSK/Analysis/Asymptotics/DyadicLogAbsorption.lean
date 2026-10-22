/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #538. Direct stacked parent: draft PR #536 at
`2ae2ae0d682e96dde66d4986e729abdec6d93f30`.
-/
import GRWTSK.NumberTheory.Moebius.MertensLogThresholdFiniteBudget
import Mathlib.Analysis.SpecialFunctions.Pow.Real

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive exponential rate corresponding to the dyadic real-power slack. -/
def dyadicSlackRate (δ : ℝ) : ℝ :=
  δ * Real.log 2

/-- Explicit all-scale absorption constant for the logarithmic threshold. -/
def dyadicLogAbsorptionConstant (δ : ℝ) : ℝ :=
  max 2 (dyadicSlackRate δ)⁻¹

/-- The dyadic slack rate is positive for every positive exponent. -/
theorem dyadicSlackRate_pos {δ : ℝ} (hδ : 0 < δ) :
    0 < dyadicSlackRate δ := by
  unfold dyadicSlackRate
  exact mul_pos hδ (Real.log_pos (by norm_num))

/-- The explicit absorption constant is nonnegative. -/
theorem dyadicLogAbsorptionConstant_nonneg (δ : ℝ) :
    0 ≤ dyadicLogAbsorptionConstant δ := by
  unfold dyadicLogAbsorptionConstant
  exact le_trans (by norm_num : (0 : ℝ) ≤ 2) (le_max_left _ _)

/-- Elementary exponential form of the logarithmic-threshold absorption. -/
theorem nat_add_two_le_absorptionConstant_mul_exp
    {δ : ℝ} (hδ : 0 < δ) (j : ℕ) :
    (j + 2 : ℝ) ≤
      dyadicLogAbsorptionConstant δ *
        Real.exp (dyadicSlackRate δ * (j : ℝ)) := by
  let c : ℝ := dyadicSlackRate δ
  let A : ℝ := dyadicLogAbsorptionConstant δ
  have hc : 0 < c := dyadicSlackRate_pos hδ
  have hA2 : (2 : ℝ) ≤ A := by
    dsimp [A, dyadicLogAbsorptionConstant]
    exact le_max_left _ _
  have hAinv : c⁻¹ ≤ A := by
    dsimp [A, dyadicLogAbsorptionConstant]
    exact le_max_right _ _
  have hAc : 1 ≤ A * c := by
    calc
      1 = c⁻¹ * c := by field_simp [ne_of_gt hc]
      _ ≤ A * c := by
        exact mul_le_mul_of_nonneg_right hAinv (le_of_lt hc)
  have hlinear :
      (j + 2 : ℝ) ≤ A * (1 + c * (j : ℝ)) := by
    have hj : 0 ≤ (j : ℝ) := by positivity
    calc
      (j + 2 : ℝ) = 2 + 1 * (j : ℝ) := by ring
      _ ≤ A + (A * c) * (j : ℝ) := by
        exact add_le_add hA2
          (mul_le_mul_of_nonneg_right hAc hj)
      _ = A * (1 + c * (j : ℝ)) := by ring
  have hexp :
      1 + c * (j : ℝ) ≤ Real.exp (c * (j : ℝ)) :=
    Real.one_add_le_exp _
  calc
    (j + 2 : ℝ) ≤ A * (1 + c * (j : ℝ)) := hlinear
    _ ≤ A * Real.exp (c * (j : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hexp
        (le_trans (by norm_num : (0 : ℝ) ≤ 2) hA2)
    _ = dyadicLogAbsorptionConstant δ *
        Real.exp (dyadicSlackRate δ * (j : ℝ)) := by
      rfl

/-- The real dyadic power used throughout RH-E02 is exactly the corresponding
exponential. -/
theorem dyadic_rpow_eq_exp_slack
    (δ : ℝ) (j : ℕ) :
    (((2 ^ j : ℕ) : ℝ) ^ δ) =
      Real.exp (dyadicSlackRate δ * (j : ℝ)) := by
  have htwo : (0 : ℝ) < 2 := by norm_num
  have hpow : (0 : ℝ) < ((2 : ℝ) ^ j) := pow_pos htwo j
  rw [show (((2 ^ j : ℕ) : ℝ)) = (2 : ℝ) ^ j by norm_num]
  rw [Real.rpow_def_of_pos hpow]
  rw [Real.log_pow]
  unfold dyadicSlackRate
  ring

/-- Reusable all-scale theorem: logarithmic dyadic depth is absorbed by
arbitrarily small positive power slack, with an explicit constant. -/
theorem nat_add_two_le_const_mul_dyadic_rpow
    {δ : ℝ} (hδ : 0 < δ) :
    ∃ A : ℝ, 0 ≤ A ∧ ∀ j : ℕ,
      (j + 2 : ℝ) ≤
        A * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  refine ⟨dyadicLogAbsorptionConstant δ,
    dyadicLogAbsorptionConstant_nonneg δ, ?_⟩
  intro j
  rw [dyadic_rpow_eq_exp_slack]
  exact nat_add_two_le_absorptionConstant_mul_exp hδ j

/-- The complete deterministic short-range packet from #535 is
subpolynomial at every positive exponent. -/
def SubpolynomialLogThresholdShortPacketBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      normalizedShortPacketBudget j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Discharge the deterministic short-range packet using the finite budget and
the explicit logarithmic absorption theorem. -/
theorem subpolynomialLogThresholdShortPacketBudget :
    SubpolynomialLogThresholdShortPacketBudget := by
  intro δ hδ
  obtain ⟨A, hA, hlog⟩ :=
    nat_add_two_le_const_mul_dyadic_rpow hδ
  refine ⟨4 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  calc
    normalizedShortPacketBudget j ≤
        4 * (logarithmicShiftThreshold j : ℝ) :=
      normalizedShortPacketBudget_le_four_logThreshold j
    _ = 4 * (j + 2 : ℝ) := by
      rfl
    _ ≤ 4 * (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      exact mul_le_mul_of_nonneg_left (hlog j) (by norm_num)
    _ = (4 * A) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.nat_add_two_le_const_mul_dyadic_rpow
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialLogThresholdShortPacketBudget
