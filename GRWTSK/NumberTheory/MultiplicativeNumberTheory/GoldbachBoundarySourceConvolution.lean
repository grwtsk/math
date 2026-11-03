/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachAllCutoffWindowBoundary

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Literal boundary convolution with actual prime-log atoms. No asymptotic
or positive lower estimate is supplied. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachBoundarySourceConvolution
open GoldbachWeighted GoldbachFullCutoffBoundarySplit GoldbachTruncatedOddAggregate
open GoldbachAllCutoffWindowBoundary

theorem first_boundary_exact_convolution (X N : ℕ) :
    firstBoundaryMass X N = ∑ p ∈ Finset.range (N+1),
      if X<p then primeLogWeight p*primeLogWeight (N-p) else 0 := by
  unfold firstBoundaryMass
  simp only [goldbachBox,Finset.sum_product]
  apply Finset.sum_congr rfl
  intro p hp
  have hpN : p ≤ N := by simpa only [Finset.mem_range,Nat.lt_succ_iff] using hp
  by_cases hXp : X<p
  · simp only [hXp,if_true,goldbachLogTerm]
    rw [Finset.sum_eq_single (N-p)]
    · simp [Nat.add_sub_of_le hpN]
    · intro q _ hq
      have hs : p+q ≠ N := by omega
      simp [hs]
    · intro h
      exact (h (Finset.mem_range.mpr (by omega))).elim
  · simp [hXp]

theorem full_even_source_boundary_convolution (X N : ℕ) (hNX : N ≤ 2*X)
    (hN : 4<N) (he : N%2=0) :
    goldbachLogMass N = truncatedOddMass X N+
      2*(∑ p ∈ Finset.range (N+1),
        if X<p then primeLogWeight p*primeLogWeight (N-p) else 0) := by
  rw [full_even_source_any_cutoff X N hNX hN he,first_boundary_exact_convolution]

end GRWTSK.NumberTheory.Primes.GoldbachBoundarySourceConvolution
