/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.WeightedPrimeDerivativeRepetition

set_option autoImplicit false
noncomputable section

/-! Exact gcd normalization of source-dependent balancing weights. Division
is performed on the weights, preserving integral prime channels. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.PrimitiveBalancedPrimeDerivative
open RetainedFactorization NaturalRepetitionSource SinglePrimeWronskianDefectObstruction
open ActualTwoPrimeBalancedDerivative WeightedPrimeDerivativeRepetition

def balanceGcd (T : CoprimeAdditiveTriple) (p q : ℕ) : ℕ :=
  Nat.gcd (primeDerivative p T.a) (primeDerivative q T.c)

def primitiveBalancedDerivative (T : CoprimeAdditiveTriple) (p q n : ℕ) : ℕ :=
  (primeDerivative q T.c/balanceGcd T p q)*primeDerivative p n+
    (primeDerivative p T.a/balanceGcd T p q)*primeDerivative q n

theorem gcd_mul_primitiveDerivative (T : CoprimeAdditiveTriple) (p q n : ℕ) :
    balanceGcd T p q*primitiveBalancedDerivative T p q n=balancedPrimeDerivative T p q n := by
  unfold primitiveBalancedDerivative balancedPrimeDerivative
  rw [mul_add,← mul_assoc,← mul_assoc]
  rw [Nat.mul_div_cancel' (Nat.gcd_dvd_right _ _),
    Nat.mul_div_cancel' (Nat.gcd_dvd_left _ _)]

theorem repetition_dvd_primitiveDerivative (T : CoprimeAdditiveTriple) (p q n : ℕ) :
    repetitionQuotient n ∣ primitiveBalancedDerivative T p q n := by
  unfold primitiveBalancedDerivative
  exact dvd_add
    (dvd_mul_of_dvd_right (repetition_dvd_primeDerivative n p) _)
    (dvd_mul_of_dvd_right (repetition_dvd_primeDerivative n q) _)

theorem primitive_actual_additivity (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c)
    (hg : balanceGcd T p q ≠ 0) :
    primitiveBalancedDerivative T p q T.c =
      primitiveBalancedDerivative T p q T.a+primitiveBalancedDerivative T p q T.b := by
  apply (mul_left_inj' hg).mp
  rw [mul_add,gcd_mul_primitiveDerivative,gcd_mul_primitiveDerivative,gcd_mul_primitiveDerivative]
  exact actual_balanced_additivity T p q hp hpa hq hqc

/- Primitive normalization removes common integer scale, not the actual
source-height dependence of the weights. No uniform height gain follows. -/
end GRWTSK.NumberTheory.ABC.PrimitiveBalancedPrimeDerivative
