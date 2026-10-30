import Mathlib.Analysis.Calculus.LHopital
import Mathlib.Analysis.Calculus.Deriv.Slope
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Tactic.NormNum

/-!
# The L'Hopital lesson's actual quotient limits

Local attribution: grwtsk contributors.
Grant Sanderson, L'Hopital's rule (2017-05-04), text adaptation Kurt Bruns.
https://www.3blue1brown.com/lessons/l-hopitals-rule/
All proof bodies: NOT_RUN_USER_DEFERRED.

The pointwise ratio-of-linearizations route requires denominator derivative !=0.
It is proved by actual punctured slope cancellation, then consumed by the
lesson's sine/pi example and both exercises. The sin(x)/x exercise also supplies
ALL premises of the imported neighborhood rule as a separate proof route.
No desired quotient limit is an assumed interface field. The zero-derivative
boundary is illustrated by x^2/x^2, whose limit is1 despite formal0/0=0.
-/

namespace GRWTSK.RealAnalysis.LHopitalLesson

open Filter
open scoped Topology

/-- Point derivatives at a common zero with NONZERO denominator slope suffice. -/
theorem quotient_of_point_derivatives {f g : ℝ → ℝ} {a u v : ℝ}
    (hf : HasDerivAt f u a) (hg : HasDerivAt g v a)
    (hf0 : f a = 0) (hg0 : g a = 0) (hv : v ≠ 0) :
    Tendsto (fun x => f x / g x) (𝓝[≠] a) (𝓝 (u/v)) := by
  have hq := hf.tendsto_slope.div hg.tendsto_slope hv
  refine (tendsto_congr' ?_).mp hq
  filter_upwards [self_mem_nhdsWithin] with x hx
  rw [slope_def_field, slope_def_field, hf0, hg0, sub_zero, sub_zero]
  exact div_div_div_cancel_right₀ (sub_ne_zero.mpr hx) _ _

theorem sine_pi_derivative_at_one :
    HasDerivAt (fun x : ℝ => Real.sin (Real.pi*x)) (-Real.pi) 1 := by
  simpa using (Real.hasDerivAt_sin (Real.pi*1)).comp 1
    ((hasDerivAt_id (1 : ℝ)).const_mul Real.pi)

theorem square_minus_one_derivative_at_one :
    HasDerivAt (fun x : ℝ => x^2-1) 2 1 := by
  simpa using ((hasDerivAt_id (1 : ℝ)).pow 2).sub_const 1

/-- Exact primary-source example; no floating point value is used. -/
theorem sine_pi_over_square_limit :
    Tendsto (fun x : ℝ => Real.sin (Real.pi*x)/(x^2-1))
      (𝓝[≠] 1) (𝓝 (-Real.pi/2)) := by
  exact quotient_of_point_derivatives sine_pi_derivative_at_one
    square_minus_one_derivative_at_one (by simp) (by norm_num) (by norm_num)

/-- First actual source exercise via pointwise derivatives. -/
theorem sine_over_identity_limit :
    Tendsto (fun x : ℝ => Real.sin x/x) (𝓝[≠] 0) (𝓝 1) := by
  have hf : HasDerivAt Real.sin 1 0 := by simpa using Real.hasDerivAt_sin 0
  simpa using quotient_of_point_derivatives hf (hasDerivAt_id (0 : ℝ))
    (by simp) rfl (by norm_num)

/-- A distinct neighborhood-rule application with every analytical premise supplied. -/
theorem sine_over_identity_limit_by_neighborhood_rule :
    Tendsto (fun x : ℝ => Real.sin x/x) (𝓝[≠] 0) (𝓝 1) := by
  have hf : Tendsto Real.sin (𝓝[≠] 0) (𝓝 0) := by
    simpa using (Real.continuous_sin.continuousAt (x := (0 : ℝ))).tendsto.mono_left
      nhdsWithin_le_nhds
  have hg : Tendsto (fun x : ℝ => x) (𝓝[≠] 0) (𝓝 0) :=
    continuousAt_id.tendsto.mono_left nhdsWithin_le_nhds
  have hr : Tendsto (fun x : ℝ => Real.cos x/1) (𝓝[≠] 0) (𝓝 1) := by
    simpa using (Real.continuous_cos.continuousAt (x := (0 : ℝ))).tendsto.mono_left
      nhdsWithin_le_nhds
  exact HasDerivAt.lhopital_zero_nhdsNE
    (Eventually.of_forall Real.hasDerivAt_sin)
    (Eventually.of_forall (fun x : ℝ => hasDerivAt_id x))
    (Eventually.of_forall (fun _ => (one_ne_zero : (1 : ℝ) ≠ 0))) hf hg hr

theorem cube_minus_one_derivative_at_one :
    HasDerivAt (fun x : ℝ => x^3-1) 3 1 := by
  simpa using ((hasDerivAt_id (1 : ℝ)).pow 3).sub_const 1

/-- Second actual source exercise; cancellation is through the punctured slope bridge. -/
theorem cube_minus_one_over_linear_limit :
    Tendsto (fun x : ℝ => (x^3-1)/(x-1)) (𝓝[≠] 1) (𝓝 3) := by
  have hg : HasDerivAt (fun x : ℝ => x-1) 1 1 :=
    (hasDerivAt_id (1 : ℝ)).sub_const 1
  simpa using quotient_of_point_derivatives cube_minus_one_derivative_at_one hg
    (by norm_num) (by norm_num) (by norm_num)

/-- A local boundary example: differentiability alone does not justify dividing zero slopes. -/
theorem square_over_square_limit :
    Tendsto (fun x : ℝ => x^2/x^2) (𝓝[≠] 0) (𝓝 1) := by
  have he : (fun _ : ℝ => (1 : ℝ)) =ᶠ[𝓝[≠] 0] (fun x : ℝ => x^2/x^2) := by
    filter_upwards [self_mem_nhdsWithin] with x hx
    simp [pow_ne_zero 2 hx]
  exact (tendsto_congr' he).mp tendsto_const_nhds

theorem square_derivative_zero : HasDerivAt (fun x : ℝ => x^2) 0 0 := by
  simpa using (hasDerivAt_id (0 : ℝ)).pow 2

theorem blind_zero_slope_ratio_differs : (0 : ℝ)/0 ≠ 1 := by norm_num

end GRWTSK.RealAnalysis.LHopitalLesson
