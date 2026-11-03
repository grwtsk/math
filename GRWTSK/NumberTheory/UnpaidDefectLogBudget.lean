/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.UnpaidDefectFactorization
import Mathlib.Analysis.SpecialFunctions.Log.Basic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact weighted unpaid logarithm and its quantitative budget criterion.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.UnpaidDefectLogBudget
open RetainedFactorization NaturalRepetitionSource IntegerWronskianRepetitionCorrection
open PartialCreditWronskianHeight UnpaidRepetitionHeight UnpaidDefectFactorization

theorem unpaid_positive (T : CoprimeAdditiveTriple) : 0<unpaidRepetition T := by
  have he := credit_mul_unpaid T
  have hQ := repetitionQuotient_ne_zero T.c (ne_of_gt T.c_pos)
  by_contra h
  have hz : unpaidRepetition T=0 := Nat.eq_zero_of_not_pos h
  rw [hz,mul_zero] at he
  exact hQ he.symm

def actualUnpaidLogSum (T : CoprimeAdditiveTriple) : ℝ :=
  ∑ p ∈ (unpaidRepetition T).factorization.support,
    (((repetitionQuotient T.c).factorization p-
      (integerAdditiveDefect T).natAbs.factorization p : ℕ) : ℝ)*Real.log (p : ℝ)

theorem actual_unpaid_log_identity (T : CoprimeAdditiveTriple)
    (hd : integerAdditiveDefect T ≠ 0) :
    Real.log (unpaidRepetition T : ℝ)=actualUnpaidLogSum T := by
  rw [Real.log_nat_eq_sum_factorization]
  unfold actualUnpaidLogSum Finsupp.sum
  apply Finset.sum_congr rfl
  intro p _
  rw [unpaid_factorization_actual_defect T hd p]

theorem actual_log_budget_iff (T : CoprimeAdditiveTriple)
    (hd : integerAdditiveDefect T ≠ 0) (B : ℝ) :
    actualUnpaidLogSum T ≤ B ↔ (unpaidRepetition T : ℝ) ≤ Real.exp B := by
  rw [← actual_unpaid_log_identity T hd]
  exact Real.log_le_iff_le_exp (by exact_mod_cast unpaid_positive T)

/- Thus a log-radical budget must bound this actual nonnegative weighted
unpaid exponent sum. The equivalence supplies no such estimate. Defect=0
has unpaid=1 separately; W=0 still needs its own height argument. -/
end GRWTSK.NumberTheory.ABC.UnpaidDefectLogBudget
