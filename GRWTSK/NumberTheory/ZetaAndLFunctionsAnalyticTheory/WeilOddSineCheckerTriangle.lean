/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSinc
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineDeficitRectangleGrid
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Data.Nat.Dist

/-!
# Finite sum for the conductor-three sine-deficit checker

In `scripts/verify_odd_three_sine_hs.py` (blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 126–156), the outer
loop retains positive signed deficits in increasing grid order. The inner
loop visits earlier retained indices. The dense real sum has one term per
ordered pair. Clipping signed deficits deletes exactly the nonpositive rows
and columns, and swapping the remaining off-diagonal pairs explains the
factor of two. The positive lower bound for π gives the checker's rational
denominator after the four fixed-point factors and two grid factors.

The rectangle interface takes the whole-cell deficit bounds from the midpoint
lower bounds (gamma and signed native coefficients) and the sinc enclosures
on retained cells as hypotheses.
The strict integer comparison is an input to that interface.
-/

set_option autoImplicit false

open scoped BigOperators
open Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
namespace CheckerTriangle

open CheckerRounding (scale integerTrig)

/-- Grid indices appended to `cells` by the strict positive-price test. -/
def retained {N : ℕ} (raw : Fin N → ℤ) : Finset (Fin N) :=
  Finset.univ.filter (fun i => 0 < raw i)

/-- The nonnegative dense price corresponding to a signed checker deficit. -/
def price {N : ℕ} (raw : Fin N → ℤ) (i : Fin N) : ℕ :=
  (raw i).toNat

theorem mem_retained_iff {N : ℕ} {raw : Fin N → ℤ} {i : Fin N} :
    i ∈ retained raw ↔ 0 < raw i := by simp [retained]

theorem price_eq_zero_of_not_retained {N : ℕ} {raw : Fin N → ℤ} {i : Fin N}
    (hi : i ∉ retained raw) : price raw i = 0 :=
  Int.toNat_of_nonpos (le_of_not_gt fun h => hi (mem_retained_iff.mpr h))

theorem cast_price_of_retained {N : ℕ} {raw : Fin N → ℤ} {i : Fin N}
    (hi : i ∈ retained raw) : (price raw i : ℤ) = raw i :=
  Int.toNat_of_nonneg (mem_retained_iff.mp hi).le

private def pairCost {N : ℕ} (raw : Fin N → ℤ) (major : Fin N → Fin N → ℕ)
    (i j : Fin N) : ℕ :=
  price raw i * price raw j * major i j ^ 2

/-- Each diagonal is charged once. Every earlier retained index is charged twice. -/
def triangularSum {N : ℕ} (raw : Fin N → ℤ) (major : Fin N → Fin N → ℕ) : ℕ :=
  ∑ i ∈ retained raw, (pairCost raw major i i +
    ∑ j ∈ (retained raw).filter (· < i), 2 * pairCost raw major i j)

