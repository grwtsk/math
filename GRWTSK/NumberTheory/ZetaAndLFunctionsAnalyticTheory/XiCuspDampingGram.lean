/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Tactic

/-! # Cauchy kernels of the damped modular eigenvectors -/

namespace GRWTSK.NumberTheory.XiCuspDampingGram
open Complex

/-- One real eigenvalue's resolvent contribution to the polarized
Herglotz kernel. Integration against the boundary measure gives its Gram law. -/
theorem polarized_resolvent (z w a : ℂ) (hz : 1-z*a ≠ 0) (hw : 1-w*a ≠ 0) :
    z/(1-z*a)-w/(1-w*a) = (z-w)/((1-z*a)*(1-w*a)) := by
  rw [div_sub_div _ _ hz hw]
  congr 1
  ring

/-- The normalized separated Cauchy vectors have the exact two-point deficit
used in the finite Cauchy determinant and the Blaschke separation product. -/
theorem pair_deficit (x y u v : ℝ) (hy : 0 < y) (hv : 0 < v) :
    1-4*y*v/((x-u)^2+(y+v)^2) =
      ((x-u)^2+(y-v)^2)/((x-u)^2+(y+v)^2) := by
  have h : 0 < (x-u)^2+(y+v)^2 := by positivity
  field_simp
  ring

/-- Boundary differentiation at a noncritical level, retaining the Cayley factor. -/
theorem response_derivative {θ : ℂ → ℂ} {z d : ℂ} (h : HasDerivAt θ d z)
    (hn : 1+θ z ≠ 0) :
    HasDerivAt (fun w => I*(1-θ w)/(1+θ w)) (-2*I*d/(1+θ z)^2) z := by
  have e := ((h.const_sub 1).const_mul I).div (h.const_add 1) hn
  convert e using 1 <;> ring

end GRWTSK.NumberTheory.XiCuspDampingGram
