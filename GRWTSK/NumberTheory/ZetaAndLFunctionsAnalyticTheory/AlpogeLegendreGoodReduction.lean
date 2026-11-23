/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass
import Mathlib.RingTheory.Valuation.ValuationSubring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Good reduction from the Legendre parameter

For the level-two modular equation of Yang, Yin and Yu, *The lambda invariants
at CM points* (arXiv:1810.07381v1, Eq. (1.1)), an integral j-invariant
forces the Legendre parameter and its complement to be units at every
valuation where 2 is a unit. This gives an elliptic curve over the valuation
ring, and explicit short Weierstrass invariants when 3 is also a unit.

Section 13 of the adjacent `AlpogeEllipticCubicalB4.md` supplies the analytic
application to `CM2` and identifies the CM reciprocity and homothety steps.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.AlpogeLegendreGoodReduction

variable {K Γ : Type*} [Field K] [CharZero K] [LinearOrderedCommGroupWithZero Γ]

/-- The polynomial relation between a Legendre parameter and its j-invariant. -/
def Parameter (j u : K) : Prop :=
  j * u ^ 2 * (1 - u) ^ 2 = 256 * (1 - u + u ^ 2) ^ 3

omit [CharZero K] in
private theorem Parameter.one_sub {j u : K} (h : Parameter j u) : Parameter j (1 - u) := by
  unfold Parameter at *
  linear_combination h

private theorem Parameter.inv {j u : K} (h : Parameter j u) : Parameter j u⁻¹ := by
  have hu : u ≠ 0 := by
    rintro rfl
    norm_num [Parameter] at h
  unfold Parameter at *
  field_simp [hu]
  linear_combination h

omit [CharZero K] in
private theorem one_le_parameter (v : Valuation K Γ) (h₂ : v 2 = 1)
    {j u : K} (hj : v j ≤ 1) (h : Parameter j u) : 1 ≤ v u := by
  by_contra! hu
  have hsq : v (u ^ 2) < 1 := by
    rw [map_pow]
    exact pow_lt_one₀ zero_le hu (by decide)
  have hdiff := v.map_one_sub_of_lt hu
  have hsum : v (1 - u + u ^ 2) = 1 :=
    (v.map_add_eq_of_lt_left (hdiff.symm ▸ hsq)).trans hdiff
  have hc : v 256 = 1 := by
    rw [show (256 : K) = 2 ^ 8 by norm_num, map_pow, h₂, one_pow]
  have heq := congrArg v h
  change v (j * u ^ 2 * (1 - u) ^ 2) = v (256 * (1 - u + u ^ 2) ^ 3) at heq
  simp only [map_mul, map_pow, hdiff, hsum, hc, one_pow, mul_one] at heq
  have hlt : v j * v u ^ 2 < 1 := by
    calc
      v j * v u ^ 2 ≤ 1 * v u ^ 2 := mul_le_mul_of_nonneg_right hj zero_le
      _ < 1 := by simpa only [one_mul, map_pow] using hsq
  exact hlt.ne heq

private theorem parameter_value (v : Valuation K Γ) (h₂ : v 2 = 1)
    {j u : K} (hj : v j ≤ 1) (h : Parameter j u) : v u = 1 := by
  have hlo := one_le_parameter v h₂ hj h
  have hhi := one_le_parameter v h₂ hj h.inv
  rw [map_inv₀] at hhi
  have hpos : 0 < v u := lt_of_lt_of_le zero_lt_one hlo
  exact le_antisymm ((one_le_inv₀ hpos).mp hhi) hlo

/-- Integrality of the j-invariant makes both branch differences valuation units. -/
theorem parameter_values (v : Valuation K Γ) (h₂ : v 2 = 1)
    {j u : K} (hj : v j ≤ 1) (h : Parameter j u) : v u = 1 ∧ v (1 - u) = 1 :=
  ⟨parameter_value v h₂ hj h, parameter_value v h₂ hj h.one_sub⟩

/-- The weight-four invariant after translating the Legendre cubic. -/
def g₂ (u : K) : K := 4 / 3 * (1 - u + u ^ 2)

/-- The weight-six invariant in the same short Weierstrass coordinate. -/
def g₃ (u : K) : K := 4 / 27 * (1 + u) * (2 - u) * (1 - 2 * u)

/-- The coordinate translation removes the quadratic term. -/
theorem translate_cubic (u x : K) :
    let t := x + (1 + u) / 3
    t * (t - 1) * (t - u) = x ^ 3 - g₂ u / 4 * x - g₃ u / 4 := by
  dsimp [g₂, g₃]
  ring

