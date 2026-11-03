/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.RetainedCreditExactBudget
import Mathlib.Data.Nat.Factorization.Basic

set_option autoImplicit false
noncomputable section

/-! Exact local unpaid exponents of the actual integer defect.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.UnpaidDefectFactorization
open RetainedFactorization NaturalRepetitionSource IntegerWronskianRepetitionCorrection
open PartialCreditWronskianHeight UnpaidRepetitionHeight RetainedCreditExactBudget

theorem unpaid_factorization_sub_credit (T : CoprimeAdditiveTriple) (p : ℕ) :
    (unpaidRepetition T).factorization p =
      (repetitionQuotient T.c).factorization p-(targetCredit T).factorization p := by
  unfold unpaidRepetition
  rw [Nat.factorization_div (show targetCredit T ∣ repetitionQuotient T.c from
    Nat.gcd_dvd_left _ _)]
  rfl

/-- Subtraction in Nat retains precisely the positive unpaid valuation.
The defect-nonzero hypothesis is essential to the gcd factorization API. -/
theorem unpaid_factorization_actual_defect (T : CoprimeAdditiveTriple)
    (hd : integerAdditiveDefect T ≠ 0) (p : ℕ) :
    (unpaidRepetition T).factorization p =
      (repetitionQuotient T.c).factorization p-
        (integerAdditiveDefect T).natAbs.factorization p := by
  have hQ : repetitionQuotient T.c ≠ 0 :=
    repetitionQuotient_ne_zero T.c (ne_of_gt T.c_pos)
  have hD : (integerAdditiveDefect T).natAbs ≠ 0 := by
    simpa using hd
  rw [unpaid_factorization_sub_credit]
  unfold targetCredit
  rw [Nat.factorization_gcd hQ hD]
  simp only [Finsupp.inf_apply]
  omega

theorem zero_defect_unpaid_one (T : CoprimeAdditiveTriple)
    (hd : integerAdditiveDefect T = 0) : unpaidRepetition T=1 := by
  unfold unpaidRepetition
  rw [zero_defect_full_credit T hd]
  exact Nat.div_self (Nat.pos_of_ne_zero
    (repetitionQuotient_ne_zero T.c (ne_of_gt T.c_pos)))

/- A small real or integer absolute defect is not a lower bound for its
local divisibility. Summing these unpaid exponents against log p still
requires an actual arithmetic estimate; none is supplied here. -/
end GRWTSK.NumberTheory.ABC.UnpaidDefectFactorization
