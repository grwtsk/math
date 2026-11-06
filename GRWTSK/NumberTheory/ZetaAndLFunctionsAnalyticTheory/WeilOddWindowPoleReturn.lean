/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-!
# The two literal pole orientations on the odd window

In Section 1 of `weil-periodic-boundary.md`, the real pole contribution
is twice the product of the two opposite exponential moments. For
a supported odd input, reflection sends one moment to minus the other.
Subtracting the two moments gives twice the sinh moment. The product
therefore returns the negative rank-one term used by the bordered form.

The result identifies the pole on the real window domain. The
comparison with the completed explicit formula remains separate.
Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWindowPoleReturn

open OddHighComplement OddLiteralWindow

private theorem integrable_exp_moment {T : ℝ} {f : ℝ → ℝ} (u : ℝ)
    (hf : MemLp f 2 volume) (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    Integrable (fun t : ℝ => f t * Real.exp (u*t)) := by
  have hfOn : IntegrableOn f (Icc (-T) T) := (hf.restrict _).integrable (by norm_num)
  have hOn : IntegrableOn (fun t : ℝ => f t * Real.exp (u*t)) (Icc (-T) T) :=
    hfOn.mul_continuousOn (by fun_prop) isCompact_Icc
  apply ((integrable_indicator_iff measurableSet_Icc).2 hOn).congr
  filter_upwards [hs] with t ht
  by_cases hm : t ∈ Icc (-T) T <;> simp [hm, ht]

/-- For an odd input, the two source pole moments have opposite signs. -/
theorem exp_moments_reflect {f : ℝ → ℝ} (ho : ∀ᵐ t : ℝ, f (-t) = -f t) :
    (∫ t : ℝ, f t * Real.exp (t/2)) = -(∫ t : ℝ, f t * Real.exp (-t/2)) := by
  have hNeg := (Measure.measurePreserving_neg (volume : Measure ℝ)).integral_comp
    (Homeomorph.neg ℝ).isClosedEmbedding.measurableEmbedding
    (fun t : ℝ => f t * Real.exp (t/2))
  calc
    _ = ∫ t : ℝ, f (-t) * Real.exp (-t/2) := hNeg.symm
    _ = ∫ t : ℝ, -(f t * Real.exp (-t/2)) := by
      apply integral_congr_ae
      filter_upwards [ho] with t ht
      rw [ht, neg_mul]
    _ = _ := integral_neg _

/-- The signed pole used in the literal window theorem equals the
two-orientation pole on the whole supported real odd domain. -/
theorem shiftedOddWeilEnergy_eq_core_add_pole_moments (T β : ℝ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (ho : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    shiftedOddWeilEnergy T β f = shiftedOddCoreEnergy T β f +
      2 * (∫ t : ℝ, f t * Real.exp (t/2)) * (∫ t : ℝ, f t * Real.exp (-t/2)) := by
  have hp : Integrable (fun t : ℝ => f t * Real.exp (t/2)) := by
    simpa only [div_mul_eq_mul_div, one_mul] using integrable_exp_moment (1/2) hf hs
  have hm : Integrable (fun t : ℝ => f t * Real.exp (-t/2)) := by
    simpa only [div_mul_eq_mul_div, neg_one_mul] using integrable_exp_moment (-1/2) hf hs
  have hdiff :
      (∫ t : ℝ, f t * Real.sinh (t/2)) =
        ((∫ t : ℝ, f t * Real.exp (t/2)) - (∫ t : ℝ, f t * Real.exp (-t/2))) / 2 := by
    rw [← integral_sub hp hm, ← integral_div]
    apply integral_congr_ae
    filter_upwards [] with t
    rw [Real.sinh_eq, show -(t/2) = -t/2 by ring]
    ring
  unfold shiftedOddWeilEnergy
  rw [hdiff, exp_moments_reflect ho]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWindowPoleReturn
