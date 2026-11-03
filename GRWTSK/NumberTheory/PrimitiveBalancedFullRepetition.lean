/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimitiveBalancedWronskianAmplitude

set_option autoImplicit false
noncomputable section

/-! Full repetition divisor of the primitive balanced amplitude, rederived
for the weighted derivative. Its height cost is retained. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.PrimitiveBalancedFullRepetition
open RetainedFactorization NaturalRepetitionSource IntegerWronskianRepetitionCorrection
open AdditiveDefectEstimate PrimitiveBalancedPrimeDerivative ActualPrimitiveBalanceNondegenerate
open PrimitiveBalancedWronskianAmplitude

theorem primitive_full_repetition_dvd_amplitude (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    repetitionQuotient T.a*repetitionQuotient T.b*repetitionQuotient T.c ∣
      T.b*primitiveAmplitude T p q := by
  obtain ⟨ha,hb⟩ := actual_primitive_source_values T p q hp hpa hq hqc
  have hc := actual_primitive_additivity T p q hp hpa hq hqc
  rw [ha,hb,add_zero] at hc
  have hA := repetition_dvd_primitiveDerivative T p q T.a
  have hC := repetition_dvd_primitiveDerivative T p q T.c
  rw [ha] at hA
  rw [hc] at hC
  have hcop : Nat.Coprime (repetitionQuotient T.a) (repetitionQuotient T.c) :=
    Nat.Coprime.of_dvd (repetitionQuotient_dvd_input T.a)
      (repetitionQuotient_dvd_input T.c) (additive_pairwise_coprime T).1
  have hAC := hcop.mul_dvd_of_dvd_of_dvd hA hC
  have hh := Nat.mul_dvd_mul (repetitionQuotient_dvd_input T.b) hAC
  simpa only [mul_comm,mul_left_comm,mul_assoc] using hh

theorem primitive_full_repetition_size (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    repetitionQuotient T.a*repetitionQuotient T.b*repetitionQuotient T.c ≤
      T.b*primitiveAmplitude T p q := by
  exact Nat.le_of_dvd
    (Nat.mul_pos T.b_pos (actual_primitive_amplitude_pos T p q hp hpa hq hqc))
    (primitive_full_repetition_dvd_amplitude T p q hp hpa hq hqc)

/- The right side is b*Dp(a)*Dq(c)/g, not a uniform logarithmic budget.
No ABC height improvement is inferred from this divisor-size statement. -/
end GRWTSK.NumberTheory.ABC.PrimitiveBalancedFullRepetition
