module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Weighted summatory bounds

This file records the theorem-language form of membership in a weighted
`ℓ∞` space.  It deliberately does not assert any estimate for a Dirichlet
character: the function and exponent are explicit inputs.

The restriction `2 ≤ x` keeps the weight away from the origin.  In
particular, weighted bounds are monotone in the exponent, which is the only
analytic fact needed by the countable critical-space adapter.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- A summatory function is bounded by a fixed multiple of `x ^ σ` for all
integer arguments `x ≥ 2`.  The constant may depend on `σ` and `F`. -/
@[expose]
def HasWeightedSummatoryBound (σ : ℝ) (F : ℕ → ℂ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ x : ℕ, 2 ≤ x →
      ‖F x‖ ≤ C * Real.rpow (x : ℝ) σ

/-- Increasing the exponent weakens a weighted summatory bound. -/
@[surface_adapter, surface_published]
theorem HasWeightedSummatoryBound.mono_exponent
    {σ τ : ℝ} {F : ℕ → ℂ} (hστ : σ ≤ τ)
    (hF : HasWeightedSummatoryBound σ F) :
    HasWeightedSummatoryBound τ F := by
  obtain ⟨C, hC, hbound⟩ := hF
  refine ⟨C, hC, ?_⟩
  intro x hx
  have hx_one : (1 : ℝ) ≤ (x : ℝ) := by
    exact_mod_cast (show 1 ≤ x by omega)
  calc
    ‖F x‖ ≤ C * Real.rpow (x : ℝ) σ := hbound x hx
    _ ≤ C * Real.rpow (x : ℝ) τ := by
      exact mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow_of_exponent_le hx_one hστ) hC

/-- The same monotonicity rule with the hypotheses ordered for forward
composition in theorem graphs. -/
@[surface_adapter, surface_published]
theorem hasWeightedSummatoryBound_mono
    {σ τ : ℝ} {F : ℕ → ℂ}
    (hF : HasWeightedSummatoryBound σ F) (hστ : σ ≤ τ) :
    HasWeightedSummatoryBound τ F :=
  hF.mono_exponent hστ

end

end Surface.Core.DirichletGRH

