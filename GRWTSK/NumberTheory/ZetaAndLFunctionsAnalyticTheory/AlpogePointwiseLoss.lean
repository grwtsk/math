/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-!
# Two losses in the pointwise Alpöge window estimate

The perspective of the logarithm occurs in `Data.SlopeIneq` and
`Ga_bound5`. The finite prime support comes from the rounding of local
lattice exponents. See the source comparison in AlpogeWindowSourceTransport.md.
-/

namespace GRWTSK.NumberTheory.AlpogePointwiseLoss

/-- A supporting line to the slope-spread loss at ratio `t`. -/
theorem spread_le_tangent {s H t : ℝ} (hs : 0 ≤ s) (hH : 0 ≤ H) (ht : 0 ≤ t) :
    s * Real.log (1 + H/s) ≤ s * (Real.log (1+t) - t/(1+t)) + H/(1+t) := by
  have hb : 0 < 1 + t := by linarith
  obtain rfl | hs := hs.eq_or_lt
  · simp [div_nonneg hH hb.le]
  have ha : 0 < 1 + H/s := by positivity
  have h := Real.log_le_sub_one_of_pos (div_pos ha hb)
  rw [Real.log_div ha.ne' hb.ne'] at h
  calc s * Real.log (1 + H/s)
      ≤ s * (((1 + H/s)/(1+t)-1) + Real.log (1+t)) := by
        gcongr
        linarith
    _ = _ := by field_simp; ring

private theorem tangent_coeff_nonneg {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ Real.log (1+t) - t/(1+t) := by
  have h := Real.one_sub_inv_le_log_of_pos (show 0 < 1+t by linarith)
  have he : 1 - (1+t)⁻¹ = t/(1+t) := by field_simp; ring
  linarith

/-- Sharp uniform envelope for the active spread loss. -/
theorem spread_le_at_upper_bounds {s H U V : ℝ} (hs : 0 ≤ s) (hH : 0 ≤ H)
    (hU : 0 < U) (hsU : s ≤ U) (hHV : H ≤ V) :
    s * Real.log (1 + H/s) ≤ U * Real.log (1+V/U) := by
  let t := V/U
  have ht : 0 ≤ t := div_nonneg (hH.trans hHV) hU.le
  calc s * Real.log (1+H/s) ≤ s*(Real.log (1+t)-t/(1+t)) + H/(1+t) :=
      spread_le_tangent hs hH ht
    _ ≤ U*(Real.log (1+t)-t/(1+t)) + V/(1+t) := by
      gcongr
      exact tangent_coeff_nonneg ht
    _ = _ := by dsimp [t]; field_simp; ring

/-- A finite aggregate keeps the weighted means of the spreads and heights.
The weights need not sum to one. -/
theorem sum_spread_le {ι : Type*} (S : Finset ι) (w s H : ι → ℝ)
    (hw : ∀ i ∈ S, 0 ≤ w i) (hs : ∀ i ∈ S, 0 ≤ s i) (hH : ∀ i ∈ S, 0 ≤ H i)
    (hU : 0 < ∑ i ∈ S, w i * s i) :
    ∑ i ∈ S, w i * (s i * Real.log (1+H i/s i)) ≤
      (∑ i ∈ S, w i*s i) * Real.log (1 + (∑ i ∈ S, w i*H i)/(∑ i ∈ S, w i*s i)) := by
  let U := ∑ i ∈ S, w i*s i
  let V := ∑ i ∈ S, w i*H i
  let t := V/U
  have hV : 0 ≤ V := Finset.sum_nonneg (fun i hi => mul_nonneg (hw i hi) (hH i hi))
  have ht : 0 ≤ t := div_nonneg hV hU.le
  calc _ ≤ ∑ i ∈ S, w i * (s i*(Real.log (1+t)-t/(1+t)) + H i/(1+t)) := by
          exact Finset.sum_le_sum (fun i hi => mul_le_mul_of_nonneg_left
            (spread_le_tangent (hs i hi) (hH i hi) ht) (hw i hi))
       _ = U*(Real.log (1+t)-t/(1+t)) + V/(1+t) := by
          simp only [mul_add, ← mul_assoc, mul_div_assoc', Finset.sum_add_distrib,
            ← Finset.sum_mul, ← Finset.sum_div, U, V]
       _ = _ := by
          change _ = U * Real.log (1 + V/U)
          dsimp only [t]
          have hu : 0 < U := hU
          field_simp [hu.ne', (show 0 < U+V by linarith).ne']
          ring

/-- The absolute rounding defect in the slope, before taking any prime
support bound, has a fixed sign and equals a weighted fractional-part sum. -/
theorem rounding_defect_eq_fract {ι : Type*} (S : Finset ι) (l z : ι → ℝ)
    (hl : ∀ w ∈ S, 0 ≤ l w) :
    |(∑ w ∈ S, 2*l w*(⌊z w⌋ : ℝ)) - ∑ w ∈ S, 2*l w*z w| =
      2 * ∑ w ∈ S, l w * Int.fract (z w) := by
  have h : (∑ w ∈ S, 2*l w*z w) - ∑ w ∈ S, 2*l w*(⌊z w⌋ : ℝ) =
      2 * ∑ w ∈ S, l w * Int.fract (z w) := by
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro w _
    simp only [Int.fract]
    ring
  rw [abs_sub_comm, h, abs_of_nonneg]
  exact mul_nonneg (by norm_num) (Finset.sum_nonneg (fun w hw =>
    mul_nonneg (hl w hw) (Int.fract_nonneg _)))

/-- A local rounding support supported at small primes or divisors of M
pays each exceptional prime only once, and only above the cutoff. -/
theorem prime_support_le_theta_add_large_radical (R : Finset ℕ) (X M : ℕ)
    (hprime : ∀ p ∈ R, p.Prime) (hM : M ≠ 0)
    (hsupport : ∀ p ∈ R, p ≤ X ∨ p ∣ M) :
    ∑ p ∈ R, Real.log p ≤ Chebyshev.theta X +
      Real.log ((∏ p ∈ M.primeFactors.filter (fun p => X < p), p : ℕ) : ℝ) := by
  classical
  let A := (Finset.Ioc 0 X).filter Nat.Prime
  let B := M.primeFactors.filter (fun p => X < p)
  have hab : Disjoint A B := by
    apply Finset.disjoint_left.mpr
    intro p hp hb
    exact (Finset.mem_filter.mp hb).2.not_ge (Finset.mem_Ioc.mp (Finset.mem_filter.mp hp).1).2
  have hsub : R ⊆ A ∪ B := by
    intro p hp
    by_cases hx : p ≤ X
    · exact Finset.mem_union_left _ (Finset.mem_filter.mpr
        ⟨Finset.mem_Ioc.mpr ⟨(hprime p hp).pos,hx⟩,hprime p hp⟩)
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr
        ⟨Nat.mem_primeFactors.mpr ⟨hprime p hp,(hsupport p hp).resolve_left hx,hM⟩, by omega⟩)
  have h := Finset.sum_le_sum_of_subset_of_nonneg (f := fun p : ℕ => Real.log p) hsub
    (fun p hp _ => Real.log_natCast_nonneg p)
  rw [Finset.sum_union hab] at h
  simpa only [A, B, Chebyshev.theta, Nat.floor_natCast, Nat.cast_prod,
    Real.log_prod (fun p hp => Nat.cast_ne_zero.mpr (Nat.prime_of_mem_primeFactors
      (Finset.mem_filter.mp hp).1).ne_zero)] using h

end GRWTSK.NumberTheory.AlpogePointwiseLoss
