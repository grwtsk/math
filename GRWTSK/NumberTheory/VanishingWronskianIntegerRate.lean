/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.TargetRepetitionDefectCriterion

set_option autoImplicit false
noncomputable section

/-! Coprimality forces vanishing Wronskians into a common integer-rate class.
No height bound for that class is asserted.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.VanishingWronskianIntegerRate
open RetainedFactorization RetainedArithmeticDerivative IntegerWronskianRepetitionCorrection

theorem vanishing_wronskian_iff_common_rate (T : CoprimeAdditiveTriple) :
    integerWronskian T.a T.b=0 ↔ ∃ k : ℕ,
      naturalArithmeticDerivative T.a=T.a*k ∧
      naturalArithmeticDerivative T.b=T.b*k := by
  constructor
  · intro hW
    have he : (T.a : ℤ)*(naturalArithmeticDerivative T.b : ℤ) =
        (T.b : ℤ)*(naturalArithmeticDerivative T.a : ℤ) := by
      exact sub_eq_zero.mp hW
    have ha : (T.a : ℤ) ∣ (naturalArithmeticDerivative T.a : ℤ) := by
      apply T.coprime.isCoprime.dvd_of_dvd_mul_left
      rw [← he]
      exact dvd_mul_right _ _
    have hb : (T.b : ℤ) ∣ (naturalArithmeticDerivative T.b : ℤ) := by
      apply T.coprime.symm.isCoprime.dvd_of_dvd_mul_left
      rw [he]
      exact dvd_mul_right _ _
    have han : T.a ∣ naturalArithmeticDerivative T.a := by
      simpa using Int.natCast_dvd.mp ha
    have hbn : T.b ∣ naturalArithmeticDerivative T.b := by
      simpa using Int.natCast_dvd.mp hb
    obtain ⟨k,hk⟩ := han
    obtain ⟨l,hl⟩ := hbn
    have hen : T.a*naturalArithmeticDerivative T.b =
        T.b*naturalArithmeticDerivative T.a := by exact_mod_cast he
    rw [hk,hl] at hen
    have hp : T.a*T.b ≠ 0 := mul_ne_zero (ne_of_gt T.a_pos) (ne_of_gt T.b_pos)
    have hmul : (T.a*T.b)*l=(T.a*T.b)*k := by
      convert hen using 1 <;> ring
    have hkl : l=k := (mul_left_inj' hp).mp hmul
    exact ⟨k,hk,by simpa [hkl] using hl⟩
  · rintro ⟨k,hk,hl⟩
    unfold integerWronskian
    rw [hk,hl]
    push_cast
    ring

end GRWTSK.NumberTheory.ABC.VanishingWronskianIntegerRate
