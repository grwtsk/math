/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.TargetRepetitionDefectCriterion

set_option autoImplicit false
noncomputable section

/-! Exact retained target credit, without a zero-defect premise.
The size of this gcd is not controlled here.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.TargetRepetitionGcdCredit
open RetainedFactorization NaturalRepetitionSource IntegerAdditiveDefectCongruences
open IntegerWronskianRepetitionCorrection AdditiveDefectEstimate

theorem target_divisor_wronskian_iff_defect (T : CoprimeAdditiveTriple)
    (d : ℕ) (hd : d ∣ repetitionQuotient T.c) :
    (d : ℤ) ∣ integerWronskian T.a T.b ↔ (d : ℤ) ∣ integerAdditiveDefect T := by
  have hdz : (d : ℤ) ∣ (repetitionQuotient T.c : ℤ) := by exact_mod_cast hd
  have hc := hdz.trans (target_repetition_dvd_corrected_wronskian T)
  have hb : Nat.Coprime d T.b :=
    Nat.Coprime.of_dvd (hd.trans (repetitionQuotient_dvd_input T.c)) (dvd_refl T.b)
      (additive_pairwise_coprime T).2.symm
  constructor
  · intro hW
    have hm : (d : ℤ) ∣ (T.b : ℤ) * integerAdditiveDefect T := by
      have hh := dvd_sub hW hc
      convert hh using 1 <;> ring
    exact hb.isCoprime.dvd_of_dvd_mul_left hm
  · intro hδ
    have hh := dvd_add hc (dvd_mul_of_dvd_right hδ (T.b : ℤ))
    convert hh using 1 <;> ring

theorem exact_target_gcd_credit (T : CoprimeAdditiveTriple) :
    Nat.gcd (repetitionQuotient T.c) (integerWronskian T.a T.b).natAbs =
      Nat.gcd (repetitionQuotient T.c) (integerAdditiveDefect T).natAbs := by
  apply Nat.dvd_antisymm
  · apply Nat.dvd_gcd (Nat.gcd_dvd_left _ _)
    apply Int.natCast_dvd.mp
    apply (target_divisor_wronskian_iff_defect T _ (Nat.gcd_dvd_left _ _)).mp
    exact Int.natCast_dvd.mpr (Nat.gcd_dvd_right _ _)
  · apply Nat.dvd_gcd (Nat.gcd_dvd_left _ _)
    apply Int.natCast_dvd.mp
    apply (target_divisor_wronskian_iff_defect T _ (Nat.gcd_dvd_left _ _)).mpr
    exact Int.natCast_dvd.mpr (Nat.gcd_dvd_right _ _)

end GRWTSK.NumberTheory.ABC.TargetRepetitionGcdCredit
