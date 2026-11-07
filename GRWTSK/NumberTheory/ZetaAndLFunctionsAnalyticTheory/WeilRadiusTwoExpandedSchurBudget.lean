/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Batteries.Tactic.OpenPrivate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCompactGaugeBinding

/-!
# Expanded uniform cap budget for radius-two geometric Schur replay

Each pivot pays the geometric column span and unit correction radii.
Summing the affine price over the squared physical nodes gives one
integer bound in terms of the two uniform magnitude caps. The exact
sum of the spans is shared with the original radius-two budget.

Column multipliers at most five and sums of the four raw generator
magnitudes at most `250000 * 2^40` fit the existing reserve. The
compact return still requires every checked pivot and successor row,
the exact first primal grid and the literal seed comparison.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoExpandedSchurBudget

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurIntegerReplay StructuredSchurCompactReplay StructuredSchurNearestEven
open RadiusTwoGeometricSchurBudget RadiusTwoCompactSchurReturn RadiusTwoCandidateSeed
open RadiusTwoCompactGaugeBinding OddLiteralWindow
open scoped BigOperators

open private span_nonneg sum_span from
  GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGeometricSchurBudget

/-- Exact upper price numerator for uniform raw column and generator caps. -/
def uniformPriceNumerator (columnCap generatorCap : ℕ) : ℕ :=
  21 * 2 * 2^21 * 42656346666689440 * columnCap +
    399936 * (250 * 2^40 + 21 * (2 * generatorCap + 6))

private def pivotNumeratorBound (columnCap generatorCap : ℕ) (i : Fin 399936) : ℤ :=
  250 * 2^40 + 21 * (2 * (span i * 2^21) * (columnCap : ℤ) +
    2 * (generatorCap : ℤ) + 6)

private theorem priceNumerator_le (e : StepPrices 2) (i : Fin 399936)
    (columnCap generatorCap : ℕ)
    (hCol : e.colMul ≤ columnCap)
    (hGen : e.maxV 0 + e.maxU 0 + e.maxV 1 + e.maxU 1 ≤ generatorCap) :
    (priceNumerator (geometricCaps e (span i)) : ℤ) ≤ pivotNumeratorBound columnCap generatorCap i := by
  rw [priceNumerator_geometricCaps]
  have hSpan : 0 ≤ span i * (2097152 : ℤ) := mul_nonneg (span_nonneg i) (by norm_num)
  push_cast
  rw [Int.toNat_of_nonneg hSpan]
  unfold pivotNumeratorBound
  have hC : (e.colMul : ℤ) ≤ columnCap := by exact_mod_cast hCol
  have hG : (e.maxV 0 : ℤ) + e.maxU 0 + e.maxV 1 + e.maxU 1 ≤ generatorCap := by
    exact_mod_cast hGen
  have hM := mul_le_mul_of_nonneg_left hC (mul_nonneg (by norm_num : (0 : ℤ) ≤ 2) hSpan)
  nlinarith only [hM, hG]

