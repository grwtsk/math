import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! Finite interpolation and arithmetic Cayley coordinates used in estimating
the convergence of Hardy approximation energies. -/

namespace GRWTSK.XiHardyApproximationRates

open scoped BigOperators

/-- Evaluation on the unit circle, in the ordinary coefficient norm. -/
theorem boundary_energy (n : ℕ) (a : ℕ → ℂ) (u : ℂ) (hu : ‖u‖ = 1) :
    ‖∑ k ∈ Finset.range n, a k * u ^ k‖ ^ 2 ≤
      (n : ℝ) * ∑ k ∈ Finset.range n, ‖a k‖ ^ 2 := by
  have h := norm_sum_le (Finset.range n) (fun k => a k * u ^ k)
  simp only [norm_mul, norm_pow, hu, one_pow, mul_one] at h
  have hs : 0 ≤ ∑ k ∈ Finset.range n, ‖a k‖ := Finset.sum_nonneg fun _ _ => norm_nonneg _
  calc
    _ ≤ (∑ k ∈ Finset.range n, ‖a k‖) ^ 2 := by
      exact pow_le_pow_left₀ (norm_nonneg _) h _
    _ ≤ _ := by simpa using
        (sq_sum_le_card_mul_sum_sq (s := Finset.range n) (f := fun k => ‖a k‖))

/-- The off-arc geometric-sum bound before taking powers of the peak. -/
theorem peak_bound (n : ℕ) (u : ℂ) (hu : ‖u‖ = 1) :
    ‖∑ k ∈ Finset.range n, u ^ k‖ * ‖u - 1‖ ≤ 2 := by
  rw [← norm_mul, geom_sum_mul]
  simpa [norm_pow, hu, one_add_one_eq_two] using (norm_sub_le (u ^ n) (1 : ℂ))

/-- Separating two boundary ordinates in disk coordinates. -/
theorem cayley_separation (a b : ℂ) (ha : 1 + a ≠ 0) (hb : 1 + b ≠ 0) :
    (1 - a) / (1 + a) - (1 - b) / (1 + b) =
      2 * (b - a) / ((1 + a) * (1 + b)) := by
  field_simp
  ring

/-- The amplitude including the constant modification, made at an
actual critical-line ordinate in half-plane coordinates. -/
theorem boundary_amplitude (a b t : ℂ) (ht : t ≠ 0) (hp : 1 + t ≠ 0) :
    a / (1 - (1-t)/(1+t)) - b/2 = (a-b)/2 + a/(2*t) := by
  have h : 1 - (1-t)/(1+t) = 2*t/(1+t) := by field_simp; ring
  rw [h]
  field_simp
  ring

/-- If infinitely many boundary amplitudes converge to zero after the
constant correction, the two limiting complex values must agree. -/
theorem amplitude_rigidity (a b : ℂ) {e : ℕ → ℂ}
    (hsmall : Filter.Tendsto e Filter.atTop (nhds 0))
    (hcancel : Filter.Tendsto (fun k => (a-b)/2 + e k) Filter.atTop (nhds 0)) :
    a = b := by
  have hlim : Filter.Tendsto (fun k => (a-b)/2 + e k) Filter.atTop
      (nhds ((a-b)/2)) := by simpa using tendsto_const_nhds.add hsmall
  have h := tendsto_nhds_unique hlim hcancel
  exact sub_eq_zero.mp ((div_eq_zero_iff.mp h).resolve_right (by norm_num))

/-- A uniform bound on the evaluation costs of disjointly localized
degree-bounded residuals forces a lower bound on their shared energy. -/
theorem localized_energy {ι : Type*} (s : Finset ι) (e : ι → ℝ) (n c d x : ℝ)
    (hn : 0 ≤ n) (he : ∀ j ∈ s, c ≤ n * e j)
    (hcover : ∑ j ∈ s, e j ≤ d*x) :
    (s.card : ℝ)*c ≤ n*d*x := by
  calc
    _ = ∑ _j ∈ s, c := by simp
    _ ≤ ∑ j ∈ s, n * e j := Finset.sum_le_sum he
    _ = n * ∑ j ∈ s, e j := by rw [Finset.mul_sum]
    _ ≤ _ := by simpa [mul_assoc] using mul_le_mul_of_nonneg_left hcover hn

end GRWTSK.XiHardyApproximationRates
