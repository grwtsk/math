/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachBoundaryShiftedMoment

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact q=3 source term in the oriented boundary. This is one orientation;
no factor two or missing cutoff is inserted. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachOrientedBoundaryThreeSplit
open GoldbachWeighted GoldbachFullCutoffBoundarySplit GoldbachBoundarySourceConvolution
open GoldbachBoundaryShiftedMoment

def boundaryWithoutSecondThree (X N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N+1), if p=N-3 then 0 else boundaryPrimeAtom X N p

theorem oriented_boundary_second_three_split (X N : ℕ) (hN : 3≤N) :
    firstBoundaryMass X N = boundaryWithoutSecondThree X N+
      (if X<N-3 then Real.log 3*primeLogWeight (N-3) else 0) := by
  have hs : firstBoundaryMass X N = boundaryWithoutSecondThree X N+
      (∑ p ∈ Finset.range (N+1), if p=N-3 then boundaryPrimeAtom X N p else 0) := by
    rw [first_boundary_exact_convolution]
    unfold boundaryWithoutSecondThree
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p _
    by_cases hp : p=N-3 <;> simp [hp,boundaryPrimeAtom]
  have he : (∑ p ∈ Finset.range (N+1), if p=N-3 then boundaryPrimeAtom X N p else 0) =
      boundaryPrimeAtom X N (N-3) := by
    rw [Finset.sum_eq_single (N-3)]
    · simp
    · intro p _ hp
      simp [hp]
    · intro h
      exact (h (Finset.mem_range.mpr (by omega))).elim
  rw [hs,he]
  have hsub : N-(N-3)=3 := by omega
  simp [boundaryPrimeAtom,hsub,primeLogWeight,mul_comm]

/- For even N>6,N<=2X, X>=4 excludes p=3 from the first coordinate.
Thus the displayed q=3 term is the only prime-three boundary exception.
Its arithmetic positivity is not assumed. -/
end GRWTSK.NumberTheory.Primes.GoldbachOrientedBoundaryThreeSplit
