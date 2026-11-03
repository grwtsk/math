/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.WeightedPrimeDerivativeRepetition

set_option autoImplicit false
noncomputable section

/-! Actual balanced derivative Wronskian with full repetition and amplitude.
The amplitude retains both source derivative factors. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.BalancedPrimeWronskianRepetition
open RetainedFactorization NaturalRepetitionSource SinglePrimeWronskianDefectObstruction
open ActualTwoPrimeBalancedDerivative WeightedPrimeDerivativeRepetition

def balancedWronskian (T : CoprimeAdditiveTriple) (p q : ℕ) : ℤ :=
  (T.a : ℤ)*(balancedPrimeDerivative T p q T.b : ℤ)-
    (T.b : ℤ)*(balancedPrimeDerivative T p q T.a : ℤ)

theorem balancedWronskian_amplitude (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    balancedWronskian T p q =
      -((T.b*primeDerivative p T.a*primeDerivative q T.c : ℕ) : ℤ) := by
  obtain ⟨ha,hb,_⟩ := actual_balanced_values T p q hp hpa hq hqc
  unfold balancedWronskian
  rw [ha,hb]
  push_cast
  ring

theorem full_repetition_dvd_balanced_amplitude (T : CoprimeAdditiveTriple) (p q : ℕ) :
    repetitionQuotient T.a*repetitionQuotient T.b*repetitionQuotient T.c ∣
      T.b*primeDerivative p T.a*primeDerivative q T.c := by
  have hh := Nat.mul_dvd_mul
    (Nat.mul_dvd_mul (repetition_dvd_primeDerivative T.a p) (repetitionQuotient_dvd_input T.b))
    (repetition_dvd_primeDerivative T.c q)
  simpa only [mul_comm,mul_left_comm,mul_assoc] using hh

theorem full_repetition_dvd_balancedWronskian (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    ((repetitionQuotient T.a*repetitionQuotient T.b*repetitionQuotient T.c : ℕ) : ℤ) ∣
      balancedWronskian T p q := by
  rw [balancedWronskian_amplitude T p q hp hpa hq hqc]
  apply dvd_neg.mpr
  exact_mod_cast full_repetition_dvd_balanced_amplitude T p q

/- Nonvanishing is not a quantitative height supplier. The displayed
amplitude contains the source-dependent balancing weight cost. -/
end GRWTSK.NumberTheory.ABC.BalancedPrimeWronskianRepetition
