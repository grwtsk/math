# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechAffineHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca6125fb40ad765b2c5061f856974228c7a5b6b9` · SHA-256 `e7e596cfd6499bbc1e81d97c11aece96ab60394f57568955ef6c1a34b5b4d4a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Affine coefficient heights of the SAME combinedQ/inverseQ. The actual
least common denominators are controlled before logarithmic bounds.
The scalar clearing factor 12|ab|^k is not the cokernel index, a radical,
or a marked-model height. Full cochain recovery still needs the gauge.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechArchimedeanNorm

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechAffineHeight

open FreyWeightedBasis FreyCechPadicNorm FreyCechArchimedeanNorm
open GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm
open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
open GRWTSK.NumberTheory.Padics
open GRWTSK.LinearAlgebra.ThreeCellWeightedMinimum

local instance slotsNonempty (k : ℕ) : Nonempty (Slot k) :=
  ⟨(Sum.inl ⟨0, Nat.zero_lt_succ k⟩, 0)⟩

/-- Both heights use [1:coordinates]; the target uses the ORIGINAL four fields. -/
def sourceHeight (k : ℕ) (q : Slot k → ℚ) : ℚ := height q

def targetHeight (k : ℕ) (r : RationalData k) : ℚ := height (rawCoordinates k r)

/-- Forward integer rows cannot introduce a new denominator. No rank premise is needed. -/
theorem denominator_forward (a b : ℤ) (k : ℕ) (q : Slot k → ℚ) :
    denominator (rawCoordinates k (combinedQ a b k q)) ∣ denominator q := by
  apply (denominator_dvd_iff_clears _ _).mpr
  rintro ⟨j,c⟩
  obtain ⟨i, rfl⟩ := (FreyWeightedLattice.reverse k).surjective j
  rw [congrFun (forward_block a b k q i) c]
  let w := FreyWeightedLattice.weight (a*b) k i
  have hc (j : Fin 4) := denominator_clears q (i,j)
  fin_cases c
  · exact clears_int_mul (denominator q) w _
      (clears_int_mul (denominator q) 3 (q (i,0)) (hc 0))
  · exact clears_int_mul (denominator q) w (q (i,1)) (hc 1)
  · exact clears_int_mul (denominator q) w _
      (clears_add _ _ _ (hc 1) (clears_int_mul _ 4 _ (hc 2)))
  · exact clears_int_mul (denominator q) w _
      (clears_add _ _ _ (hc 1) (clears_int_mul _ 4 _ (hc 3)))

/-- Retain the signed SOURCE weight; only the clearing generator is made positive. -/
theorem column_dvd_clearing (a b : ℤ) (k : ℕ) (s : Slot k) :
    weights a b k s ∣ (FreyCechPrimeBudget.clearing a b k : ℤ) := by
  have hc : (FreyCechPrimeBudget.clearing a b k : ℤ) = |12 * (-(a*b))^k| := by
    simp [FreyCechPrimeBudget.clearing, Int.natCast_natAbs, abs_mul, abs_pow]
  rw [hc, dvd_abs]
  have hb : baseWeight s.2 ∣ (12 : ℤ) := by
    rcases s with ⟨i,j⟩
    fin_cases j <;> norm_num [baseWeight]
  simpa only [weights, combinedWeight, mul_comm] using
    mul_dvd_mul (FreyWeightedLattice.weight_dvd_power (a*b) k s.1) hb

