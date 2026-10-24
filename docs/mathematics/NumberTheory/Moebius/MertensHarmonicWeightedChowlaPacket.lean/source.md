# Complete source: GRWTSK.NumberTheory.Moebius.MertensHarmonicWeightedChowlaPacket

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beda3189ebf7791a2856274b8d0fb28a2c0bb92f` · SHA-256 `218c9d28ec5cf1103dc331aa63a2f5434a665434c1cbe98c9dc355bcf1d976fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #511. Direct stacked parent: draft PR #508 at
`f26d7270e89e5ed348dad240ddedf494b4047895`.
-/
import GRWTSK.NumberTheory.Moebius.MertensWeightedChowlaPacket

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The Abel weight drop has no atom before the left dyadic endpoint.  This
includes the boundary step `b = 2^j-1`. -/
theorem dyadicMertensShiftWeightDrop_eq_zero_of_endpoint_lt_left
    {j h t : ℕ}
    (hb : t + 1 + h < 2 ^ j) :
    dyadicMertensShiftWeightDrop j h t = 0 := by
  unfold dyadicMertensShiftWeightDrop
  rw [dyadicMertensShiftWeight_eq_max,
    dyadicMertensShiftWeight_eq_max]
  have hb1 : t + 1 + h ≤ 2 ^ j := by omega
  have hb2 : (t + 1) + 1 + h ≤ 2 ^ j := by omega
  rw [max_eq_left hb1, max_eq_left hb2]
  ring

/-- Once the endpoint has entered the right dyadic half, the Abel drop is the
exact reciprocal difference. -/
theorem dyadicMertensShiftWeightDrop_eq_reciprocalDrop_of_left_le
    {j h t : ℕ}
    (hb : 2 ^ j ≤ t + 1 + h) :
    dyadicMertensShiftWeightDrop j h t =
      (((t + 1 + h : ℕ) : ℝ))⁻¹ -
        ((((t + 1) + 1 + h : ℕ) : ℝ))⁻¹ := by
  unfold dyadicMertensShiftWeightDrop
  rw [dyadicMertensShiftWeight_eq_max,
    dyadicMertensShiftWeight_eq_max]
  have hb2 : 2 ^ j ≤ (t + 1) + 1 + h := by omega
  rw [max_eq_right hb, max_eq_right hb2]
  ring

/-- Closed form of the normalized Abel kernel on its exact triangular support
after the endpoint enters the right dyadic half. -/
theorem normalizedSignedAbelShiftKernel_eq_harmonic
    {j t h : ℕ}
    (hh : 1 ≤ h)
    (hhY : h < 2 ^ (j + 1))
    (ht : t < 2 ^ (j + 1) - h - 1)
    (hb : 2 ^ j ≤ t + 1 + h) :
    normalizedSignedAbelShiftKernel j t h =
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        ((((t + 1 + h : ℕ) : ℝ))⁻¹ -
          ((((t + 1) + 1 + h : ℕ) : ℝ))⁻¹) := by
  unfold normalizedSignedAbelShiftKernel
  simp [hh, hhY, ht,
    dyadicMertensShiftWeightDrop_eq_reciprocalDrop_of_left_le hb]

/-- Before the left dyadic endpoint the normalized Abel kernel vanishes. -/
theorem normalizedSignedAbelShiftKernel_eq_zero_of_endpoint_lt_left
    {j t h : ℕ}
    (hb : t + 1 + h < 2 ^ j) :
    normalizedSignedAbelShiftKernel j t h = 0 := by
  unfold normalizedSignedAbelShiftKernel
  by_cases hs :
      1 ≤ h ∧ h < 2 ^ (j + 1) ∧
        t < 2 ^ (j + 1) - h - 1
  · rw [if_pos hs,
      dyadicMertensShiftWeightDrop_eq_zero_of_endpoint_lt_left hb,
      mul_zero]
  · rw [if_neg hs]

/-- Exact max-kernel closed form.  This avoids any ambiguity at the dyadic
midpoint. -/
theorem normalizedSignedAbelShiftKernel_eq_maxReciprocalDrop
    (j t h : ℕ) :
    normalizedSignedAbelShiftKernel j t h =
      if 1 ≤ h ∧ h < 2 ^ (j + 1) ∧
          t < 2 ^ (j + 1) - h - 1 then
        ((2 ^ (j + 1) : ℕ) : ℝ) *
          (((max (2 ^ j) (t + 1 + h) : ℕ) : ℝ)⁻¹ -
            ((max (2 ^ j) ((t + 1) + 1 + h) : ℕ) : ℝ)⁻¹)
      else 0 := by
  unfold normalizedSignedAbelShiftKernel
    dyadicMertensShiftWeightDrop
  split_ifs with hs
  · rw [dyadicMertensShiftWeight_eq_max,
      dyadicMertensShiftWeight_eq_max]
    ring
  · rfl

