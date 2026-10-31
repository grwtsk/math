import GRWTSK.OrdinaryDifferentialEquations.QualitativeTheoryForOrdinaryDifferentialEquations.NonlinearOscillationsAndCoupledOscillatorsForOrdinaryDifferentialEquations.PendulumEnergy
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# Actual linearized pendulum and its nonlinear residual

Local attribution: grwtsk contributors.
Grant Sanderson, Differential equations, studying the unsolvable (2019-03-31),
https://www.3blue1brown.com/lessons/differential-equations/ .
Current animation 3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2019/diffyq/part1/shared_constructs.py get_ode/get_period_formula;
pendulum.py184..198; CC BY-NC-SA4.0/public attribution retained.
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

The explicit undamped linearized trajectory has a period, not necessarily a
least period. Its residual in the displayed nonlinear equation is bounded;
this is not a nonlinear-versus-linear trajectory error theorem.
-/
namespace GRWTSK.ODE.PendulumEnergy

noncomputable def frequency (g L : ℝ) : ℝ := Real.sqrt (g/L)
noncomputable def linearTheta (A g L t : ℝ) : ℝ := A*Real.cos (frequency g L*t)
noncomputable def linearOmega (A g L t : ℝ) : ℝ := -A*frequency g L*Real.sin (frequency g L*t)
noncomputable def linearPeriod (g L : ℝ) : ℝ := 2*Real.pi/frequency g L
noncomputable def nonlinearResidual (A g L t : ℝ) : ℝ :=
  deriv (linearOmega A g L) t-acceleration 0 g L (linearTheta A g L t) (linearOmega A g L t)

theorem frequency_positive (g L : ℝ) (hg : 0 < g) (hL : 0 < L) :
    0 < frequency g L := Real.sqrt_pos.mpr (div_pos hg hL)

theorem frequency_square (g L : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    (frequency g L)^2 = g/L := Real.sq_sqrt (div_nonneg hg hL.le)

theorem linear_initial (A g L : ℝ) :
    linearTheta A g L 0 = A ∧ linearOmega A g L 0 = 0 := by
  simp [linearTheta,linearOmega]

theorem linear_theta_derivative (A g L t : ℝ) :
    HasDerivAt (linearTheta A g L) (linearOmega A g L t) t := by
  have hd := ((Real.hasDerivAt_cos (frequency g L*t)).comp t
    ((hasDerivAt_id t).const_mul (frequency g L))).const_mul A
  convert hd using 1 <;> simp [linearTheta,linearOmega] <;> ring

theorem linear_omega_derivative (A g L t : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    HasDerivAt (linearOmega A g L) (-(g/L)*linearTheta A g L t) t := by
  have hd := ((Real.hasDerivAt_sin (frequency g L*t)).comp t
    ((hasDerivAt_id t).const_mul (frequency g L))).const_mul (-A*frequency g L)
  have he : -(g/L)*linearTheta A g L t =
      (-A*frequency g L)*(Real.cos (frequency g L*t)*(frequency g L*1)) := by
    rw [← frequency_square g L hg hL]
    unfold linearTheta
    ring
  rw [he]
  simpa only [linearOmega] using hd

theorem displayed_period_identity (g L : ℝ) (hg : 0 < g) (hL : 0 < L) :
    linearPeriod g L = 2*Real.pi*Real.sqrt (L/g) := by
  unfold linearPeriod frequency
  rw [Real.sqrt_div hg.le L,Real.sqrt_div hL.le g]
  field_simp [ne_of_gt (Real.sqrt_pos.mpr hg),ne_of_gt (Real.sqrt_pos.mpr hL)]
  <;> ring

theorem linear_period_positive (g L : ℝ) (hg : 0 < g) (hL : 0 < L) :
    0 < linearPeriod g L :=
  div_pos (mul_pos (by norm_num) Real.pi_pos) (frequency_positive g L hg hL)

theorem linear_theta_periodic (A g L : ℝ) (hg : 0 < g) (hL : 0 < L) :
    Function.Periodic (linearTheta A g L) (linearPeriod g L) := by
  intro t
  have hf := ne_of_gt (frequency_positive g L hg hL)
  have he : frequency g L*(t+linearPeriod g L) = frequency g L*t+2*Real.pi := by
    unfold linearPeriod
    field_simp [hf]
    <;> ring
  simp [linearTheta,he,Real.cos_add_two_pi]

theorem linear_omega_periodic (A g L : ℝ) (hg : 0 < g) (hL : 0 < L) :
    Function.Periodic (linearOmega A g L) (linearPeriod g L) := by
  intro t
  have hf := ne_of_gt (frequency_positive g L hg hL)
  have he : frequency g L*(t+linearPeriod g L) = frequency g L*t+2*Real.pi := by
    unfold linearPeriod
    field_simp [hf]
    <;> ring
  simp [linearOmega,he,Real.sin_add_two_pi]

theorem nonlinear_residual_identity (A g L t : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    nonlinearResidual A g L t =
      (g/L)*(Real.sin (linearTheta A g L t)-linearTheta A g L t) := by
  rw [nonlinearResidual,(linear_omega_derivative A g L t hg hL).deriv]
  unfold acceleration
  ring

theorem nonlinear_residual_bound (A g L t : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    |nonlinearResidual A g L t| ≤ |g/L|*|linearTheta A g L t|^3/6 := by
  rw [nonlinear_residual_identity A g L t hg hL,abs_mul]
  have hs : |Real.sin (linearTheta A g L t)-linearTheta A g L t| ≤
      |linearTheta A g L t|^3/6 := by
    simpa only [abs_sub_comm] using Real.abs_sub_sin_le (linearTheta A g L t)
  have hm := mul_le_mul_of_nonneg_left hs (abs_nonneg (g/L))
  nlinarith

theorem linear_amplitude_bound (A g L t : ℝ) : |linearTheta A g L t| ≤ |A| := by
  unfold linearTheta
  rw [abs_mul]
  have h := mul_le_mul_of_nonneg_left (Real.abs_cos_le_one (frequency g L*t)) (abs_nonneg A)
  simpa using h

theorem nonlinear_residual_amplitude_bound (A g L t : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    |nonlinearResidual A g L t| ≤ |g/L|*|A|^3/6 := by
  have hc : |linearTheta A g L t|^3 ≤ |A|^3 :=
    pow_le_pow_left₀ (abs_nonneg _) (linear_amplitude_bound A g L t) 3
  have hm := mul_le_mul_of_nonneg_left hc (abs_nonneg (g/L))
  have hb := nonlinear_residual_bound A g L t hg hL
  nlinarith

/-- Zero amplitude is constant and admits every real period. -/
theorem zero_amplitude_every_period (g L p : ℝ) :
    Function.Periodic (linearTheta 0 g L) p := by
  intro t
  simp [linearTheta]

end GRWTSK.ODE.PendulumEnergy
