/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimitiveBalancedPrimeDerivative

set_option autoImplicit false
noncomputable section

/-! Actual supported primes discharge the primitive denominator premise.
This is nondegeneracy, not quantitative height control. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.ActualPrimitiveBalanceNondegenerate
open RetainedFactorization SinglePrimeWronskianDefectObstruction PrimitiveBalancedPrimeDerivative

theorem supported_primeDerivative_pos (n p : ℕ) (hn : 0<n)
    (hp : Nat.Prime p) (hpn : p ∣ n) : 0<primeDerivative p n := by
  exact Nat.mul_pos (hp.factorization_pos_of_dvd (ne_of_gt hn) hpn)
    (Nat.div_pos (Nat.le_of_dvd hn hpn) hp.pos)

theorem actual_balanceGcd_pos (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) : 0<balanceGcd T p q := by
  exact Nat.gcd_pos_of_pos_left _ (supported_primeDerivative_pos T.a p T.a_pos hp hpa)

theorem actual_primitive_additivity (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    primitiveBalancedDerivative T p q T.c =
      primitiveBalancedDerivative T p q T.a+primitiveBalancedDerivative T p q T.b :=
  primitive_actual_additivity T p q hp hpa hq hqc
    (ne_of_gt (actual_balanceGcd_pos T p q hp hpa))

theorem actual_normalized_weights_positive (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    0<primeDerivative q T.c/balanceGcd T p q ∧
      0<primeDerivative p T.a/balanceGcd T p q := by
  have hg := actual_balanceGcd_pos T p q hp hpa
  have hA := supported_primeDerivative_pos T.a p T.a_pos hp hpa
  have hC := supported_primeDerivative_pos T.c q T.c_pos hq hqc
  exact ⟨Nat.div_pos (Nat.le_of_dvd hC (Nat.gcd_dvd_right _ _)) hg,
    Nat.div_pos (Nat.le_of_dvd hA (Nat.gcd_dvd_left _ _)) hg⟩

end GRWTSK.NumberTheory.ABC.ActualPrimitiveBalanceNondegenerate
