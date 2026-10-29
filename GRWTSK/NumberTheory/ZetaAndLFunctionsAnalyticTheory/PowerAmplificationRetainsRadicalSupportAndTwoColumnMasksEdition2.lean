import Mathlib

/-!
# Power amplification retains radical support and two-column masks

Batch 20's sixth-power exponent does not remove any prime from the periodic
modulus. This is proved for every unique factorization monoid with its exact
Mathlib radical. Batch 21's two-column integer coprimality mask tensorizes
without discarding either column. No Eisenstein profile separation, signed
Mobius-port estimate or Type-III cancellation theorem is supplied.

Human source and modulus direction: grwtsk contributors. Local radical and mask
adapters: OpenAI Codex. Factorization and coprimality retain Mathlib identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RadicalMasks

open UniqueFactorizationMonoid
noncomputable section

theorem power_product_prime_support {M : Type*} [CommMonoidWithZero M]
    [NormalizationMonoid M] [UniqueFactorizationMonoid M] (a e : M)
    {k : ℕ} (hk : k ≠ 0) : primeFactors (a ^ k * e) = primeFactors (a * e) := by
  classical
  by_cases ha : a = 0
  · simp [ha, zero_pow hk]
  by_cases he : e = 0
  · simp [he]
  rw [primeFactors_mul_eq_union (pow_ne_zero _ ha) he,
    primeFactors_mul_eq_union ha he, primeFactors_pow a hk]

theorem power_product_radical {M : Type*} [CommMonoidWithZero M]
    [NormalizationMonoid M] [UniqueFactorizationMonoid M] (a e : M)
    {k : ℕ} (hk : k ≠ 0) : radical (a ^ k * e) = radical (a * e) := by
  unfold radical
  rw [power_product_prime_support a e hk]

theorem sixth_power_retains_radical {M : Type*} [CommMonoidWithZero M]
    [NormalizationMonoid M] [UniqueFactorizationMonoid M] (a e : M) :
    radical (a ^ 6 * e) = radical (a * e) := power_product_radical a e (by decide)

def unitMask (q m : ℕ) : ℤ := if q.Coprime m then 1 else 0
def twoColumnMask (q m₁ m₂ : ℕ) : ℤ := unitMask q m₁ * unitMask q m₂

theorem unit_mask_tensorizes (q r m : ℕ) : unitMask (q * r) m = unitMask q m * unitMask r m := by
  simp only [unitMask, Nat.coprime_mul_iff_left]
  by_cases hq : q.Coprime m
  · by_cases hr : r.Coprime m
    · rw [if_pos ⟨hq, hr⟩, if_pos hq, if_pos hr]
      norm_num
    · rw [if_neg (fun h => hr h.2), if_pos hq, if_neg hr]
      norm_num
  · rw [if_neg (fun h => hq h.1), if_neg hq]
    norm_num

theorem two_column_mask_tensorizes (q r m₁ m₂ : ℕ) :
    twoColumnMask (q * r) m₁ m₂ = twoColumnMask q m₁ m₂ * twoColumnMask r m₁ m₂ := by
  simp only [twoColumnMask, unit_mask_tensorizes]
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.RadicalMasks
