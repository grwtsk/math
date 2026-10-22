/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #391 / #388 / #373 / #369 / #366 / #357 / #354 / #350 /
  #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicChowlaShiftPacket

/-!
# Uniform finite two-point Möbius-prefix supplier

The exact signed shift packet is bounded by a stronger, conventional finite
Chowla-type premise: one common envelope for every positive shift and every
partial two-point correlation below the current dyadic right endpoint.

The source retains the complete shift packet as the exact criterion.  Absolute
values enter only in this stronger sufficient supplier.  No converse from the
shift packet, RH, or the energy criterion to the uniform envelope is claimed.

All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- The length-`N` two-point Möbius prefix at positive shift `h`.
The arithmetic indices are `a+1` and `a+1+h`. -/
def mertensTwoPointPrefix (h N : ℕ) : ℝ :=
  ∑ a ∈ Finset.range N,
    moebiusReal (a + 1) * moebiusReal (a + 1 + h)

/-- One uniform finite envelope for all positive shifts and all prefix lengths
available below the right endpoint `2^(j+1)`. -/
def DyadicMertensTwoPointEnvelope (j : ℕ) (U : ℝ) : Prop :=
  0 ≤ U ∧
    ∀ h N : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
      N ≤ 2 ^ (j + 1) - h - 1 →
        |mertensTwoPointPrefix h N| ≤ U

/-- The stronger all-scale Chowla-facing supplier. -/
def SubpolynomialDyadicUniformMertensTwoPointPrefix : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧
    ∀ j : ℕ,
      DyadicMertensTwoPointEnvelope j
        (A * (((2 ^ j : ℕ) : ℝ) ^ δ))

@[simp] theorem mertensTwoPointPrefix_zero (h : ℕ) :
    mertensTwoPointPrefix h 0 = 0 := by
  simp [mertensTwoPointPrefix]

theorem mertensTwoPointPrefix_succ (h N : ℕ) :
    mertensTwoPointPrefix h (N + 1) =
      mertensTwoPointPrefix h N +
        moebiusReal (N + 1) * moebiusReal (N + 1 + h) := by
  simp [mertensTwoPointPrefix, Finset.sum_range_succ]

/-- The finite kernel weight vanishes at the right endpoint. -/
theorem dyadicMertensShiftWeight_at_right (j : ℕ) :
    dyadicMertensShiftWeight j (2 ^ (j + 1)) = 0 := by
  rw [dyadicMertensShiftWeight_of_le]
  · ring
  · rw [Nat.pow_succ]
    omega

/-- The finite kernel weight is nonnegative through its right endpoint. -/
theorem dyadicMertensShiftWeight_nonneg {j b : ℕ}
    (hb : b ≤ 2 ^ (j + 1)) :
    0 ≤ dyadicMertensShiftWeight j b := by
  rw [dyadicMertensShiftWeight_eq_max]
  apply sub_nonneg.mpr
  simp only [← one_div]
  apply one_div_le_one_div_of_le
  · positivity
  · have hmax : max (2 ^ j) b ≤ 2 ^ (j + 1) :=
      max_le
        (show 2 ^ j ≤ 2 ^ (j + 1) by
          rw [Nat.pow_succ]
          omega)
        hb
    exact_mod_cast hmax

/-- The finite kernel weight decreases as the endpoint advances. -/
theorem dyadicMertensShiftWeight_step_antitone {j b : ℕ} :
    dyadicMertensShiftWeight j (b + 1) ≤
      dyadicMertensShiftWeight j b := by
  rw [dyadicMertensShiftWeight_eq_max,
    dyadicMertensShiftWeight_eq_max]
  apply sub_le_sub_right
  simp only [← one_div]
  apply one_div_le_one_div_of_le
  · positivity
  · have hmax : max (2 ^ j) b ≤ max (2 ^ j) (b + 1) :=
      max_le_max le_rfl (Nat.le_succ b)
    exact_mod_cast hmax

