/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteDyadicIntervalProducts
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidLowerBounds

/-!
# Exact integer products for the radius-two finite observations

The stored physical endpoints and reconstruction use separate dyadic
grids. Adding or subtracting endpoint numerators produces the midpoint
and radius on a grid with one extra bit. The reconstructed rows and
propagated radii then use integer matrix products. Squaring uses twice
the product grid exponent. The signed overlap intervals use the same
endpoint and coefficient grids. Source comparison of the stored
endpoint arrays remains an explicit premise. Independent analytical
review is pending.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDyadicReplay

open Matrix RadiusTwoCandidateEntries RadiusTwoPaidLowerBounds RadiusTwoTrialProjection
open RadiusTwoRemoteProjection
open GRWTSK.Algebra.LinearAlgebra.FiniteDyadicIntervalProducts
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL

/-- Stored endpoint numerators describe the exact rational observation recipe. -/
def EndpointGrid (bits sourceBits : ℕ) (t : ScalarTables) (lower upper : Matrix ResidualRows Trial ℤ) : Prop :=
  ∀ i j, residualBoundsFrom bits t i j = endpoints sourceBits (lower i j) (upper i j)

/-- Store only the 448 middle rows of the reconstruction. The retained
physical coordinates and the pole are copied exactly. -/
def extendMiddle (coefficientBits : ℕ) (Y : Matrix (Fin 448) Head ℤ) : Matrix Trial Head ℤ
  | .inl i, j => if h : i.val < 64 then
      if (.inl ⟨i.val, h⟩ : Head) = j then (2 : ℤ)^coefficientBits else 0
    else Y ⟨i.val - 64, by have := i.isLt; omega⟩ j
  | .inr _, j => if (.inr () : Head) = j then (2 : ℤ)^coefficientBits else 0

theorem extendMiddle_preservesHead (coefficientBits : ℕ) (Y : Matrix (Fin 448) Head ℤ)
    (v : Head → ℝ) (i : Head) :
    (((extendMiddle coefficientBits Y).map (dyadic coefficientBits)).map (Rat.castHom ℝ)).mulVec v
        (headSlot i) = v i := by
  have hEntry (j : Head) :
      (dyadic coefficientBits (extendMiddle coefficientBits Y (headSlot i) j) : ℝ) =
        (1 : Matrix Head Head ℝ) i j := by
    have hOne : dyadic coefficientBits ((2 : ℤ)^coefficientBits) = 1 := by
      unfold dyadic
      push_cast
      exact div_self (by positivity)
    have hZero : dyadic coefficientBits 0 = 0 := by simp [dyadic]
    rcases i with i | u
    · have h := i.isLt
      simp only [headSlot, extendMiddle, Fin.val_castAdd, dite_eq_left h, Matrix.one_apply]
      by_cases hij : (.inl i : Head) = j <;> simp [hij, hOne, hZero]
    · cases u
      simp only [headSlot, extendMiddle, Matrix.one_apply]
      by_cases hij : (.inr () : Head) = j <;> simp [hij, hOne, hZero]
  calc
    _ = (1 : Matrix Head Head ℝ).mulVec v i := by
      simp only [Matrix.mulVec, dotProduct, Matrix.map_apply, Rat.coe_castHom, hEntry]
    _ = v i := by rw [Matrix.one_mulVec]

private theorem centers_eq (bits sourceBits : ℕ) {t : ScalarTables}
    {lower upper : Matrix ResidualRows Trial ℤ} (h : EndpointGrid bits sourceBits t lower upper) :
    residualCenters bits t = (lower + upper).map (dyadic (sourceBits + 1)) := by
  ext i j
  simp only [residualCenters, h i j, endpoints, Matrix.map_apply, Matrix.add_apply, dyadic,
    Int.cast_add, pow_succ, ← add_div, div_div]

