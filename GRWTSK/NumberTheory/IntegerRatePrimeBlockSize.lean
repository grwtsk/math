/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.VanishingWronskianRateOneTriple

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Rate controls a lower size threshold, not an upper height bound.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.IntegerRatePrimeBlockSize
open RetainedFactorization IntegerWronskianRepetitionCorrection RetainedCoefficientPrimeCongruence
open IntegerRateSupportCharacterization VanishingWronskianSupportClassification

theorem prime_self_power_ge_four (p : ℕ) (hp : Nat.Prime p) : 4≤p^p := by
  calc
    4=(2 : ℕ)^2 := rfl
    _≤p^2 := pow_le_pow_left' hp.two_le 2
    _≤p^p := pow_le_pow_right' (by omega : 1≤p) hp.two_le

theorem actual_integer_rate_size_lower (n : ℕ) (hn : n≠0)
    (hdiv : ∀ p ∈ n.factorization.support, p ∣ n.factorization p) :
    4^(supportIntegerRate n)≤n := by
  calc
    _ = ∏ p ∈ n.factorization.support, (4 : ℕ)^(n.factorization p/p) := by
      unfold supportIntegerRate
      exact (Finset.prod_pow_eq_pow_sum _ _ _).symm
    _ ≤ ∏ p ∈ n.factorization.support, p^(p*(n.factorization p/p)) := by
      apply Finset.prod_le_prod (fun _ _ => Nat.zero_le _)
      intro p hp
      rw [pow_mul]
      exact pow_le_pow_left' (prime_self_power_ge_four p (support_prime n p hp)) _
    _ = n := (integer_rate_prime_product n hn hdiv).symm

theorem actual_zero_w_common_rate_size (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b=0) :
    4^(supportIntegerRate T.a)≤T.a ∧ 4^(supportIntegerRate T.a)≤T.b := by
  obtain ⟨ha,hb,he⟩ := (vanishing_wronskian_iff_support_rates T).mp hW
  constructor
  · exact actual_integer_rate_size_lower T.a (ne_of_gt T.a_pos) ha
  · rw [he]
    exact actual_integer_rate_size_lower T.b (ne_of_gt T.b_pos) hb

/- The bound implies k≤log(min(a,b))/log4 after real logarithms. Reversing
its direction would be invalid: rate one permits unbounded prime powers.
It supplies neither target prime-support growth nor the missing W=0
additive radical-height estimate. No ABC conclusion follows. -/
end GRWTSK.NumberTheory.ABC.IntegerRatePrimeBlockSize
