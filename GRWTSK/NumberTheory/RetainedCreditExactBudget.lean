/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.UnpaidRepetitionHeight

set_option autoImplicit false
noncomputable section

/-! Exact local credit and unpaid budget criteria. No quantitative defect
supplier is asserted. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.RetainedCreditExactBudget
open RetainedFactorization NaturalRepetitionSource IntegerWronskianRepetitionCorrection
open PartialCreditWronskianHeight UnpaidRepetitionHeight

theorem target_credit_pos (T : CoprimeAdditiveTriple) : 0 < targetCredit T := by
  unfold targetCredit
  exact Nat.gcd_pos_of_pos_left _
    (Nat.pos_of_ne_zero (repetitionQuotient_ne_zero T.c (ne_of_gt T.c_pos)))

/-- Every retained prime-power layer must also divide the actual defect.
The statement holds for arbitrary p; primality is needed for valuation use. -/
theorem prime_power_credit_iff (T : CoprimeAdditiveTriple) (p k : ℕ) :
    p^k ∣ targetCredit T ↔ p^k ∣ repetitionQuotient T.c ∧
      p^k ∣ (integerAdditiveDefect T).natAbs := by
  exact Nat.dvd_gcd_iff

/-- Exact finite budget, retaining the size of the credit in the denominator. -/
theorem unpaid_budget_iff (T : CoprimeAdditiveTriple) (B : ℕ) :
    unpaidRepetition T ≤ B ↔ repetitionQuotient T.c ≤ targetCredit T * B := by
  have he := credit_mul_unpaid T
  have hg := target_credit_pos T
  constructor
  · intro h
    rw [← he]
    exact Nat.mul_le_mul_left _ h
  · intro h
    rw [← he] at h
    exact (Nat.mul_le_mul_left hg).mp h

theorem zero_defect_full_credit (T : CoprimeAdditiveTriple)
    (hd : integerAdditiveDefect T = 0) :
    targetCredit T = repetitionQuotient T.c := by
  simp [targetCredit, hd]

/- A bound for the magnitude of the defect alone does not supply its
prime-power divisibility layers. A radical-power bound for unpaidRepetition
and a separate vanishing-W height argument remain unsupplied. -/
end GRWTSK.NumberTheory.ABC.RetainedCreditExactBudget
