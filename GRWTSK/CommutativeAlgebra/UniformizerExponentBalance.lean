import Mathlib

/-!
# Uniqueness and balance of exponents in monomial identities

Source candidate split from `weil_conjecture_main.lean`, lines 406–447.
See the adjacent `UniformizerExponentBalance.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_stc_kmnb_exp_count : ∀ (V : Type u) [CommRing V] [IsDomain V] (π : V), π ≠ 0 →
    ¬ IsUnit π → ∀ {n : ℕ} (x f g : V) (s : Fin n → V)
    (α : ℤ) (β : Fin n → ℤ) (ex a b : ℕ) (es : Fin n → ℕ) (εx εf εg w : Vˣ) (εs : Fin n → Vˣ),
    x = εx * π ^ ex → (∀ k, s k = εs k * π ^ es k) → f = εf * π ^ a → g = εg * π ^ b →
    f * x ^ (-α).toNat * ∏ k, s k ^ (-(β k)).toNat = ↑w * g * x ^ α.toNat * ∏ k, s k ^ (β k).toNat →
    (a : ℤ) - b = ex * α + ∑ k, (es k : ℤ) * β k :=
by
  intro V _ _ π hπ hnu n x f g s α β ex a b es εx εf εg w εs hx hs hf hg hrel
  have hprod : ∀ m : Fin n → ℕ, ∏ k, s k ^ m k =
      ((∏ k, (εs k) ^ m k : Vˣ) : V) * π ^ (∑ k, es k * m k) := by
    intro m
    rw [Units.coe_prod, ← Finset.prod_pow_eq_pow_sum, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl (fun k _ => ?_)
    rw [hs k, mul_pow, ← pow_mul, Units.val_pow_eq_pow_val]
  rw [hprod, hprod, hx, hf, hg] at hrel
  have key : ∀ (UL UR : Vˣ) (M M' : ℕ), (UL : V) * π ^ M = (UR : V) * π ^ M' → M' ≤ M := by
    intro UL UR M M' h
    have h1 : π ^ M' ∣ (UL : V) * π ^ M := h ▸ dvd_mul_left _ _
    exact (pow_dvd_pow_iff hπ hnu).mp ((Units.dvd_mul_left).mp h1)
  have hrel' : ((εf * εx ^ (-α).toNat * ∏ k, (εs k) ^ (-(β k)).toNat : Vˣ) : V) *
      π ^ (a + ex * (-α).toNat + ∑ k, es k * (-(β k)).toNat) =
      ((w * εg * εx ^ α.toNat * ∏ k, (εs k) ^ (β k).toNat : Vˣ) : V) *
      π ^ (b + ex * α.toNat + ∑ k, es k * (β k).toNat) := by
    simp only [Units.val_mul, Units.val_pow_eq_pow_val, pow_add, pow_mul] at hrel ⊢
    rw [mul_pow, mul_pow] at hrel
    linear_combination hrel
  have h1 := key _ _ _ _ hrel'
  have h2 := key _ _ _ _ hrel'.symm
  have hMM : a + ex * (-α).toNat + ∑ k, es k * (-(β k)).toNat =
      b + ex * α.toNat + ∑ k, es k * (β k).toNat := le_antisymm h2 h1
  have hZ : ((a + ex * (-α).toNat + ∑ k, es k * (-(β k)).toNat : ℕ) : ℤ) =
      ((b + ex * α.toNat + ∑ k, es k * (β k).toNat : ℕ) : ℤ) := by rw [hMM]
  push_cast at hZ
  have hα : ((α.toNat : ℕ) : ℤ) - (((-α).toNat : ℕ) : ℤ) = α := Int.toNat_sub_toNat_neg α
  have hβ : ∑ k, (es k : ℤ) * β k =
      ∑ k, (es k : ℤ) * ((β k).toNat : ℤ) - ∑ k, (es k : ℤ) * ((-(β k)).toNat : ℤ) := by
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [← mul_sub, Int.toNat_sub_toNat_neg]
  rw [hβ]
  linear_combination hZ + (ex : ℤ) * hα

end GRWTSK.FiniteFieldWeil
