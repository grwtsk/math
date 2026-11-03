/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachModThreeCompleteSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact exceptional mass above the repeated-pair target six.
No distribution assertion about the remaining regular source is made.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachPrimeThreeExceptionMass
open GoldbachWeighted GoldbachModThreeCompleteSource

theorem exceptional_support (N : ℕ) (hN : 3 ≤ N) (uv : ℕ × ℕ)
    (h : uv ≠ (3,N-3) ∧ uv ≠ (N-3,3)) : exceptionalTerm N uv = 0 := by
  classical
  by_cases hs : uv.1 + uv.2 = N
  · have he : ¬ (uv.1 = 3 ∨ uv.2 = 3) := by
      intro he
      rcases he with hp | hq
      · apply h.1
        apply Prod.ext <;> simp_all <;> omega
      · apply h.2
        apply Prod.ext <;> simp_all <;> omega
    simp [exceptionalTerm, he]
  · simp [exceptionalTerm, goldbachLogTerm, hs]

theorem exceptional_mass_above_six (N : ℕ) (hN : 6 < N) :
    exceptionalMass N = 2 * primeLogWeight 3 * primeLogWeight (N-3) := by
  classical
  let F : Finset (ℕ × ℕ) := {(3,N-3),(N-3,3)}
  have hsub : F ⊆ goldbachBox N := by
    intro uv huv
    simp only [F, Finset.mem_insert, Finset.mem_singleton] at huv
    rcases huv with rfl | rfl <;> rw [mem_goldbachBox] <;> omega
  have hz : ∀ uv ∈ goldbachBox N, uv ∉ F → exceptionalTerm N uv = 0 := by
    intro uv _ hu
    apply exceptional_support N (by omega) uv
    simpa [F] using hu
  have he := Finset.sum_subset hsub hz
  unfold exceptionalMass
  rw [← he]
  have hp : (3,N-3) ≠ (N-3,3) := by
    intro h
    have hh := congrArg Prod.fst h
    simp only [Prod.fst] at hh
    omega
  have ha : 3 + (N-3) = N := by omega
  have hb : (N-3) + 3 = N := by omega
  simp [F, hp, exceptionalTerm, goldbachLogTerm, ha, hb]
  <;> ring

end GRWTSK.NumberTheory.Primes.GoldbachPrimeThreeExceptionMass
