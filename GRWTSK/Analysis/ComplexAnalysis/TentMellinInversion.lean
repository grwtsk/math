/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
import GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
import Mathlib.Analysis.MellinInversion
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Mellin inversion of the existing normalized tent on the line Re(s)=2

The compactly supported weight and its integral-defined kernel are unchanged.
Mellin convergence, vertical integrability and inversion are derived, not
hypotheses of the final inversion theorem. The Cauchy majorant is finite at
height zero; an inverse-height estimate alone would not establish this.
No contour shift or zeta explicit formula is proved here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.TentMellinInversion

open MeasureTheory Set Filter
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel

noncomputable section

/-- The fixed right vertical line, oriented upward by increasing real t. -/
def rightLine (t : ℝ) : ℂ := 2 + (t : ℂ) * Complex.I

/-- This coefficient equals 4*(x+h)^3/h on the admitted positive domain. -/
def rightLineConstant (x h : ℝ) : ℝ :=
  4 * Real.exp (3 * Real.log (x + h)) / h

theorem rightLine_re (t : ℝ) : (rightLine t).re = 2 := by simp [rightLine]

theorem rightLine_im (t : ℝ) : (rightLine t).im = t := by simp [rightLine]

theorem rightLineConstant_pos (x h : ℝ) (hh : 0 < h) :
    0 < rightLineConstant x h := by unfold rightLineConstant; positivity

theorem rightLineConstant_eq (x h : ℝ) (hb : 0 < x + h) :
    rightLineConstant x h = 4 * (x + h) ^ 3 / h := by
  unfold rightLineConstant
  rw [show 3 * Real.log (x + h) =
    Real.log (x + h) + Real.log (x + h) + Real.log (x + h) by ring]
  simp only [Real.exp_add, Real.exp_log hb]
  ring

/-- Positive-axis real-log powers agree with the upstream complex-power convention. -/
theorem density_eq_cpow {t : ℝ} (ht : 0 < t) (s : ℂ) :
    density s t = (t : ℂ) ^ (s - 1) := by
  rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr ht.ne')]
  rw [← Complex.ofReal_log ht.le]
  simp only [density, mul_comm]

/-- The same weighted density is supported strictly inside the endpoints. -/
theorem weightedDensity_support (x h : ℝ) (hh : 0 < h) (s : ℂ) :
    Function.support (fun t : ℝ => (tent x h t : ℂ) * density s t) ⊆
      Ioc (x - h) (x + h) := by
  intro t ht
  by_contra hout
  have hw := tent_eq_zero_of_outside x h t hh
    (fun hp => hout ⟨hp.1, hp.2.le⟩)
  exact ht (by simp [hw])

