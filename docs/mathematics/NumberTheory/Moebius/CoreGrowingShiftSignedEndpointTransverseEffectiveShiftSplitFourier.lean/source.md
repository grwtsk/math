# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28caa935325254ab091fb86c332abd052be70fbe` · SHA-256 `6e8c7971e2643171d92adc24c28fe57998fdab6c48be86ee41f6f0d43ab4b3c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #952. Parent: draft PR #945 at
`27c3194f57e9b169c8182de591ca5d42a6155a73`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Below the logarithmic threshold, the effective shift is the threshold. -/
theorem coreGrowingShiftEndpointAggregateEffectiveShift_eq_threshold_of_le
    {j h : ℕ}
    (hh : h ≤ logarithmicShiftThreshold j) :
    coreGrowingShiftEndpointAggregateEffectiveShift j h =
      logarithmicShiftThreshold j := by
  unfold coreGrowingShiftEndpointAggregateEffectiveShift
  exact max_eq_right hh

/-- Above the logarithmic threshold, the effective shift is the literal
ordinary endpoint difference. -/
theorem coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt
    {j h : ℕ}
    (hh : logarithmicShiftThreshold j < h) :
    coreGrowingShiftEndpointAggregateEffectiveShift j h = h := by
  unfold coreGrowingShiftEndpointAggregateEffectiveShift
  exact max_eq_left hh.le

/-- Positive ordinary differences whose effective shift remains capped at the
logarithmic threshold. -/
def coreGrowingShiftEndpointTransverseCappedDifferenceSet
    (j : ℕ) :
    Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
  Finset.univ.filter fun h =>
    1 ≤ h.val ∧ h.val ≤ logarithmicShiftThreshold j

/-- Ordinary differences for which the effective shift is the literal
endpoint separation. -/
def coreGrowingShiftEndpointTransverseRightEndpointDifferenceSet
    (j : ℕ) :
    Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
  Finset.univ.filter fun h =>
    logarithmicShiftThreshold j < h.val

theorem mem_coreGrowingShiftEndpointTransverseCappedDifferenceSet_iff
    {j : ℕ}
    {h : CoreGrowingShiftEndpointDoubledFourierIndex j} :
    h ∈ coreGrowingShiftEndpointTransverseCappedDifferenceSet j ↔
      1 ≤ h.val ∧ h.val ≤ logarithmicShiftThreshold j := by
  simp [coreGrowingShiftEndpointTransverseCappedDifferenceSet]

theorem mem_coreGrowingShiftEndpointTransverseRightEndpointDifferenceSet_iff
    {j : ℕ}
    {h : CoreGrowingShiftEndpointDoubledFourierIndex j} :
    h ∈ coreGrowingShiftEndpointTransverseRightEndpointDifferenceSet j ↔
      logarithmicShiftThreshold j < h.val := by
  simp [coreGrowingShiftEndpointTransverseRightEndpointDifferenceSet]

/-- The capped ordinary differences form a set of cardinality at most the
logarithmic threshold.  No value estimate follows from this count. -/
theorem coreGrowingShiftEndpointTransverseCappedDifferenceSet_card_le_threshold
    (j : ℕ) :
    (coreGrowingShiftEndpointTransverseCappedDifferenceSet j).card ≤
      logarithmicShiftThreshold j := by
  classical
  let S : Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
    (Finset.Icc 1 (logarithmicShiftThreshold j)).image fun h =>
      (h : CoreGrowingShiftEndpointDoubledFourierIndex j)
  have hsubset :
      coreGrowingShiftEndpointTransverseCappedDifferenceSet j ⊆ S := by
    intro h hh
    have hmem :=
      mem_coreGrowingShiftEndpointTransverseCappedDifferenceSet_iff.mp hh
    refine Finset.mem_image.mpr ⟨h.val, ?_, ?_⟩
    · simp [hmem]
    · exact ZMod.natCast_zmod_val h
  calc
    (coreGrowingShiftEndpointTransverseCappedDifferenceSet j).card ≤ S.card :=
      Finset.card_le_card hsubset
    _ ≤ (Finset.Icc 1 (logarithmicShiftThreshold j)).card := by
      unfold S
      exact Finset.card_image_le
    _ = logarithmicShiftThreshold j := by
      simp [Finset.card_Icc]

