# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegerSampleGrowth.Variant0cbee10970623c11c0f30c84eca55b1a09fa7f1991662696eb767688bec1c63f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75e2c7664e9c1cf745b9b36d6922e1c2a960a5fb` · SHA-256 `0cbee10970623c11c0f30c84eca55b1a09fa7f1991662696eb767688bec1c63f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.EnergyAbscissa
import GRWTSK.Algebra.LinearAlgebra.Determinant.RankOneQuadraticForm

/-!
# Exact passage from every integer sample to the entire real-time continuum

Energy is monotone; the signed cross sum is not assumed monotone. The diagonal
correction is retained when transferring a signed budget between sample times.
These hypotheses quantify every natural sample, never just a finite experiment.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC

def NatSubexponentialUpper (f : ℝ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ n : ℕ, f n ≤ C * Real.exp (ε * n)

def PickupCrossNatSubexp : Prop := NatSubexponentialUpper pickupCross

def PickupCrossNatPoly : Prop :=
  ∃ C r : ℝ, 0 ≤ C ∧ 0 ≤ r ∧
    ∀ n : ℕ, pickupCross n ≤ C * (1 + (n : ℝ)) ^ r

/-- Monotone energy bounds interpolate with the explicit factor exp(rate). -/
theorem pickupEnergy_le_of_nat_exponential {C ε T : ℝ}
    (hC : 0 ≤ C) (hε : 0 ≤ ε) (hT : 0 ≤ T)
    (hb : ∀ n : ℕ, pickupEnergy n ≤ C * Real.exp (ε * n)) :
    pickupEnergy T ≤ (C * Real.exp ε) * Real.exp (ε * T) := by
  have hm := pickupEnergy_mono hT (Nat.le_ceil T)
  have he : Real.exp (ε * (⌈T⌉₊ : ℝ)) ≤ Real.exp (ε * (T + 1)) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left (Nat.ceil_lt_add_one hT).le hε)
  calc
    pickupEnergy T ≤ pickupEnergy ⌈T⌉₊ := hm
    _ ≤ C * Real.exp (ε * (⌈T⌉₊ : ℝ)) := hb _
    _ ≤ C * Real.exp (ε * (T + 1)) := mul_le_mul_of_nonneg_left he hC
    _ = _ := by rw [mul_add, mul_one, Real.exp_add]; ring

theorem pickupEnergySubexp_iff_nat :
    PickupEnergySubexp ↔ NatSubexponentialUpper pickupEnergy := by
  constructor
  · intro hE ε hε
    obtain ⟨C, hC, hb⟩ := hE ε hε
    exact ⟨C, hC, fun n ↦ hb n (Nat.cast_nonneg n)⟩
  · intro hE ε hε
    obtain ⟨C, hC, hb⟩ := hE ε hε
    exact ⟨C * Real.exp ε, by positivity,
      fun _ hT ↦ pickupEnergy_le_of_nat_exponential hC hε.le hT hb⟩

/-- Between samples the full diagonal cost survives; no signed monotonicity is used. -/
theorem pickupCross_le_next_sample {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ pickupCross ⌈T⌉₊ + 2 * (1 + T) ^ 2 := by
  have hi := pickupEnergy_eq_diagonal_add_cross hT
  have hj := pickupEnergy_eq_diagonal_add_cross (Nat.cast_nonneg ⌈T⌉₊)
  have hm := pickupEnergy_mono hT (Nat.le_ceil T)
  have hn := pickupDiagonal_nonneg hT
  have hd := (pickupDiagonal_quadratic_bound (Nat.cast_nonneg ⌈T⌉₊)).2
  have hc := (Nat.ceil_lt_add_one hT).le
  have hc0 : (0 : ℝ) ≤ ⌈T⌉₊ := Nat.cast_nonneg _
  nlinarith

/-- Complete sampled P04 implies all-real P04 with a fully priced witness. -/
theorem pickupCross_poly_of_nat_bound {C r : ℝ} (hC : 0 ≤ C) (hr : 0 ≤ r)
    (hb : ∀ n : ℕ, pickupCross n ≤ C * (1 + (n : ℝ)) ^ r) :
    ∀ T : ℝ, 0 ≤ T →
      pickupCross T ≤ (C * (2 : ℝ) ^ r + 2) * (1 + T) ^ max r 2 := by
  intro T hT
  have hc : 1 + (⌈T⌉₊ : ℝ) ≤ 2 * (1 + T) := by
    have hn := (Nat.ceil_lt_add_one hT).le
    linarith
  have hp : (1 + (⌈T⌉₊ : ℝ)) ^ r ≤ (2 : ℝ) ^ r * (1 + T) ^ r := by
    simpa only [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2) (by linarith : (0 : ℝ) ≤ 1 + T)] using
      Real.rpow_le_rpow (by positivity : (0 : ℝ) ≤ 1 + (⌈T⌉₊ : ℝ)) hc hr
  have hbase : 1 ≤ 1 + T := by linarith
  have hpr := Real.rpow_le_rpow_of_exponent_le hbase (le_max_left r (2 : ℝ))
  have hp2 := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right r (2 : ℝ))
  rw [Real.rpow_two] at hp2
  calc
    pickupCross T ≤ pickupCross ⌈T⌉₊ + 2 * (1 + T) ^ 2 :=
      pickupCross_le_next_sample hT
    _ ≤ C * ((2 : ℝ) ^ r * (1 + T) ^ r) + 2 * (1 + T) ^ 2 :=
      add_le_add ((hb _).trans (mul_le_mul_of_nonneg_left hp hC)) le_rfl
    _ ≤ (C * (2 : ℝ) ^ r) * (1 + T) ^ max r 2 + 2 * (1 + T) ^ max r 2 := by
      apply add_le_add
      · simpa only [mul_assoc] using
          mul_le_mul_of_nonneg_left hpr (by positivity : 0 ≤ C * (2 : ℝ) ^ r)
      · exact mul_le_mul_of_nonneg_left hp2 (by norm_num)
    _ = _ := by ring

