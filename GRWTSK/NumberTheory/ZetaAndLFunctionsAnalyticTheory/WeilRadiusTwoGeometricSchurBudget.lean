/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurGeometricReplay

/-!
# Radius-two budget for geometric Schur rounding caps

The final physical mode is 400000. At each pivot the largest possible
column denominator uses that mode and the current pivot's squared node.
The square sum over modes 65 through 400000 bounds the cumulative
price under uniform column multiplier and successor generator bounds.
The price uses the original normalization for two generator pairs.

This is a conditional arithmetic estimate for the existing pivot-chain
reserve. The magnitude caps, exact transitions, and literal seed
comparisons are separate premises. Independent mathematical review is
pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGeometricSchurBudget

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurIntegerReplay StructuredSchurCompactReplay

/-- Largest squared-node difference at the given radius-two pivot. -/
def span (i : Fin 399936) : ℤ := 400000^2 - (65 + (i.val : ℤ))^2

private theorem span_nonneg (i : Fin 399936) : 0 ≤ span i := by
  have hi := i.isLt
  have h0 : 0 ≤ 65 + (i.val : ℤ) := by omega
  have h1 : 65 + (i.val : ℤ) ≤ 400000 := by omega
  exact sub_nonneg.mpr (pow_le_pow_left₀ h0 h1 2)

private theorem sum_shifted_squares (n : ℕ) (a : ℤ) :
    6 * (∑ i ∈ Finset.range n, (a + (i : ℤ))^2) =
      (n : ℤ) * (6*a^2 + 6*a*((n : ℤ)-1) + ((n : ℤ)-1)*(2*(n : ℤ)-1)) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, Nat.cast_succ]
    linear_combination ih

private theorem sum_span : ∑ i : Fin 399936, span i = 42656346666689440 := by
  have hSq : (∑ i ∈ Finset.range 399936, ((65 : ℤ) + (i : ℤ))^2) = 21333413333310560 := by
    have h := sum_shifted_squares 399936 65
    generalize (∑ i ∈ Finset.range 399936, ((65 : ℤ) + (i : ℤ))^2) = total at h ⊢
    norm_num at h
    omega
  unfold span
  rw [Finset.sum_sub_distrib,
    Fin.sum_univ_eq_sum_range (fun i : ℕ => ((65 : ℤ) + i)^2) 399936, hSq]
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  norm_num

private def numeratorBound (i : Fin 399936) : ℤ :=
  250 * 2^40 + 21 * (10 * (span i * 2^21) + 200000 * 2^40 + 6)

private theorem priceNumerator_le (e : StepPrices 2) (i : Fin 399936)
    (hCol : e.colMul ≤ 5) (hGen : e.maxV 0 + e.maxU 0 + e.maxV 1 + e.maxU 1 ≤ 100000 * 2^40) :
    (priceNumerator (geometricCaps e (span i)) : ℤ) ≤ numeratorBound i := by
  rw [priceNumerator_geometricCaps]
  have hSpan : 0 ≤ span i * (2097152 : ℤ) := mul_nonneg (span_nonneg i) (by norm_num)
  push_cast
  rw [Int.toNat_of_nonneg hSpan]
  unfold numeratorBound
  have hC : (e.colMul : ℤ) ≤ 5 := by exact_mod_cast hCol
  have hG : (e.maxV 0 : ℤ) + e.maxU 0 + e.maxV 1 + e.maxU 1 ≤ 100000 * 2^40 := by
    exact_mod_cast hGen
  have hM := mul_le_mul_of_nonneg_left hC (mul_nonneg (by norm_num : (0 : ℤ) ≤ 2) hSpan)
  nlinarith only [hM, hG]

private theorem sum_numeratorBound : ∑ i : Fin 399936, numeratorBound i = 20632930891704354836900736 := by
  have h (i : Fin 399936) :
      numeratorBound i = 21*10*2^21*span i + (250*2^40 + 21*(200000*2^40+6)) := by
    unfold numeratorBound
    ring
  simp only [h, Finset.sum_add_distrib, ← Finset.mul_sum, sum_span, Finset.sum_const,
    Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  norm_num

/-- The uniform magnitude caps pay the radius-two candidate's entire rounding reserve. -/
theorem priceSum_le (caps : Fin 399936 → StepPrices 2)
    (hCol : ∀ i, (caps i).colMul ≤ 5)
    (hGen : ∀ i, (caps i).maxV 0 + (caps i).maxU 0 +
      (caps i).maxV 1 + (caps i).maxU 1 ≤ 100000 * 2^40) :
    ∑ i, price (geometricCaps (caps i) (span i)) ≤ (39/1000 : ℝ) := by
  have hInt : (∑ i, (priceNumerator (geometricCaps (caps i) (span i)) : ℤ)) ≤
      20632930891704354836900736 := by
    rw [← sum_numeratorBound]
    exact Finset.sum_le_sum (fun i _ => priceNumerator_le _ i (hCol i) (hGen i))
  have hNat : (∑ i, priceNumerator (geometricCaps (caps i) (span i))) ≤
      20632930891704354836900736 := by
    exact_mod_cast hInt
  have hReal : ((∑ i, priceNumerator (geometricCaps (caps i) (span i)) : ℕ) : ℝ) ≤
      20632930891704354836900736 := by
    exact_mod_cast hNat
  unfold price generatorScale
  rw [← Finset.sum_div, ← Nat.cast_sum]
  exact (div_le_div_of_nonneg_right hReal (by positivity)).trans (by norm_num)

/-- The same reserve applies to the priced tape of consecutive physical square nodes. -/
theorem tapePriceSum_le (tape : Tape 2 399936)
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hCol : ∀ i, (tape.caps i).colMul ≤ 5)
    (hGen : ∀ i, (tape.caps i).maxV 0 + (tape.caps i).maxU 0 +
      (tape.caps i).maxV 1 + (tape.caps i).maxU 1 ≤ 100000 * 2^40) :
    ∑ i, price ((tape.withGeometricCaps (400000^2)).caps i) ≤ (39/1000 : ℝ) := by
  simpa only [Tape.withGeometricCaps, hNodes, span] using priceSum_le tape.caps hCol hGen

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGeometricSchurBudget
