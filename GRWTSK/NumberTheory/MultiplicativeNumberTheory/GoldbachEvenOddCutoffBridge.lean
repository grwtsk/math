/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFullCutoffBoundarySplit
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachTruncatedOddAggregate

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Prime-two exclusion and exact actual odd-truncation boundary bridge.
Evenness, N>4 and X<=N<=2X are explicit; no asymptotic estimate is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachEvenOddCutoffBridge
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachFullCutoffBoundarySplit

theorem even_prime_eq_two (p : ℕ) (hp : Nat.Prime p) (hm : p%2=0) : p=2 := by
  have hd : 2 ∣ p := Nat.dvd_of_mod_eq_zero hm
  rcases (Nat.dvd_prime hp).mp hd with h | h <;> omega

theorem even_large_pair_no_two (N p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hs : p+q=N) (hN : 4<N) (he : N%2=0) : p ≠ 2 ∧ q ≠ 2 := by
  constructor
  · intro h
    have hm : q%2=0 := by omega
    have hq2 := even_prime_eq_two q hq hm
    omega
  · intro h
    have hm : p%2=0 := by omega
    have hp2 := even_prime_eq_two p hp hm
    omega

theorem even_large_term_is_odd_term (N : ℕ) (hN : 4<N) (he : N%2=0) (uv : ℕ × ℕ) :
    goldbachLogTerm N uv = if uv.1+uv.2=N then oddPrimeWeight uv.1*oddPrimeWeight uv.2 else 0 := by
  by_cases hs : uv.1+uv.2=N
  · by_cases hp : Nat.Prime uv.1
    · by_cases hq : Nat.Prime uv.2
      · have hn := even_large_pair_no_two N uv.1 uv.2 hp hq hs hN he
        simp [goldbachLogTerm,hs,oddPrimeWeight,hn.1,hn.2]
      · simp [goldbachLogTerm,hs,oddPrimeWeight,primeLogWeight,hq]
    · simp [goldbachLogTerm,hs,oddPrimeWeight,primeLogWeight,hp]
  · simp [goldbachLogTerm,hs]

theorem clippedMass_eq_odd_truncation (X N : ℕ) (hXN : X ≤ N)
    (hN : 4<N) (he : N%2=0) : clippedMass X N=truncatedOddMass X N := by
  have hsub : goldbachBox X ⊆ goldbachBox N := by
    intro uv hu
    have hb := mem_goldbachBox.mp hu
    exact mem_goldbachBox.mpr ⟨hb.1.trans hXN,hb.2.trans hXN⟩
  have hs := Finset.sum_subset hsub
    (f := fun uv => if uv.1 ≤ X ∧ uv.2 ≤ X then goldbachLogTerm N uv else 0)
    (fun uv _ hu => by
      have hn : ¬ (uv.1 ≤ X ∧ uv.2 ≤ X) := by simpa only [mem_goldbachBox] using hu
      simp [hn])
  unfold clippedMass
  rw [← hs]
  unfold truncatedOddMass
  apply Finset.sum_congr rfl
  intro uv hu
  rw [if_pos (mem_goldbachBox.mp hu)]
  exact even_large_term_is_odd_term N hN he uv

theorem full_even_source_odd_cutoff_boundary (X N : ℕ) (hXN : X ≤ N)
    (hNX : N ≤ 2*X) (hN : 4<N) (he : N%2=0) :
    goldbachLogMass N=truncatedOddMass X N+2*firstBoundaryMass X N := by
  rw [full_source_cutoff_boundary X N hNX, clippedMass_eq_odd_truncation X N hXN hN he]

end GRWTSK.NumberTheory.Primes.GoldbachEvenOddCutoffBridge
