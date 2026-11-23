/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Basic.Complex.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-! # Arithmetic of the hyperbolic-plane recursion for an inert doubling integral

The signed middle Cartan weights occur in opposite pairs. The corrected corner
therefore retains only the zero-weight trace. Its valuation and the middle row
box control the cumulative radical mass. See the accompanying proof for the
row lattice, Haar measures, spherical transform, and source normalization.
-/

namespace GRWTSK.NumberTheory.AlpogeInertRadicalIntegral

/-- Removing each negative-weight cross term and its conjugate from the
Hermitian trace leaves precisely the zero-weight summands. -/
theorem correctedCornerTrace {ι R : Type*} [Fintype ι] [AddCommGroup R]
    (rev : Equiv.Perm ι) (b : ι → ℤ) (u : ι → R) (opposite : ∀ i, b (rev i) = -b i) :
    -(∑ i, u i) + (∑ i, if b i < 0 then u i else 0) +
      (∑ i, if b i < 0 then u (rev i) else 0) =
      -(∑ i, if b i = 0 then u i else 0) := by
  have changeIndex : (∑ i, if b i < 0 then u (rev i) else 0) =
      ∑ i, if 0 < b i then u i else 0 := by
    rw [← Equiv.sum_comp rev (fun i => if 0 < b i then u i else 0)]
    simp [opposite]
  rw [changeIndex, ← Finset.sum_neg_distrib, ← Finset.sum_add_distrib,
    ← Finset.sum_add_distrib, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rcases lt_trichotomy (b i) 0 with h | h | h
  · simp [h, ne_of_lt h, not_lt_of_ge h.le]
  · simp [h]
  · simp [h, ne_of_gt h, not_lt_of_ge h.le]

/-- The bound for the extra length is simultaneously a box bound and
a corner bound. Here `h` includes the outer Cartan scale. -/
theorem excess_le (e h j : ℤ) :
    e + max e (h-e) ≤ j ↔ 2*e ≤ j ∧ h ≤ j := by
  rcases le_total e (h-e) with h' | h'
  · rw [max_eq_right h']; omega
  · rw [max_eq_left h']; omega

/-- The excess-dependent contribution to the cumulative Haar volume. -/
def radialMass (q N j : ℕ) : ℕ := q ^ (2*N*(j/2)+j)

theorem radialMass_even (q N k : ℕ) :
    radialMass q N (2*k) = (q^(2*N+2))^k := by
  rw [radialMass, ← pow_mul]
  congr 1
  have h : 2*k/2 = k := by omega
  rw [h]; ring

theorem radialMass_odd (q N k : ℕ) :
    radialMass q N (2*k+1) = q * (q^(2*N+2))^k := by
  rw [radialMass, ← pow_mul, ← pow_succ']
  congr 1
  have h : (2*k+1)/2 = k := by omega
  rw [h]; ring

/-- Exact cancellation of the shell denominator against the two-sided
outer Cartan series in normalized Satake coordinates. -/
theorem rankStep (q X y a : ℂ) (hy : 1-y^2 ≠ 0) :
    ((1-X)*(1+q*X)/(1-y^2)) * ((1-y^2)/((1-y*a)*(1-y/a))) =
      (1-X)*(1+q*X)/((1-y*a)*(1-y/a)) := by
  rw [div_mul_div_comm, ← div_div, mul_div_cancel_right₀ _ hy]

/-- Splitting off the first two Tate factors exactly scales the argument
of the remaining rank by the residue cardinality of the quadratic extension. -/
theorem peelTatePair (q X : ℂ) (N : ℕ) :
    (∏ j ∈ Finset.range (N+2), (1-(-q)^j*X)) =
    (1-X)*(1+q*X)*(∏ j ∈ Finset.range N, (1-(-q)^j*(q^2*X))) := by
  rw [show N+2 = 2+N by omega, Finset.prod_range_add]
  simp only [Finset.prod_range_succ, Finset.prod_range_zero, one_mul,
    pow_zero, pow_one, neg_mul, sub_neg_eq_add]
  congr 1
  apply Finset.prod_congr rfl
  intro j _
  rw [pow_add]
  ring

end GRWTSK.NumberTheory.AlpogeInertRadicalIntegral
