/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Normed.Group.Tannery
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

/-! Multiplicity loss in the cyclic endpoint and convergence of the ordered inverse
eigenvalues when the reciprocal-square nodes have a summable common bound. -/
namespace GRWTSK.XiNewmanJacobiLimit
open Filter
open scoped Topology

theorem square_root_gap {x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y) :
    (Real.sqrt x - Real.sqrt y)^2 ≤ |x-y| := by
  rcases le_total x y with h | h
  · rw [abs_of_nonpos (sub_nonpos.mpr h)]
    nlinarith [Real.sq_sqrt hx,Real.sq_sqrt hy,
      mul_nonneg (Real.sqrt_nonneg x) (sub_nonneg.mpr (Real.sqrt_le_sqrt h))]
  · rw [abs_of_nonneg (sub_nonneg.mpr h)]
    nlinarith [Real.sq_sqrt hx,Real.sq_sqrt hy,
      mul_nonneg (Real.sqrt_nonneg y) (sub_nonneg.mpr (Real.sqrt_le_sqrt h))]

/-- In the fixed ordered basis the inverse-operator Hilbert–Schmidt discrepancy
goes to zero, including the coordinates of eigenvalues which coalesce. -/
theorem inverse_square_sum_tends_zero {u : ℕ → ℕ → ℝ} {v bound : ℕ → ℝ}
    (hlim : ∀ k, Tendsto (fun n => u n k) atTop (𝓝 (v k)))
    (hu : ∀ n k, 0 ≤ u n k ∧ u n k ≤ bound k)
    (hv : ∀ k, 0 ≤ v k ∧ v k ≤ bound k) (hs : Summable bound) :
    Tendsto (fun n => ∑' k, (Real.sqrt (u n k) - Real.sqrt (v k))^2) atTop (𝓝 0) := by
  let f : ℕ → ℕ → ℝ := fun n k => (Real.sqrt (u n k) - Real.sqrt (v k))^2
  have hpoint (k : ℕ) : Tendsto (fun n => f n k) atTop (𝓝 (0 : ℝ)) := by
    simpa [f] using (((Real.continuous_sqrt.tendsto _).comp (hlim k)).sub
      (tendsto_const_nhds (x := Real.sqrt (v k)))).pow 2
  have hbound : ∀ᶠ n in atTop, ∀ k, ‖f n k‖ ≤ bound k := by
    filter_upwards with n k
    rw [Real.norm_eq_abs,abs_of_nonneg (sq_nonneg _)]
    apply (square_root_gap (hu n k).1 (hv k).1).trans
    exact abs_le.mpr ⟨by linarith [(hu n k).1,(hv k).2],
      by linarith [(hu n k).2,(hv k).1]⟩
  simpa [f] using tendsto_tsum_of_dominated_convergence hs hpoint hbound

theorem lost_trace {ι : Type*} (s : Finset ι) (multiplicity : ι → ℕ) (node : ι → ℝ) :
    (∑ i ∈ s, (multiplicity i : ℝ)*node i) - ∑ i ∈ s, node i =
      ∑ i ∈ s, ((multiplicity i : ℝ)-1)*node i := by
  rw [← Finset.sum_sub_distrib]
  exact Finset.sum_congr rfl fun _ _ => by ring

theorem signed_inverse_product {x : ℂ} (z : ℂ) :
    (1-2*z*x)*(1+2*z*x) = 1-(2*z)^2*x^2 := by ring

end GRWTSK.XiNewmanJacobiLimit