/-- The short-model discriminant in terms of the branch differences. -/
theorem discriminant (u : K) :
    (g₂ u) ^ 3 - 27 * (g₃ u) ^ 2 = 16 * u ^ 2 * (1 - u) ^ 2 := by
  dsimp [g₂, g₃]
  ring

/-- The numerator of the j-invariant with the normalization of the short equation. -/
theorem j_numerator (u : K) :
    1728 * (g₂ u) ^ 3 = 16 * 256 * (1 - u + u ^ 2) ^ 3 := by
  dsimp [g₂]
  ring

/-- The integral Legendre equation with a point at infinity. -/
def legendreCurve {A : Type*} [CommRing A] (u : A) : WeierstrassCurve A :=
  ⟨0, -(1 + u), 0, u, 0⟩

/-- Mathlib’s Weierstrass discriminant for the Legendre equation over any commutative ring. -/
theorem legendreCurve_discriminant {A : Type*} [CommRing A] (u : A) :
    (legendreCurve u).Δ = 16 * u ^ 2 * (1 - u) ^ 2 := by
  simp only [WeierstrassCurve.Δ, WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈, legendreCurve]
  ring

/-- The actual Legendre curve over the valuation ring has unit discriminant. -/
theorem exists_good_legendreCurve (v : Valuation K Γ) (h₂ : v 2 = 1)
    {j u : K} (hj : v j ≤ 1) (h : Parameter j u) :
    ∃ t : v.valuationSubring, (t : K) = u ∧ IsUnit t ∧ IsUnit (1 - t) ∧
      (legendreCurve t).IsElliptic := by
  obtain ⟨hu, hu'⟩ := parameter_values v h₂ hj h
  let t : v.valuationSubring := ⟨u, hu.le⟩
  have ht : IsUnit t := (Valuation.valuationSubring.integers (v := v)).isUnit_of_one' hu
  have ht' : IsUnit (1 - t) := (Valuation.valuationSubring.integers (v := v)).isUnit_of_one' hu'
  have htwo : IsUnit (2 : v.valuationSubring) := (Valuation.valuationSubring.integers (v := v)).isUnit_of_one' h₂
  refine ⟨t, rfl, ht, ht', ⟨?_⟩⟩
  rw [legendreCurve_discriminant, show (16 : v.valuationSubring) = 2 ^ 4 by norm_num]
  exact ((htwo.pow 4).mul (ht.pow 2)).mul (ht'.pow 2)

/-- Integral short-model invariants with unit discriminant and the prescribed j-invariant. -/
theorem good_short_invariants (v : Valuation K Γ) (h₂ : v 2 = 1) (h₃ : v 3 = 1)
    {j u : K} (hj : v j ≤ 1) (h : Parameter j u) :
    g₂ u ∈ v.valuationSubring ∧ g₃ u ∈ v.valuationSubring ∧
      v (g₂ u ^ 3 - 27 * g₃ u ^ 2) = 1 ∧
      1728 * g₂ u ^ 3 = j * (g₂ u ^ 3 - 27 * g₃ u ^ 2) := by
  obtain ⟨hu, hu'⟩ := parameter_values v h₂ hj h
  let R := v.valuationSubring.toSubring
  have hmem : u ∈ R := hu.le
  have h3inv : (3 : K)⁻¹ ∈ R := by
    change v (3 : K)⁻¹ ≤ 1
    simp [map_inv₀, h₃]
  have h27inv : (27 : K)⁻¹ ∈ R := by
    rw [show (27 : K) = 3 ^ 3 by norm_num, ← inv_pow]
    exact R.pow_mem h3inv 3
  refine ⟨?_, ?_, ?_, ?_⟩
  · unfold g₂
    rw [div_eq_mul_inv]
    exact R.mul_mem (R.mul_mem (natCast_mem R 4) h3inv)
      (R.add_mem (R.sub_mem R.one_mem hmem) (R.pow_mem hmem 2))
  · unfold g₃
    rw [div_eq_mul_inv]
    exact R.mul_mem (R.mul_mem (R.mul_mem (R.mul_mem (natCast_mem R 4) h27inv)
      (R.add_mem R.one_mem hmem)) (R.sub_mem (natCast_mem R 2) hmem))
      (R.sub_mem R.one_mem (R.mul_mem (natCast_mem R 2) hmem))
  · rw [discriminant, show (16 : K) = 2 ^ 4 by norm_num]
    simp only [map_mul, map_pow, hu, hu', h₂, one_pow, mul_one]
  · rw [j_numerator, discriminant]
    unfold Parameter at h
    linear_combination -16 * h

end GRWTSK.NumberTheory.AlpogeLegendreGoodReduction
