import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-! The two endpoint determinant and disk-to-half-plane interpolation
identities for the self-adjoint part of the arithmetic Hardy operator. -/

namespace GRWTSK.XiHardyFourPoint

theorem boundary_determinant (r t ur ut vr vt : ℂ) :
    (!![ur, r*vr; ut, t*vt] : Matrix (Fin 2) (Fin 2) ℂ).det =
      t*ur*vt-r*ut*vr := by
  simp [Matrix.det_fin_two]
  ring

theorem endpoints {c r : ℂ} (hr : r ≠ 0) (h : c*r^2 + r-c = 0) :
    c*(-1/r)^2 + (-1/r)-c = 0 := by
  field_simp
  linear_combination -h

theorem endpoint_scale {c r : ℂ} (hr : r ≠ 0) (h : c*r^2 + r-c = 0) :
    (-c)*(1-r)*(-1/r-1) = 1 := by
  field_simp
  linear_combination -h

theorem split_weight {v a : ℂ} (hv : v ≠ 0) (hp : v+a ≠ 0) (h : v^2+a^2 ≠ 0) :
    1/(1+((v-a)/(v+a))^2) = 1/2 + a/(v-(-a^2/v)) := by
  rw [div_pow]
  have h1 : 1+(v-a)^2/(v+a)^2 = 2*(v^2+a^2)/(v+a)^2 := by
    field_simp [hp]
    ring
  have h2 : v-(-a^2/v) = (v^2+a^2)/v := by
    field_simp [hv]
    ring
  rw [h1, h2]
  field_simp [h]
  ring

/-- Centered two-point controls include a pair off the real spectral axis. -/
theorem two_point_skew {a b : ℝ} (hb : b ≠ 0) (ha : a ≠ 0) :
    ((((1-(2*a/b)^2)^2-1)/(4*a^2)) - 2/b^2)/4 = (a^2-b^2)/b^4 := by
  field_simp
  ring

end GRWTSK.XiHardyFourPoint
