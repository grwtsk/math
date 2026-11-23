/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-! Exact scalar identities for the nonnormal modular-cusp realization.
The conjugate of the second spectral parameter is denoted by w. -/

namespace GRWTSK.NumberTheory.XiModularResolventObstruction

/-- Divided difference of the boundary data at two distinct parameters
with distinct quadratic energies. -/
theorem divided_boundary (Y v w : ℂ) (hY : Y ≠ 0) (hv : v ≠ 0) (hw : w ≠ 0)
    (hvw : v ≠ w) (hs : 1-v-w ≠ 0) :
    ((-(Y*w)⁻¹)-(-(Y*v)⁻¹)) / (v*(v-1)-w*(w-1)) =
      (Y*v*w*(1-v-w))⁻¹ := by
  have e : v*(v-1)-w*(w-1) = -(v-w)*(1-v-w) := by ring
  rw [e]
  field_simp [hY,hv,hw,sub_ne_zero.mpr hvw,hs]
  <;> ring

/-- Recover the ordinary Gram entry from its Green-weighted entry. -/
theorem boundary_gram (Y v w : ℂ) (hY : Y ≠ 0) (hv : v ≠ 0)
    (hw : w ≠ 0) (hs : 1-v-w ≠ 0) :
    -(Y*w)⁻¹-v*(v-1)*(Y*v*w*(1-v-w))⁻¹=(Y*(1-v-w))⁻¹ := by
  field_simp [hY,hv,hw,hs]
  <;> ring

/-- The reciprocal xi strip gives a uniform scalar resolvent bound
on the upper imaginary axis, valid even at an off-line zero. -/
theorem strip_distance (a : ℂ) (y : ℝ) (hi : a.im ≤ 1/2) (hy : 1 ≤ y) :
    ‖a‖ ≤ ‖a-(y:ℂ)*Complex.I‖ := by
  rw [← Real.sqrt_sq (norm_nonneg a), ← Real.sqrt_sq (norm_nonneg (a-(y:ℂ)*Complex.I))]
  apply Real.sqrt_le_sqrt
  simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
    Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_zero, zero_mul, mul_one, sub_zero, add_zero]
  nlinarith [mul_nonneg (show 0 ≤ y by linarith) (show 0 ≤ y-2*a.im by linarith)]

end GRWTSK.NumberTheory.XiModularResolventObstruction
