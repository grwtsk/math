/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Finite quadratic estimates used in the exterior periodic Dirichlet mollifier. -/
namespace GRWTSK.XiPeriodicMollifierBound

/-- Bound a finite symmetric nonnegative quadratic kernel by its row sums. -/
theorem symmetric_row_bound {ι : Type*} (s : Finset ι) (K : ι → ι → ℝ)
    (x : ι → ℝ) (hK : ∀ i ∈ s, ∀ j ∈ s, 0 ≤ K i j)
    (hs : ∀ i j, K i j = K j i) :
    ∑ i ∈ s, ∑ j ∈ s, K i j * (x i * x j) ≤
    ∑ i ∈ s, (∑ j ∈ s, K i j) * (x i)^2 := by
  have h : (∑ i ∈ s, ∑ j ∈ s, K i j * (x i * x j)) ≤
      ∑ i ∈ s, ∑ j ∈ s, (K i j * (x i)^2 + K i j * (x j)^2) / 2 := by
    apply Finset.sum_le_sum
    intro i hi
    apply Finset.sum_le_sum
    intro j hj
    nlinarith only [mul_nonneg (hK i hi j hj) (sq_nonneg (x i - x j))]
  have hflip : (∑ i ∈ s, ∑ j ∈ s, K i j * (x j)^2) =
      ∑ i ∈ s, ∑ j ∈ s, K i j * (x i)^2 := by
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by rw [hs j i]
  simp_rw [div_eq_mul_inv, ← Finset.sum_mul, Finset.sum_add_distrib] at h
  rw [hflip] at h
  simp_rw [Finset.sum_mul]
  linarith

/-- Weighted Cauchy inequality for the boundary and primitive terms after Abel summation. -/
theorem centered_abel_square {c : ℝ} (hc : 0 ≤ c) (x y : ℝ) :
    (x+c*y)^2 ≤ (1+c)*(x^2+c*y^2) := by
  nlinarith only [mul_nonneg hc (sq_nonneg (x-y))]

/-- The two primitive-error weights add up after tail integration. -/
theorem primitive_budget {c v e h : ℝ}
    (hh : h ≤ v+e) :
    (1+c)*(h+c*(h+e)) ≤ (1+c)^2*(v+e)+(1+c)*c*e := by
  nlinarith only [mul_nonneg (sq_nonneg (1+c)) (sub_nonneg.mpr hh)]

/-- An individual common-divisor incidence column contributes the square of
the transformed coefficient. Summation against Euler or Jordan totients gives
the respective periodic variance forms. -/
theorem incidence_column {ι : Type*} (s : Finset ι) (x a : ι → ℝ) (w : ℝ) :
    ∑ i ∈ s, ∑ j ∈ s, w * (a i * a j) * (x i * x j) =
    w * (∑ i ∈ s, a i * x i)^2 := by
  rw [pow_two, Finset.sum_mul]
  simp_rw [Finset.mul_sum]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

/-- Feasible perturbations orthogonal to the candidate in the weighted variables
cannot decrease the positive totient quadratic form. -/
theorem diagonal_minimum {ι : Type*} (s : Finset ι) (w b t : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (horth : ∑ i ∈ s, w i * b i * t i = 0) :
    ∑ i ∈ s, w i * (b i)^2 ≤ ∑ i ∈ s, w i * (b i+t i)^2 := by
  have hsum : (∑ i ∈ s, w i*(b i+t i)^2) =
      (∑ i ∈ s, w i*(b i)^2) + 2*(∑ i ∈ s, w i*b i*t i) +
      ∑ i ∈ s, w i*(t i)^2 := by
    simp_rw [Finset.mul_sum, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun i _ => by ring
  rw [hsum, horth]
  have ht := Finset.sum_nonneg (s := s) (fun i hi => mul_nonneg (hw i hi) (sq_nonneg (t i)))
  linarith

/-- Cleared comparison for two symmetric exterior Poisson kernels at radius
three quarters and squared center displacement fifteen sixteenths. -/
theorem two_probe_tail {x : ℝ} (hx : 1 ≤ x) :
    (x+3/2)^2-(15/4)*x ≤ x*(x+3/2) := by nlinarith

/-- Above the balancing radius the endpoint charge of every symmetric
two-probe cover is at least four thirds after radius normalization. -/
theorem radius_endpoint {r h : ℝ} (hr : 3/4 ≤ r) (hh : 0 ≤ h)
    (hs : h^2 = 1+r^2) : 4*r/3 ≤ 4*(h-1) := by
  by_contra! hc
  have hp : 0 < 1+r/3+h := by linarith
  have hm : 0 < (1+r/3-h)*(1+r/3+h) := mul_pos (by linarith) hp
  nlinarith [mul_nonneg (by linarith : 0 ≤ r) (by linarith : 0 ≤ r-3/4)]

end GRWTSK.XiPeriodicMollifierBound
