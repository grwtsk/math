/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.UnpaidDefectLogBudget
import Mathlib.Analysis.SpecialFunctions.Pow.Real

set_option autoImplicit false
noncomputable section

/-! Conditional quantitative source consumer, not an arithmetic supplier.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ActualDefectLogHeightConsumer
open RetainedFactorization IntegerWronskianRepetitionCorrection
open UnpaidRepetitionHeight UnpaidDefectLogBudget

theorem actual_log_budget_height (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b ≠ 0)
    (hd : integerAdditiveDefect T ≠ 0) (B : ℝ)
    (hbudget : actualUnpaidLogSum T ≤ B) :
    (T.c : ℝ) ≤ (UniqueFactorizationMonoid.radical T.product : ℝ)*
      Real.exp B*Real.log (T.c : ℝ)/Real.log 2 := by
  have hu := (actual_log_budget_iff T hd B).mp hbudget
  have hlog : 0≤Real.log (T.c : ℝ) := Real.log_natCast_nonneg T.c
  have htwo : 0≤Real.log (2 : ℝ) := Real.log_natCast_nonneg 2
  apply (partial_credit_unpaid_height T hW).trans
  apply div_le_div_of_nonneg_right _ htwo
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left hu (Nat.cast_nonneg _)) hlog

theorem actual_log_radical_budget_height (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b ≠ 0)
    (hd : integerAdditiveDefect T ≠ 0) (A δ : ℝ)
    (hR : 0<(UniqueFactorizationMonoid.radical T.product : ℝ))
    (hbudget : actualUnpaidLogSum T ≤ A+δ*
      Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)) :
    (T.c : ℝ) ≤ (UniqueFactorizationMonoid.radical T.product : ℝ)*
      (Real.exp A*(UniqueFactorizationMonoid.radical T.product : ℝ)^δ)*
        Real.log (T.c : ℝ)/Real.log 2 := by
  have he : Real.exp (A+δ*Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)) =
      Real.exp A*(UniqueFactorizationMonoid.radical T.product : ℝ)^δ := by
    rw [Real.exp_add,Real.rpow_def_of_pos hR]
    congr 1
    congr 1
    ring
  simpa only [he] using actual_log_budget_height T hW hd _ hbudget

/- The displayed log-radical budget is UNSUPPLIED. Absorbing the remaining
log(c) costs exponent slack and a constant; it cannot be dropped. Defect=0
and W=0 are distinct branches, with the latter height supplier still missing. -/
end GRWTSK.NumberTheory.ABC.ActualDefectLogHeightConsumer
