import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-! Local algebra for the moving-center Poisson–Jensen bound and periodic sieve. -/

namespace GRWTSK.XiBoundaryMomentEstimates

open scoped BigOperators

/-- The logarithmic Jensen parameter sees every transverse contribution above
the comparison height. This does not assume a sign for lower-height data. -/
theorem moving_center_minorant {T y r σ : ℝ}
    (hT : 0 < T) (hy : 0 < y) (hr : T ≤ r) (hσ : 0 ≤ σ) :
    (2*y/(1+(y/T)^2)) * (σ/r^2) ≤ 2*y*σ/(r^2+y^2) := by
  have hr' : 0 < r := lt_of_lt_of_le hT hr
  have ha : 0 < 1+(y/T)^2 := by positivity
  have hb : 0 < r^2+y^2 := by positivity
  field_simp
  nlinarith [mul_nonneg (mul_nonneg (mul_nonneg (sq_nonneg y) hy.le) hσ)
    (sub_nonneg.mpr (pow_le_pow_left₀ hT.le hr 2))]

/-- Exact optimization of the comparison scale in the numerator. -/
theorem comparison_scale {T y : ℝ} (hT : 0 < T) (hy : 0 < y) :
    T ≤ (T^2+y^2)/(2*y) := by
  apply (le_div_iff₀ (by positivity : 0 < 2*y)).2
  nlinarith [sq_nonneg (T-y)]

/-- The Gram expansion subtracted in the sieve prefix. -/
theorem squared_discrepancy {ι : Type*} (s : Finset ι) (w u v : ι → ℝ) :
    ∑ i ∈ s, w i*(u i-v i)^2 =
      (∑ i ∈ s, w i*(u i)^2) - 2*(∑ i ∈ s, w i*u i*v i) +
        ∑ i ∈ s, w i*(v i)^2 := by
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- Pointwise mean-square bound used after centering the periodic discrepancy. -/
theorem centered_discrepancy_bound (u v c : ℝ) :
    (u-v)^2 ≤ 2*(u-c)^2+2*(v-c)^2 := by
  nlinarith [sq_nonneg (u+v-2*c)]

/-- The two-coordinate contribution in the exact Möbius sawtooth variance. -/
theorem sieve_variance_factor {p : ℝ} (hp : p ≠ 0) :
    1 - 1/p - 1/p + p^2/(p*p) = 2*(1-1/p) := by
  field_simp
  <;> ring

/-- The elementary covariance of two centered, coprime-period fractional
parts reduces to the average of the centered square on a unit interval. -/
theorem centered_residue_average {a b : ℝ} (ha : a ≠ 0) (hb : b ≠ 0) (t : ℝ) :
    (((a-1)/2+t)/a-1/2)*(((b-1)/2+t)/b-1/2) = (t-1/2)^2/(a*b) := by
  field_simp
  <;> ring

end GRWTSK.XiBoundaryMomentEstimates
