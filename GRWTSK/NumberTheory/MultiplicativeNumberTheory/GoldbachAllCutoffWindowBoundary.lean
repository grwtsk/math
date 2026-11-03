/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachEvenOddCutoffBridge

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact actual odd cutoff/full boundary source for every target below 2X.
No high-window moment or distribution estimate is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachAllCutoffWindowBoundary
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachFullCutoffBoundarySplit
open GoldbachEvenOddCutoffBridge

theorem clipped_eq_odd_any_cutoff (X N : ℕ) (hN : 4<N) (he : N%2=0) :
    clippedMass X N=truncatedOddMass X N := by
  by_cases hXN : X ≤ N
  · exact clippedMass_eq_odd_truncation X N hXN hN he
  · have hNX : N ≤ X := by omega
    have hc : clippedMass X N=goldbachLogMass N := by
      unfold clippedMass goldbachLogMass
      apply Finset.sum_congr rfl
      intro uv hu
      have hb := mem_goldbachBox.mp hu
      rw [if_pos ⟨hb.1.trans hNX,hb.2.trans hNX⟩]
    have hsub : goldbachBox N ⊆ goldbachBox X := by
      intro uv hu
      have hb := mem_goldbachBox.mp hu
      exact mem_goldbachBox.mpr ⟨hb.1.trans hNX,hb.2.trans hNX⟩
    have hs := Finset.sum_subset hsub (f := goldbachLogTerm N)
      (fun uv _ hu => by
        have hn : ¬ (uv.1 ≤ N ∧ uv.2 ≤ N) := by simpa only [mem_goldbachBox] using hu
        have hnSum : uv.1+uv.2 ≠ N := by omega
        simp [goldbachLogTerm,hnSum])
    rw [hc]
    unfold goldbachLogMass
    rw [hs]
    unfold truncatedOddMass
    apply Finset.sum_congr rfl
    intro uv _
    exact even_large_term_is_odd_term N hN he uv

theorem full_even_source_any_cutoff (X N : ℕ) (hNX : N ≤ 2*X)
    (hN : 4<N) (he : N%2=0) :
    goldbachLogMass N=truncatedOddMass X N+2*firstBoundaryMass X N := by
  rw [full_source_cutoff_boundary X N hNX,clipped_eq_odd_any_cutoff X N hN he]

theorem full_even_window_boundary (X : ℕ) (W : Finset ℕ)
    (hW : ∀ N ∈ W, N ≤ 2*X ∧ 4<N ∧ N%2=0) :
    (∑ N ∈ W, goldbachLogMass N)=
      (∑ N ∈ W, truncatedOddMass X N)+2*(∑ N ∈ W, firstBoundaryMass X N) := by
  simp only [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro N hN
  exact full_even_source_any_cutoff X N (hW N hN).1 (hW N hN).2.1 (hW N hN).2.2

end GRWTSK.NumberTheory.Primes.GoldbachAllCutoffWindowBoundary