/-- Multiplier-free affine-tail harmonic term for one capped ordinary
endpoint difference.  Its denominator is `n + H_j`. -/
def coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let H := logarithmicShiftThreshold j
  if (1 ≤ h.val ∧ h.val ≤ H) ∧ A < B then
    ∑ n ∈ Finset.Ico (A + 1) B,
      coreGrowingShiftEndpointTransverseNatCharacter j u n *
        (((n + H : ℕ) : ℂ))⁻¹
  else 0

/-- Multiplier-free affine-tail harmonic term for one genuine right-endpoint
difference.  Its denominator is the literal ordinary right endpoint `n+h`. -/
def coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let H := logarithmicShiftThreshold j
  if H < h.val ∧ A < B then
    ∑ n ∈ Finset.Ico (A + 1) B,
      coreGrowingShiftEndpointTransverseNatCharacter j u n *
        (((n + h.val : ℕ) : ℂ))⁻¹
  else 0

/-- The capped harmonic term vanishes away from the capped-difference set. -/
theorem coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier_eq_zero_of_not_mem
    {j : ℕ}
    {h u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hh : h ∉ coreGrowingShiftEndpointTransverseCappedDifferenceSet j) :
    coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
        j h u = 0 := by
  have hcap :
      ¬ (1 ≤ h.val ∧ h.val ≤ logarithmicShiftThreshold j) := by
    simpa [coreGrowingShiftEndpointTransverseCappedDifferenceSet] using hh
  unfold coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
  simp [hcap]

/-- The right-endpoint harmonic term vanishes away from the genuine
right-endpoint difference set. -/
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier_eq_zero_of_not_mem
    {j : ℕ}
    {h u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hh : h ∉ coreGrowingShiftEndpointTransverseRightEndpointDifferenceSet j) :
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
        j h u = 0 := by
  have hright :
      ¬ logarithmicShiftThreshold j < h.val := by
    simpa [coreGrowingShiftEndpointTransverseRightEndpointDifferenceSet] using hh
  unfold coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
  simp [hright]

/-- Exact effective-shift split of one multiplier-free affine-tail harmonic
term.  Empty tail intervals remain exact zeros. -/
theorem coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier_eq_capped_add_rightEndpoint
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier j h u =
      coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
          j h u +
        coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
          j h u := by
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let H := logarithmicShiftThreshold j
  by_cases hh1 : 1 ≤ h.val
  · by_cases hAB : A < B
    · by_cases hhH : h.val ≤ H
      · have hq :
          coreGrowingShiftEndpointAggregateEffectiveShift j h.val = H := by
          exact
            coreGrowingShiftEndpointAggregateEffectiveShift_eq_threshold_of_le
              hhH
        simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
          A, B, H, hh1, hAB, hhH, hq]
      · have hHh : H < h.val := Nat.lt_of_not_ge hhH
        have hq :
            coreGrowingShiftEndpointAggregateEffectiveShift j h.val = h.val := by
          exact
            coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt
              hHh
        simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
          A, B, H, hh1, hAB, hhH, hHh, hq]
    · simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
        coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
        coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
        A, B, H, hh1, hAB]
  · have hh0 : h.val = 0 := by omega
    have hHpos : 0 < H := by
      unfold H logarithmicShiftThreshold
      omega
    simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
      coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
      coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
      A, B, H, hh1, hh0, hHpos]

/-- Longitudinal aggregation of the finitely supported capped-shift harmonic
correction. -/
def coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ h : CoreGrowingShiftEndpointDoubledFourierIndex j,
    ZMod.stdAddChar (-(h * s)) *
      coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
        j h u

/-- Longitudinal aggregation of the genuine right-endpoint harmonic branch. -/
def coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ h : CoreGrowingShiftEndpointDoubledFourierIndex j,
    ZMod.stdAddChar (-(h * s)) *
      coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
        j h u

