/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimitiveBalancedFullRepetition

set_option autoImplicit false
noncomputable section

/-! Quantitative limitation of the two-prime primitive construction:
its balancing gcd divides the product of retained exponents. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.PrimitiveBalanceGcdSupportBound
open RetainedFactorization AdditiveDefectEstimate SinglePrimeWronskianDefectObstruction
open PrimitiveBalancedPrimeDerivative

theorem gcd_weighted_coprime_factors_dvd (e f u v : ℕ) (huv : Nat.Coprime u v) :
    Nat.gcd (e*u) (f*v) ∣ e*f := by
  have hi : IsCoprime (u : ℤ) (v : ℤ) := huv.isCoprime
  obtain ⟨a,b,hab⟩ := hi
  have hd₁ : ((Nat.gcd (e*u) (f*v) : ℕ) : ℤ) ∣ (e : ℤ)*(u : ℤ) := by
    exact_mod_cast Nat.gcd_dvd_left (e*u) (f*v)
  have hd₂ : ((Nat.gcd (e*u) (f*v) : ℕ) : ℤ) ∣ (f : ℤ)*(v : ℤ) := by
    exact_mod_cast Nat.gcd_dvd_right (e*u) (f*v)
  have hh := dvd_add (dvd_mul_of_dvd_right hd₁ (a*(f : ℤ)))
    (dvd_mul_of_dvd_right hd₂ (b*(e : ℤ)))
  have he : (a*(f : ℤ))*((e : ℤ)*(u : ℤ))+
      (b*(e : ℤ))*((f : ℤ)*(v : ℤ))=(e : ℤ)*(f : ℤ) := by
    linear_combination ((e : ℤ)*(f : ℤ))*hab
  rw [he] at hh
  exact_mod_cast hh

theorem actual_balanceGcd_dvd_exponent_product (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hpa : p ∣ T.a) (hqc : q ∣ T.c) :
    balanceGcd T p q ∣ T.a.factorization p*T.c.factorization q := by
  have huv : Nat.Coprime (T.a/p) (T.c/q) :=
    Nat.Coprime.of_dvd (Nat.div_dvd_of_dvd hpa) (Nat.div_dvd_of_dvd hqc)
      (additive_pairwise_coprime T).1
  exact gcd_weighted_coprime_factors_dvd _ _ _ _ huv

/- Combined with the exact primitive amplitude, the naive height inequality
R>=p*q*g/(e*f) is implied by g<=e*f and p*q|R. The balancing construction
therefore supplies no additional ABC height restriction by this argument. -/
end GRWTSK.NumberTheory.ABC.PrimitiveBalanceGcdSupportBound
