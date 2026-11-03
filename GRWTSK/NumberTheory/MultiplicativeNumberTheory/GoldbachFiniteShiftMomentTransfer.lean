/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachIntegerShiftReindexing
import Mathlib.Data.Fintype.OfMap

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Finite carriers and exact weighted moment transport for literal shifts.
No upper-correlation estimate is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachFiniteShiftMomentTransfer
open GoldbachIntegerShiftReindexing GoldbachFullSourceQuadrupleMoment GoldbachWeighted

def quadrupleFinCode (N : ℕ) (Q : AdditiveQuadruple N) :
    (Fin (N + 1) × Fin (N + 1)) × (Fin (N + 1) × Fin (N + 1)) := by
  have h1 := Q.first_sum
  have h2 := Q.second_sum
  exact ((⟨Q.p, by omega⟩, ⟨Q.q, by omega⟩), (⟨Q.r, by omega⟩, ⟨Q.s, by omega⟩))

theorem quadrupleFinCode_injective (N : ℕ) : Function.Injective (quadrupleFinCode N) := by
  intro Q R h
  apply AdditiveQuadruple.ext
  · exact congrArg (fun z => z.1.1.val) h
  · exact congrArg (fun z => z.1.2.val) h
  · exact congrArg (fun z => z.2.1.val) h
  · exact congrArg (fun z => z.2.2.val) h

noncomputable instance quadrupleFintype (N : ℕ) : Fintype (AdditiveQuadruple N) :=
  Fintype.ofInjective (quadrupleFinCode N) (quadrupleFinCode_injective N)

noncomputable instance shiftedPairFintype (N : ℕ) : Fintype (ShiftedPair N) :=
  Fintype.ofEquiv (AdditiveQuadruple N) (additiveQuadrupleShiftEquiv N)

theorem literal_orderedTerm_eq_weight {N : ℕ} (Q : AdditiveQuadruple N) :
    orderedQuadrupleTerm N (Q.p, Q.q) (Q.r, Q.s) = quadrupleWeight Q := by
  simp only [orderedQuadrupleTerm, goldbachLogTerm, Q.first_sum, Q.second_sum,
    if_true, quadrupleWeight]
  ring

theorem full_literal_shift_sum (N : ℕ) :
    (∑ Q : AdditiveQuadruple N, quadrupleWeight Q) =
      ∑ S : ShiftedPair N, shiftedWeight S := by
  exact Fintype.sum_equiv (additiveQuadrupleShiftEquiv N) _ _
    (fun Q => (actual_weight_preserved Q).symm)

theorem weighted_window_shift_sum (W : Finset ℕ) (h : ℕ → ℝ) :
    (∑ N ∈ W, (∑ Q : AdditiveQuadruple N, quadrupleWeight Q) / h N) =
      ∑ N ∈ W, (∑ S : ShiftedPair N, shiftedWeight S) / h N := by
  apply Finset.sum_congr rfl
  intro N _
  rw [full_literal_shift_sum]

theorem first_pair_cutoff_classes {N : ℕ} (Q : AdditiveQuadruple N)
    (X : ℕ) (hN : N ≤ 2 * X) :
    (Q.p ≤ X ∧ Q.q ≤ X) ∨ (X < Q.p ∧ Q.q ≤ X) ∨ (Q.p ≤ X ∧ X < Q.q) := by
  have hsum := Q.first_sum
  omega

theorem second_pair_cutoff_classes {N : ℕ} (Q : AdditiveQuadruple N)
    (X : ℕ) (hN : N ≤ 2 * X) :
    (Q.r ≤ X ∧ Q.s ≤ X) ∨ (X < Q.r ∧ Q.s ≤ X) ∨ (Q.r ≤ X ∧ X < Q.s) := by
  have hsum := Q.second_sum
  omega

end GRWTSK.NumberTheory.Primes.GoldbachFiniteShiftMomentTransfer