/-- The complete multiplier-free harmonic DFT is exactly the capped correction
plus the literal-right-endpoint branch. -/
theorem coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2_eq_capped_add_rightEndpoint
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2 j u s =
      coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2 j u s +
        coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
          j u s := by
  unfold coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2
    coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
  simp_rw [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier_eq_capped_add_rightEndpoint,
    mul_add, Finset.sum_add_distrib]

/-- The capped harmonic DFT is supported on at most `H_j` ordinary
differences. -/
theorem coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2_eq_sum_capped
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2 j u s =
      ∑ h ∈ coreGrowingShiftEndpointTransverseCappedDifferenceSet j,
        ZMod.stdAddChar (-(h * s)) *
          coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
            j h u := by
  classical
  unfold coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2
  symm
  unfold coreGrowingShiftEndpointTransverseCappedDifferenceSet
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro h _hh
  by_cases hcap :
      1 ≤ h.val ∧ h.val ≤ logarithmicShiftThreshold j
  · simp [hcap]
  · have hz :
        coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
            j h u = 0 := by
      apply
        coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier_eq_zero_of_not_mem
      simpa [coreGrowingShiftEndpointTransverseCappedDifferenceSet] using hcap
    simp [hcap, hz]

/-- Exact nonzero clipping resolvent after splitting the multiplier-free
harmonic term into capped and literal-right-endpoint branches. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  (coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹ *
      coreGrowingShiftEndpointTransverseSummationByPartsSingularBoundaryDFT2
        j u s -
    coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2 j u s -
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2 j u s

/-- Splitting the effective shift changes no summation-by-parts resolvent. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2_eq_parent
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2
        j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2
        j u s := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2
  rw [coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2_eq_capped_add_rightEndpoint]
  ring

/-- Low clipping packet rebuilt with the exact effective-shift split. -/
def coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitLowClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2
              j u s

/-- Regular clipping packet rebuilt with the exact effective-shift split. -/
def coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitRegularClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2
              j u s

/-- The low effective-shift split packet is exactly the parent low
summation-by-parts packet. -/
theorem coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitLowClippingFourierPacketComplex_eq_parent
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitLowClippingFourierPacketComplex
        j L =
      coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex
        j L := by
  unfold coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitLowClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro u _hu
  apply Fintype.sum_congr
  intro s
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2_eq_parent]

/-- The regular effective-shift split packet is exactly the parent regular
summation-by-parts packet. -/
theorem coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitRegularClippingFourierPacketComplex_eq_parent
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitRegularClippingFourierPacketComplex
        j L =
      coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex
        j L := by
  unfold coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitRegularClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro u _hu
  apply Fintype.sum_congr
  intro s
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2_eq_parent]

/-- Complete endpoint packet with the direct zero mode retained and the
multiplier-free harmonic tail split into capped and right-endpoint branches. -/
def coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex j -
    coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitLowClippingFourierPacketComplex
      j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j) -
    coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitRegularClippingFourierPacketComplex
      j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)

/-- Splitting the effective shift changes no complete complex endpoint packet. -/
theorem coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex
        j =
      coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex
        j := by
  unfold coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex
  rw [coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitLowClippingFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitRegularClippingFourierPacketComplex_eq_parent]

/-- The complete shift-split packet remains real only after the direct-zero,
low, and regular signed combination. -/
theorem coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex
      j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex_im]

/-- Real endpoint packet after the exact effective-shift split. -/
def coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex
    j).re

/-- Exact equality with the parent real summation-by-parts packet. -/
theorem coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket j =
      coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
    coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
  rw [coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex_eq_parent]

/-- Exact RH-facing return through the effective-shift split packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseEffectiveShiftSplitFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
        j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseSummationByPartsFourier,
    ← coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket_eq_parent]

/-- Source-facing all-scale condition on the unchanged complete signed packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
          j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent transverse summation-by-parts source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket_iff_parent :
    SubpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket := by
  constructor
  · intro hSplit δ hδ
    obtain ⟨C, hC, hbound⟩ := hSplit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket_eq_parent]
    exact hbound j
  · intro hParent δ hδ
    obtain ⟨C, hC, hbound⟩ := hParent δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket_eq_parent]
    exact hbound j

