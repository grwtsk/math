/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogTwoSupplierReduction
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- At each scale, authenticated Parseval identifies thin Green energy with the
historical Green L2 energy. -/
theorem centeredMobiusLogEnergy_le_historicalGreenEnergy
    {X : ℕ} (hX : 2 ≤ X) :
    centeredMobiusLogFourierEnergy X ≤
      2 * greenEnergy X + 2 * greenFullResidualEnergyBound X := by
  have hGsum :
      Summable (fun k : ℤ =>
        if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) := by
    have hmem := thinHistoricalGreenResidual_memLp X
    have hs := thinHistoricalGreenFourier_parseval_hasSum X hmem
    have hcoeff := fun k =>
      thinGreenArithmeticFourierCoordinate_eq_historicalCoeff
        (by omega : 1 ≤ X) k
    have hsThin :
        HasSum
          (fun k : ℤ =>
            if k = 0 then 0
            else ‖thinGreenArithmeticFourierCoordinate X k‖^2)
          (greenEnergy X) := by
      apply hs.congr_fun
      intro k
      by_cases hk : k = 0
      · subst k
        simp [thinHistoricalGreenFourierCoeff_zero (by omega : 1 ≤ X)]
      · simp only [hk, ↓reduceIte]
        rw [hcoeff k]
    exact hsThin.summable
  have htransfer := centeredEnergy_le_of_thinGreen_summable hX hGsum
  rw [thinGreenEnergy_eq_historicalGreenEnergy hX] at htransfer
  exact htransfer.2

/-- Conversely, centered Möbius-log energy controls the historical Green
energy, provided its series is summable. -/
theorem historicalGreenEnergy_le_centeredMobiusLogEnergy
    {X : ℕ} (hX : 2 ≤ X)
    (hM : Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2)) :
    greenEnergy X ≤
      2 * centeredMobiusLogFourierEnergy X +
      2 * greenFullResidualEnergyBound X := by
  have htransfer := thinGreenEnergy_le_of_centered_summable hX hM
  rw [thinGreenEnergy_eq_historicalGreenEnergy hX] at htransfer
  exact htransfer.2

/-- The centered-energy supplier is therefore, up to the deterministic
O(X^-1) residual, a supplier for the historical Green L2 energy itself. -/
def AllDyadicHistoricalGreenEnergyBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        greenEnergy (dyadicScale j) ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

end GRWTSK.RiemannHypothesis
