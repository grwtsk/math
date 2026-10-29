import Mathlib.NumberTheory.PrimeCounting

/-! Bounded enumeration, an optional specialization of the unpublished prime roadmap.
This proves a finite contract, not an analytic estimate or a complexity bound.
Exact version references: reading-background/obligation-implementation-progress.json. -/
namespace GRWTSK.NumberTheory.Primes

/-- Exact strict-bound contract; the empty output at bound zero is intentional. -/
def EnumeratesBelow (output : ℕ → Finset ℕ) : Prop :=
  ∀ N p, p ∈ output N ↔ p < N ∧ Nat.Prime p

theorem primesBelow_contract : EnumeratesBelow Nat.primesBelow := by
  intro N p
  exact Nat.mem_primesBelow

/-- The contract uniquely determines the finite output at every bound. -/
theorem enumeration_unique {output : ℕ → Finset ℕ} (h : EnumeratesBelow output) :
    output = Nat.primesBelow := by
  funext N
  ext p
  exact (h N p).trans Nat.mem_primesBelow.symm

/-- Incremental construction adds exactly the new endpoint when it is prime. -/
theorem enumeration_step {output : ℕ → Finset ℕ} (h : EnumeratesBelow output)
    (N : ℕ) : output (N + 1) = if Nat.Prime N then insert N (output N) else output N := by
  ext p
  rw [h]
  split_ifs with hn
  · simp only [Finset.mem_insert, h N p]
    constructor
    · rintro ⟨hp, hprime⟩
      by_cases heq : p = N
      · exact Or.inl heq
      · exact Or.inr ⟨by omega, hprime⟩
    · rintro (rfl | ⟨hp, hprime⟩)
      · exact ⟨by omega, hn⟩
      · exact ⟨by omega, hprime⟩
  · rw [h]
    constructor
    · rintro ⟨hp, hprime⟩
      have hne : p ≠ N := by
        intro heq
        exact hn (heq ▸ hprime)
      exact ⟨by omega, hprime⟩
    · rintro ⟨hp, hprime⟩
      exact ⟨by omega, hprime⟩
end GRWTSK.NumberTheory.Primes