/-- Every weight below the right endpoint is at most its reciprocal. -/
theorem dyadicMertensShiftWeight_le_right_inv {j b : ℕ}
    (hb : b ≤ 2 ^ (j + 1)) :
    dyadicMertensShiftWeight j b ≤
      (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [dyadicMertensShiftWeight_eq_max]
  have hinv :
      (((max (2 ^ j) b : ℕ) : ℝ))⁻¹ ≤
        (((2 ^ j : ℕ) : ℝ))⁻¹ := by
    simp only [← one_div]
    apply one_div_le_one_div_of_le
    · positivity
    · exact_mod_cast (le_max_left (2 ^ j) b)
  have hdy := dyadic_left_inv_eq_two_mul_right_inv j
  linarith

/-- Reindex one fixed shift by the ordinary correlation coordinate `a`. -/
theorem weightedMertensDyadicShiftContribution_eq_range
    {j h : ℕ} (hh : 1 ≤ h) (hhY : h < 2 ^ (j + 1)) :
    weightedMertensDyadicShiftContribution j h =
      2 * ∑ a ∈ Finset.range (2 ^ (j + 1) - h - 1),
        moebiusReal (a + 1) * moebiusReal (a + 1 + h) *
          dyadicMertensShiftWeight j (a + 1 + h) := by
  let Y : ℕ := 2 ^ (j + 1)
  unfold weightedMertensDyadicShiftContribution
  rw [show 2 ^ (j + 1) = Y by rfl]
  have hfilter :
      (Finset.Ico 1 Y).filter (fun b => h < b) =
        Finset.Ico (h + 1) Y := by
    ext b
    simp only [Finset.mem_filter, Finset.mem_Ico]
    omega
  rw [← Finset.sum_filter, hfilter, Finset.sum_Ico_eq_sum_range]
  have hlen : Y - (h + 1) = Y - h - 1 := by omega
  rw [hlen]
  congr 1
  apply Finset.sum_congr rfl
  intro a _
  have hsub : h + 1 + a - h = a + 1 := by omega
  have hadd : h + 1 + a = a + 1 + h := by omega
  rw [hsub, hadd]

/-- Finite Abel summation with the terminal term retained. -/
private theorem finite_abel_prefix
    (x q : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, x k * q k) =
      (∑ t ∈ Finset.range N,
        (∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))) +
        (∑ k ∈ Finset.range N, x k) * q N := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [Finset.sum_range_succ]
      ring

private theorem finite_weight_drop_telescope
    (q : ℕ → ℝ) (N : ℕ) :
    (∑ t ∈ Finset.range N, (q t - q (t + 1))) =
      q 0 - q N := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      ring

