/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZeroDefectWronskianProductDivisibility
import Mathlib.RingTheory.Coprime.Lemmas

set_option autoImplicit false
noncomputable section

/-! Exact defect criterion for retaining the target repetition divisor.
This replaces zero defect by divisibility of the defect, but does not
supply that arithmetic condition for arbitrary triples.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.TargetRepetitionDefectCriterion
open RetainedFactorization NaturalRepetitionSource IntegerAdditiveDefectCongruences
open IntegerWronskianRepetitionCorrection AdditiveDefectEstimate
open ZeroDefectWronskianProductDivisibility

theorem target_repetition_dvd_wronskian_iff_defect (T : CoprimeAdditiveTriple) :
    (repetitionQuotient T.c : ℤ) ∣ integerWronskian T.a T.b ↔
      (repetitionQuotient T.c : ℤ) ∣ integerAdditiveDefect T := by
  have hc := target_repetition_dvd_corrected_wronskian T
  have hb : Nat.Coprime (repetitionQuotient T.c) T.b :=
    Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.c) (dvd_refl T.b)
      (additive_pairwise_coprime T).2.symm
  constructor
  · intro hW
    have hm : (repetitionQuotient T.c : ℤ) ∣
        (T.b : ℤ) * integerAdditiveDefect T := by
      have hd := dvd_sub hW hc
      convert hd using 1 <;> ring
    exact hb.isCoprime.dvd_of_dvd_mul_left hm
  · intro hδ
    have hm := dvd_mul_of_dvd_right hδ (T.b : ℤ)
    have hd := dvd_add hc hm
    convert hd using 1 <;> ring

theorem full_repetition_dvd_of_target_defect (T : CoprimeAdditiveTriple)
    (hδ : (repetitionQuotient T.c : ℤ) ∣ integerAdditiveDefect T) :
    ((repetitionQuotient T.a * repetitionQuotient T.b * repetitionQuotient T.c : ℕ) : ℤ) ∣
      integerWronskian T.a T.b := by
  have hp := additive_pairwise_coprime T
  have hac := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.a)
    (repetitionQuotient_dvd_input T.c) hp.1
  have hbc := Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.b)
    (repetitionQuotient_dvd_input T.c) hp.2
  have hcop : Nat.Coprime (repetitionQuotient T.a * repetitionQuotient T.b)
      (repetitionQuotient T.c) := Nat.coprime_mul_iff_left.mpr ⟨hac, hbc⟩
  exact Int.natCast_dvd.mpr (hcop.mul_dvd_of_dvd_of_dvd
    (Int.natCast_dvd.mp (summand_product_dvd_wronskian T))
    (Int.natCast_dvd.mp ((target_repetition_dvd_wronskian_iff_defect T).mpr hδ)))

end GRWTSK.NumberTheory.ABC.TargetRepetitionDefectCriterion
