/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.UnpaidRepetitionHeight

set_option autoImplicit false
noncomputable section

/-! Vanishing W gives full target credit, but destroys the nonzero-W height
argument. These are distinct obligations. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.VanishingWronskianFullCredit
open RetainedFactorization NaturalRepetitionSource IntegerWronskianRepetitionCorrection
open IntegerAdditiveDefectCongruences TargetRepetitionGcdCredit
open PartialCreditWronskianHeight UnpaidRepetitionHeight

theorem vanishing_wronskian_full_credit (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b=0) : targetCredit T=repetitionQuotient T.c := by
  unfold targetCredit
  rw [← exact_target_gcd_credit T,hW]
  simp

theorem vanishing_wronskian_unpaid_one (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b=0) : unpaidRepetition T=1 := by
  unfold unpaidRepetition
  rw [vanishing_wronskian_full_credit T hW]
  exact Nat.div_self (Nat.pos_of_ne_zero (repetitionQuotient_ne_zero T.c (ne_of_gt T.c_pos)))

theorem vanishing_wronskian_target_divides_defect (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b=0) :
    (repetitionQuotient T.c : ℤ) ∣ integerAdditiveDefect T := by
  apply (target_divisor_wronskian_iff_defect T _ (dvd_refl _)).mp
  rw [hW]
  exact dvd_zero _

/- No height inequality is exported for W=0: divisibility into zero does
not bound the divisor by a positive absolute Wronskian. -/
end GRWTSK.NumberTheory.ABC.VanishingWronskianFullCredit