private theorem sum_eq_triangular_of_symmetric {N : ℕ} (s : Finset (Fin N))
    (f : Fin N → Fin N → ℕ) (hsym : ∀ i ∈ s, ∀ j ∈ s, f i j = f j i) :
    (∑ i ∈ s, ∑ j ∈ s, f i j) =
      ∑ i ∈ s, (f i i + ∑ j ∈ s.filter (· < i), 2 * f i j) := by
  have hrow (i : Fin N) (hi : i ∈ s) :
      (∑ j ∈ s, f i j) = f i i + (∑ j ∈ s.filter (· < i), f i j) +
        ∑ j ∈ s.filter (i < ·), f i j := by
    rw [Finset.sum_filter, Finset.sum_filter]
    calc
      _ = ∑ j ∈ s, ((if j = i then f i j else 0) + (if j < i then f i j else 0) +
          (if i < j then f i j else 0)) := by
        apply Finset.sum_congr rfl
        intro j _
        rcases lt_trichotomy j i with h | rfl | h
        · simp [h, h.ne, not_lt_of_ge h.le]
        · simp
        · simp [h, h.ne', not_lt_of_ge h.le]
      _ = _ := by simp only [Finset.sum_add_distrib, Finset.sum_ite_eq', hi, ite_true]
  have hswap :
      (∑ i ∈ s, ∑ j ∈ s.filter (i < ·), f i j) =
        ∑ j ∈ s, ∑ i ∈ s.filter (· < j), f j i := by
    calc
      _ = ∑ j ∈ s, ∑ i ∈ s.filter (· < j), f i j := by
        apply Finset.sum_comm'
        intro i j
        simp only [Finset.mem_filter]
        tauto
      _ = _ := by
        apply Finset.sum_congr rfl
        intro j hj
        apply Finset.sum_congr rfl
        intro i hi
        exact hsym i (Finset.mem_filter.mp hi).1 j hj
  calc
    _ = ∑ i ∈ s, (f i i + (∑ j ∈ s.filter (· < i), f i j) +
        ∑ j ∈ s.filter (i < ·), f i j) := Finset.sum_congr rfl hrow
    _ = _ := by
      simp only [Finset.sum_add_distrib, hswap, two_mul, add_assoc]

/-- The clipped dense sum equals the checker's triangular sum for a symmetric
pair majorant. Omitted pairs may have arbitrary majorants. -/
theorem dense_eq_triangular {N : ℕ} (raw : Fin N → ℤ)
    (major : Fin N → Fin N → ℕ)
    (hsym : ∀ i ∈ retained raw, ∀ j ∈ retained raw, major i j = major j i) :
    (∑ ij : Fin N × Fin N, price raw ij.1 * price raw ij.2 * major ij.1 ij.2 ^ 2) =
      triangularSum raw major := by
  change (∑ ij : Fin N × Fin N, pairCost raw major ij.1 ij.2) = _
  have hcost (i : Fin N) (hi : i ∈ retained raw) (j : Fin N) (hj : j ∈ retained raw) :
      pairCost raw major i j = pairCost raw major j i := by
    unfold pairCost
    rw [hsym i hi j hj, mul_comm (price raw i) (price raw j)]
  rw [← Finset.univ_product_univ, Finset.sum_product]
  calc
    _ = ∑ i ∈ retained raw, ∑ j : Fin N, pairCost raw major i j := by
      symm
      apply Finset.sum_subset (Finset.subset_univ _)
      intro i _ hi
      simp [pairCost, price_eq_zero_of_not_retained hi]
    _ = ∑ i ∈ retained raw, ∑ j ∈ retained raw, pairCost raw major i j := by
      apply Finset.sum_congr rfl
      intro i _
      symm
      apply Finset.sum_subset (Finset.subset_univ _)
      intro j _ hj
      simp [pairCost, price_eq_zero_of_not_retained hj]
    _ = _ := sum_eq_triangular_of_symmetric (retained raw) (pairCost raw major) hcost

/-- The signed response in line 137, with the computed midpoint lower bound
from lines 133–135 passed as an input. -/
def rawDeficit (midpointLower : Fin 32768 → ℤ) (i : Fin 32768) : ℤ :=
  scale - midpointLower i + 9 * scale / (2 * 128)

/-- The integer value at index `j` of the checker's sinc table. This formula
extends the table beyond its last allocated slot. Active pairs only use entries
through index `2 * last + 1`. -/
def sincEntry (j : ℕ) : ℤ :=
  if j = 0 then scale else
    integerTrig true ((j : ℤ) * scale / 128) * 128 / (j : ℤ)

/-- Line 145 of the checker in fixed-point units. -/
def variation : ℕ := 2 * (500 * 128 + 1) + scale.toNat / 128

/-- The same table entries as the lower-triangular loop, with natural distance
extending the difference index to the other orientation. -/
def pairMajor (i j : ℕ) : ℕ :=
  (sincEntry (Nat.dist i j) - sincEntry (i + j + 1)).natAbs + variation

theorem pairMajor_comm (i j : ℕ) : pairMajor i j = pairMajor j i := by
  unfold pairMajor
  rw [Nat.dist_comm, Nat.add_comm i j]

theorem pairMajor_diag (i : ℕ) :
    pairMajor i i = (scale - sincEntry (2 * i + 1)).natAbs + variation := by
  simp [pairMajor, sincEntry, two_mul]

theorem pairMajor_of_lt {i j : ℕ} (h : j < i) :
    pairMajor i j = (sincEntry (i - j) - sincEntry (i + j + 1)).natAbs + variation := by
  rw [pairMajor, Nat.dist_eq_sub_of_le_right h.le]

/-- Both indices used by an active pair occur in the allocated table once
`last` bounds all retained grid indices. Index zero is initialized separately. -/
theorem table_indices_lt {i j last : ℕ} (hi : i ≤ last) (hj : j ≤ last) :
    Nat.dist i j < 2 * last + 2 ∧ i + j + 1 < 2 * last + 2 := by
  constructor
  · unfold Nat.dist
    omega
  · omega

/-- Integer numerator with the loop weights from lines 147–152. -/
def total (midpointLower : Fin 32768 → ℤ) : ℕ :=
  triangularSum (rawDeficit midpointLower) (fun i j => pairMajor i.val j.val)

/-- Integer denominator from line 153. -/
def denominator : ℕ := scale.toNat ^ 2 * 128 ^ 2 * 3141592653589 ^ 2

private theorem real_scale_pos : (0 : ℝ) < (scale : ℝ) := by norm_num [scale]

private theorem cast_denominator :
    (denominator : ℝ) = (scale : ℝ) ^ 2 * 128 ^ 2 * 3141592653589 ^ 2 := by
  have hscale : (0 : ℤ) ≤ scale := by norm_num [scale]
  have hc : (scale.toNat : ℝ) = (scale : ℝ) :=
    (Int.cast_natCast scale.toNat).symm.trans
      (congrArg (fun z : ℤ => (z : ℝ)) (Int.toNat_of_nonneg hscale))
  unfold denominator
  push_cast
  rw [hc]
  ring

private theorem denominator_pos : (0 : ℝ) < (denominator : ℝ) := by
  rw [cast_denominator]
  exact mul_pos (mul_pos (pow_pos real_scale_pos _) (by positivity)) (by positivity)

theorem pi_lower : (3141592653589 : ℝ) / (scale : ℝ) < Real.pi :=
  (show (3141592653589 : ℝ) / (scale : ℝ) < 3.14159265358979323846 by
    norm_num [scale]).trans Real.pi_gt_d20

private noncomputable def deficitEnvelope (midpointLower : Fin 32768 → ℤ)
    (i : Fin 32768) : ℝ :=
  (price (rawDeficit midpointLower) i : ℝ) / (scale : ℝ)

/-- Whole-cell domain for the radius-one checker's frequency index. -/
def cell (i : Fin 32768) : Set ℝ :=
  Ioc ((i.val : ℝ) * (1 / 128)) (((i.val : ℝ) + 1) * (1 / 128))

private noncomputable def sincEnvelope (raw : Fin 32768 → ℤ)
    (ij : Fin 32768 × Fin 32768) : ℝ :=
  if ij.1 ∈ retained raw ∧ ij.2 ∈ retained raw then
    (pairMajor ij.1.val ij.2.val : ℝ) / (scale : ℝ)
  else 2

private theorem abs_sinc_difference_comm (x y : ℝ) :
    |Real.sinc (x - y) - Real.sinc (x + y)| =
      |Real.sinc (y - x) - Real.sinc (y + x)| := by
  rw [show x - y = -(y - x) by ring, Real.sinc_neg, add_comm x y]

private theorem dense_real_eq (midpointLower : Fin 32768 → ℤ) :
    (∑ ij : Fin 32768 × Fin 32768, (1 / 128 : ℝ) ^ 2 *
      (deficitEnvelope midpointLower ij.1 * deficitEnvelope midpointLower ij.2 *
        sincEnvelope (rawDeficit midpointLower) ij ^ 2 / Real.pi ^ 2)) =
      (total midpointLower : ℝ) / ((scale : ℝ) ^ 4 * 128 ^ 2 * Real.pi ^ 2) := by
  let raw := rawDeficit midpointLower
  have hsplit := dense_eq_triangular raw (fun i j => pairMajor i.val j.val)
    (fun i _ j _ => pairMajor_comm i.val j.val)
  rw [show total midpointLower = triangularSum raw (fun i j => pairMajor i.val j.val) from rfl,
    ← hsplit, Nat.cast_sum, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro ij _
  simp only [deficitEnvelope, sincEnvelope, Nat.cast_mul, Nat.cast_pow, raw]
  by_cases hi : ij.1 ∈ retained (rawDeficit midpointLower)
  · by_cases hj : ij.2 ∈ retained (rawDeficit midpointLower)
    · rw [ite_eq_left ⟨hi, hj⟩]
      ring
    · simp [price_eq_zero_of_not_retained hj]
  · simp [price_eq_zero_of_not_retained hi]

/-- Exact scale followed by the sound lower-π replacement in the checker. -/
theorem scaled_total_le_checker_fraction (midpointLower : Fin 32768 → ℤ) :
    (total midpointLower : ℝ) / ((scale : ℝ) ^ 4 * 128 ^ 2 * Real.pi ^ 2) ≤
      (total midpointLower : ℝ) / (denominator : ℝ) := by
  apply div_le_div_of_nonneg_left (by positivity) denominator_pos
  calc
    (denominator : ℝ) =
        (scale : ℝ) ^ 4 * 128 ^ 2 * ((3141592653589 : ℝ) / (scale : ℝ)) ^ 2 := by
      rw [cast_denominator]
      field_simp [real_scale_pos.ne']
    _ ≤ _ := by
      exact mul_le_mul_of_nonneg_left
        (pow_le_pow_left₀ (by norm_num [scale]) pi_lower.le 2) (by positivity)

/-- Interface to the original rectangle. The deficit hypothesis is needed
on every cell. The sinc hypothesis is needed only on retained pairs in the
checker's orientation, including the diagonal. -/
theorem rectangle_le_checker_fraction_of_pair_envelopes (χ : DirichletCharacter ℂ 3)
    (midpointLower : Fin 32768 → ℤ)
    (hD : ∀ (i : Fin 32768) (x : ℝ), x ∈ cell i →
      q3SineDeficit χ x ≤ (price (rawDeficit midpointLower) i : ℝ) / (scale : ℝ))
    (hSinc : ∀ (i j : Fin 32768),
      0 < rawDeficit midpointLower i → 0 < rawDeficit midpointLower j → j ≤ i →
      ∀ x ∈ cell i, ∀ y ∈ cell j,
        |Real.sinc (x - y) - Real.sinc (x + y)| ≤ (pairMajor i.val j.val : ℝ) / (scale : ℝ)) :
    sineDeficitRectangle 256 (q3SineDeficit χ) ≤
      (total midpointLower : ℝ) / (denominator : ℝ) := by
  let raw := rawDeficit midpointLower
  have hgrid := q3_sineDeficitRectangle_le_grid_envelope χ (deficitEnvelope midpointLower)
    (sincEnvelope raw) (fun i => div_nonneg (Nat.cast_nonneg _) real_scale_pos.le) ?_ hD ?_
  · exact hgrid.trans ((dense_real_eq midpointLower).le.trans
      (scaled_total_le_checker_fraction midpointLower))
  · intro ij
    unfold sincEnvelope
    split
    · exact div_nonneg (Nat.cast_nonneg _) real_scale_pos.le
    · norm_num
  · intro ij x y hx hy
    unfold sincEnvelope
    split
    next h =>
      have hi := mem_retained_iff.mp h.1
      have hj := mem_retained_iff.mp h.2
      rcases le_total ij.2 ij.1 with hji | hij
      · exact hSinc ij.1 ij.2 hi hj hji x hx y hy
      · rw [abs_sinc_difference_comm x y, pairMajor_comm ij.1.val ij.2.val]
        exact hSinc ij.2 ij.1 hj hi hij y hy x hx
    next =>
      exact (abs_sub _ _).trans (by
        linarith [Real.abs_sinc_le_one (x - y), Real.abs_sinc_le_one (x + y)])

/-- Rectangle bound with the retained-pair sinc enclosure supplied by the
literal sinc lookup theorem. The whole-cell deficit remains a hypothesis. -/
theorem rectangle_le_checker_fraction (χ : DirichletCharacter ℂ 3)
    (midpointLower : Fin 32768 → ℤ)
    (hD : ∀ (i : Fin 32768) (x : ℝ), x ∈ cell i →
      q3SineDeficit χ x ≤ (price (rawDeficit midpointLower) i : ℝ) / (scale : ℝ)) :
    sineDeficitRectangle 256 (q3SineDeficit χ) ≤
      (total midpointLower : ℝ) / (denominator : ℝ) := by
  apply rectangle_le_checker_fraction_of_pair_envelopes χ midpointLower hD
  intro i j _ _ hji x hx y hy
  exact CheckerRounding.abs_sincDifference_le_checker_pairMajor sincEntry i j hji x y hx hy
    (fun _ _ => rfl)

/-- The strict comparison in line 156 implies the stated rational margin. -/
theorem checker_fraction_lt_of_integer_test (midpointLower : Fin 32768 → ℤ)
    (h : total midpointLower * 62500 < 47961 * denominator) :
    (total midpointLower : ℝ) / (denominator : ℝ) < (219 / 250 : ℝ) ^ 2 := by
  have h' : (total midpointLower : ℝ) * 62500 < 47961 * (denominator : ℝ) := by
    exact_mod_cast h
  apply (div_lt_iff₀ denominator_pos).2
  linarith

-- Bare natural subtraction on both halves gives a nonsymmetric majorant.
private def truncatedMajor (i j : Fin 2) : ℕ := if i.val - j.val = 0 then 1 else 0

example :
    (∑ ij : Fin 2 × Fin 2, truncatedMajor ij.1 ij.2 ^ 2) = 3 ∧
    triangularSum (fun _ : Fin 2 => 1) truncatedMajor = 2 := by decide

-- The raw square at the negative cell would contribute 9 before clipping.
-- The zero and negative cells are both dropped, even with nonzero majorants.
private def testRaw (i : Fin 3) : ℤ :=
  if i.val = 0 then 2 else if i.val = 1 then 0 else -3

example :
    (retained testRaw).card = 1 ∧ (price testRaw (1 : Fin 3) = 0 ∧
      price testRaw (2 : Fin 3) = 0) ∧
    (∑ ij : Fin 3 × Fin 3, testRaw ij.1 * testRaw ij.2) = 1 ∧
    triangularSum testRaw (fun _ _ => 1) = 4 := by decide

end CheckerTriangle
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
