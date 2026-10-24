/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripBudget

set_option autoImplicit false

/-!
# Domain and normalization controls for the reflected strip

These are source declarations, not executed tests or numerical Gamma/zeta
certificates. NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.ReflectedStripControls

open Set
open GRWTSK.Analysis.Complex.GammaVerticalBound

/-- The negative strip maps into precisely the Gamma strip used by the supplier. -/
theorem reflected_interval (σ : ℝ) (hσ : σ ∈ Icc (-3 : ℝ) 0) :
    1 - σ ∈ Icc (1 : ℝ) 4 := by
  constructor <;> linarith [hσ.1, hσ.2]

/-- The radius-two Gamma disk stays strictly to the right of its poles. -/
theorem gamma_disk_endpoints :
    (5 / 2 : ℝ) - 2 = 1 / 2 ∧ (5 / 2 : ℝ) + 2 = 9 / 2 := by norm_num

/-- The Cauchy circle has genuine room inside the logarithm domain. -/
theorem cauchy_radii :
    (3 / 2 : ℝ) + 1 / 4 = 7 / 4 ∧ (7 / 4 : ℝ) < 2 := by norm_num

/-- A lower signed height incurs the same Gamma budget, not a negative allowance. -/
theorem height_budget_even (t : ℝ) : heightLogBudget (-t) = heightLogBudget t := by
  simp only [heightLogBudget, abs_neg]

/-- The anchor floor never vanishes at a finite real height. -/
theorem anchor_floor_positive (t : ℝ) :
    0 < Real.exp (-(Real.pi * |t|)) / envelope :=
  div_pos (Real.exp_pos _) envelope_pos

/-- Assigned values at a real cotangent pole do not satisfy the height hypothesis. -/
theorem zero_height_excluded : ¬ (1 ≤ |(0 : ℂ).im|) := by norm_num

/-- Gamma's assigned value at zero lies outside the digamma supplier domain. -/
theorem gamma_zero_excluded : ¬ ((0 : ℂ).re ∈ Icc (1 : ℝ) 4) := by norm_num

/-- The source budget grows with height; it is not a uniform constant bound. -/
theorem height_budget_increment (t : ℝ) (ht : 0 ≤ t) :
    heightLogBudget (t + 1) - heightLogBudget t = Real.pi := by
  rw [heightLogBudget, heightLogBudget, abs_of_nonneg (by linarith : 0 ≤ t + 1),
    abs_of_nonneg ht]
  ring

end GRWTSK.NumberTheory.Chebyshev.Checks.ReflectedStripControls
