/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiCuspClarkHeightCriterion

/-! # Damping levels of the actual shifted modular xi determinant -/
noncomputable section
namespace GRWTSK.NumberTheory.XiCuspDampingResonances
open Complex XiToeplitzHilbertPolyaCriterion XiCuspClarkHeightCriterion

/-- The zero equation after clearing the nonvanishing incoming exponential.
At the distinguished coupling the incoming amplitude disappears. -/
def pencil (L τ : ℝ) (z : ℂ) : ℂ :=
  (1+(τ:ℂ))*exp (I*L*z)*sourceXi (1+I*z)+(1-(τ:ℂ))*sourceXi (1-I*z)

theorem critical_pencil_zero (L : ℝ) (z : ℂ) :
    pencil L 1 z = 0 ↔ sourceXi (1+I*z)=0 := by
  simp [pencil,exp_ne_zero]

/-- Changing the positive boundary coefficient selects one constant
characteristic-function level, with every denominator explicit. -/
theorem pencil_level {L τ : ℝ} (hτ : 0 < τ) {z : ℂ} (hd : sourceXi (1-I*z) ≠ 0) :
    pencil L τ z=0 ↔ exp (I*L*z)*sourceXi (1+I*z)/sourceXi (1-I*z) =
      ((τ:ℂ)-1)/(1+τ) := by
  have hp : (1+(τ:ℂ)) ≠ 0 := by
    exact_mod_cast (by linarith : (1+τ:ℝ) ≠ 0)
  rw [div_eq_div_iff hd hp]
  unfold pencil
  constructor <;> intro h <;> linear_combination h

/-- The target at the exceptional coupling, replacing the scalar response
by this family's determinant numerator without any denominator hypotheses. -/
theorem rh_iff_critical_pencil_height (L : ℝ) :
    RiemannHypothesis ↔ ∀ z : ℂ, 0 < z.im → pencil L 1 z=0 → z.im=1/2 := by
  rw [riemannHypothesis_iff_clark_height L]
  constructor <;> intro h z hz hh
  · exact h z hz ((response_eq_i_iff L hz).mpr ((critical_pencil_zero L z).mp hh))
  · exact h z hz ((critical_pencil_zero L z).mpr ((response_eq_i_iff L hz).mp hh))

end GRWTSK.NumberTheory.XiCuspDampingResonances