private theorem sum_pivotNumeratorBound (columnCap generatorCap : ℕ) :
    ∑ i : Fin 399936, pivotNumeratorBound columnCap generatorCap i =
      (uniformPriceNumerator columnCap generatorCap : ℤ) := by
  have h (i : Fin 399936) :
      pivotNumeratorBound columnCap generatorCap i =
        (21*2*2^21*(columnCap : ℤ))*span i +
          (250*2^40 + 21*(2*(generatorCap : ℤ)+6)) := by
    unfold pivotNumeratorBound
    ring
  simp only [h, Finset.sum_add_distrib, ← Finset.mul_sum, sum_span, Finset.sum_const,
    Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  unfold uniformPriceNumerator
  push_cast
  ring

/-- Bound the complete geometric price with the exact sum of the spans. -/
theorem priceSum_le_uniform (caps : Fin 399936 → StepPrices 2)
    (columnCap generatorCap : ℕ) (hCol : ∀ i, (caps i).colMul ≤ columnCap)
    (hGen : ∀ i, (caps i).maxV 0 + (caps i).maxU 0 +
      (caps i).maxV 1 + (caps i).maxU 1 ≤ generatorCap) :
    ∑ i, price (geometricCaps (caps i) (span i)) ≤
      (uniformPriceNumerator columnCap generatorCap : ℝ) / (500 * (generatorScale : ℝ)^2) := by
  have hInt : (∑ i, (priceNumerator (geometricCaps (caps i) (span i)) : ℤ)) ≤
      (uniformPriceNumerator columnCap generatorCap : ℤ) := by
    rw [← sum_pivotNumeratorBound]
    exact Finset.sum_le_sum (fun i _ => priceNumerator_le _ i _ _ (hCol i) (hGen i))
  have hNat : (∑ i, priceNumerator (geometricCaps (caps i) (span i))) ≤
      uniformPriceNumerator columnCap generatorCap := by
    exact_mod_cast hInt
  have hReal : ((∑ i, priceNumerator (geometricCaps (caps i) (span i)) : ℕ) : ℝ) ≤
      (uniformPriceNumerator columnCap generatorCap : ℝ) := by
    exact_mod_cast hNat
  unfold price
  rw [← Finset.sum_div, ← Nat.cast_sum]
  have hDen : (0 : ℝ) ≤ 500 * (generatorScale : ℝ)^2 :=
    mul_nonneg (by norm_num) (sq_nonneg _)
  exact div_le_div_of_nonneg_right hReal hDen

/-- The expanded caps still fit the radius-two chain reserve. -/
theorem tapePriceSum_le_250000 (tape : Tape 2 399936)
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hCol : ∀ i, (tape.caps i).colMul ≤ 5)
    (hGen : ∀ i, (tape.caps i).maxV 0 + (tape.caps i).maxU 0 +
      (tape.caps i).maxV 1 + (tape.caps i).maxU 1 ≤ 250000 * 2^40) :
    ∑ i, price ((tape.withGeometricCaps (400000^2)).caps i) ≤ (39/1000 : ℝ) := by
  have h := (priceSum_le_uniform tape.caps 5 (250000*2^40) hCol hGen).trans
    (show (uniformPriceNumerator 5 (250000*2^40) : ℝ) / (500 * (generatorScale : ℝ)^2) ≤
      (39/1000 : ℝ) by norm_num [uniformPriceNumerator, generatorScale])
  simpa only [Tape.withGeometricCaps, hNodes, span] using h

/-- A complete priced block in the archived gauge uses the expanded cap budget
in the existing radius-two high-floor return. -/
theorem highFloor_two_of_gaugedCompactBlock_250000
    (tape : Tape 2 399936) (seed : Fin 399936 → GridRow 2)
    (hSource : SeedComparison (coefficientsFromRaw seed))
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hRaw : ∀ i, (seed i).v 0 = (65 + (i.val : ℤ)) * 2^31)
    (hBlock : (tape.withGeometricCaps (400000^2)).BlockCaps 0 seed 399936 (by omega))
    (hCol : ∀ i, (tape.caps i).colMul ≤ 5)
    (hGen : ∀ i, (tape.caps i).maxV 0 + (tape.caps i).maxU 0 +
      (tape.caps i).maxV 1 + (tape.caps i).maxU 1 ≤ 250000 * 2^40) :
    HighFloor 2 (-1/2) (1/5) 64 := by
  let paid := tape.withGeometricCaps (400000^2)
  exact highFloor_two_of_checkedCompactBlock paid seed (coefficientsFromRaw seed) hSource hNodes
    (decodedSeed_add_reserve_eq_rawCandidate paid seed hNodes (firstPrimal_of_rawGrid seed hRaw))
    hBlock (tapePriceSum_le_250000 tape hNodes hCol hGen)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoExpandedSchurBudget
