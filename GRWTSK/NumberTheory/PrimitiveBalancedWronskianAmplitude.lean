/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ActualPrimitiveBalanceNondegenerate

set_option autoImplicit false
noncomputable section

/-! Exact primitive derivative amplitude after gcd normalization. The full
source-height cost remains in the quotient. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.PrimitiveBalancedWronskianAmplitude
open RetainedFactorization SinglePrimeWronskianDefectObstruction
open ActualTwoPrimeBalancedDerivative PrimitiveBalancedPrimeDerivative
open ActualPrimitiveBalanceNondegenerate

def primitiveAmplitude (T : CoprimeAdditiveTriple) (p q : ℕ) : ℕ :=
  primeDerivative p T.a*primeDerivative q T.c/balanceGcd T p q

theorem actual_primitive_source_values (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    primitiveBalancedDerivative T p q T.a=primitiveAmplitude T p q ∧
      primitiveBalancedDerivative T p q T.b=0 := by
  have hg := ne_of_gt (actual_balanceGcd_pos T p q hp hpa)
  obtain ⟨ha,hb,_⟩ := actual_balanced_values T p q hp hpa hq hqc
  have hd : balanceGcd T p q ∣ primeDerivative p T.a*primeDerivative q T.c :=
    dvd_mul_of_dvd_left (Nat.gcd_dvd_left _ _) _
  constructor
  · apply (mul_left_inj' hg).mp
    rw [gcd_mul_primitiveDerivative,ha]
    exact (Nat.mul_div_cancel' hd).symm
  · apply (mul_left_inj' hg).mp
    rw [gcd_mul_primitiveDerivative,hb,mul_zero]

theorem actual_primitive_amplitude_pos (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    0<primitiveAmplitude T p q := by
  have hAC := Nat.mul_pos (supported_primeDerivative_pos T.a p T.a_pos hp hpa)
    (supported_primeDerivative_pos T.c q T.c_pos hq hqc)
  have hd : balanceGcd T p q ∣ primeDerivative p T.a*primeDerivative q T.c :=
    dvd_mul_of_dvd_left (Nat.gcd_dvd_left _ _) _
  exact Nat.div_pos (Nat.le_of_dvd hAC hd) (actual_balanceGcd_pos T p q hp hpa)

theorem primitive_wronskian_exact_amplitude (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    (T.a : ℤ)*(primitiveBalancedDerivative T p q T.b : ℤ)-
      (T.b : ℤ)*(primitiveBalancedDerivative T p q T.a : ℤ) =
        -((T.b*primitiveAmplitude T p q : ℕ) : ℤ) := by
  obtain ⟨ha,hb⟩ := actual_primitive_source_values T p q hp hpa hq hqc
  rw [ha,hb]
  push_cast
  ring

end GRWTSK.NumberTheory.ABC.PrimitiveBalancedWronskianAmplitude
