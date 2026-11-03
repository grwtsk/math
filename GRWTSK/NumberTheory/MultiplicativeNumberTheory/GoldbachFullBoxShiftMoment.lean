/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFiniteShiftMomentTransfer

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact original-box to signed-shift full-source moment bridge.
The finite partition gives no prime-correlation upper estimate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachFullBoxShiftMoment
open GoldbachWeighted GoldbachFullSourceQuadrupleMoment
open GoldbachIntegerShiftReindexing GoldbachFiniteShiftMomentTransfer

def literalQuadrupleBox (N : ℕ) : Finset ((ℕ × ℕ) × (ℕ × ℕ)) :=
  ((goldbachBox N).product (goldbachBox N)).filter
    (fun z => z.1.1 + z.1.2 = N ∧ z.2.1 + z.2.2 = N)

def boxWeight (z : (ℕ × ℕ) × (ℕ × ℕ)) : ℝ :=
  primeLogWeight z.1.1 * primeLogWeight z.1.2 *
    primeLogWeight z.2.1 * primeLogWeight z.2.2

theorem literal_sum_eq_filtered_box (N : ℕ) :
    (∑ Q : AdditiveQuadruple N, quadrupleWeight Q) =
      ∑ z ∈ literalQuadrupleBox N, boxWeight z := by
  apply Finset.sum_bij (fun Q _ => ((Q.p, Q.q), (Q.r, Q.s)))
  · intro Q _
    have h1 := Q.first_sum
    have h2 := Q.second_sum
    simp only [literalQuadrupleBox, Finset.mem_filter, Finset.mem_product, mem_goldbachBox]
    exact ⟨⟨⟨by omega, by omega⟩, ⟨by omega, by omega⟩⟩, h1, h2⟩
  · intro Q _ R _ h
    apply AdditiveQuadruple.ext
    · exact congrArg (fun z => z.1.1) h
    · exact congrArg (fun z => z.1.2) h
    · exact congrArg (fun z => z.2.1) h
    · exact congrArg (fun z => z.2.2) h
  · intro z hz
    have hs := (Finset.mem_filter.mp hz).2
    exact ⟨⟨z.1.1, z.1.2, z.2.1, z.2.2, hs.1, hs.2⟩, Finset.mem_univ _, rfl⟩
  · intro Q _
    rfl

theorem full_square_eq_filtered_box (N : ℕ) :
    goldbachLogMass N ^ 2 = ∑ z ∈ literalQuadrupleBox N, boxWeight z := by
  rw [actual_full_source_square]
  rw [← Finset.sum_product]
  rw [literalQuadrupleBox, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro z _
  by_cases h1 : z.1.1 + z.1.2 = N <;>
    by_cases h2 : z.2.1 + z.2.2 = N <;>
    simp [orderedQuadrupleTerm, goldbachLogTerm, boxWeight, h1, h2] <;> ring

theorem full_square_eq_signed_shift_sum (N : ℕ) :
    goldbachLogMass N ^ 2 = ∑ S : ShiftedPair N, shiftedWeight S := by
  rw [full_square_eq_filtered_box, ← literal_sum_eq_filtered_box, full_literal_shift_sum]

theorem full_weighted_window_eq_shift_sum (W : Finset ℕ) (h : ℕ → ℝ) :
    (∑ N ∈ W, goldbachLogMass N ^ 2 / h N) =
      ∑ N ∈ W, (∑ S : ShiftedPair N, shiftedWeight S) / h N := by
  apply Finset.sum_congr rfl
  intro N _
  rw [full_square_eq_signed_shift_sum]

end GRWTSK.NumberTheory.Primes.GoldbachFullBoxShiftMoment
