/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Basic.Complex.Basic
import Mathlib.Tactic

/-! Algebra used in the Gaussian comparison of finite Jacobi determinants. -/

namespace GRWTSK.XiNewmanGaussianSections

/-- Cancellation of the linear trace error without division by a root factor. -/
theorem compensated_derivative {ι : Type*} [DecidableEq ι] (s : Finset ι)
    (u : ℂ) (m d : ι → ℂ) :
    u * s.sum d * s.prod (fun j => 1-u*m j) -
        s.sum (fun i => u*d i * (s.erase i).prod (fun j => 1-u*m j)) =
    (-u^2) * s.sum (fun i => d i*m i * (s.erase i).prod (fun j => 1-u*m j)) := by
  rw [Finset.mul_sum, Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  rw [← Finset.mul_prod_erase s (fun (j : ι) => 1-u*m j) hi]
  ring

theorem integrated_displacement (a b : ℝ) :
    (a-b)*b + (a-b)^2/2 = (a^2-b^2)/2 := by ring

/-- Exponent identity after multiplying by the two Gaussian denominators. -/
theorem tilted_gaussian_square (x z v c : ℝ) :
    (1+2*c*v)*(2*v*c*x^2+(x-z)^2) =
    ((1+2*c*v)*x-z)^2+2*v*c*z^2 := by ring

/-- Discriminant of the Gaussian expectation of (x²-A)(x²-B) as a polynomial in x². -/
theorem averaged_quartic_discriminant (a b v : ℝ) :
    (6*v-a-b)^2 - 4*(3*v^2-(a+b)*v+a*b) =
    (a-b)^2 - 8*v*(a+b) + 24*v^2 := by ring

theorem close_real_pairs_fail :
    let a : ℚ := 100^2
    let b : ℚ := (1001/10)^2
    let v : ℚ := 1/4
    (a-b)^2 - 8*v*(a+b) + 24*v^2 < 0 := by norm_num

end GRWTSK.XiNewmanGaussianSections
