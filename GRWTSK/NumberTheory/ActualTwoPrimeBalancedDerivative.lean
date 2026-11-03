/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.SinglePrimeWronskianDefectObstruction

set_option autoImplicit false
noncomputable section

/-! Explicit source-dependent balancing weights. This derivative is distinct
from the canonical arithmetic derivative; no uniform height estimate for
its weights is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.ActualTwoPrimeBalancedDerivative
open RetainedFactorization AdditiveDefectEstimate SinglePrimeWronskianDefectObstruction

def balancedPrimeDerivative (T : CoprimeAdditiveTriple) (p q n : ℕ) : ℕ :=
  primeDerivative q T.c*primeDerivative p n+
    primeDerivative p T.a*primeDerivative q n

theorem target_prime_not_dvd_summands (T : CoprimeAdditiveTriple) (q : ℕ)
    (hq : Nat.Prime q) (hqc : q ∣ T.c) : ¬q ∣ T.a ∧ ¬q ∣ T.b := by
  constructor
  · intro h
    exact hq.ne_one (Nat.eq_one_of_dvd_coprimes (additive_pairwise_coprime T).1 h hqc)
  · intro h
    exact hq.ne_one (Nat.eq_one_of_dvd_coprimes (additive_pairwise_coprime T).2 h hqc)

theorem actual_balanced_values (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    balancedPrimeDerivative T p q T.a=primeDerivative p T.a*primeDerivative q T.c ∧
    balancedPrimeDerivative T p q T.b=0 ∧
    balancedPrimeDerivative T p q T.c=primeDerivative p T.a*primeDerivative q T.c := by
  have hpother := selected_prime_not_dvd_others T p hp hpa
  have hqother := target_prime_not_dvd_summands T q hq hqc
  have hpb : primeDerivative p T.b=0 := by
    simp [primeDerivative,Nat.factorization_eq_zero_of_not_dvd hpother.1]
  have hpc : primeDerivative p T.c=0 := by
    simp [primeDerivative,Nat.factorization_eq_zero_of_not_dvd hpother.2]
  have hqa : primeDerivative q T.a=0 := by
    simp [primeDerivative,Nat.factorization_eq_zero_of_not_dvd hqother.1]
  have hqb : primeDerivative q T.b=0 := by
    simp [primeDerivative,Nat.factorization_eq_zero_of_not_dvd hqother.2]
  simp [balancedPrimeDerivative,hpb,hpc,hqa,hqb,mul_comm]

theorem actual_balanced_additivity (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    balancedPrimeDerivative T p q T.c =
      balancedPrimeDerivative T p q T.a+balancedPrimeDerivative T p q T.b := by
  obtain ⟨ha,hb,hc⟩ := actual_balanced_values T p q hp hpa hq hqc
  rw [ha,hb,hc,add_zero]

end GRWTSK.NumberTheory.ABC.ActualTwoPrimeBalancedDerivative
