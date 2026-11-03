/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachBoundarySourceConvolution

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact target/window boundary second moment with every shifted prime
atom and cutoff retained. No correlation estimate is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachBoundaryShiftedMoment
open GoldbachWeighted GoldbachFullCutoffBoundarySplit GoldbachBoundarySourceConvolution

def boundaryPrimeAtom (X N p : ℕ) : ℝ :=
  if X<p then primeLogWeight p*primeLogWeight (N-p) else 0

theorem boundary_square_shifted_pairs (X N : ℕ) :
    firstBoundaryMass X N^2 =
      ∑ p ∈ Finset.range (N+1), ∑ r ∈ Finset.range (N+1),
        boundaryPrimeAtom X N p*boundaryPrimeAtom X N r := by
  rw [first_boundary_exact_convolution,pow_two]
  exact Finset.sum_mul_sum _ _ _ _

theorem boundary_window_shifted_pairs (X : ℕ) (W : Finset ℕ) (ω : ℕ → ℝ) :
    (∑ N ∈ W, ω N*firstBoundaryMass X N^2) =
      ∑ N ∈ W, ∑ p ∈ Finset.range (N+1), ∑ r ∈ Finset.range (N+1),
        ω N*(boundaryPrimeAtom X N p*boundaryPrimeAtom X N r) := by
  apply Finset.sum_congr rfl
  intro N _
  rw [boundary_square_shifted_pairs]
  simp only [Finset.mul_sum]

theorem centered_boundary_window_exact (X : ℕ) (W : Finset ℕ) (ω β : ℕ → ℝ) :
    (∑ N ∈ W, ω N*(firstBoundaryMass X N-β N)^2) =
      (∑ N ∈ W, ∑ p ∈ Finset.range (N+1), ∑ r ∈ Finset.range (N+1),
        ω N*(boundaryPrimeAtom X N p*boundaryPrimeAtom X N r))-
      2*(∑ N ∈ W, ω N*β N*firstBoundaryMass X N)+
      (∑ N ∈ W, ω N*β N^2) := by
  rw [← boundary_window_shifted_pairs]
  simp only [Finset.mul_sum,← Finset.sum_sub_distrib,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro N _
  ring

end GRWTSK.NumberTheory.Primes.GoldbachBoundaryShiftedMoment