/-- Conditional RH endpoint stated on the exact effective-shift split packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
    (hSplit :
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket_iff_parent.mp
      hSplit)

/-- Source profile after the multiplier-free harmonic term has been separated
into capped and literal-right-endpoint branches. -/
structure SignedEndpointTransverseEffectiveShiftSplitFourierSource where
  sourceStatement : Prop
  exactEffectiveShiftDichotomy : Prop
  cappedDifferenceSupport : Prop
  cappedDifferenceCardinality : Prop
  literalRightEndpointNormalization : Prop
  harmonicSplitPreservation : Prop
  singularAnchorEndpointBoundaryPreservation : Prop
  scalarResolventControl : Prop
  directZeroModePreservation : Prop
  cappedShiftArithmeticControl : Prop
  rightEndpointArithmeticControl : Prop
  lowModeArithmeticControl : Prop
  regularModeArithmeticControl : Prop
  lowAnchorPreservation : Prop
  jointSignedBulkClipCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate of the complete signed
packet.  Finite capped support and literal denominators are not estimates. -/
structure ToCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
    (d : SignedEndpointTransverseEffectiveShiftSplitFourierSource) : Type where
  toEffectiveShiftSplit :
    d.sourceStatement →
      d.exactEffectiveShiftDichotomy →
      d.cappedDifferenceSupport →
      d.cappedDifferenceCardinality →
      d.literalRightEndpointNormalization →
      d.harmonicSplitPreservation →
      d.singularAnchorEndpointBoundaryPreservation →
      d.scalarResolventControl →
      d.directZeroModePreservation →
      d.cappedShiftArithmeticControl →
      d.rightEndpointArithmeticControl →
      d.lowModeArithmeticControl →
      d.regularModeArithmeticControl →
      d.lowAnchorPreservation →
      d.jointSignedBulkClipCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket

/-- Generic conditional endpoint through an explicitly constructed effective-
shift split adapter. -/
theorem riemannHypothesis_of_signedEndpointTransverseEffectiveShiftSplitFourierAdapter
    (d : SignedEndpointTransverseEffectiveShiftSplitFourierSource)
    (bridge :
      ToCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket d)
    (hsource : d.sourceStatement)
    (hdichotomy : d.exactEffectiveShiftDichotomy)
    (hsupport : d.cappedDifferenceSupport)
    (hcard : d.cappedDifferenceCardinality)
    (hright : d.literalRightEndpointNormalization)
    (hsplit : d.harmonicSplitPreservation)
    (hsingular : d.singularAnchorEndpointBoundaryPreservation)
    (hresolvent : d.scalarResolventControl)
    (hzero : d.directZeroModePreservation)
    (hcapped : d.cappedShiftArithmeticControl)
    (hrightArithmetic : d.rightEndpointArithmeticControl)
    (hlow : d.lowModeArithmeticControl)
    (hregular : d.regularModeArithmeticControl)
    (hanchor : d.lowAnchorPreservation)
    (hjoint : d.jointSignedBulkClipCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
    (bridge.toEffectiveShiftSplit hsource hdichotomy hsupport hcard hright
      hsplit hsingular hresolvent hzero hcapped hrightArithmetic hlow hregular
      hanchor hjoint huniform hsmall)

/-- Hostile control: logarithmically many capped differences can still carry
arbitrarily large arithmetic values. -/
theorem transverseEffectiveShiftSplit_cardinalityAlone_hostileWitness
    (H : ℕ)
    (M : ℂ) :
    (∑ _h ∈ Finset.Icc 1 H, M) = (H : ℂ) * M := by
  simp [Finset.card_Icc, nsmul_eq_mul]

/-- Hostile control: the capped and right-endpoint branches may cancel before
any separate norm is taken. -/
theorem transverseEffectiveShiftSplit_signedCancellation_hostileWitness :
    ((1 : ℂ) + (-1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(-1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointAggregateEffectiveShift_eq_threshold_of_le
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseCappedDifferenceSet_card_le_threshold
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier_eq_capped_add_rightEndpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2_eq_capped_add_rightEndpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
```