/-- The exact kernel mass is the endpoint-scaled reciprocal tail selected by
`max (2^j) (t+2)`. -/
theorem normalizedSignedAbelShiftKernelMass_eq_harmonicTail
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    normalizedSignedAbelShiftKernelMass j t =
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        ((((max (2 ^ j) (t + 2) : ℕ) : ℝ))⁻¹ -
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
  rw [normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass htY,
    signedAbelDepthShiftWeightMass_eq_initialWeight htY,
    dyadicMertensShiftWeight_eq_max]

/-- Explicit harmonic form of the weighted Chowla average, retaining the
original shift coordinate. -/
def harmonicWeightedMertensTwoPointChowlaAverage
    (j t : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    if t < 2 ^ (j + 1) - h - 1 ∧
        2 ^ j ≤ t + 1 + h then
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        ((((t + 1 + h : ℕ) : ℝ))⁻¹ -
          ((((t + 1) + 1 + h : ℕ) : ℝ))⁻¹) *
        mertensTwoPointPrefix h (t + 1)
    else 0

/-- The abstract kernel-weighted Chowla average is exactly its harmonic closed
form. -/
theorem weightedMertensTwoPointChowlaAverage_eq_harmonic
    (j t : ℕ) :
    weightedMertensTwoPointChowlaAverage j t =
      harmonicWeightedMertensTwoPointChowlaAverage j t := by
  unfold weightedMertensTwoPointChowlaAverage
    harmonicWeightedMertensTwoPointChowlaAverage
  apply Finset.sum_congr rfl
  intro h hhmem
  have hh := (Finset.mem_Ico.mp hhmem).1
  have hhY := (Finset.mem_Ico.mp hhmem).2
  by_cases ht : t < 2 ^ (j + 1) - h - 1
  · by_cases hb : 2 ^ j ≤ t + 1 + h
    · rw [normalizedSignedAbelShiftKernel_eq_harmonic hh hhY ht hb]
      simp [ht, hb]
    · have hb' : t + 1 + h < 2 ^ j := Nat.lt_of_not_ge hb
      rw [normalizedSignedAbelShiftKernel_eq_zero_of_endpoint_lt_left hb']
      simp [ht, hb]
  · unfold normalizedSignedAbelShiftKernel
    simp [hh, hhY, ht]

/-- Exact harmonic presentation of one signed depth slice. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_eq_harmonicChowla
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicWeightedMertensTwoPointChowlaAverage j t := by
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage,
    weightedMertensTwoPointChowlaAverage_eq_harmonic]

/-- All-scale source-facing condition on the explicit harmonic weighted Chowla
packet. -/
def harmonicWeightedMertensDyadicChowlaPacket
    (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
      harmonicWeightedMertensTwoPointChowlaAverage j t

/-- The harmonic packet is exactly the inherited weighted Chowla packet. -/
theorem harmonicWeightedMertensDyadicChowlaPacket_eq_weightedPacket
    (j : ℕ) :
    harmonicWeightedMertensDyadicChowlaPacket j =
      weightedMertensDyadicChowlaPacket j := by
  unfold harmonicWeightedMertensDyadicChowlaPacket
    weightedMertensDyadicChowlaPacket
  apply Finset.sum_congr rfl
  intro t _ht
  rw [← weightedMertensTwoPointChowlaAverage_eq_harmonic]

/-- Explicit harmonic-tail supplier. -/
def SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      harmonicWeightedMertensDyadicChowlaPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the preceding weighted-Chowla supplier. -/
theorem subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_iff_weighted :
    SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket ↔
      SubpolynomialDyadicWeightedMertensChowlaPacket := by
  constructor
  · intro hHarm δ hδ
    obtain ⟨C, hC, hscale⟩ := hHarm δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← harmonicWeightedMertensDyadicChowlaPacket_eq_weightedPacket]
    exact hscale j
  · intro hWeighted δ hδ
    obtain ⟨C, hC, hscale⟩ := hWeighted δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [harmonicWeightedMertensDyadicChowlaPacket_eq_weightedPacket]
    exact hscale j

/-- Conditional RH endpoint through the explicit harmonic-tail supplier. -/
theorem riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    (hHarm : SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicWeightedMertensChowlaPacket
    (subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_iff_weighted.mp
      hHarm)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicMertensShiftWeightDrop_eq_zero_of_endpoint_lt_left
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicMertensShiftWeightDrop_eq_reciprocalDrop_of_left_le
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedSignedAbelShiftKernelMass_eq_harmonicTail
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensTwoPointChowlaAverage_eq_harmonic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
```
