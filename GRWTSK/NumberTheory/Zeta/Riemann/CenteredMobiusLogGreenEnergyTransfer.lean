/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenL2Comparison
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def thinGreenEnergy (X : ℕ) : ℝ :=
  ∑' k : ℤ,
    if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2

def centeredMobiusLogFourierEnergy (X : ℕ) : ℝ :=
  ∑' k : ℤ,
    if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2

/-- Pointwise conservative energy transfer. -/
theorem sq_norm_thinGreen_le_centered_plus_residual
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    ‖thinGreenArithmeticFourierCoordinate X k‖^2 ≤
      2 * ‖centeredMobiusLogFourierCoordinate X k‖^2 +
      2 * ‖greenCenteringResidual X k‖^2 := by
  have hid := thinGreenArithmeticFourierCoordinate_eq_residual_sub_centered hX k
  rw [hid]
  have htri := norm_sub_le
    (greenCenteringResidual X k)
    (centeredMobiusLogFourierCoordinate X k)
  nlinarith [sq_nonneg
    (‖greenCenteringResidual X k‖ -
      ‖centeredMobiusLogFourierCoordinate X k‖)]

/-- Reverse pointwise transfer. -/
theorem sq_norm_centered_le_thinGreen_plus_residual
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    ‖centeredMobiusLogFourierCoordinate X k‖^2 ≤
      2 * ‖thinGreenArithmeticFourierCoordinate X k‖^2 +
      2 * ‖greenCenteringResidual X k‖^2 := by
  have hid := thinGreenArithmeticFourierCoordinate_eq_residual_sub_centered hX k
  have hrearr :
      centeredMobiusLogFourierCoordinate X k =
        greenCenteringResidual X k -
          thinGreenArithmeticFourierCoordinate X k := by
    linarith
  rw [hrearr]
  have htri := norm_sub_le
    (greenCenteringResidual X k)
    (thinGreenArithmeticFourierCoordinate X k)
  nlinarith [sq_nonneg
    (‖greenCenteringResidual X k‖ -
      ‖thinGreenArithmeticFourierCoordinate X k‖)]

/-- If the centered Möbius-log energy is independently summable, Green energy
is summable and transfers with the deterministic residual. -/
theorem thinGreenEnergy_le_of_centered_summable
    {X : ℕ} (hX : 2 ≤ X)
    (hM : Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2)) :
    Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) ∧
    thinGreenEnergy X ≤
      2 * centeredMobiusLogFourierEnergy X +
      2 * greenFullResidualEnergyBound X := by
  have hR := summable_sq_norm_greenCenteringResidual hX
  have hdom : ∀ k : ℤ,
      (if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) ≤
      2 * (if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2) +
      2 * (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) := by
    intro k
    by_cases hk : k = 0
    · simp [hk]
    · simp only [hk, ↓reduceIte]
      exact sq_norm_thinGreen_le_centered_plus_residual (by omega) k
  have hsum :
      Summable (fun k : ℤ =>
        2 * (if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2) +
        2 * (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2)) :=
    (hM.mul_left 2).add (hR.mul_left 2)
  have hG := Summable.of_nonneg_of_le
    (fun k => by split_ifs <;> positivity) hdom hsum
  refine ⟨hG, ?_⟩
  unfold thinGreenEnergy centeredMobiusLogFourierEnergy
  calc
    (∑' k : ℤ, if k = 0 then 0 else
      ‖thinGreenArithmeticFourierCoordinate X k‖^2) ≤
      ∑' k : ℤ,
        (2 * (if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2) +
         2 * (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2)) :=
      hG.tsum_le_tsum hdom hsum
    _ = 2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖centeredMobiusLogFourierCoordinate X k‖^2) +
        2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖greenCenteringResidual X k‖^2) := by
      rw [tsum_add (hM.mul_left 2) (hR.mul_left 2),
        tsum_mul_left, tsum_mul_left]
    _ ≤ 2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖centeredMobiusLogFourierCoordinate X k‖^2) +
        2 * greenFullResidualEnergyBound X := by
      gcongr
      exact tsum_sq_norm_greenCenteringResidual_le hX

/-- Symmetric reverse transfer under an independently supplied Green-energy
summability premise. -/
theorem centeredEnergy_le_of_thinGreen_summable
    {X : ℕ} (hX : 2 ≤ X)
    (hG : Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2)) :
    Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2) ∧
    centeredMobiusLogFourierEnergy X ≤
      2 * thinGreenEnergy X +
      2 * greenFullResidualEnergyBound X := by
  have hR := summable_sq_norm_greenCenteringResidual hX
  have hdom : ∀ k : ℤ,
      (if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2) ≤
      2 * (if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
      2 * (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) := by
    intro k
    by_cases hk : k = 0
    · simp [hk]
    · simp only [hk, ↓reduceIte]
      exact sq_norm_centered_le_thinGreen_plus_residual (by omega) k
  have hsum :=
    (hG.mul_left 2).add (hR.mul_left 2)
  have hM := Summable.of_nonneg_of_le
    (fun k => by split_ifs <;> positivity) hdom hsum
  refine ⟨hM, ?_⟩
  unfold centeredMobiusLogFourierEnergy thinGreenEnergy
  calc
    _ ≤ ∑' k : ℤ,
        (2 * (if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
         2 * (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2)) :=
      hM.tsum_le_tsum hdom hsum
    _ = 2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
        2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖greenCenteringResidual X k‖^2) := by
      rw [tsum_add (hG.mul_left 2) (hR.mul_left 2),
        tsum_mul_left, tsum_mul_left]
    _ ≤ 2 * (∑' k : ℤ, if k = 0 then 0 else
          ‖thinGreenArithmeticFourierCoordinate X k‖^2) +
        2 * greenFullResidualEnergyBound X := by
      gcongr
      exact tsum_sq_norm_greenCenteringResidual_le hX

end GRWTSK.RiemannHypothesis
