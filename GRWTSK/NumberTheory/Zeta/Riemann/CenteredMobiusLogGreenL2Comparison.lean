/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFullResidualEnergy
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Squared l2 comparison error between the actual thin Green coordinate and
the negative weighted centered Möbius-log coordinate. -/
def greenCenteredMobiusLogComparisonEnergy (X : ℕ) : ℝ :=
  ∑' k : ℤ,
    if k = 0 then 0
    else ‖thinGreenArithmeticFourierCoordinate X k +
      centeredMobiusLogFourierCoordinate X k‖^2

/-- Pointwise comparison error is exactly the deterministic centering residual. -/
theorem sq_norm_green_plus_centered_eq_residual
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    ‖thinGreenArithmeticFourierCoordinate X k +
        centeredMobiusLogFourierCoordinate X k‖^2 =
      ‖greenCenteringResidual X k‖^2 := by
  rw [thinGreen_plus_centeredMobiusLog_eq_residual hX]

/-- The comparison-energy series is summable whenever X>=2. -/
theorem summable_greenCenteredMobiusLogComparisonEnergy
    {X : ℕ} (hX : 2 ≤ X) :
    Summable (fun k : ℤ =>
      if k = 0 then 0
      else ‖thinGreenArithmeticFourierCoordinate X k +
        centeredMobiusLogFourierCoordinate X k‖^2) := by
  apply (summable_sq_norm_greenCenteringResidual hX).congr
  intro k
  by_cases hk : k = 0
  · simp [hk]
  · simp only [hk, ↓reduceIte]
    exact sq_norm_green_plus_centered_eq_residual (by omega) k

/-- Exact equality of comparison energy with deterministic residual energy. -/
theorem greenCenteredMobiusLogComparisonEnergy_eq_residualEnergy
    {X : ℕ} (hX : 2 ≤ X) :
    greenCenteredMobiusLogComparisonEnergy X =
      ∑' k : ℤ,
        if k = 0 then 0 else ‖greenCenteringResidual X k‖^2 := by
  unfold greenCenteredMobiusLogComparisonEnergy
  apply tsum_congr
  intro k
  by_cases hk : k = 0
  · simp [hk]
  · simp only [hk, ↓reduceIte]
    exact sq_norm_green_plus_centered_eq_residual (by omega) k

/-- Explicit full-frame l2 comparison bound. No bound on either coordinate
separately is asserted. -/
theorem greenCenteredMobiusLogComparisonEnergy_le
    {X : ℕ} (hX : 2 ≤ X) :
    greenCenteredMobiusLogComparisonEnergy X ≤
      greenFullResidualEnergyBound X := by
  rw [greenCenteredMobiusLogComparisonEnergy_eq_residualEnergy hX]
  exact tsum_sq_norm_greenCenteringResidual_le hX

/-- Epsilon formulation of asymptotic l2 agreement. -/
theorem greenCenteredMobiusLogComparisonEnergy_eventually_small
    {ε : ℝ} (hε : 0 < ε) :
    ∃ X0 : ℕ, ∀ X ≥ X0, 2 ≤ X →
      greenCenteredMobiusLogComparisonEnergy X < ε := by
  obtain ⟨X0, hX0⟩ := greenFullResidualEnergyBound_eventually_small hε
  refine ⟨X0, ?_⟩
  intro X hXX0 hX2
  exact (greenCenteredMobiusLogComparisonEnergy_le hX2).trans_lt
    (hX0 X hXX0 hX2)

end GRWTSK.RiemannHypothesis
