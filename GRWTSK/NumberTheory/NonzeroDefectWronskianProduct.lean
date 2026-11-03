/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZeroDefectWronskianProductDivisibility

set_option autoImplicit false
noncomputable section

/-! Unrestricted divisibility retains the entire defect correction.
The resulting product has two Wronskian factors. No linear height estimate,
nonvanishing supplier or ABC conclusion is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.NonzeroDefectWronskianProduct
open RetainedFactorization NaturalRepetitionSource IntegerAdditiveDefectCongruences
open IntegerWronskianRepetitionCorrection AdditiveDefectEstimate
open ZeroDefectWronskianProductDivisibility

def correctedWronskian (T : CoprimeAdditiveTriple) : ℤ :=
  integerWronskian T.a T.b - (T.b : ℤ) * integerAdditiveDefect T

theorem full_repetition_dvd_wronskian_product (T : CoprimeAdditiveTriple) :
    ((repetitionQuotient T.a * repetitionQuotient T.b * repetitionQuotient T.c : ℕ) : ℤ) ∣
      integerWronskian T.a T.b * correctedWronskian T := by
  have hp := additive_pairwise_coprime T
  have hac := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.a)
    (repetitionQuotient_dvd_input T.c) hp.1
  have hbc := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.b)
    (repetitionQuotient_dvd_input T.c) hp.2
  have hcop : Nat.Coprime (repetitionQuotient T.a * repetitionQuotient T.b)
      (repetitionQuotient T.c) := Nat.coprime_mul_iff_left.mpr ⟨hac, hbc⟩
  have hab : ((repetitionQuotient T.a * repetitionQuotient T.b : ℕ) : ℤ) ∣
      integerWronskian T.a T.b * correctedWronskian T :=
    dvd_mul_of_dvd_left (summand_product_dvd_wronskian T) _
  have hc : (repetitionQuotient T.c : ℤ) ∣
      integerWronskian T.a T.b * correctedWronskian T :=
    dvd_mul_of_dvd_right (target_repetition_dvd_corrected_wronskian T) _
  exact Int.natCast_dvd.mpr (hcop.mul_dvd_of_dvd_of_dvd
    (Int.natCast_dvd.mp hab) (Int.natCast_dvd.mp hc))

theorem full_repetition_le_product_mass (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b ≠ 0)
    (hC : correctedWronskian T ≠ 0) :
    repetitionQuotient T.a * repetitionQuotient T.b * repetitionQuotient T.c ≤
      (integerWronskian T.a T.b * correctedWronskian T).natAbs := by
  apply Nat.le_of_dvd
  · exact Int.natAbs_pos.mpr (mul_ne_zero hW hC)
  · exact Int.natCast_dvd.mp (full_repetition_dvd_wronskian_product T)

theorem product_mass_factorization (T : CoprimeAdditiveTriple) :
    (integerWronskian T.a T.b * correctedWronskian T).natAbs =
      (integerWronskian T.a T.b).natAbs * (correctedWronskian T).natAbs :=
  Int.natAbs_mul _ _

end GRWTSK.NumberTheory.ABC.NonzeroDefectWronskianProduct
