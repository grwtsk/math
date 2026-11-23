/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Tactic

/-! The parity defect of a finite contour count and the shrinking bracket
for two independent strict tests of the de Bruijn–Newman endpoint. -/

namespace GRWTSK.XiNewmanWindingCut

open Finset

theorem multiplicity_defect {ι : Type*} (s : Finset ι) (m : ι → ℕ) (quartets : ℕ) :
    4*quartets + ∑ i ∈ s, m i =
      (∑ i ∈ s, m i % 2) + 2*(2*quartets + ∑ i ∈ s, m i / 2) := by
  have h : (∑ i ∈ s, m i) = (∑ i ∈ s, m i % 2) + 2*(∑ i ∈ s, m i / 2) := by
    rw [Finset.mul_sum, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun i _ => by omega
  omega

theorem saturation_iff {ι : Type*} (s : Finset ι) (m : ι → ℕ) (quartets : ℕ) :
    4*quartets + ∑ i ∈ s, m i = (∑ i ∈ s, m i % 2) ↔
      quartets = 0 ∧ ∀ i ∈ s, m i ≤ 1 := by
  rw [multiplicity_defect]
  constructor
  · intro h
    have hsum : ∑ i ∈ s, m i / 2 = 0 := by omega
    refine ⟨by omega, ?_⟩
    intro i hi
    have hi' := (Finset.sum_eq_zero_iff_of_nonneg (fun j (_ : j ∈ s) => Nat.zero_le (m j/2))).mp hsum i hi
    omega
  · rintro ⟨rfl, hm⟩
    have hsum : ∑ i ∈ s, m i / 2 = 0 := Finset.sum_eq_zero fun i hi => by
      have := hm i hi
      omega
    simp [hsum]

/-- At least one strict probe succeeds, even when the other probe hits the endpoint. -/
theorem strict_probes (l u endpoint : ℝ) (h : l < u) :
    (2*l+u)/3 < endpoint ∨ endpoint < (l+2*u)/3 := by
  by_contra! h'
  linarith [h'.1, h'.2]

theorem trisection_width (l u : ℝ) :
    u-(2*l+u)/3 = (2/3)*(u-l) ∧ (l+2*u)/3-l = (2/3)*(u-l) := by
  constructor <;> ring

/-- A certified upper trace and lower finite mass give an upper bound for the
squared Hilbert–Schmidt norm of the unused signed inverse coordinates. -/
theorem signed_inverse_tail {mass : ℕ → ℝ} (hm : Summable mass) (n : ℕ)
    {traceUpper headLower : ℝ} (ht : (∑' i, mass i) ≤ traceUpper)
    (hh : headLower ≤ ∑ i ∈ range n, mass i) :
    8*(∑' i, mass (i+n)) ≤ 8*(traceUpper-headLower) := by
  linarith [hm.sum_add_tsum_nat_add n]

end GRWTSK.XiNewmanWindingCut
