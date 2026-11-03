/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerWronskianRepetitionCorrection
import GRWTSK.NumberTheory.AdditiveDefectEstimate

set_option autoImplicit false
noncomputable section

/-! Single-prime differentiation separates summands but its corrected target
Wronskian vanishes. No ABC bound is inferred. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.SinglePrimeWronskianDefectObstruction
open RetainedFactorization AdditiveDefectEstimate

def primeDerivative (p n : ℕ) : ℕ := n.factorization p*(n/p)
def primeWronskian (p a b : ℕ) : ℤ :=
  (a : ℤ)*(primeDerivative p b : ℤ)-(b : ℤ)*(primeDerivative p a : ℤ)
def primeDefect (p : ℕ) (T : CoprimeAdditiveTriple) : ℤ :=
  (primeDerivative p T.c : ℤ)-(primeDerivative p T.a : ℤ)-(primeDerivative p T.b : ℤ)

theorem selected_prime_not_dvd_others (T : CoprimeAdditiveTriple) (p : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) : ¬p ∣ T.b ∧ ¬p ∣ T.c := by
  constructor
  · intro h
    exact hp.ne_one (Nat.eq_one_of_dvd_coprimes T.coprime hpa h)
  · intro h
    exact hp.ne_one (Nat.eq_one_of_dvd_coprimes (additive_pairwise_coprime T).1 hpa h)

theorem single_prime_corrected_wronskian_zero (T : CoprimeAdditiveTriple) (p : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) :
    primeWronskian p T.a T.b-(T.b : ℤ)*primeDefect p T=0 := by
  have hn := selected_prime_not_dvd_others T p hp hpa
  have hb : primeDerivative p T.b=0 := by
    simp [primeDerivative,Nat.factorization_eq_zero_of_not_dvd hn.1]
  have hc : primeDerivative p T.c=0 := by
    simp [primeDerivative,Nat.factorization_eq_zero_of_not_dvd hn.2]
  simp [primeWronskian,primeDefect,hb,hc]
  <;> ring

theorem single_prime_wronskian_nonzero (T : CoprimeAdditiveTriple) (p : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) : primeWronskian p T.a T.b ≠ 0 := by
  have hn := selected_prime_not_dvd_others T p hp hpa
  have hb : primeDerivative p T.b=0 := by
    simp [primeDerivative,Nat.factorization_eq_zero_of_not_dvd hn.1]
  have hd : 0 < primeDerivative p T.a :=
    Nat.mul_pos (hp.factorization_pos_of_dvd (ne_of_gt T.a_pos) hpa)
      (Nat.div_pos (Nat.le_of_dvd T.a_pos hpa) hp.pos)
  have hbd : (T.b : ℤ)*(primeDerivative p T.a : ℤ) ≠ 0 :=
    mul_ne_zero (by exact_mod_cast ne_of_gt T.b_pos) (by exact_mod_cast ne_of_gt hd)
  simpa [primeWronskian,hb] using neg_ne_zero.mpr hbd

end GRWTSK.NumberTheory.ABC.SinglePrimeWronskianDefectObstruction
