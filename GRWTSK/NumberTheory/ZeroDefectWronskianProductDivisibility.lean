/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerWronskianRepetitionCorrection
import GRWTSK.NumberTheory.AdditiveDefectEstimate

set_option autoImplicit false
noncomputable section

/-! Product repetition divisibility with exact zero-defect scope.
Zero defect and nonzero Wronskian are not supplied for arbitrary triples.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ZeroDefectWronskianProductDivisibility
open RetainedFactorization NaturalRepetitionSource IntegerAdditiveDefectCongruences
open IntegerWronskianRepetitionCorrection AdditiveDefectEstimate

theorem summand_repetition_coprime (T : CoprimeAdditiveTriple) :
    Nat.Coprime (repetitionQuotient T.a) (repetitionQuotient T.b) :=
  Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.a)
    (repetitionQuotient_dvd_input T.b) T.coprime

theorem summand_product_dvd_wronskian (T : CoprimeAdditiveTriple) :
    ((repetitionQuotient T.a * repetitionQuotient T.b : ℕ) : ℤ) ∣
      integerWronskian T.a T.b := by
  apply Int.natCast_dvd.mpr
  exact (summand_repetition_coprime T).mul_dvd_of_dvd_of_dvd
    (Int.natCast_dvd.mp (first_repetition_dvd_wronskian T.a T.b))
    (Int.natCast_dvd.mp (second_repetition_dvd_wronskian T.a T.b))

theorem full_product_dvd_of_zero_defect (T : CoprimeAdditiveTriple)
    (hδ : integerAdditiveDefect T = 0) :
    ((repetitionQuotient T.a * repetitionQuotient T.b * repetitionQuotient T.c : ℕ) : ℤ) ∣
      integerWronskian T.a T.b := by
  have hp := additive_pairwise_coprime T
  have hac := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.a)
    (repetitionQuotient_dvd_input T.c) hp.1
  have hbc := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.b)
    (repetitionQuotient_dvd_input T.c) hp.2
  have hcop : Nat.Coprime (repetitionQuotient T.a * repetitionQuotient T.b)
      (repetitionQuotient T.c) := Nat.coprime_mul_iff_left.mpr ⟨hac, hbc⟩
  have hc := target_repetition_dvd_corrected_wronskian T
  rw [hδ, mul_zero, sub_zero] at hc
  apply Int.natCast_dvd.mpr
  exact hcop.mul_dvd_of_dvd_of_dvd
    (Int.natCast_dvd.mp (summand_product_dvd_wronskian T)) (Int.natCast_dvd.mp hc)

end GRWTSK.NumberTheory.ABC.ZeroDefectWronskianProductDivisibility
