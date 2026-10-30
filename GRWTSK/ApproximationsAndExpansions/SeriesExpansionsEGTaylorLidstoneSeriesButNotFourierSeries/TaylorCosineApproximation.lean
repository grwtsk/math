import GRWTSK.RealFunctions.FunctionsOfOneVariable.DifferentiationRealFunctionsOfOneVariableGeneralTheoryGeneralizedDerivativesMeanValueTheorems.FiniteNudgeQuadratic
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

/-!
# Cosine coefficient matching and actual approximation consumers

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (2017-05-07), text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series/ .
All proof bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

The actual value and first two derivatives determine the quadratic coefficients.
The third derivative also matches at zero, but coefficient matching alone is not
an error theorem. The imported analytic bound supplies a distinct quantitative
bridge on abs(x)<=1, returned to the exact source input1/10, a shifted center pi,
and the explicitly defined height model L*(1-cos(theta)). No pendulum geometry
or dynamics, general analytic equality or infinite-series convergence is assumed.
-/

namespace GRWTSK.Approximation.TaylorCosineApproximation

noncomputable def quadratic (c0 c1 c2 : ℝ) : ℝ → ℝ :=
  GRWTSK.RealAnalysis.FiniteNudgeQuadratic.quadratic c2 c1 c0

theorem quadratic_value_zero (c0 c1 c2 : ℝ) : quadratic c0 c1 c2 0 = c0 := by
  simp [quadratic, GRWTSK.RealAnalysis.FiniteNudgeQuadratic.quadratic]

theorem quadratic_derivative (c0 c1 c2 : ℝ) :
    deriv (quadratic c0 c1 c2) = fun x => 2*c2*x+c1 := by
  funext x
  exact GRWTSK.RealAnalysis.FiniteNudgeQuadratic.quadratic_deriv c2 c1 c0 x

theorem quadratic_first_zero (c0 c1 c2 : ℝ) :
    deriv (quadratic c0 c1 c2) 0 = c1 := by
  rw [quadratic_derivative]
  ring

theorem quadratic_second (c0 c1 c2 x : ℝ) :
    deriv (deriv (quadratic c0 c1 c2)) x = 2*c2 := by
  rw [quadratic_derivative]
  exact (((hasDerivAt_id x).const_mul (2*c2)).add_const c1).deriv

theorem quadratic_third (c0 c1 c2 x : ℝ) :
    deriv (deriv (deriv (quadratic c0 c1 c2))) x = 0 := by
  have hf : deriv (deriv (quadratic c0 c1 c2)) = fun _ : ℝ => 2*c2 :=
    funext (quadratic_second c0 c1 c2)
  rw [hf]
  exact (hasDerivAt_const x (2*c2)).deriv

