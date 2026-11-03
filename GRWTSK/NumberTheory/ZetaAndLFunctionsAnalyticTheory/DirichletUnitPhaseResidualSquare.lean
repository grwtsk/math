/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletRealDiagonalResidualOptimization

set_option autoImplicit false
noncomputable section

/-! Exact phase rotation and real-diagonal square completion on unit values.
No full analytic zero/eigenvector bridge is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletUnitPhaseResidualSquare
open DirichletRealDiagonalResidualOptimization

theorem unit_mul_conj (z : ℂ) (hz : ‖z‖=1) : z*Complex.conj z=1 := by
  rw [Complex.mul_conj, Complex.normSq_eq_norm_sq, hz]
  norm_num

theorem unit_phase_real_shift (v z : ℂ) (q : ℝ) (hz : ‖z‖=1) :
    ‖v+(q : ℂ)*z‖^2=((v*Complex.conj z).re+q)^2+(v*Complex.conj z).im^2 := by
  have he : (v+(q : ℂ)*z)*Complex.conj z=v*Complex.conj z+(q : ℂ) := by
    rw [add_mul, mul_assoc, unit_mul_conj z hz, mul_one]
  calc
    _ = ‖(v+(q : ℂ)*z)*Complex.conj z‖^2 := by
      rw [norm_mul, Complex.norm_conj, hz, mul_one]
    _ = ‖v*Complex.conj z+(q : ℂ)‖^2 := by rw [he]
    _ = _ := real_shift_norm_sq _ _

theorem unit_residual_square (t q : ℝ) (λ z s : ℂ) (hz : ‖z‖=1) :
    ‖(t : ℂ)*s+((q : ℂ)-λ)*z‖^2 =
      (q-λ.re+t*(s*Complex.conj z).re)^2+
        (t*(s*Complex.conj z).im-λ.im)^2 := by
  have he : (t : ℂ)*s+((q : ℂ)-λ)*z =
      ((t : ℂ)*s-λ*z)+(q : ℂ)*z := by ring
  have hr : ((t : ℂ)*s-λ*z)*Complex.conj z =
      (t : ℂ)*(s*Complex.conj z)-λ := by
    rw [sub_mul, mul_assoc λ z, unit_mul_conj z hz, mul_one]
    ring
  rw [he, unit_phase_real_shift _ z q hz, hr]
  simp [Complex.mul_re, Complex.mul_im]
  <;> ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletUnitPhaseResidualSquare
