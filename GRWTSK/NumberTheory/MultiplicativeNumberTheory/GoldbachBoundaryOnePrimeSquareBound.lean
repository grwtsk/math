/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachBoundarySourceConvolution
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Unconditional actual boundary upper bound by one-prime square masses.
This is not a centered error bound or positive lower estimate. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachBoundaryOnePrimeSquareBound
open GoldbachWeighted GoldbachFullCutoffBoundarySplit GoldbachBoundarySourceConvolution

def leftBoundaryAtom (X N p : ℕ) : ℝ := if X<p then primeLogWeight p else 0
def rightBoundaryAtom (X N p : ℕ) : ℝ := if X<p then primeLogWeight (N-p) else 0

theorem actual_boundary_atom_product (X N : ℕ) :
    firstBoundaryMass X N = ∑ p ∈ Finset.range (N+1),
      leftBoundaryAtom X N p*rightBoundaryAtom X N p := by
  rw [first_boundary_exact_convolution]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : X<p <;> simp [leftBoundaryAtom,rightBoundaryAtom,hp]

theorem boundary_square_le_one_prime_masses (X N : ℕ) :
    firstBoundaryMass X N^2 ≤
      (∑ p ∈ Finset.range (N+1), leftBoundaryAtom X N p^2)*
      (∑ p ∈ Finset.range (N+1), rightBoundaryAtom X N p^2) := by
  rw [actual_boundary_atom_product]
  exact Finset.sum_mul_sq_le_sq_mul_sq _ _ _

theorem boundary_window_le_one_prime_masses (X : ℕ) (W : Finset ℕ)
    (ω : ℕ → ℝ) (hω : ∀ N ∈ W, 0 ≤ ω N) :
    (∑ N ∈ W, ω N*firstBoundaryMass X N^2) ≤
      ∑ N ∈ W, ω N*
        ((∑ p ∈ Finset.range (N+1), leftBoundaryAtom X N p^2)*
         (∑ p ∈ Finset.range (N+1), rightBoundaryAtom X N p^2)) := by
  apply Finset.sum_le_sum
  intro N hN
  exact mul_le_mul_of_nonneg_left (boundary_square_le_one_prime_masses X N) (hω N hN)

/- Centering still requires the exact negative forecast cross term, and
full source control still requires the interior/boundary cross estimate. -/
end GRWTSK.NumberTheory.Primes.GoldbachBoundaryOnePrimeSquareBound
