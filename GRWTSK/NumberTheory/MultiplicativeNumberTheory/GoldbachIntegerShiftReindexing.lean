/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFullSourceQuadrupleMoment

set_option autoImplicit false
noncomputable section

/-! Literal additive quadruples and integer-shift coordinates.
Negative shifts are retained. No natural subtraction is silently used
for p-d. Prime weights retain all four actual natural coordinates.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachIntegerShiftReindexing
open GoldbachWeighted

@[ext] structure AdditiveQuadruple (N : ℕ) where
  p : ℕ
  q : ℕ
  r : ℕ
  s : ℕ
  first_sum : p + q = N
  second_sum : r + s = N

@[ext] structure ShiftedPair (N : ℕ) where
  p : ℕ
  q : ℕ
  d : ℤ
  first_sum : p + q = N
  r_nonneg : 0 ≤ (p : ℤ) - d
  s_nonneg : 0 ≤ (q : ℤ) + d

variable {N : ℕ}

theorem quadruple_shift_second (Q : AdditiveQuadruple N) :
    (Q.q : ℤ) + ((Q.p : ℤ) - Q.r) = Q.s := by
  have h1 : (Q.p : ℤ) + Q.q = N := by exact_mod_cast Q.first_sum
  have h2 : (Q.r : ℤ) + Q.s = N := by exact_mod_cast Q.second_sum
  omega

def quadrupleToShift (Q : AdditiveQuadruple N) : ShiftedPair N where
  p := Q.p
  q := Q.q
  d := (Q.p : ℤ) - Q.r
  first_sum := Q.first_sum
  r_nonneg := by simp only [sub_sub_self]; exact Int.natCast_nonneg _
  s_nonneg := by rw [quadruple_shift_second]; exact Int.natCast_nonneg _

def shiftToQuadruple (S : ShiftedPair N) : AdditiveQuadruple N where
  p := S.p
  q := S.q
  r := ((S.p : ℤ) - S.d).toNat
  s := ((S.q : ℤ) + S.d).toNat
  first_sum := S.first_sum
  second_sum := by
    have h : (S.p : ℤ) + S.q = N := by exact_mod_cast S.first_sum
    have hr := Int.toNat_of_nonneg S.r_nonneg
    have hs := Int.toNat_of_nonneg S.s_nonneg
    omega

def additiveQuadrupleShiftEquiv (N : ℕ) : AdditiveQuadruple N ≃ ShiftedPair N where
  toFun := quadrupleToShift
  invFun := shiftToQuadruple
  left_inv Q := by
    apply AdditiveQuadruple.ext
    · rfl
    · rfl
    · simp [shiftToQuadruple, quadrupleToShift, sub_sub_self]
    · simp only [shiftToQuadruple, quadrupleToShift, quadruple_shift_second,
        Int.toNat_natCast]
  right_inv S := by
    apply ShiftedPair.ext
    · rfl
    · rfl
    · change (S.p : ℤ) - (((S.p : ℤ) - S.d).toNat : ℤ) = S.d
      rw [Int.toNat_of_nonneg S.r_nonneg]
      ring

def quadrupleWeight (Q : AdditiveQuadruple N) : ℝ :=
  primeLogWeight Q.p * primeLogWeight Q.q * primeLogWeight Q.r * primeLogWeight Q.s

def shiftedWeight (S : ShiftedPair N) : ℝ :=
  primeLogWeight S.p * primeLogWeight S.q *
    primeLogWeight (((S.p : ℤ) - S.d).toNat) *
    primeLogWeight (((S.q : ℤ) + S.d).toNat)

theorem actual_weight_preserved (Q : AdditiveQuadruple N) :
    shiftedWeight (quadrupleToShift Q) = quadrupleWeight Q := by
  simp [shiftedWeight, quadrupleWeight, quadrupleToShift, sub_sub_self,
    quadruple_shift_second]

theorem shifted_range_bounds (S : ShiftedPair N) : -(N : ℤ) ≤ S.d ∧ S.d ≤ N := by
  have h : (S.p : ℤ) + S.q = N := by exact_mod_cast S.first_sum
  have hr := S.r_nonneg
  have hs := S.s_nonneg
  omega

end GRWTSK.NumberTheory.Primes.GoldbachIntegerShiftReindexing
