import FormalResearch.RiemannHypothesis.ThetaKernel
example (y : ℝ) (h : 2*y-3≠0) :
  -15+30*y-8*y^2 = (2*y-3)*(9+12/(2*y-3)-4*y) := by
  linear_combination -12 * (mul_inv_cancel₀ h)
example (y : ℝ) (h : 2*y-3≠0) :
  -75+330*y-224*y^2+32*y^3 = (2*y-3)*((9+12/(2*y-3)-4*y)^2 +(-16*y-96*y/(2*y-3)^2)) := by
  simp only [div_eq_mul_inv, ← inv_pow]
  linear_combination (48*((2*y-3)*(2*y-3)⁻¹)+96*y-168) * (mul_inv_cancel₀ h)