theorem cosine_second (x : ℝ) : deriv (deriv Real.cos) x = -Real.cos x := by
  rw [Real.deriv_cos']
  exact ((Real.hasDerivAt_sin x).neg).deriv

theorem cosine_third (x : ℝ) : deriv (deriv (deriv Real.cos)) x = Real.sin x := by
  have hf : deriv (deriv Real.cos) = fun x => -Real.cos x := funext cosine_second
  rw [hf]
  simpa using ((Real.hasDerivAt_cos x).neg).deriv

/-- The hypotheses are actual derivatives, not a supplied target coefficient record. -/
theorem cosine_quadratic_coefficients_iff (c0 c1 c2 : ℝ) :
    (quadratic c0 c1 c2 0 = Real.cos 0 ∧
      deriv (quadratic c0 c1 c2) 0 = deriv Real.cos 0 ∧
      deriv (deriv (quadratic c0 c1 c2)) 0 = deriv (deriv Real.cos) 0) ↔
    c0 = 1 ∧ c1 = 0 ∧ c2 = -(1/2 : ℝ) := by
  rw [quadratic_value_zero, quadratic_first_zero, quadratic_second,
    Real.deriv_cos, cosine_second]
  simp only [Real.cos_zero, Real.sin_zero, neg_zero]
  constructor
  · rintro ⟨h0, h1, h2⟩
    exact ⟨h0, h1, by linarith⟩
  · rintro ⟨h0, h1, h2⟩
    exact ⟨h0, h1, by rw [h2]; norm_num⟩

noncomputable def cosineApprox : ℝ → ℝ := quadratic 1 0 (-(1/2 : ℝ))

theorem cosine_approx_formula (x : ℝ) : cosineApprox x = 1-x^2/2 := by
  unfold cosineApprox quadratic GRWTSK.RealAnalysis.FiniteNudgeQuadratic.quadratic
  ring

/-- The same quadratic also matches the third derivative at zero. -/
theorem approximation_matches_through_three :
    cosineApprox 0 = Real.cos 0 ∧
    deriv cosineApprox 0 = deriv Real.cos 0 ∧
    deriv (deriv cosineApprox) 0 = deriv (deriv Real.cos) 0 ∧
    deriv (deriv (deriv cosineApprox)) 0 = deriv (deriv (deriv Real.cos)) 0 := by
  have hm := (cosine_quadratic_coefficients_iff 1 0 (-(1/2 : ℝ))).mpr
    ⟨rfl, rfl, rfl⟩
  refine ⟨hm.1, hm.2.1, hm.2.2, ?_⟩
  change deriv (deriv (deriv (quadratic 1 0 (-(1/2 : ℝ))))) 0 = _
  rw [quadratic_third, cosine_third, Real.sin_zero]

/-- Quantitative error is an analytic supplier distinct from finite derivative matching. -/
theorem cosine_approx_error (x : ℝ) (hx : |x| ≤ 1) :
    |Real.cos x-cosineApprox x| ≤ |x|^4*(5/96 : ℝ) := by
  rw [cosine_approx_formula]
  exact Real.cos_bound hx

theorem source_tenth_approximation : cosineApprox (1/10 : ℝ) = 199/200 := by
  rw [cosine_approx_formula]
  norm_num

/-- Exact rational error consumer; no floating-point evaluation or decimal certification. -/
theorem source_tenth_error : |Real.cos (1/10 : ℝ)-(199/200 : ℝ)| ≤ 1/192000 := by
  have he := cosine_approx_error (1/10 : ℝ) (by norm_num)
  rw [source_tenth_approximation] at he
  norm_num at he ⊢
  exact he

/-- A center translation is returned to the actual cosine, with its actual domain. -/
theorem shifted_pi_error (h : ℝ) (hh : |h| ≤ 1) :
    |Real.cos (Real.pi+h)-(-1+h^2/2)| ≤ |h|^4*(5/96 : ℝ) := by
  have he := cosine_approx_error h hh
  rw [cosine_approx_formula] at he
  have hc : Real.cos (Real.pi+h) = -Real.cos h := by
    simpa [add_comm] using Real.cos_add_pi h
  rw [hc]
  have ha : -Real.cos h-(-1+h^2/2) = -(Real.cos h-(1-h^2/2)) := by ring
  rw [ha, abs_neg]
  exact he

/-- This is an explicit mathematical height model, not an assumed physical correspondence. -/
noncomputable def height (L θ : ℝ) : ℝ := L*(1-Real.cos θ)
noncomputable def quadraticHeight (L θ : ℝ) : ℝ := L*θ^2/2

theorem height_error_identity (L θ : ℝ) :
    |height L θ-quadraticHeight L θ| = |L|*|Real.cos θ-cosineApprox θ| := by
  rw [cosine_approx_formula]
  have he : height L θ-quadraticHeight L θ = -L*(Real.cos θ-(1-θ^2/2)) := by
    unfold height quadraticHeight
    ring
  rw [he, abs_mul, abs_neg]

theorem height_error_bound (L θ : ℝ) (hθ : |θ| ≤ 1) :
    |height L θ-quadraticHeight L θ| ≤ |L|*(|θ|^4*(5/96 : ℝ)) := by
  rw [height_error_identity]
  exact mul_le_mul_of_nonneg_left (cosine_approx_error θ hθ) (abs_nonneg L)

theorem tenth_height_error (L : ℝ) :
    |height L (1/10 : ℝ)-quadraticHeight L (1/10 : ℝ)| ≤ |L|/192000 := by
  have he := height_error_bound L (1/10 : ℝ) (by norm_num)
  norm_num at he
  convert he using 1 <;> ring

end GRWTSK.Approximation.TaylorCosineApproximation
