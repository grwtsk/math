import Mathlib
set_option autoImplicit false
example {d w : ℝ} {z : ℂ} (hz : z ^ 2 + (2 * d : ℝ) * z + w = 0)
    (oscillatory : z.im ≠ 0) : w = z.re ^ 2 + z.im ^ 2 := by
  have hi := congrArg Complex.im hz
  have hr := congrArg Complex.re hz
  simp? [pow_two, Complex.mul_re, Complex.mul_im] at hi hr
  have hfactor : (z.re + d) * z.im = 0 := by nlinarith [hi]
  have hdecay : z.re + d = 0 := (mul_eq_zero.mp hfactor).resolve_right oscillatory
  have hd : d = -z.re := by linarith
  rw [hd] at hr
  nlinarith [hr]
