/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.VanishingWronskianIntegerRate

set_option autoImplicit false
noncomputable section

/-! Cancel only the proved nonzero repetition quotient.
Integrality of the arithmetic logarithmic derivative becomes divisibility
of the retained coefficient by the full radical. No height bound follows.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.IntegerRateRadicalCoefficient
open RetainedFactorization RetainedArithmeticDerivative NaturalRepetitionSource
open IntegerAdditiveDefectCongruences VanishingWronskianIntegerRate

theorem integer_rate_iff_radical_dvd_coefficient (n : ℕ) (hn : n ≠ 0) :
    n ∣ naturalArithmeticDerivative n ↔
      UniqueFactorizationMonoid.radical n ∣ retainedSupportCoefficient n := by
  have hQ : 0 < repetitionQuotient n :=
    Nat.pos_of_ne_zero (repetitionQuotient_ne_zero n hn)
  have hnQ : n = repetitionQuotient n * UniqueFactorizationMonoid.radical n := by
    simpa [mul_comm] using (radical_mul_repetitionQuotient n).symm
  rw [derivative_eq_repetition_mul_support]
  conv_lhs => lhs; rw [hnQ]
  exact Nat.mul_dvd_mul_iff_left hQ

theorem vanishing_wronskian_radical_coefficients (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b=0) :
    UniqueFactorizationMonoid.radical T.a ∣ retainedSupportCoefficient T.a ∧
      UniqueFactorizationMonoid.radical T.b ∣ retainedSupportCoefficient T.b := by
  obtain ⟨k,ha,hb⟩ := (vanishing_wronskian_iff_common_rate T).mp hW
  constructor
  · apply (integer_rate_iff_radical_dvd_coefficient T.a (ne_of_gt T.a_pos)).mp
    exact ⟨k,ha⟩
  · apply (integer_rate_iff_radical_dvd_coefficient T.b (ne_of_gt T.b_pos)).mp
    exact ⟨k,hb⟩

end GRWTSK.NumberTheory.ABC.IntegerRateRadicalCoefficient
