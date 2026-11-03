/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimitiveBalanceRatioObstruction

set_option autoImplicit false
noncomputable section

/-! The primitive two-prime balancing ratio is already bounded by actual
radical support. No new height restriction follows from that ratio. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.PrimitiveBalanceRadicalObstruction
open RetainedFactorization AdditiveDefectEstimate PrimitiveBalancedPrimeDerivative
open PrimitiveBalanceRatioObstruction

theorem supported_prime_dvd_actual_radical (n p : ℕ) (hn : n ≠ 0)
    (hp : Nat.Prime p) (hd : p ∣ n) : p ∣ UniqueFactorizationMonoid.radical n := by
  rw [Nat.radical_eq_prod_primeFactors]
  exact Finset.dvd_prod_of_mem (fun k : ℕ => k) (hp.mem_primeFactors hd hn)

theorem actual_prime_product_dvd_radical (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    p*q ∣ UniqueFactorizationMonoid.radical T.product := by
  have hn : T.product ≠ 0 := by
    exact ne_of_gt (Nat.mul_pos (Nat.mul_pos T.a_pos T.b_pos) T.c_pos)
  have hpd : p ∣ T.product := dvd_mul_of_dvd_left (dvd_mul_of_dvd_left hpa T.b) T.c
  have hqd : q ∣ T.product := dvd_mul_of_dvd_right hqc (T.a*T.b)
  have hcop : Nat.Coprime p q := Nat.Coprime.of_dvd hpa hqc (additive_pairwise_coprime T).1
  exact hcop.mul_dvd_of_dvd_of_dvd
    (supported_prime_dvd_actual_radical _ _ hn hp hpd)
    (supported_prime_dvd_actual_radical _ _ hn hq hqd)

theorem actual_balancing_ratio_le_radical (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    (p : ℝ)*(q : ℝ)*(balanceGcd T p q : ℝ)/
      ((T.a.factorization p*T.c.factorization q : ℕ) : ℝ) ≤
      (UniqueFactorizationMonoid.radical T.product : ℝ) := by
  apply (actual_balancing_ratio_le_prime_product T p q hp hpa hq hqc).trans
  have hh := Nat.le_of_dvd (Nat.radical_pos T.product)
    (actual_prime_product_dvd_radical T p q hp hpa hq hqc)
  exact_mod_cast hh

end GRWTSK.NumberTheory.ABC.PrimitiveBalanceRadicalObstruction