theorem pickupCrossNatPoly_iff_crossPoly : PickupCrossNatPoly ↔ PickupCrossPoly := by
  constructor
  · rintro ⟨C, r, hC, hr, hb⟩
    exact ⟨C * (2 : ℝ) ^ r + 2, max r 2, by positivity,
      hr.trans (le_max_left _ _), pickupCross_poly_of_nat_bound hC hr hb⟩
  · rintro ⟨C, r, hC, hr, hb⟩
    exact ⟨C, r, hC, hr, fun n ↦ hb n (Nat.cast_nonneg n)⟩

/-- All positive sampled rates pay their full diagonal before energy interpolation. -/
theorem pickupCrossNatSubexp_iff_crossSubexp :
    PickupCrossNatSubexp ↔ PickupCrossSubexp := by
  constructor
  · intro hX
    apply pickupCrossSubexp_iff_pickupEnergySubexp.mpr
    apply pickupEnergySubexp_iff_nat.mpr
    intro ε hε
    obtain ⟨C, hC, hb⟩ := hX ε hε
    let D : ℝ := 2 * (((2 : ℕ).factorial : ℝ) / ε ^ 2)
    refine ⟨D + C, by dsimp [D]; positivity, fun n ↦ ?_⟩
    have hp := pow_le_factorial_mul_exp hε (Nat.cast_nonneg n) 2
    have hd := (pickupDiagonal_quadratic_bound (Nat.cast_nonneg n)).2
    rw [pickupEnergy_eq_diagonal_add_cross (Nat.cast_nonneg n)]
    calc
      _ ≤ 2 * (n : ℝ) ^ 2 + C * Real.exp (ε * n) := add_le_add hd (hb n)
      _ ≤ D * Real.exp (ε * n) + C * Real.exp (ε * n) :=
        add_le_add (by simpa only [D, mul_assoc] using
          mul_le_mul_of_nonneg_left hp (by norm_num : (0 : ℝ) ≤ 2)) le_rfl
      _ = _ := by ring
  · intro hX ε hε
    obtain ⟨C, hC, hb⟩ := hX ε hε
    exact ⟨C, hC, fun n ↦ hb n (Nat.cast_nonneg n)⟩

theorem riemannHypothesis_of_pickupCrossNatPoly (hX : PickupCrossNatPoly) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossPoly (pickupCrossNatPoly_iff_crossPoly.mp hX)

theorem riemannHypothesis_of_pickupCrossNatSubexp (hX : PickupCrossNatSubexp) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossSubexp (pickupCrossNatSubexp_iff_crossSubexp.mp hX)

/-- The determinant rewrite retains every rate and the same actual energy debt. -/
theorem pickupDeterminant_subexp_iff :
    (∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T → pickupDeterminant T ≤ 1 + C * Real.exp (ε * T)) ↔
      PickupEnergySubexp := by
  constructor
  · intro hz ε hε
    obtain ⟨C, hC, hb⟩ := hz ε hε
    exact ⟨C, hC, fun T hT ↦ (pickupDeterminant_bound_iff hT).mp (hb T hT)⟩
  · intro he ε hε
    obtain ⟨C, hC, hb⟩ := he ε hε
    exact ⟨C, hC, fun T hT ↦ (pickupDeterminant_bound_iff hT).mpr (hb T hT)⟩

end GRWTSK.RiemannHypothesis.CCC
```
