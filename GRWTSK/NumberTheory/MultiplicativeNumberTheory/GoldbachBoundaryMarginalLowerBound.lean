/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachBoundarySignedPrimeMasks

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual weighted inclusion-exclusion bound. A strict marginal surplus
is a sufficient premise, not an arithmetic supplier. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachBoundaryMarginalLowerBound
open GoldbachWeighted GoldbachFullCutoffBoundarySplit GoldbachBoundarySourceConvolution
open GoldbachBoundarySignedPrimeMasks

theorem boundaryLogAtom_nonneg (X N p : ℕ) : 0 ≤ boundaryLogAtom X N p := by
  unfold boundaryLogAtom
  split_ifs
  · exact mul_nonneg (Real.log_natCast_nonneg p) (Real.log_natCast_nonneg (N-p))
  · exact le_rfl

theorem boundary_actual_mask_product (X N : ℕ) :
    firstBoundaryMass X N = ∑ p ∈ Finset.range (N+1),
      boundaryLogAtom X N p*primeMask p*primeMask (N-p) := by
  rw [first_boundary_exact_convolution]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hX : X<p <;> by_cases hp : Nat.Prime p <;> by_cases hq : Nat.Prime (N-p)
  all_goals simp [boundaryLogAtom,primeMask,primeLogWeight,hX,hp,hq]

theorem actual_boundary_marginal_lower (X N : ℕ) :
    (∑ p ∈ Finset.range (N+1), boundaryLogAtom X N p*primeMask p)+
    (∑ p ∈ Finset.range (N+1), boundaryLogAtom X N p*primeMask (N-p))-
    (∑ p ∈ Finset.range (N+1), boundaryLogAtom X N p) ≤ firstBoundaryMass X N := by
  rw [boundary_actual_mask_product]
  simp only [← Finset.sum_add_distrib,← Finset.sum_sub_distrib]
  apply Finset.sum_le_sum
  intro p _
  have hw := boundaryLogAtom_nonneg X N p
  by_cases hp : Nat.Prime p <;> by_cases hq : Nat.Prime (N-p)
  all_goals simp [primeMask,hp,hq] <;> linarith

/- If the two actual weighted marginals exceed the total log mass, this
bound is positive. No claim supplies that strict surplus for all targets;
below its threshold, actual signed overlap information remains required. -/
end GRWTSK.NumberTheory.Primes.GoldbachBoundaryMarginalLowerBound