private theorem radii_eq (bits sourceBits : ℕ) {t : ScalarTables}
    {lower upper : Matrix ResidualRows Trial ℤ} (h : EndpointGrid bits sourceBits t lower upper) :
    residualRadii bits t = (upper - lower).map (dyadic (sourceBits + 1)) := by
  ext i j
  simp only [residualRadii, h i j, endpoints, Matrix.map_apply, Matrix.sub_apply, dyadic,
    Int.cast_sub, pow_succ, ← sub_div, div_div]

/-- The reconstructed observed rows are one exact integer product. -/
theorem observedRows_eq_grid (bits sourceBits coefficientBits : ℕ) {t : ScalarTables}
    {lower upper : Matrix ResidualRows Trial ℤ} (h : EndpointGrid bits sourceBits t lower upper)
    (X : Matrix Trial Head ℤ) :
    observedRows bits t (X.map (dyadic coefficientBits)) =
      ((lower + upper) * X).map (dyadic (sourceBits + 1 + coefficientBits)) := by
  rw [observedRows, centers_eq bits sourceBits h, map_dyadic_mul]

/-- The signed overlap entry enclosure is the integer interval accumulation. -/
theorem overlapProductBounds_eq_grid (bits sourceBits coefficientBits : ℕ) {t : ScalarTables}
    {lower upper : Matrix ResidualRows Trial ℤ} (h : EndpointGrid bits sourceBits t lower upper)
    (X : Matrix Trial Head ℤ) (k : Fin 448) (j : Head)
    (horder : ∀ l, lower (overlapRow k) l ≤ upper (overlapRow k) l) :
    overlapProductBounds bits t (X.map (dyadic coefficientBits)) k j =
      weightedSum Finset.univ sourceBits coefficientBits (fun l => X l j)
        (lower (overlapRow k)) (upper (overlapRow k)) := by
  unfold overlapProductBounds
  rw [weightedSum_eq _ _ _ _ _ _ (fun l _ => horder l)]
  simp only [Matrix.map_apply, show ∀ i j, residualBoundsFrom bits t i j =
    endpoints sourceBits (lower i j) (upper i j) from h]

/-- The exact observation price is the squared integer norm of the
propagated radius numerators. -/
theorem observationPrice_eq_grid (bits sourceBits coefficientBits : ℕ) {t : ScalarTables}
    {lower upper : Matrix ResidualRows Trial ℤ} (h : EndpointGrid bits sourceBits t lower upper)
    (X : Matrix Trial Head ℤ) :
    let propagated := (upper - lower) * Matrix.of (fun k l => |X k l|)
    observationPrice bits t (X.map (dyadic coefficientBits)) =
      dyadic ((sourceBits + 1 + coefficientBits) * 2) (∑ i : ResidualRows, ∑ j : Head, (propagated i j) ^ 2) := by
  let XA : Matrix Trial Head ℤ := Matrix.of (fun k l => |X k l|)
  have hAbs : Matrix.of (fun k l => |(X.map (dyadic coefficientBits)) k l|) =
      XA.map (dyadic coefficientBits) := by
    ext k l
    have hp : 0 < (2 : ℚ)^coefficientBits := by positivity
    simp only [XA, Matrix.of_apply, Matrix.map_apply, dyadic, abs_div, abs_of_pos hp, Int.cast_abs]
  dsimp only
  rw [observationPrice, radii_eq bits sourceBits h, hAbs, map_dyadic_mul]
  simp only [XA, Matrix.map_apply, dyadic, div_pow, ← pow_mul, ← Finset.sum_div, Int.cast_sum, Int.cast_pow]

private theorem charge_dyadic (bits : ℕ) (gram price : ℤ) :
    (33 / 32 : ℚ) * dyadic bits gram + 33 * dyadic bits price =
      dyadic (bits + 5) (33 * gram + 1056 * price) := by
  unfold dyadic
  push_cast
  rw [pow_add, show (2 : ℚ)^5 = 32 by norm_num]
  field_simp
  ring