/-- Universal denominator divisibility for the OLD inverse on arbitrary rational targets. -/
theorem denominator_inverse (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (r : RationalData k) :
    denominator (inverseQ a b hab k r) ∣
      FreyCechPrimeBudget.clearing a b k * denominator (rawCoordinates k r) := by
  let D := denominator (rawCoordinates k r)
  have hf : ∀ s : Slot k, ClearsValue D (frameQ k r s) := by
    rintro ⟨i,j⟩
    have hr (c : Fin 4) := denominator_clears (rawCoordinates k r) (i,c)
    fin_cases j
    · exact hr 0
    · exact hr 1
    · exact clears_sub D _ _ (hr 2) (hr 1)
    · exact clears_sub D _ _ (hr 3) (hr 1)
  apply (denominator_dvd_iff_clears _ _).mpr
  intro s
  simpa only [inverseQ, WeightedPermutationNorm.inverse] using
    clears_divisor D (FreyCechPrimeBudget.clearing a b k) (weights a b k s)
      (weights_ne_zero a b hab k s) (column_dvd_clearing a b k s)
      (frameQ k r (permutation k s)) (hf (permutation k s))

theorem forwardFactor_one_le (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    (1 : ℚ) ≤ forwardFactor a b k := by
  have hh : (a*b).natAbs ≠ 0 := by simpa only [Int.natAbs_eq_zero] using hab
  have hp : (1 : ℚ) ≤ ((a*b).natAbs : ℚ)^k := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (pow_ne_zero k hh))
  rw [forwardFactor, sourceScale_natAbs]
  linarith

/-- This is a height inequality, not merely a sum of proposed local factors. -/
theorem forward_height (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (q : Slot k → ℚ) :
    targetHeight k (combinedQ a b k q) ≤ forwardFactor a b k * sourceHeight k q := by
  have h := height_le_of_denominator_dvd q (rawCoordinates k (combinedQ a b k q))
    1 (by norm_num) (forwardFactor a b k) (forwardFactor_one_le a b hab k)
    (by simpa using denominator_forward a b k q) (forward_estimate a b hab k q)
  simpa only [Nat.cast_one, one_mul, sourceHeight, targetHeight] using h

theorem inverse_height (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (r : RationalData k) :
    sourceHeight k (inverseQ a b hab k r) ≤
      (FreyCechPrimeBudget.clearing a b k : ℚ) * targetHeight k r := by
  have h := height_le_of_denominator_dvd (rawCoordinates k r) (inverseQ a b hab k r)
    (FreyCechPrimeBudget.clearing a b k)
    (Nat.pos_of_ne_zero (FreyCechPrimeBudget.clearing_ne_zero a b hab k))
    1 le_rfl (denominator_inverse a b hab k r)
    (by simpa only [one_mul] using FreyCechArchimedeanNorm.inverse_estimate a b hab k r)
  simpa only [mul_one, sourceHeight, targetHeight] using h

/-- Same-map recovery of parameters; this does not recover the discarded two gauge fields. -/
theorem height_comparison (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (q : Slot k → ℚ) :
    sourceHeight k q ≤ (FreyCechPrimeBudget.clearing a b k : ℚ) *
      targetHeight k (combinedQ a b k q) ∧
    targetHeight k (combinedQ a b k q) ≤ forwardFactor a b k * sourceHeight k q := by
  constructor
  · simpa only [inverseQ_combinedQ] using inverse_height a b hab k (combinedQ a b k q)
  · exact forward_height a b hab k q

theorem log_forward_height (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (q : Slot k → ℚ) :
    logHeight (rawCoordinates k (combinedQ a b k q)) ≤
      logHeight q + Real.log 5 + (k : ℝ) * Real.log ((a*b).natAbs : ℝ) := by
  have h := logHeight_le_of_height_le q (rawCoordinates k (combinedQ a b k q))
    (forwardFactor a b k) (lt_of_lt_of_le (by norm_num) (forwardFactor_one_le a b hab k))
    (forward_height a b hab k q)
  rw [log_forwardFactor a b hab k] at h
  simpa only [add_assoc] using h

theorem log_inverse_height (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (r : RationalData k) :
    logHeight (inverseQ a b hab k r) ≤ logHeight (rawCoordinates k r) +
      Real.log 12 + (k : ℝ) * Real.log ((a*b).natAbs : ℝ) := by
  have h := logHeight_le_of_height_le (rawCoordinates k r) (inverseQ a b hab k r)
    (FreyCechPrimeBudget.clearing a b k : ℚ)
    (Nat.cast_pos.mpr (Nat.pos_of_ne_zero (FreyCechPrimeBudget.clearing_ne_zero a b hab k)))
    (inverse_height a b hab k r)
  rw [Rat.cast_natCast, FreyCechPrimeBudget.clearing_log a b hab k] at h
  simpa only [add_assoc] using h

/-- Integer source parameters one give an affine height-one sharp forward witness. -/
theorem forward_ones_height (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    sourceHeight k (fun _ => 1) = 1 ∧
    targetHeight k (combinedQ a b k (fun _ => 1)) = forwardFactor a b k := by
  have hD : denominator (fun _ : Slot k => (1 : ℚ)) = 1 := by
    simpa using denominator_int (fun _ : Slot k => (1 : ℤ))
  have hJ : denominator (rawCoordinates k (combinedQ a b k (fun _ => 1))) = 1 := by
    apply Nat.dvd_one.mp
    simpa only [hD] using denominator_forward a b k (fun _ => 1)
  constructor
  · simp [sourceHeight, height, hD]
  · change (denominator (rawCoordinates k (combinedQ a b k (fun _ => 1))) : ℚ) *
      max 1 (targetMax k (combinedQ a b k (fun _ => 1))) = _
    rw [hJ, forward_ones a b hab k, max_eq_right (forwardFactor_one_le a b hab k)]
    simp

/-- Height-one RAW target. Its two reciprocal columns force the full inverse denominator. -/
def heightProbe (k : ℕ) : RationalData k := (fun _ => 1, fun j _ => ![0,1,0] j)

theorem heightProbe_data (k : ℕ) :
    denominator (rawCoordinates k (heightProbe k)) = 1 ∧ targetMax k (heightProbe k) = 1 := by
  constructor
  · have he : rawCoordinates k (heightProbe k) =
        (fun s : Slot k => ((![1,0,1,0] : Fin 4 → ℤ) s.2 : ℚ)) := by
      funext s; rcases s with ⟨i,j⟩; fin_cases j <;> simp [rawCoordinates, heightProbe]
    rw [he, denominator_int]
  · apply le_antisymm
    · apply (maxAbs_le_iff _ _).mpr
      rintro ⟨i,j⟩; fin_cases j <;> norm_num [rawCoordinates, heightProbe]
    · have h := entry_le (rawCoordinates k (heightProbe k))
        (Sum.inl ⟨0, Nat.zero_lt_succ k⟩,0)
      simpa [rawCoordinates, heightProbe, targetMax] using h

private theorem three_four_common (w d : ℤ) (hw : w ≠ 0)
    (h3 : 3*w ∣ d) (h4 : 4*w ∣ d) : 12*w ∣ d := by
  obtain ⟨u, hu⟩ := h3
  obtain ⟨v, hv⟩ := h4
  have he : w * (3*u) = w * (4*v) := by
    calc
      w * (3*u) = d := by rw [hu]; ring
      _ = w * (4*v) := by rw [hv]; ring
  have h := mul_left_cancel₀ hw he
  have hu4 : (4 : ℤ) ∣ u := by omega
  obtain ⟨t, ht⟩ := hu4
  exact ⟨t, by rw [hu, ht]; ring⟩

/-- Exact least denominator of a witness, not just the universal upper bound. -/
theorem inverse_probe_denominator (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    denominator (inverseQ a b hab k (heightProbe k)) = FreyCechPrimeBudget.clearing a b k := by
  let D := denominator (inverseQ a b hab k (heightProbe k))
  let i : Index k := Sum.inl ⟨k, Nat.lt_succ_self k⟩
  let w : ℤ := (-(a*b))^k
  have hw : w ≠ 0 := pow_ne_zero _ (neg_ne_zero.mpr hab)
  have h3 : 3*w ∣ (D : ℤ) := by
    apply (clears_reciprocal_iff D (3*w) (mul_ne_zero (by norm_num) hw)).mp
    have h := denominator_clears (inverseQ a b hab k (heightProbe k)) (i,0)
    rw [congrFun (inverse_block a b hab k (heightProbe k) i) 0] at h
    simpa [i, w, inverseBlock, rawCoordinates, heightProbe, FreyWeightedLattice.weight] using h
  have h4 : 4*w ∣ (D : ℤ) := by
    apply (clears_reciprocal_iff D (4*w) (mul_ne_zero (by norm_num) hw)).mp
    have h := denominator_clears (inverseQ a b hab k (heightProbe k)) (i,2)
    rw [congrFun (inverse_block a b hab k (heightProbe k) i) 2] at h
    simpa [i, w, inverseBlock, rawCoordinates, heightProbe, FreyWeightedLattice.weight] using h
  apply Nat.dvd_antisymm
  · simpa only [(heightProbe_data k).1, mul_one] using denominator_inverse a b hab k (heightProbe k)
  · have hc : (FreyCechPrimeBudget.clearing a b k : ℤ) = |12*w| := by
      simp [FreyCechPrimeBudget.clearing, w, Int.natCast_natAbs, abs_mul, abs_pow]
    apply Int.natCast_dvd_natCast.mp
    rw [hc, abs_dvd]
    exact three_four_common w D hw h3 h4

theorem inverse_probe_height (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    targetHeight k (heightProbe k) = 1 ∧
    sourceHeight k (inverseQ a b hab k (heightProbe k)) = (FreyCechPrimeBudget.clearing a b k : ℚ) := by
  have hm : maxAbs (inverseQ a b hab k (heightProbe k)) ≤ 1 := by
    simpa only [(heightProbe_data k).2] using FreyCechArchimedeanNorm.inverse_estimate a b hab k (heightProbe k)
  constructor
  · change (denominator (rawCoordinates k (heightProbe k)) : ℚ) * max 1 (targetMax k (heightProbe k)) = 1
    rw [(heightProbe_data k).1, (heightProbe_data k).2]; norm_num
  · rw [sourceHeight, height, inverse_probe_denominator, max_eq_left hm, mul_one]

/-- The sharpness is of affine HEIGHT bounds, not only local norm estimates. -/
theorem forward_height_bound_iff (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) :
    (∀ q, targetHeight k (combinedQ a b k q) ≤ B * sourceHeight k q) ↔ forwardFactor a b k ≤ B := by
  constructor
  · intro h
    simpa only [(forward_ones_height a b hab k).1, (forward_ones_height a b hab k).2, mul_one] using h (fun _ => 1)
  · intro h q
    exact (forward_height a b hab k q).trans
      (mul_le_mul_of_nonneg_right h ((by norm_num : (0 : ℚ) ≤ 1).trans (height_one_le q)))

theorem inverse_height_bound_iff (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) :
    (∀ r, sourceHeight k (inverseQ a b hab k r) ≤ B * targetHeight k r) ↔
      (FreyCechPrimeBudget.clearing a b k : ℚ) ≤ B := by
  constructor
  · intro h
    simpa only [(inverse_probe_height a b hab k).1, (inverse_probe_height a b hab k).2, mul_one] using h (heightProbe k)
  · intro h r
    exact (inverse_height a b hab k r).trans
      (mul_le_mul_of_nonneg_right h ((by norm_num : (0 : ℚ) ≤ 1).trans (height_one_le (rawCoordinates k r))))

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechAffineHeight
```
