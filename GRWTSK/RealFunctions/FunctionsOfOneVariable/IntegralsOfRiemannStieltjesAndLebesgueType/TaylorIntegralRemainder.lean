import GRWTSK.RealFunctions.FunctionsOfOneVariable.IntegralsOfRiemannStieltjesAndLebesgueType.TaylorRectangleTriangle
import GRWTSK.RealFunctions.FunctionsOfOneVariable.DifferentiationRealFunctionsOfOneVariableGeneralTheoryGeneralizedDerivativesMeanValueTheorems.FiniteNudgeControl

/-!
# Actual derivative control integrated into a quadratic remainder

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (geometric view),2017-05-07,text Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series-geometric-view/ .
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

For an actual graph differentiable at a and continuous on a fixed neighborhood,
its derivative yields pointwise residual control, then a bound for the actual
oriented integral. The radius may depend on the graph,point,slope,neighborhood
and epsilon. No desired remainder estimate is an assumed field. Both orientations
and the zero increment are retained; no all-order analyticity follows.
-/

namespace GRWTSK.RealAnalysis.TaylorIntegralRemainder

open MeasureTheory Set Filter
open GRWTSK.RealAnalysis.FiniteNudgeQuadratic
open GRWTSK.RealAnalysis.TaylorRectangleTriangle
open scoped Interval Topology

noncomputable def integralResidual (g : ℝ → ℝ) (a B h : ℝ) : ℝ :=
  (∫ t in a..a+h, g t)-g a*h-B*h^2/2

theorem interval_displacement (a h t : ℝ) (ht : t ∈ uIcc a (a+h)) :
    |t-a| ≤ |h| := by
  simpa only [add_sub_cancel_left] using abs_sub_left_of_mem_uIcc ht

theorem interval_in_neighborhood (a r h : ℝ) (hh : |h| ≤ r) :
    uIcc a (a+h) ⊆ Icc (a-r) (a+r) := by
  intro t ht
  have ha := abs_le.mp ((interval_displacement a h t ht).trans hh)
  constructor <;> linarith

/-- Actual quotient control is multiplied by the step; zero is treated separately. -/
theorem derivative_linear_control {g : ℝ → ℝ} {a B : ℝ} (hg : HasDerivAt g B a)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ δ > 0, ∀ h : ℝ, |h| < δ → |g (a+h)-g a-B*h| ≤ ε*|h| := by
  obtain ⟨δ,hδ,hc⟩ := (derivative_iff_control g a B).mp hg ε hε
  refine ⟨δ,hδ,fun h hh => ?_⟩
  by_cases hz : h = 0
  · simp [hz]
  · have he : g (a+h)-g a-B*h = (nudge g a h-B)*h := by
      dsimp [nudge]
      field_simp [hz]
      <;> ring
    rw [he,abs_mul]
    exact mul_le_mul_of_nonneg_right (le_of_lt (hc h hz hh)) (abs_nonneg h)

theorem residual_integral_identity {g : ℝ → ℝ} (a B h : ℝ)
    (hg : IntervalIntegrable g volume a (a+h)) :
    integralResidual g a B h = ∫ t in a..a+h, g t-(g a+B*(t-a)) := by
  have hl : IntervalIntegrable (fun t : ℝ => g a+B*(t-a)) volume a (a+h) :=
    (continuous_const.add (continuous_const.mul (continuous_id.sub continuous_const))).intervalIntegrable a (a+h)
  have he : (∫ t in a..a+h, g a+B*(t-a)) = g a*h+B*h^2/2 := by
    have hf : (fun t : ℝ => g a+B*(t-a)) = graph (g a) B 0 a := by
      funext t
      simp [graph]
    rw [hf]
    exact affine_exact (g a) B a h
  rw [intervalIntegral.integral_sub hg hl,he]
  dsimp [integralResidual]
  ring

/-- Both orientations are bounded by the same actual residual height times absolute width. -/
theorem integrated_quadratic_control {g : ℝ → ℝ} {a B r : ℝ}
    (hg : HasDerivAt g B a) (hr : 0 < r)
    (hgc : ContinuousOn g (Icc (a-r) (a+r))) (ε : ℝ) (hε : 0 < ε) :
    ∃ δ > 0, δ ≤ r ∧ ∀ h : ℝ, |h| < δ → |integralResidual g a B h| ≤ ε*h^2 := by
  obtain ⟨d,hd,hpoint⟩ := derivative_linear_control hg ε hε
  refine ⟨min r d,lt_min hr hd,min_le_left _ _,fun h hh => ?_⟩
  have hhr : |h| ≤ r := (lt_of_lt_of_le hh (min_le_left _ _)).le
  have hhd : |h| < d := lt_of_lt_of_le hh (min_le_right _ _)
  have hi : IntervalIntegrable g volume a (a+h) :=
    (hgc.mono (interval_in_neighborhood a r h hhr)).intervalIntegrable
  rw [residual_integral_identity a B h hi]
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := a) (b := a+h) (C := ε*|h|)
    (f := fun t : ℝ => g t-(g a+B*(t-a))) (fun t ht => by
      have ht' : t ∈ uIcc a (a+h) := uIoc_subset_uIcc ht
      have hs := interval_displacement a h t ht'
      have hp := hpoint (t-a) (lt_of_le_of_lt hs hhd)
      have he : a+(t-a) = t := by ring
      rw [he] at hp
      have hc : |g t-(g a+B*(t-a))| ≤ ε*|h| := by
        calc |g t-(g a+B*(t-a))| = |g t-g a-B*(t-a)| := by congr 1 <;> ring
             _ ≤ ε*|t-a| := hp
             _ ≤ ε*|h| := mul_le_mul_of_nonneg_left hs hε.le
      simpa only [Real.norm_eq_abs] using hc)
  have he : (ε*|h|)*|a+h-a| = ε*h^2 := by
    simp only [add_sub_cancel_left]
    rw [mul_assoc,← sq_abs]
    ring
  simpa only [Real.norm_eq_abs,he] using hb

theorem residual_zero (g : ℝ → ℝ) (a B : ℝ) : integralResidual g a B 0 = 0 := by
  simp [integralResidual]

/-- The actual quadratic-normalized residual tends to zero on punctured increments. -/
theorem normalized_remainder_tendsto {g : ℝ → ℝ} {a B r : ℝ}
    (hg : HasDerivAt g B a) (hr : 0 < r)
    (hgc : ContinuousOn g (Icc (a-r) (a+r))) :
    Tendsto (fun h : ℝ => integralResidual g a B h/h^2) (𝓝[≠] 0) (𝓝 0) := by
  rw [Metric.tendsto_nhdsWithin_nhds]
  intro ε hε
  obtain ⟨δ,hδ,_,hc⟩ := integrated_quadratic_control hg hr hgc (ε/2) (by positivity)
  refine ⟨δ,hδ,fun h hz hh => ?_⟩
  have hn : h ≠ 0 := by simpa using hz
  have hs : 0 < h^2 := sq_pos_of_ne_zero hn
  have hb : |integralResidual g a B h/h^2| ≤ ε/2 := by
    rw [abs_div,abs_of_pos hs]
    apply (div_le_iff₀ hs).2
    exact hc h (by simpa [Real.dist_eq] using hh)
  simpa [Real.dist_eq] using lt_of_le_of_lt hb (by linarith : ε/2 < ε)

/-- The full source rectangle/triangle approximation is returned to the actual integral. -/
theorem source_integral_approximation {g : ℝ → ℝ} {a B r : ℝ}
    (hg : HasDerivAt g B a) (hr : 0 < r)
    (hgc : ContinuousOn g (Icc (a-r) (a+r))) :
    ∀ ε > 0, ∃ δ > 0, ∀ h : ℝ, |h| < δ →
      |(∫ t in a..a+h, g t)-(g a*h+B*h^2/2)| ≤ ε*h^2 := by
  intro ε hε
  obtain ⟨δ,hδ,_,hc⟩ := integrated_quadratic_control hg hr hgc ε hε
  refine ⟨δ,hδ,fun h hh => ?_⟩
  simpa only [integralResidual,sub_add_eq_sub_sub] using hc h hh

end GRWTSK.RealAnalysis.TaylorIntegralRemainder
