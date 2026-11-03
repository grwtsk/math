/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PartialCreditWronskianHeight

set_option autoImplicit false
noncomputable section

/-! Exact unpaid repetition factor in the nonzero-W height estimate.
No bound for this factor or the vanishing-W branch is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.UnpaidRepetitionHeight
open RetainedFactorization NaturalRepetitionSource IntegerWronskianRepetitionCorrection
open PartialCreditWronskianHeight ZeroDefectWronskianHeightBound

def unpaidRepetition (T : CoprimeAdditiveTriple) : ℕ :=
  repetitionQuotient T.c / targetCredit T

theorem credit_mul_unpaid (T : CoprimeAdditiveTriple) :
    targetCredit T * unpaidRepetition T = repetitionQuotient T.c := by
  exact Nat.mul_div_cancel' (Nat.gcd_dvd_left _ _)

theorem partial_credit_unpaid_height (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b ≠ 0) :
    (T.c : ℝ) ≤ (UniqueFactorizationMonoid.radical T.product : ℝ) *
      (unpaidRepetition T : ℝ) * Real.log (T.c : ℝ) / Real.log 2 := by
  have hl := partial_credit_product_height T hW
  have hm := mul_le_mul_of_nonneg_left hl
    (show (0 : ℝ) ≤ (UniqueFactorizationMonoid.radical T.product : ℝ) *
      (unpaidRepetition T : ℝ) by positivity)
  have he : (UniqueFactorizationMonoid.radical T.product : ℝ) *
      (unpaidRepetition T : ℝ) *
      ((repetitionQuotient T.a * repetitionQuotient T.b * targetCredit T : ℕ) : ℝ) =
        (T.a : ℝ)*(T.b : ℝ)*(T.c : ℝ) := by
    have hn : UniqueFactorizationMonoid.radical T.product * unpaidRepetition T *
        (repetitionQuotient T.a * repetitionQuotient T.b * targetCredit T) = T.product := by
      calc
        _ = UniqueFactorizationMonoid.radical T.product *
            (repetitionQuotient T.a * repetitionQuotient T.b *
              (targetCredit T * unpaidRepetition T)) := by ring
        _ = T.product := by rw [credit_mul_unpaid, radical_mul_repetition_product]
    exact_mod_cast hn
  rw [he] at hm
  have hp : (0 : ℝ) < (T.a : ℝ)*(T.b : ℝ) :=
    mul_pos (by exact_mod_cast T.a_pos) (by exact_mod_cast T.b_pos)
  apply (mul_le_mul_left hp).mp
  convert hm using 1 <;> ring

end GRWTSK.NumberTheory.ABC.UnpaidRepetitionHeight
