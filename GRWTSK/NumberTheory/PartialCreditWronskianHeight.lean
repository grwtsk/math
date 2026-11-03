/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.TargetRepetitionGcdCredit
import GRWTSK.NumberTheory.ZeroDefectWronskianHeightBound

set_option autoImplicit false
noncomputable section

/-! Full summand repetition times exact partial target credit divides W.
The height consumer retains nonzero W and the unpaid target quotient.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.PartialCreditWronskianHeight
open RetainedFactorization NaturalRepetitionSource IntegerAdditiveDefectCongruences
open IntegerWronskianRepetitionCorrection AdditiveDefectEstimate
open ZeroDefectWronskianProductDivisibility TargetRepetitionGcdCredit
open ZeroDefectWronskianHeightBound

def targetCredit (T : CoprimeAdditiveTriple) : ℕ :=
  Nat.gcd (repetitionQuotient T.c) (integerAdditiveDefect T).natAbs

theorem partial_credit_product_dvd (T : CoprimeAdditiveTriple) :
    ((repetitionQuotient T.a * repetitionQuotient T.b * targetCredit T : ℕ) : ℤ) ∣
      integerWronskian T.a T.b := by
  have hd : targetCredit T ∣ repetitionQuotient T.c := Nat.gcd_dvd_left _ _
  have hg : (targetCredit T : ℤ) ∣ integerAdditiveDefect T :=
    Int.natCast_dvd.mpr (Nat.gcd_dvd_right _ _)
  have hw := (target_divisor_wronskian_iff_defect T _ hd).mpr hg
  have hp := additive_pairwise_coprime T
  have hac := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.a)
    (hd.trans (repetitionQuotient_dvd_input T.c)) hp.1
  have hbc := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.b)
    (hd.trans (repetitionQuotient_dvd_input T.c)) hp.2
  have hcop : Nat.Coprime (repetitionQuotient T.a * repetitionQuotient T.b)
      (targetCredit T) := Nat.coprime_mul_iff_left.mpr ⟨hac,hbc⟩
  exact Int.natCast_dvd.mpr (hcop.mul_dvd_of_dvd_of_dvd
    (Int.natCast_dvd.mp (summand_product_dvd_wronskian T)) (Int.natCast_dvd.mp hw))

theorem partial_credit_product_height (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b ≠ 0) :
    ((repetitionQuotient T.a * repetitionQuotient T.b * targetCredit T : ℕ) : ℝ) ≤
      (T.a : ℝ)*(T.b : ℝ)*Real.log (T.c : ℝ)/Real.log 2 := by
  have hn := Nat.le_of_dvd (Int.natAbs_pos.mpr hW)
    (Int.natCast_dvd.mp (partial_credit_product_dvd T))
  have hr : ((repetitionQuotient T.a * repetitionQuotient T.b * targetCredit T : ℕ) : ℝ) ≤
      |(integerWronskian T.a T.b : ℝ)| := by
    have hh : ((repetitionQuotient T.a * repetitionQuotient T.b * targetCredit T : ℕ) : ℝ) ≤
        ((integerWronskian T.a T.b).natAbs : ℝ) := by exact_mod_cast hn
    simpa using hh
  exact hr.trans (wronskian_height_upper T)

end GRWTSK.NumberTheory.ABC.PartialCreditWronskianHeight
