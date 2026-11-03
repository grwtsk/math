/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.VanishingWronskianSupportClassification

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Support-size cost of integer rate and genuine prime-power zero-W families.
No radical lower bound for the additive target is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.IntegerRateSupportSizeAndPrimeFamily
open RetainedFactorization RetainedArithmeticDerivative RetainedCoefficientPrimeCongruence
open IntegerRateSupportCharacterization IntegerWronskianRepetitionCorrection

theorem supported_rate_positive (n p : ℕ) (hp : p ∈ n.factorization.support)
    (hd : p ∣ n.factorization p) : 1 ≤ n.factorization p/p := by
  obtain ⟨k,hk⟩ := hd
  have he : n.factorization p ≠ 0 := Finsupp.mem_support_iff.mp hp
  have hk0 : k ≠ 0 := by intro h; simp [h] at hk; exact he hk
  rw [hk, Nat.mul_div_right _ (support_prime n p hp).pos]
  exact Nat.one_le_iff_ne_zero.mpr hk0

theorem support_card_le_rate (n : ℕ)
    (h : ∀ p ∈ n.factorization.support, p ∣ n.factorization p) :
    n.factorization.support.card ≤ supportIntegerRate n := by
  calc
    _ = ∑ _p ∈ n.factorization.support, (1 : ℕ) := by simp
    _ ≤ _ := Finset.sum_le_sum (fun p hp => supported_rate_positive n p hp (h p hp))

theorem derivative_prime_self_power (p : ℕ) (hp : Nat.Prime p) :
    naturalArithmeticDerivative (p^p)=p^p := by
  have he : p-1+1=p := Nat.sub_add_cancel hp.one_lt.le
  have hd := naturalArithmeticDerivative_prime_pow_succ p (p-1) hp
  rw [he] at hd
  calc
    _ = p*p^(p-1) := hd
    _ = p^p := by rw [mul_comm, ← pow_succ, he]

def primeSelfPowerTriple (p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q) (hpq : p ≠ q) :
    CoprimeAdditiveTriple where
  a := p^p
  b := q^q
  c := p^p+q^q
  a_pos := pow_pos hp.pos _
  b_pos := pow_pos hq.pos _
  c_pos := add_pos (pow_pos hp.pos _) (pow_pos hq.pos _)
  additive := rfl
  coprime := ((Nat.coprime_primes hp hq).mpr hpq).pow _ _

theorem primeSelfPowerTriple_wronskian_zero (p q : ℕ) (hp : Nat.Prime p)
    (hq : Nat.Prime q) (hpq : p ≠ q) :
    integerWronskian (primeSelfPowerTriple p q hp hq hpq).a
      (primeSelfPowerTriple p q hp hq hpq).b=0 := by
  change integerWronskian (p^p) (q^q)=0
  unfold integerWronskian
  rw [derivative_prime_self_power p hp, derivative_prime_self_power q hq]
  ring

end GRWTSK.NumberTheory.ABC.IntegerRateSupportSizeAndPrimeFamily
