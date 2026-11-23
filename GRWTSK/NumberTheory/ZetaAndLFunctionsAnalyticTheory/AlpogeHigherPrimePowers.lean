/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AlpogeRampLayerCake
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Higher prime powers in the quadratic-character ramp

The coefficient count below majorizes every selection of inert odd exponents
at least three, including selections that vary by row and column. The
result bounds the mass inside an integer cube by the ordinary Chebyshev
function at its side length. See the higher-power section of
`AlpogeMainPrimeArithmetic.md` for the exact linear centering and the
passage from this finite bound to the uniform weighted error.
-/

namespace GRWTSK.NumberTheory.AlpogeHigherPrimePowers

open Finset
open scoped Nat.Prime

/-- All exponents from three through the logarithmic cutoff fit in three
copies of the prime-power count at the cube root. -/
theorem cubic_log_count (p R X : ℕ) (hp : 1 < p) (hX : X < (R + 1) ^ 3) :
    Nat.log p X - 2 ≤ 3 * Nat.log p R := by
  have h := Nat.lt_pow_succ_log_self hp R
  have hs : R + 1 ≤ p ^ (Nat.log p R + 1) := h
  have hc : X < (p ^ (Nat.log p R + 1)) ^ 3 := hX.trans_le (Nat.pow_le_pow_left hs 3)
  rw [← pow_mul] at hc
  have := Nat.log_lt_of_lt_pow' (by omega : (Nat.log p R + 1) * 3 ≠ 0) hc
  omega

/-- Signed splitting coefficients are either absent or twice log p on the
inert part. Even removing the parity restriction, the bound is independent
of the character, conductor, cell assignment and cutoff in the finite sum. -/
theorem higher_power_mass_le (X R : ℕ) (hX : X < (R + 1) ^ 3) (select : ℕ → ℕ → Bool) :
    (∑ p ∈ Nat.primesLE R, ∑ _h ∈ (Icc 3 (Nat.log p X)).filter (fun h => select p h = true),
      2 * Real.log p) ≤ 6 * Chebyshev.psi R := by
  rw [Chebyshev.psi_eq_sum_mul_log_prime, mul_sum]
  apply sum_le_sum
  intro p hp
  have hl : 0 ≤ Real.log p := Real.log_nonneg (by exact_mod_cast (Nat.prime_of_mem_primesLE hp).one_le)
  have hc := cubic_log_count p R X (Nat.prime_of_mem_primesLE hp).one_lt hX
  have hcard := Finset.card_filter_le (Icc 3 (Nat.log p X)) (fun h => select p h = true)
  rw [Nat.card_Icc] at hcard
  have hn : ((Icc 3 (Nat.log p X)).filter (fun h => select p h = true)).card ≤ 3 * Nat.log p R := by omega
  simp only [sum_const, nsmul_eq_mul]
  have hr : (((Icc 3 (Nat.log p X)).filter (fun h => select p h = true)).card : ℝ) ≤
      3 * (Nat.log p R : ℝ) := by exact_mod_cast hn
  nlinarith [mul_le_mul_of_nonneg_right hr hl]

theorem higher_power_mass_le_linear (X R : ℕ) (hX : X < (R + 1) ^ 3) (select : ℕ → ℕ → Bool) :
    (∑ p ∈ Nat.primesLE R, ∑ _h ∈ (Icc 3 (Nat.log p X)).filter (fun h => select p h = true),
      2 * Real.log p) ≤ 6 * ((Real.log 4 + 4) * R) :=
  (higher_power_mass_le X R hX select).trans (mul_le_mul_of_nonneg_left
    (Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg R)) (by norm_num))