/-- A nonincreasing nonnegative finite weight pays a weighted sum from a
uniform bound on every arithmetic prefix. -/
private theorem abs_weighted_sum_le_of_prefix_bound
    (x q : ℕ → ℝ) (N : ℕ) {U : ℝ}
    (hU : 0 ≤ U)
    (hprefix : ∀ n : ℕ, n ≤ N →
      |∑ k ∈ Finset.range n, x k| ≤ U)
    (hdrop : ∀ t : ℕ, t < N → 0 ≤ q t - q (t + 1))
    (hterminal : q N = 0) :
    |∑ k ∈ Finset.range N, x k * q k| ≤ U * q 0 := by
  rw [finite_abel_prefix, hterminal, mul_zero, add_zero]
  calc
    |∑ t ∈ Finset.range N,
        (∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))| ≤
      ∑ t ∈ Finset.range N,
        |(∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ t ∈ Finset.range N,
        |∑ k ∈ Finset.range (t + 1), x k| *
          (q t - q (t + 1)) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [abs_mul, abs_of_nonneg (hdrop t (Finset.mem_range.mp ht))]
    _ ≤ ∑ t ∈ Finset.range N,
        U * (q t - q (t + 1)) := by
      apply Finset.sum_le_sum
      intro t ht
      exact mul_le_mul_of_nonneg_right
        (hprefix (t + 1) (Nat.succ_le_iff.mpr (Finset.mem_range.mp ht)))
        (hdrop t (Finset.mem_range.mp ht))
    _ = U * (∑ t ∈ Finset.range N, (q t - q (t + 1))) := by
      rw [← Finset.mul_sum]
    _ = U * (q 0 - q N) := by
      rw [finite_weight_drop_telescope]
    _ = U * q 0 := by rw [hterminal, sub_zero]

/-- Fully typed fixed-shift bound. -/
theorem abs_weightedMertensDyadicShiftContribution_le
    {j h : ℕ} {U : ℝ}
    (hh : 1 ≤ h) (hhY : h < 2 ^ (j + 1))
    (henv : DyadicMertensTwoPointEnvelope j U) :
    |weightedMertensDyadicShiftContribution j h| ≤
      2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  let Y : ℕ := 2 ^ (j + 1)
  let N : ℕ := Y - h - 1
  let x : ℕ → ℝ := fun a =>
    moebiusReal (a + 1) * moebiusReal (a + 1 + h)
  let q : ℕ → ℝ := fun a =>
    dyadicMertensShiftWeight j (a + 1 + h)
  have hprefix : ∀ n : ℕ, n ≤ N →
      |∑ a ∈ Finset.range n, x a| ≤ U := by
    intro n hn
    simpa [mertensTwoPointPrefix, x, N, Y] using
      henv.2 h n hh hhY hn
  have hdrop : ∀ t : ℕ, t < N → 0 ≤ q t - q (t + 1) := by
    intro t ht
    dsimp [q]
    have hs := dyadicMertensShiftWeight_step_antitone
      (j := j) (b := t + 1 + h)
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using sub_nonneg.mpr hs
  have hterminal : q N = 0 := by
    have hindex : N + 1 + h = Y := by
      dsimp [N, Y]
      omega
    dsimp [q]
    rw [hindex, show Y = 2 ^ (j + 1) by rfl,
      dyadicMertensShiftWeight_at_right]
  have hq0 : q 0 ≤ (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
    dsimp [q]
    apply dyadicMertensShiftWeight_le_right_inv
    omega
  have hab := abs_weighted_sum_le_of_prefix_bound
    x q N henv.1 hprefix hdrop hterminal
  rw [weightedMertensDyadicShiftContribution_eq_range hh hhY]
  change |2 * ∑ a ∈ Finset.range N, x a * q a| ≤
    2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹
  simp only [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    2 * |∑ a ∈ Finset.range N, x a * q a| ≤
        2 * (U * q 0) :=
      mul_le_mul_of_nonneg_left hab (by norm_num)
    _ ≤ 2 * (U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul_of_nonneg_left hq0 henv.1
      · norm_num
    _ = 2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by ring

/-- Summing every fixed-shift estimate pays the complete signed packet. -/
theorem abs_weightedMertensDyadicShiftPacket_le
    {j : ℕ} {U : ℝ}
    (henv : DyadicMertensTwoPointEnvelope j U) :
    |weightedMertensDyadicShiftPacket j| ≤ 2 * U := by
  let Y : ℕ := 2 ^ (j + 1)
  have hY : 1 ≤ Y := Nat.one_le_pow (j + 1) 2 (by norm_num)
  have hcard : (Finset.Ico 1 Y).card = Y - 1 := by
    rw [Nat.card_Ico]
  unfold weightedMertensDyadicShiftPacket
  rw [show 2 ^ (j + 1) = Y by rfl]
  calc
    |∑ h ∈ Finset.Ico 1 Y,
        weightedMertensDyadicShiftContribution j h| ≤
      ∑ h ∈ Finset.Ico 1 Y,
        |weightedMertensDyadicShiftContribution j h| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _h ∈ Finset.Ico 1 Y,
        2 * U * (Y : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro h hh
      exact abs_weightedMertensDyadicShiftContribution_le
        (Finset.mem_Ico.mp hh).1 (Finset.mem_Ico.mp hh).2 henv
    _ = (((Finset.Ico 1 Y).card : ℕ) : ℝ) *
        (2 * U * (Y : ℝ)⁻¹) := by
      simp only [Finset.sum_const, nsmul_eq_mul]
    _ = (((Y - 1 : ℕ) : ℝ)) *
        (2 * U * (Y : ℝ)⁻¹) := by rw [hcard]
    _ ≤ (Y : ℝ) * (2 * U * (Y : ℝ)⁻¹) := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast Nat.sub_le Y 1
      · exact mul_nonneg
          (mul_nonneg (by norm_num) henv.1)
          (inv_nonneg.mpr (Nat.cast_nonneg Y))
    _ = 2 * U := by
      field_simp [show (Y : ℝ) ≠ 0 by positivity]

/-- The stronger uniform finite Chowla premise supplies the exact packet
criterion. -/
theorem subpolynomialDyadicMertensShiftPacket_of_uniformTwoPointPrefix
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    SubpolynomialDyadicMertensShiftPacket := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := huniform δ hδ
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  have habs := abs_weightedMertensDyadicShiftPacket_le (henv j)
  calc
    weightedMertensDyadicShiftPacket j ≤
        |weightedMertensDyadicShiftPacket j| := le_abs_self _
    _ ≤ 2 * (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) := habs
    _ = (2 * A) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Conditional terminal return through the exact shift-packet criterion. -/
theorem riemannHypothesis_of_subpolynomialDyadicUniformMertensTwoPointPrefix
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket
    (subpolynomialDyadicMertensShiftPacket_of_uniformTwoPointPrefix huniform)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_weightedMertensDyadicShiftContribution_le
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicMertensShiftPacket_of_uniformTwoPointPrefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicUniformMertensTwoPointPrefix
