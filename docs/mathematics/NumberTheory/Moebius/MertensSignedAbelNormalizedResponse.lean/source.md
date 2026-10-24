# Complete source: GRWTSK.NumberTheory.Moebius.MertensSignedAbelNormalizedResponse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41e7d4e872da780caa4fbd208a04f6c2cca0ecbd` · SHA-256 `19feb40037c01b1df8ddd71391a3cc0e6ffa33804a1b90a018fe642556373eef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #499. Direct stacked parent: draft PR #494 at
`746c9700cf364434e29d9483db1ef1db1f116440`.
-/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinear

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Total nonnegative Abel-drop mass across the admissible shift fibre at one
prefix depth, indexed by `h=k+1`. -/
def signedAbelDepthShiftWeightMass (j t : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
    dyadicMertensShiftWeightDrop j (k + 1) t

/-- On the actual depth range, the shift-fibre drop mass telescopes exactly to
one inherited kernel weight. -/
theorem signedAbelDepthShiftWeightMass_eq_initialWeight
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    signedAbelDepthShiftWeightMass j t =
      dyadicMertensShiftWeight j (t + 2) := by
  let Y : ℕ := 2 ^ (j + 1)
  let N : ℕ := Y - t - 2
  let q : ℕ → ℝ := fun k =>
    dyadicMertensShiftWeight j (t + 2 + k)
  have htel := finiteWeightDropTelescope q N
  have hterminalIndex : t + 2 + N = Y := by
    dsimp [N, Y]
    omega
  have hterminal : q N = 0 := by
    dsimp [q]
    rw [hterminalIndex, show Y = 2 ^ (j + 1) by rfl,
      dyadicMertensShiftWeight_at_right]
  unfold signedAbelDepthShiftWeightMass
  rw [show 2 ^ (j + 1) - t - 2 = N by rfl]
  calc
    (∑ k ∈ Finset.range N,
      dyadicMertensShiftWeightDrop j (k + 1) t) =
        ∑ k ∈ Finset.range N, (q k - q (k + 1)) := by
      apply Finset.sum_congr rfl
      intro k _hk
      dsimp [dyadicMertensShiftWeightDrop, q]
      congr 2
      omega
    _ = q 0 - q N := htel
    _ = dyadicMertensShiftWeight j (t + 2) := by
      rw [hterminal, sub_zero]

/-- The complete shift-fibre coefficient mass is at most the reciprocal dyadic
endpoint. -/
theorem signedAbelDepthShiftWeightMass_le_right_inv
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    signedAbelDepthShiftWeightMass j t ≤
      (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [signedAbelDepthShiftWeightMass_eq_initialWeight htY]
  exact dyadicMertensShiftWeight_le_right_inv htY

-- This finite reindexing is unconditional. Retain the published htY premise
-- in the public interface; the subsequent size bounds still require it.
set_option linter.unusedVariables false in
/-- The complete shift response can be written on the exact compact range
`h=1,...,Y-t-2`. -/
theorem signedAbelDepthShiftResponse_eq_range
    {j t a : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    signedAbelDepthShiftResponse j t a =
      ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        2 * moebiusReal (a + 2 + k) *
          dyadicMertensShiftWeightDrop j (k + 1) t := by
  let Y : ℕ := 2 ^ (j + 1)
  have hfilter :
      (Finset.Ico 1 Y).filter
          (fun h => t < Y - h - 1) =
        Finset.Ico 1 (Y - t - 1) := by
    ext h
    simp only [Finset.mem_filter, Finset.mem_Ico]
    omega
  unfold signedAbelDepthShiftResponse
  rw [show 2 ^ (j + 1) = Y by rfl]
  rw [← Finset.sum_filter, hfilter, Finset.sum_Ico_eq_sum_range]
  have hlen : Y - t - 1 - 1 = Y - t - 2 := by omega
  rw [hlen]
  apply Finset.sum_congr rfl
  intro k _hk
  have hindex : a + 1 + (1 + k) = a + 2 + k := by omega
  rw [hindex, Nat.add_comm 1 k]

/-- The actual weighted growing-shift response is uniformly tiny before any
arithmetic cancellation is used. -/
theorem abs_signedAbelDepthShiftResponse_le_two_mul_right_inv
    {j t a : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    |signedAbelDepthShiftResponse j t a| ≤
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [signedAbelDepthShiftResponse_eq_range htY]
  calc
    |∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        2 * moebiusReal (a + 2 + k) *
          dyadicMertensShiftWeightDrop j (k + 1) t| ≤
      ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        |2 * moebiusReal (a + 2 + k) *
          dyadicMertensShiftWeightDrop j (k + 1) t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        2 * dyadicMertensShiftWeightDrop j (k + 1) t := by
      apply Finset.sum_le_sum
      intro k _hk
      have hdrop :=
        dyadicMertensShiftWeightDrop_nonneg j (k + 1) t
      simp only [abs_mul, abs_of_nonneg hdrop,
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
      have hcoeff := mul_le_mul_of_nonneg_right
        (moebiusReal_abs_le_one (a + 2 + k)) hdrop
      nlinarith
    _ = 2 * signedAbelDepthShiftWeightMass j t := by
      unfold signedAbelDepthShiftWeightMass
      rw [Finset.mul_sum]
    _ ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
      exact mul_le_mul_of_nonneg_left
        (signedAbelDepthShiftWeightMass_le_right_inv htY)
        (by norm_num)

/-- Normalize the complete shift response to a one-bounded real test family. -/
def normalizedSignedAbelDepthShiftResponse
    (j t a : ℕ) : ℝ :=
  (((2 ^ (j + 1) : ℕ) : ℝ) / 2) *
    signedAbelDepthShiftResponse j t a

/-- On the actual depth range the normalized response is one-bounded. -/
theorem abs_normalizedSignedAbelDepthShiftResponse_le_one
    {j t a : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    |normalizedSignedAbelDepthShiftResponse j t a| ≤ 1 := by
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hY : 0 < YR := by
    dsimp [YR]
    positivity
  have hresp :=
    abs_signedAbelDepthShiftResponse_le_two_mul_right_inv
      (j := j) (t := t) (a := a) htY
  unfold normalizedSignedAbelDepthShiftResponse
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ YR / 2)]
  change (YR / 2) * |signedAbelDepthShiftResponse j t a| ≤ 1
  calc
    (YR / 2) * |signedAbelDepthShiftResponse j t a| ≤
        (YR / 2) * (2 * YR⁻¹) :=
      mul_le_mul_of_nonneg_left hresp (by positivity)
    _ = 1 := by
      field_simp [ne_of_gt hY]

/-- Undo the normalization exactly. -/
theorem signedAbelDepthShiftResponse_eq_normalized
    (j t a : ℕ) :
    signedAbelDepthShiftResponse j t a =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        normalizedSignedAbelDepthShiftResponse j t a := by
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hY : YR ≠ 0 := by
    dsimp [YR]
    positivity
  unfold normalizedSignedAbelDepthShiftResponse
  change signedAbelDepthShiftResponse j t a =
    2 * YR⁻¹ * ((YR / 2) * signedAbelDepthShiftResponse j t a)
  field_simp [hY]

/-- The exact signed depth slice is a normalized Möbius correlation against a
one-bounded, scale/depth-dependent response family. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_eq_normalizedCorrelation
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        ∑ a ∈ Finset.range (t + 1),
          moebiusReal (a + 1) *
            normalizedSignedAbelDepthShiftResponse j t a := by
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear]
  calc
    (∑ a ∈ Finset.range (t + 1),
      moebiusReal (a + 1) * signedAbelDepthShiftResponse j t a) =
      ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) *
          (2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
            normalizedSignedAbelDepthShiftResponse j t a) := by
      apply Finset.sum_congr rfl
      intro a _ha
      rw [signedAbelDepthShiftResponse_eq_normalized]
    _ = 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        ∑ a ∈ Finset.range (t + 1),
          moebiusReal (a + 1) *
            normalizedSignedAbelDepthShiftResponse j t a := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a _ha
      ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.signedAbelDepthShiftWeightMass_eq_initialWeight
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_signedAbelDepthShiftResponse_le_two_mul_right_inv
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_normalizedSignedAbelDepthShiftResponse_le_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDepthSlice_eq_normalizedCorrelation
```