/-- Compact-domain continuity and the exact support imply ordinary integrability. -/
theorem weightedDensity_integrable (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (s : ℂ) : Integrable (fun t : ℝ => (tent x h t : ℂ) * density s t) := by
  have hw : Continuous (fun t : ℝ => (tent x h t : ℂ)) :=
    Complex.continuous_ofReal.comp (continuous_tent x h)
  have hc := hw.continuousOn.mul (density_continuousOn (b := x + h) ha s)
  have hi : IntegrableOn (fun t : ℝ => (tent x h t : ℂ) * density s t)
      (Ioc (x - h) (x + h)) := hc.integrableOn_Icc.mono_set Ioc_subset_Icc_self
  have hind := (integrable_indicator_iff measurableSet_Ioc).mpr hi
  rw [Set.indicator_eq_self.mpr (weightedDensity_support x h hh s)] at hind
  exact hind

/-- Mellin convergence is proved at every parameter, not supplied to inversion. -/
theorem mellinConvergent_tent (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (s : ℂ) :
    MellinConvergent (fun t : ℝ => (tent x h t : ℂ)) s := by
  have hi := (weightedDensity_integrable x h hh ha s).integrableOn (s := Ioi 0)
  apply hi.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [density_eq_cpow ht]
  simp only [smul_eq_mul, mul_comm]

/-- Exact equality to Mathlib's Mellin transform, including support and endpoint conventions. -/
theorem mellin_tent_eq (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (s : ℂ) :
    mellin (fun t : ℝ => (tent x h t : ℂ)) s = tentKernel x h s := by
  let f : ℝ → ℂ := fun t => (tent x h t : ℂ) * density s t
  have hsupp : Function.support f ⊆ Ioc (x - h) (x + h) :=
    weightedDensity_support x h hh s
  have hsupp0 : Function.support f ⊆ Ioi 0 := by
    intro t ht
    have ht' := hsupp ht
    exact lt_trans (by linarith : 0 < x - h) ht'.1
  have hi : Integrable f := weightedDensity_integrable x h hh ha s
  calc
    _ = ∫ t in Ioi (0 : ℝ), f t := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      change (t : ℂ) ^ (s - 1) • (tent x h t : ℂ) =
        (tent x h t : ℂ) * density s t
      rw [density_eq_cpow ht]
      simp only [smul_eq_mul, mul_comm]
    _ = ∫ t, f t := by
      rw [← integral_indicator measurableSet_Ioi, Set.indicator_eq_self.mpr hsupp0]
    _ = ∫ t in (x - h)..(x + h), f t :=
      (intervalIntegral.integral_eq_integral_of_support_subset hsupp).symm
    _ = (∫ t in (x - h)..x, f t) + (∫ t in x..(x + h), f t) :=
      (intervalIntegral.integral_add_adjacent_intervals hi.intervalIntegrable
        hi.intervalIntegrable).symm
    _ = tentKernel x h s := (tentKernel_eq_split_integral x h hh ha s).symm

/-- Continuity follows from the unchanged four compact-interval kernels. -/
theorem continuous_tentKernel (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Continuous (tentKernel x h) := by
  have hl := (differentiable_kernel ha (by linarith : x - h ≤ x)).continuous
  have hr := (differentiable_kernel (by linarith : 1 < x)
    (by linarith : x ≤ x + h)).continuous
  unfold tentKernel
  fun_prop

/-- A global vertical majorant, with no singularity at t=0. -/
theorem norm_tentKernel_rightLine_le (x h t : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    ‖tentKernel x h (rightLine t)‖ ≤ rightLineConstant x h * (1 + t ^ 2)⁻¹ := by
  have hz : rightLine t ≠ 0 := by
    intro he; have hr := congrArg Complex.re he; norm_num [rightLine] at hr
  have hz1 : rightLine t + 1 ≠ 0 := by
    intro he; have hr := congrArg Complex.re he; norm_num [rightLine] at hr
  have hsq : ‖rightLine t‖ ^ 2 = 4 + t ^ 2 := by
    simp [Complex.sq_norm, Complex.normSq_apply, rightLine]; ring
  have hsq1 : ‖rightLine t + 1‖ ^ 2 = 9 + t ^ 2 := by
    simp [Complex.sq_norm, Complex.normSq_apply, rightLine]; ring
  have hmono : ‖rightLine t‖ ≤ ‖rightLine t + 1‖ :=
    (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp (by nlinarith)
  have hprod : 1 + t ^ 2 ≤ ‖rightLine t‖ * ‖rightLine t + 1‖ := by
    have hm := mul_le_mul_of_nonneg_left hmono (norm_nonneg (rightLine t))
    nlinarith
  have hd : 0 < h * ‖rightLine t‖ * ‖rightLine t + 1‖ :=
    mul_pos (mul_pos hh (norm_pos_iff.mpr hz)) (norm_pos_iff.mpr hz1)
  have hs : 0 < h * (1 + t ^ 2) := mul_pos hh (by positivity)
  have hb := norm_tent_numerator_le x h 2 hh ha (by norm_num) (rightLine t)
    (by simp [rightLine])
  norm_num only at hb
  rw [tentKernel_eq_quotient x h hh ha (rightLine t) hz hz1,
    norm_div, norm_mul, norm_mul, Complex.norm_of_nonneg hh.le]
  rw [show rightLineConstant x h * (1 + t ^ 2)⁻¹ =
    (4 * Real.exp (3 * Real.log (x + h))) / (h * (1 + t ^ 2)) by
      unfold rightLineConstant; field_simp]
  apply (div_le_div_iff₀ hd hs).mpr
  exact (mul_le_mul_of_nonneg_right hb hs.le).trans
    (mul_le_mul_of_nonneg_left
      (by simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hprod hh.le)
      (by positivity))

/-- The vertical integrability required by upstream inversion is derived explicitly. -/
theorem verticalIntegrable_tentKernel (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Complex.VerticalIntegrable (tentKernel x h) 2 := by
  have hc : Continuous (fun t : ℝ => tentKernel x h (rightLine t)) :=
    (continuous_tentKernel x h hh ha).comp (by unfold rightLine; fun_prop)
  exact (integrable_inv_one_add_sq.const_mul (rightLineConstant x h)).mono'
    hc.aestronglyMeasurable (Eventually.of_forall fun t =>
      norm_tentKernel_rightLine_le x h t hh ha)

/-- The scalar inverse is the actual tent at every positive point, including its endpoints. -/
theorem mellinInv_tentKernel (x h y : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hy : 0 < y) :
    mellinInv 2 (tentKernel x h) y = (tent x h y : ℂ) := by
  have heq : mellin (fun t : ℝ => (tent x h t : ℂ)) = tentKernel x h :=
    funext (mellin_tent_eq x h hh ha)
  have hvert : Complex.VerticalIntegrable (mellin (fun t : ℝ => (tent x h t : ℂ))) 2 := by
    rw [heq]; exact verticalIntegrable_tentKernel x h hh ha
  simpa only [heq] using mellinInv_mellin_eq 2 (fun t : ℝ => (tent x h t : ℂ)) hy
    (mellinConvergent_tent x h hh ha 2) hvert
    (Complex.continuous_ofReal.comp (continuous_tent x h)).continuousAt

/-- Parametrizing ds=i dt leaves 1/(2*pi), not 1/(2*pi*i), in the real integral. -/
theorem rightLine_inversion (x h y : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hy : 0 < y) :
    ((1 / (2 * Real.pi) : ℝ) : ℂ) *
      (∫ t : ℝ, (y : ℂ) ^ (-rightLine t) * tentKernel x h (rightLine t)) =
        (tent x h y : ℂ) := by
  simpa [mellinInv, rightLine, smul_eq_mul, Complex.real_smul] using
    mellinInv_tentKernel x h y hh ha hy

end
end GRWTSK.Analysis.ComplexAnalysis.TentMellinInversion
