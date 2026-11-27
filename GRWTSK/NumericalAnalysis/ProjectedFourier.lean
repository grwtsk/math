/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
SPDX-License-Identifier: MIT
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Field.Defs
import Mathlib.Data.Fintype.Basic

/-!
# Row modulation for the normalized cyclic Fourier transform

The negative phase generator is passed directly as `q`. For a primitive
positive phase generator `ζ`, use `q = ζ⁻¹`. Two exact evaluations of the
even-order half-spectrum suffice to recover the entire transform: one on the
given input and one on the input modulated by the half-order phase.
-/

namespace GRWTSK.NumericalAnalysis.ProjectedFourier

open scoped BigOperators

variable {K : Type*} [Field K]

/-- A normalized negative-phase cyclic Fourier row in coefficient coordinates. -/
def inverseRow {n : ℕ} (q : K) (samples : Fin n → K) (k : ℕ) : K :=
  (∑ j : Fin n, samples j * q ^ (k * j.val)) / (n : K)

/-- Modulate the input by the negative Fourier character at row `d`. -/
def modulate {n : ℕ} (q : K) (samples : Fin n → K) (d : ℕ) : Fin n → K :=
  fun j => samples j * q ^ (d * j.val)

/-- Input modulation shifts the output row by the same index. -/
theorem inverseRow_modulate {n : ℕ} (q : K) (samples : Fin n → K) (k d : ℕ) :
    inverseRow q (modulate q samples d) k = inverseRow q samples (d + k) := by
  unfold inverseRow
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  rw [modulate, Nat.add_mul, pow_add, mul_assoc]

/-- A root of unity gives the expected periodicity in the row index. -/
theorem inverseRow_period {n : ℕ} (q : K) (hRoot : q ^ n = 1)
    (samples : Fin n → K) (k : ℕ) :
    inverseRow q samples (n + k) = inverseRow q samples k := by
  unfold inverseRow
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  rw [Nat.add_mul, pow_add, pow_mul, hRoot, one_pow, one_mul]

/-- A half-order phase of `-1` makes modulation an alternating sign change. -/
theorem modulate_half_eq_alternating {m : ℕ} (q : K) (hHalf : q ^ m = -1)
    (samples : Fin (2 * m) → K) :
    modulate q samples m = fun j => samples j * (-1 : K) ^ j.val := by
  funext j
  rw [modulate, pow_mul, hHalf]

/-- The full normalized Fourier transform in finite cyclic row coordinates. -/
def fullTransform {n : ℕ} (q : K) (samples : Fin n → K) : Fin n → K :=
  fun k => inverseRow q samples k.val

/-- Retain rows zero through half the order, inclusive. -/
def halfTransform {m : ℕ} (q : K) (samples : Fin (2 * m) → K) : Fin (m + 1) → K :=
  fun k => inverseRow q samples k.val

/-- Select each row of the full transform from the two projected transforms. -/
def reassembleHalf {m : ℕ} (original shifted : Fin (m + 1) → K) :
    Fin (2 * m) → K :=
  fun k =>
    if h : k.val < m then original ⟨k.val, Nat.lt_succ_of_lt h⟩
    else shifted ⟨k.val - m, by have hk := k.isLt; omega⟩

/-- The shifted evaluation provides the actual rows absent from the original
projection. The readout itself does not take any linear combination. -/
theorem reassembleHalf_eq_fullTransform {m : ℕ} (q : K) (samples : Fin (2 * m) → K) :
    reassembleHalf (halfTransform q samples) (halfTransform q (modulate q samples m)) =
      fullTransform q samples := by
  funext k
  by_cases h : k.val < m
  · simp [reassembleHalf, halfTransform, fullTransform, h]
  · simp only [reassembleHalf, h, dite_false, halfTransform, fullTransform,
      inverseRow_modulate]
    rw [Nat.add_sub_of_le (Nat.le_of_not_gt h)]

end GRWTSK.NumericalAnalysis.ProjectedFourier