/-- A finite collection of actual prime/exponent pairs, with its own selections
and a real upper cutoff. This form applies directly to counting the atoms in a
layer of a weighted ramp. -/
theorem selected_atoms_le (S : Finset (ℕ × ℕ)) {x : ℝ} (hx : 0 ≤ x)
    (hS : ∀ z ∈ S, z.1.Prime ∧ 3 ≤ z.2 ∧ ((z.1 ^ z.2 : ℕ) : ℝ) ≤ x) :
    (∑ z ∈ S, 2 * Real.log z.1) ≤ 6 * (Real.log 4 + 4) * x ^ (1 / 3 : ℝ) := by
  let R := ⌊x ^ (1 / 3 : ℝ)⌋₊
  have hr : 0 ≤ x ^ (1 / 3 : ℝ) := Real.rpow_nonneg hx _
  have hroot : (x ^ (1 / 3 : ℝ)) ^ 3 = x := by
    simpa [one_div] using Real.rpow_inv_natCast_pow hx (by decide : 3 ≠ 0)
  have hceil : x < ((R : ℝ) + 1) ^ 3 := by
    rw [← hroot]
    exact pow_lt_pow_left₀ (Nat.lt_floor_add_one _) hr (by decide)
  have hX : ⌊x⌋₊ < (R + 1) ^ 3 := by
    exact_mod_cast (Nat.floor_le hx).trans_lt hceil
  let E (p : ℕ) := (Icc 3 (Nat.log p ⌊x⌋₊)).filter (fun h => (p, h) ∈ S)
  have hmem (z : ℕ × ℕ) : z ∈ S ↔ z.1 ∈ Nat.primesLE R ∧ z.2 ∈ E z.1 := by
    constructor
    · intro hz
      obtain ⟨hp, h3, hcut⟩ := hS z hz
      have hpow := (Nat.le_floor_iff hx).2 hcut
      have hpc : z.1 ^ 3 ≤ ⌊x⌋₊ := (Nat.pow_le_pow_right hp.pos h3).trans hpow
      have hpR : z.1 ≤ R := by
        by_contra! h
        exact (not_lt_of_ge ((Nat.pow_le_pow_left h 3).trans hpc)) hX
      exact ⟨Nat.mem_primesLE.mpr ⟨hpR, hp⟩, mem_filter.mpr
        ⟨mem_Icc.mpr ⟨h3, Nat.le_log_of_pow_le hp.one_lt hpow⟩, hz⟩⟩
    · exact fun h => (mem_filter.mp h.2).2
  rw [Finset.sum_finset_product S (Nat.primesLE R) E hmem]
  calc
    _ ≤ 6 * ((Real.log 4 + 4) * R) := by
      simpa [E] using higher_power_mass_le_linear ⌊x⌋₊ R hX (fun p h => decide ((p, h) ∈ S))
    _ ≤ _ := by
      rw [← mul_assoc]
      exact mul_le_mul_of_nonneg_left (Nat.floor_le hr) (by positivity)

/-- Exact pointwise centering error even when the weight depends on the
powered residue class. -/
theorem ramp_centering_gap (u w : ℝ) : u - max (u - w) 0 = min w u := by
  rcases le_total w u with h | h
  · rw [max_eq_left (sub_nonneg.mpr h), min_eq_left h]
    ring
  · rw [max_eq_right (sub_nonpos.mpr h), min_eq_right h, sub_zero]

/-- Uniform centering error for actual selected prime/exponent pairs and
arbitrary bounded thresholds. In the source take exactly the inert odd
powers with exponent at least three, and the weight at their powered cell. -/
theorem weighted_higher_power_defect_le (S : Finset (ℕ × ℕ)) {a W : ℝ}
    (ha : 0 ≤ a) (hW : 0 < W) (weight : ℕ × ℕ → ℝ)
    (hweight : ∀ z ∈ S, weight z ≤ W)
    (hS : ∀ z ∈ S, z.1.Prime ∧ 3 ≤ z.2) :
    (∑ z ∈ S, 2 * Real.log z.1 *
      (a / (z.1 : ℝ) ^ z.2 - max (a / (z.1 : ℝ) ^ z.2 - weight z) 0)) ≤
      9 * (Real.log 4 + 4) * a ^ (1 / 3 : ℝ) * W ^ (2 / 3 : ℝ) := by
  let size (z : ℕ × ℕ) : ℝ := (z.1 : ℝ) ^ z.2
  let c (z : ℕ × ℕ) : ℝ := 2 * Real.log z.1
  calc
    _ ≤ ∑ z ∈ S, c z * min W (a / size z) := by
      apply sum_le_sum
      intro z hz
      have hl := Real.log_nonneg (show 1 ≤ (z.1 : ℝ) by exact_mod_cast (hS z hz).1.one_le)
      rw [ramp_centering_gap]
      exact mul_le_mul_of_nonneg_left (min_le_min_right _ (hweight z hz)) (by positivity)
    _ ≤ (3 / 2 : ℝ) * ((6 * (Real.log 4 + 4)) * a ^ (1 / 3 : ℝ)) * W ^ (2 / 3 : ℝ) := by
      apply AlpogeRampLayerCake.reciprocal_ramp_of_count hW ha S size c
      · intro z hz
        have hp : 0 < (z.1 : ℝ) := by exact_mod_cast (hS z hz).1.pos
        exact pow_pos hp _
      · intro u hu
        apply selected_atoms_le _ ((div_nonneg ha hW.le).trans hu)
        intro z hz
        obtain ⟨hz, hcut⟩ := mem_filter.mp hz
        exact ⟨(hS z hz).1, (hS z hz).2, by simpa [size] using hcut⟩
    _ = _ := by ring

/-- The complete centering defect converges and obeys the same uniform
bound for an arbitrary set of selected higher prime powers. Taking the
odd exponents at inert primes gives the term in the source ramp. -/
theorem infinite_higher_power_defect (S : Set (ℕ × ℕ)) {a W : ℝ}
    (ha : 0 ≤ a) (hW : 0 < W) (weight : ℕ × ℕ → ℝ)
    (hweight : ∀ z ∈ S, 0 ≤ weight z ∧ weight z ≤ W)
    (hS : ∀ z ∈ S, z.1.Prime ∧ 3 ≤ z.2) :
    let defect := fun z : S => 2 * Real.log z.val.1 *
      (a / (z.val.1 : ℝ) ^ z.val.2 - max (a / (z.val.1 : ℝ) ^ z.val.2 - weight z.val) 0)
    Summable defect ∧ ∑' z, defect z ≤
      9 * (Real.log 4 + 4) * a ^ (1 / 3 : ℝ) * W ^ (2 / 3 : ℝ) := by
  intro defect
  have hpositive : 0 ≤ defect := by
    intro z
    dsimp [defect]
    rw [ramp_centering_gap]
    have hl : 0 ≤ Real.log z.val.1 := Real.log_nonneg (by exact_mod_cast (hS _ z.property).1.one_le)
    exact mul_nonneg (by positivity) (le_min (hweight _ z.property).1 (by positivity))
  have hbound (F : Finset S) : ∑ z ∈ F, defect z ≤
      9 * (Real.log 4 + 4) * a ^ (1 / 3 : ℝ) * W ^ (2 / 3 : ℝ) := by
    let e := Function.Embedding.subtype (· ∈ S)
    have hmem (z : ℕ × ℕ) (hz : z ∈ F.map e) : z ∈ S := by
      obtain ⟨v, _, rfl⟩ := mem_map.mp hz
      exact v.property
    have hb := weighted_higher_power_defect_le (F.map e) ha hW weight
      (fun z hz => (hweight _ (hmem z hz)).2) (fun z hz => hS _ (hmem z hz))
    simpa [defect, e] using hb
  exact ⟨summable_of_sum_le hpositive hbound, Real.tsum_le_of_sum_le hpositive hbound⟩

end GRWTSK.NumberTheory.AlpogeHigherPrimePowers
