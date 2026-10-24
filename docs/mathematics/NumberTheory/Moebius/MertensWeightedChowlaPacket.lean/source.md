# Complete source: GRWTSK.NumberTheory.Moebius.MertensWeightedChowlaPacket

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `112150362f5d31be9e5b6823e8f0b3598e47decb` · SHA-256 `ab646cfa0063e1ab71bc469050c4308475c2c3432ee3138f58be3e7a9634fd42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #507. Direct stacked parent: draft PR #504 at
`d93ba416de2b2b8a123fb878640c1dfd7d478728`.
-/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelSubprobabilityKernel

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Kernel-weighted ordinary two-point Möbius prefix average at one dyadic
scale and prefix depth. -/
def weightedMertensTwoPointChowlaAverage
    (j t : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    normalizedSignedAbelShiftKernel j t h *
      mertensTwoPointPrefix h (t + 1)

/-- The smoothed autocorrelation collapses exactly to the kernel-weighted
ordinary two-point prefix average. -/
theorem normalizedKernelAutocorrelation_eq_weightedChowlaAverage
    (j t : ℕ) :
    (∑ a ∈ Finset.range (t + 1),
      moebiusReal (a + 1) *
        (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          normalizedSignedAbelShiftKernel j t h *
            moebiusReal (a + 1 + h))) =
      weightedMertensTwoPointChowlaAverage j t := by
  unfold weightedMertensTwoPointChowlaAverage
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  simp only [mertensTwoPointPrefix, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _ha
  ring

/-- Exact weighted-Chowla presentation of one signed depth slice. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        weightedMertensTwoPointChowlaAverage j t := by
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_kernelAutocorrelation,
    normalizedKernelAutocorrelation_eq_weightedChowlaAverage]

/-- A uniform one-sided upper bound on every ordinary two-point prefix at this
depth transfers to the nonnegative subprobability weighted average. -/
theorem weightedMertensTwoPointChowlaAverage_le_of_prefix_bound
    {j t : ℕ} {U : ℝ}
    (htY : t + 2 ≤ 2 ^ (j + 1))
    (hU : 0 ≤ U)
    (hprefix :
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTwoPointPrefix h (t + 1) ≤ U) :
    weightedMertensTwoPointChowlaAverage j t ≤ U := by
  unfold weightedMertensTwoPointChowlaAverage
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
      normalizedSignedAbelShiftKernel j t h *
        mertensTwoPointPrefix h (t + 1)) ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h * U := by
      apply Finset.sum_le_sum
      intro h hh
      exact mul_le_mul_of_nonneg_left
        (hprefix h hh)
        (normalizedSignedAbelShiftKernel_nonneg j t h)
    _ = normalizedSignedAbelShiftKernelMass j t * U := by
      unfold normalizedSignedAbelShiftKernelMass
      rw [Finset.sum_mul]
    _ ≤ 1 * U := by
      exact mul_le_mul_of_nonneg_right
        (normalizedSignedAbelShiftKernelMass_le_one htY) hU
    _ = U := by ring

/-- A uniform absolute prefix bound yields an absolute bound on the
kernel-weighted average. This is a sufficient transport; no converse is
proved here. -/
theorem abs_weightedMertensTwoPointChowlaAverage_le_of_abs_prefix_bound
    {j t : ℕ} {U : ℝ}
    (htY : t + 2 ≤ 2 ^ (j + 1))
    (hU : 0 ≤ U)
    (hprefix :
      ∀ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |mertensTwoPointPrefix h (t + 1)| ≤ U) :
    |weightedMertensTwoPointChowlaAverage j t| ≤ U := by
  unfold weightedMertensTwoPointChowlaAverage
  calc
    |∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
      normalizedSignedAbelShiftKernel j t h *
        mertensTwoPointPrefix h (t + 1)| ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        |normalizedSignedAbelShiftKernel j t h *
          mertensTwoPointPrefix h (t + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h *
          |mertensTwoPointPrefix h (t + 1)| := by
      apply Finset.sum_congr rfl
      intro h _hh
      rw [abs_mul,
        abs_of_nonneg (normalizedSignedAbelShiftKernel_nonneg j t h)]
    _ ≤ ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h * U := by
      apply Finset.sum_le_sum
      intro h hh
      exact mul_le_mul_of_nonneg_left
        (hprefix h hh)
        (normalizedSignedAbelShiftKernel_nonneg j t h)
    _ = normalizedSignedAbelShiftKernelMass j t * U := by
      unfold normalizedSignedAbelShiftKernelMass
      rw [Finset.sum_mul]
    _ ≤ 1 * U := by
      exact mul_le_mul_of_nonneg_right
        (normalizedSignedAbelShiftKernelMass_le_one htY) hU
    _ = U := by ring

/-- Complete weighted-Chowla packet over all inherited prefix depths. -/
def weightedMertensDyadicChowlaPacket
    (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
      weightedMertensTwoPointChowlaAverage j t

/-- The complete weighted-Chowla packet is exactly the signed Abel depth
packet. -/
theorem weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket
    (j : ℕ) :
    weightedMertensDyadicChowlaPacket j =
      weightedMertensDyadicSignedAbelDepthPacket j := by
  unfold weightedMertensDyadicChowlaPacket
    weightedMertensDyadicSignedAbelDepthPacket
  apply Finset.sum_congr rfl
  intro t _ht
  exact
    (weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage
      j t).symm

/-- All-scale source-facing condition on the exact kernel-weighted ordinary
two-point prefix packet. -/
def SubpolynomialDyadicWeightedMertensChowlaPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicChowlaPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact all-scale equivalence with the inherited signed depth-packet
criterion. -/
theorem subpolynomialDyadicWeightedMertensChowlaPacket_iff_signedDepth :
    SubpolynomialDyadicWeightedMertensChowlaPacket ↔
      SubpolynomialDyadicSignedAbelDepthPacket := by
  constructor
  · intro hWeighted δ hδ
    obtain ⟨C, hC, hscale⟩ := hWeighted δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket]
    exact hscale j
  · intro hDepth δ hδ
    obtain ⟨C, hC, hscale⟩ := hDepth δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket]
    exact hscale j

/-- Conditional RH endpoint from the exact weighted-Chowla packet supplier. -/
theorem riemannHypothesis_of_subpolynomialDyadicWeightedMertensChowlaPacket
    (hWeighted : SubpolynomialDyadicWeightedMertensChowlaPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
    (subpolynomialDyadicWeightedMertensChowlaPacket_iff_signedDepth.mp
      hWeighted)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedKernelAutocorrelation_eq_weightedChowlaAverage
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensTwoPointChowlaAverage_le_of_prefix_bound
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicWeightedMertensChowlaPacket
```