/-- The Young-weighted finite residual charge uses one common dyadic grid. -/
theorem observedCharge_eq_grid (bits sourceBits coefficientBits : ℕ) {t : ScalarTables}
    {lower upper : Matrix ResidualRows Trial ℤ} (h : EndpointGrid bits sourceBits t lower upper)
    (X : Matrix Trial Head ℤ) :
    let rowBits := sourceBits + 1 + coefficientBits
    let rows := (lower + upper) * X
    let propagated := (upper - lower) * Matrix.of (fun k l => |X k l|)
    let price := ∑ i : ResidualRows, ∑ j : Head, (propagated i j) ^ 2
    observedCharge bits t (X.map (dyadic coefficientBits)) =
      ((33 : ℤ) • (rows.transpose * rows) + (1056 * price) • 1).map (dyadic (rowBits * 2 + 5)) := by
  dsimp only
  let rowBits := sourceBits + 1 + coefficientBits
  let rows := (lower + upper) * X
  have hGram : (rows.map (dyadic rowBits)).transpose * rows.map (dyadic rowBits) =
      (rows.transpose * rows).map (dyadic (rowBits * 2)) := by
    change rows.transpose.map (dyadic rowBits) * rows.map (dyadic rowBits) = _
    rw [map_dyadic_mul, Nat.mul_two]
  unfold observedCharge
  rw [observedRows_eq_grid bits sourceBits coefficientBits h X,
    observationPrice_eq_grid bits sourceBits coefficientBits h X]
  dsimp only
  rw [hGram]
  ext i j
  simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.map_apply, Matrix.one_apply]
  by_cases hij : i = j
  · rw [ite_eq_left hij, ite_eq_left hij, mul_one, mul_one]
    exact charge_dyadic _ _ _
  · rw [ite_eq_right hij, ite_eq_right hij, mul_zero, mul_zero, add_zero, add_zero]
    have hz : dyadic (rowBits * 2) 0 = 0 := by simp [dyadic]
    simpa only [hz, mul_zero, add_zero] using charge_dyadic (rowBits * 2) ((rows.transpose * rows) i j) 0

/-- A remote trace projection uses the same integer interval accumulation. -/
theorem projectedTraceBounds_eq_grid (sourceBits coefficientBits : ℕ) (X : Matrix Trial Head ℤ)
    (source : Trial → GRWTSK.Algebra.LinearAlgebra.RationalRealBounds.Bounds) (lower upper : Trial → ℤ)
    (h : ∀ k, source k = endpoints sourceBits (lower k) (upper k))
    (horder : ∀ k, lower k ≤ upper k) (i : Head) :
    projectedTraceBounds (X.map (dyadic coefficientBits)) source i =
      weightedSum Finset.univ sourceBits coefficientBits (fun k => X k i) lower upper := by
  unfold projectedTraceBounds
  rw [weightedSum_eq _ _ _ _ _ _ (fun k _ => horder k)]
  simp only [Matrix.map_apply, h]

/-- The projected remote remainder uses signed products of reconstruction
entries as its integer coefficients. -/
theorem projectedRemainderBounds_eq_grid (sourceBits coefficientBits : ℕ) (X : Matrix Trial Head ℤ)
    (weight : Fin 512 → GRWTSK.Algebra.LinearAlgebra.RationalRealBounds.Bounds) (lower upper : Fin 512 → ℤ)
    (h : ∀ k, weight k = endpoints sourceBits (lower k) (upper k))
    (horder : ∀ k, lower k ≤ upper k) (i j : Head) :
    projectedRemainderBounds (X.map (dyadic coefficientBits)) weight i j =
      weightedSum Finset.univ sourceBits (coefficientBits * 2)
        (fun k => X (.inl k) i * X (.inl k) j) lower upper := by
  have hCoeff (a b : ℤ) : dyadic coefficientBits a * dyadic coefficientBits b =
      dyadic (coefficientBits * 2) (a * b) := by
    simp only [dyadic, Int.cast_mul, Nat.mul_two, pow_add, div_mul_div_comm]
  unfold projectedRemainderBounds
  rw [weightedSum_eq _ _ _ _ _ _ (fun k _ => horder k)]
  simp only [Matrix.map_apply, hCoeff, h]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDyadicReplay
