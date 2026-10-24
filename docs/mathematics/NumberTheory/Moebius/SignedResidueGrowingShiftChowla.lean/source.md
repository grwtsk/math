# Complete source: GRWTSK.NumberTheory.Moebius.SignedResidueGrowingShiftChowla

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09313398bceac03b13fc67b9def98561da23ea41` · SHA-256 `66a77402ec196f5b9bc6de495191f832a610fe4a6c34a46e3517149017dc246b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #627. Direct stacked parent: draft PR #626 at
`6f91233ddc4397f87eeef1e94e248e31c67e9929`.
-/
import GRWTSK.NumberTheory.Moebius.ParitySignedResidueConvolution
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Growing-shift form of the signed residue convolution

The parent module preserves the exact signed quantity

`S_r(b,d,k)^2 - D_r(b,d,k)`

as the Fourier transform of an off-diagonal residue convolution.

This module exposes that convolution as a finite family of growing-shift
binary Möbius correlations.  For a strict same-parity pair `u < v`, set

`h = (v-u)/2`.

Then `h > 0`, `v = u + 2h`, and the residue coordinate used by the one-point
Fourier sums satisfies

`floor(u/2) + floor(v/2) = 2*floor(u/2) + h`.

The outer signed sum over shifts remains inside every subsequent norm.  No
estimate and no `sum_h |slice_h|` replacement is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive half-distance of a strict same-parity endpoint pair. -/
def parityPairShift (uv : ℕ × ℕ) : ℕ :=
  (uv.2 - uv.1) / 2

/-- Complete safe shift range at endpoint `b`.  Values outside the actual
support contribute zero. -/
def parityGrowingShiftRange (b : ℕ) : Finset ℕ :=
  Finset.Icc 1 b

/-- Endpoint bases of parity `r` that remain in range after the shift `2h`. -/
def parityShiftBaseSet
    (b r h : ℕ) : Finset ℕ :=
  (endpointParitySet b r).filter (fun u => u + 2 * h ≤ b)

/-- Strict endpoint pairs having exactly shift `h`. -/
def parityShiftPairSet
    (b r h : ℕ) : Finset (ℕ × ℕ) :=
  (endpointParityStrictPairSet b r).filter
    (fun uv => parityPairShift uv = h)

/-- Every strict same-parity pair has positive half-distance. -/
theorem parityPairShift_pos
    {b r : ℕ} (hr : r < 2)
    {uv : ℕ × ℕ}
    (huv : uv ∈ endpointParityStrictPairSet b r) :
    0 < parityPairShift uv := by
  rcases Finset.mem_filter.mp huv with ⟨huvProd, huvlt⟩
  rcases Finset.mem_product.mp huvProd with ⟨hu, hv⟩
  have huParity := (Finset.mem_filter.mp hu).2
  have hvParity := (Finset.mem_filter.mp hv).2
  unfold parityPairShift
  omega

/-- A strict same-parity pair is recovered exactly from its first endpoint and
half-distance. -/
theorem parityPair_second_eq_first_add_twiceShift
    {b r : ℕ} (hr : r < 2)
    {uv : ℕ × ℕ}
    (huv : uv ∈ endpointParityStrictPairSet b r) :
    uv.2 = uv.1 + 2 * parityPairShift uv := by
  rcases Finset.mem_filter.mp huv with ⟨huvProd, huvlt⟩
  rcases Finset.mem_product.mp huvProd with ⟨hu, hv⟩
  have huParity := (Finset.mem_filter.mp hu).2
  have hvParity := (Finset.mem_filter.mp hv).2
  unfold parityPairShift
  omega

/-- Every supported pair shift lies in the declared finite shift range. -/
theorem parityPairShift_mem_range
    {b r : ℕ} (hr : r < 2)
    {uv : ℕ × ℕ}
    (huv : uv ∈ endpointParityStrictPairSet b r) :
    parityPairShift uv ∈ parityGrowingShiftRange b := by
  have hpos := parityPairShift_pos hr huv
  have hpair := parityPair_second_eq_first_add_twiceShift hr huv
  rcases Finset.mem_filter.mp huv with ⟨huvProd, _huvlt⟩
  rcases Finset.mem_product.mp huvProd with ⟨hu, hv⟩
  have hvI := (Finset.mem_filter.mp hv).1
  unfold parityGrowingShiftRange
  apply Finset.mem_Icc.mpr
  constructor
  · exact hpos
  · omega

/-- The residue coordinate of a shifted base has the exact affine form
`2*floor(u/2)+h`.  No parity correction appears in this coordinate; the parity
phase belongs to the midpoint formulation, not to the one-point residue
coordinate. -/
theorem parityResidueCoordinate_add_shift_eq
    (d u h : ℕ) [NeZero d] :
    parityResidueCoordinate d u +
        parityResidueCoordinate d (u + 2 * h) =
      (((2 * (u / 2) + h : ℕ)) : ZMod (d * d)) := by
  have hhalf : (u + 2 * h) / 2 = u / 2 + h := by
    omega
  unfold parityResidueCoordinate
  rw [hhalf]
  push_cast
  ring

/-- A supported strict pair has the exact affine residue coordinate determined
by its first endpoint and half-distance. -/
theorem parityPairResidueCoordinate_eq_base_shift
    (d : ℕ) [NeZero d]
    {b r : ℕ} (hr : r < 2)
    {uv : ℕ × ℕ}
    (huv : uv ∈ endpointParityStrictPairSet b r) :
    parityResidueCoordinate d uv.1 +
        parityResidueCoordinate d uv.2 =
      (((2 * (uv.1 / 2) + parityPairShift uv : ℕ)) :
        ZMod (d * d)) := by
  rw [parityPair_second_eq_first_add_twiceShift hr huv]
  exact parityResidueCoordinate_add_shift_eq d uv.1 (parityPairShift uv)

/-- Bases and strict pairs at one positive shift are equivalent. -/
theorem mem_parityShiftPairSet_iff
    {b r h : ℕ} (hr : r < 2) (hh : 0 < h)
    (uv : ℕ × ℕ) :
    uv ∈ parityShiftPairSet b r h ↔
      ∃ u ∈ parityShiftBaseSet b r h,
        uv = (u, u + 2 * h) := by
  constructor
  · intro huv
    rcases Finset.mem_filter.mp huv with ⟨huvBase, hshift⟩
    refine ⟨uv.1, ?_, ?_⟩
    · unfold parityShiftBaseSet
      apply Finset.mem_filter.mpr
      constructor
      · exact (Finset.mem_product.mp
          (Finset.mem_filter.mp huvBase).1).1
      · have hpair :=
          parityPair_second_eq_first_add_twiceShift hr huvBase
        rcases Finset.mem_product.mp
          (Finset.mem_filter.mp huvBase).1 with ⟨_hu, hv⟩
        have hvI := (Finset.mem_filter.mp hv).1
        rw [hshift] at hpair
        omega
    · apply Prod.ext
      · rfl
      · have hpair :=
          parityPair_second_eq_first_add_twiceShift hr huvBase
        rw [hshift] at hpair
        exact hpair
  · rintro ⟨u, hu, rfl⟩
    unfold parityShiftPairSet
    apply Finset.mem_filter.mpr
    constructor
    · unfold endpointParityStrictPairSet
      apply Finset.mem_filter.mpr
      constructor
      · apply Finset.mem_product.mpr
        constructor
        · exact (Finset.mem_filter.mp hu).1
        · unfold endpointParitySet
          apply Finset.mem_filter.mpr
          have huParity :=
            (Finset.mem_filter.mp (Finset.mem_filter.mp hu).1).2
          have huI :=
            (Finset.mem_filter.mp (Finset.mem_filter.mp hu).1).1
          constructor
          · apply Finset.mem_Icc.mpr
            constructor
            · omega
            · exact (Finset.mem_filter.mp hu).2
          · omega
      · omega
    · unfold parityPairShift
      omega

/-- Pair-coordinate version of one fixed-shift residue slice. -/
def paritySignedShiftResiduePairSlice
    (b d r h : ℕ) [NeZero d]
    (s : ZMod (d * d)) : ℂ :=
  2 * ∑ uv ∈ parityShiftPairSet b r h,
    if parityResidueCoordinate d uv.1 +
          parityResidueCoordinate d uv.2 = s then
      (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
    else 0

/-- Exact congruence-restricted growing-shift binary Möbius correlation. -/
def paritySignedShiftResidueCorrelation
    (b d r h : ℕ) [NeZero d]
    (s : ZMod (d * d)) : ℂ :=
  2 * ∑ u ∈ parityShiftBaseSet b r h,
    if (((2 * (u / 2) + h : ℕ)) : ZMod (d * d)) = s then
      (moebiusReal u : ℂ) * (moebiusReal (u + 2 * h) : ℂ)
    else 0

/-- The pair and base-coordinate forms of one positive shift slice agree
exactly. -/
theorem paritySignedShiftResiduePairSlice_eq_correlation
    (b d r h : ℕ) [NeZero d]
    (hr : r < 2) (hh : 0 < h)
    (s : ZMod (d * d)) :
    paritySignedShiftResiduePairSlice b d r h s =
      paritySignedShiftResidueCorrelation b d r h s := by
  classical
  unfold paritySignedShiftResiduePairSlice
    paritySignedShiftResidueCorrelation
  apply congrArg (fun z : ℂ => 2 * z)
  apply Finset.sum_bij'
    (fun uv _huv => uv.1)
    (fun u _hu => (u, u + 2 * h))
  · intro uv huv
    exact (mem_parityShiftPairSet_iff hr hh uv).mp huv |>.choose_spec.1
  · intro u hu
    exact (mem_parityShiftPairSet_iff hr hh (u, u + 2 * h)).mpr
      ⟨u, hu, rfl⟩
  · intro uv huv
    rcases (mem_parityShiftPairSet_iff hr hh uv).mp huv with
      ⟨u, hu, huvEq⟩
    subst huvEq
    rfl
  · intro u hu
    rfl
  · intro uv huv
    have huvBase := (Finset.mem_filter.mp huv).1
    have hcoord :=
      parityPairResidueCoordinate_eq_base_shift d hr huvBase
    have hshift := (Finset.mem_filter.mp huv).2
    rw [hshift] at hcoord
    rw [hcoord]
    congr 1
    have hpair := parityPair_second_eq_first_add_twiceShift hr huvBase
    rw [hshift] at hpair
    rw [hpair]

/-- The complete signed residue convolution is the outer signed sum of its
positive growing-shift slices. -/
theorem paritySignedResidueConvolutionBucket_eq_sum_shiftSlices
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (s : ZMod (d * d)) :
    paritySignedResidueConvolutionBucket b d r s =
      ∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResiduePairSlice b d r h s := by
  classical
  unfold paritySignedResidueConvolutionBucket
    paritySignedShiftResiduePairSlice
  calc
    2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        (if parityResidueCoordinate d uv.1 +
              parityResidueCoordinate d uv.2 = s then
          (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
        else 0) =
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        ∑ h ∈ parityGrowingShiftRange b,
          (if parityPairShift uv = h ∧
                parityResidueCoordinate d uv.1 +
                  parityResidueCoordinate d uv.2 = s then
            (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
          else 0) := by
            apply congrArg (fun z : ℂ => 2 * z)
            apply Finset.sum_congr rfl
            intro uv huv
            have hmem := parityPairShift_mem_range hr huv
            by_cases hs :
                parityResidueCoordinate d uv.1 +
                    parityResidueCoordinate d uv.2 = s
            · simp [hs, hmem]
            · simp [hs]
    _ = ∑ h ∈ parityGrowingShiftRange b,
        2 * ∑ uv ∈ endpointParityStrictPairSet b r,
          (if parityPairShift uv = h ∧
                parityResidueCoordinate d uv.1 +
                  parityResidueCoordinate d uv.2 = s then
            (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
          else 0) := by
            simp_rw [Finset.mul_sum]
            rw [Finset.sum_comm]
    _ = ∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResiduePairSlice b d r h s := by
          apply Finset.sum_congr rfl
          intro h hhmem
          unfold parityShiftPairSet
          rw [Finset.sum_filter]
          congr 2
          funext uv
          by_cases hshift : parityPairShift uv = h
          · simp [hshift]
          · simp [hshift]

/-- The same decomposition in the explicit base/shift Chowla coordinates. -/
theorem paritySignedResidueConvolutionBucket_eq_sum_shiftCorrelations
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (s : ZMod (d * d)) :
    paritySignedResidueConvolutionBucket b d r s =
      ∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResidueCorrelation b d r h s := by
  rw [paritySignedResidueConvolutionBucket_eq_sum_shiftSlices b d r hr s]
  apply Finset.sum_congr rfl
  intro h hhmem
  have hh : 0 < h := (Finset.mem_Icc.mp hhmem).1
  exact paritySignedShiftResiduePairSlice_eq_correlation b d r h hr hh s

/-- Additive Fourier transform of one fixed growing-shift residue slice. -/
def paritySignedShiftResidueFourier
    (b d r h : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ s : ZMod (d * d),
    paritySignedShiftResidueCorrelation b d r h s *
      ZMod.stdAddChar (k * s)

/-- The complete signed residue Fourier transform is the signed sum of the
fixed-shift Fourier slices. -/
theorem paritySignedResidueConvolutionFourier_eq_sum_shiftFourier
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    paritySignedResidueConvolutionFourier b d r k =
      ∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResidueFourier b d r h k := by
  unfold paritySignedResidueConvolutionFourier
    paritySignedShiftResidueFourier
  simp_rw [paritySignedResidueConvolutionBucket_eq_sum_shiftCorrelations
    b d r hr]
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]

/-- Pointwise majorant in the exact growing-shift coordinates.  The signed sum
over `h` remains inside each norm. -/
def parityGrowingShiftResidueFrequencyMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  (1 / 2 : ℝ) *
    (‖∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResidueFourier b d 0 h k‖ +
      ‖∑ h ∈ parityGrowingShiftRange b,
        paritySignedShiftResidueFourier b d 1 h k‖)

/-- Exact equality with the signed residue-convolution pointwise surface. -/
theorem parityGrowingShiftResidueFrequencyMajorant_eq_signedConvolution
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityGrowingShiftResidueFrequencyMajorant b d k =
      paritySignedResidueConvolutionFrequencyMajorant b d k := by
  unfold parityGrowingShiftResidueFrequencyMajorant
    paritySignedResidueConvolutionFrequencyMajorant
  rw [← paritySignedResidueConvolutionFourier_eq_sum_shiftFourier
      b d 0 (by norm_num) k,
    ← paritySignedResidueConvolutionFourier_eq_sum_shiftFourier
      b d 1 (by norm_num) k]

/-- Normalized nonzero-frequency growing-shift majorant for one square modulus. -/
def parityGrowingShiftResidueNonzeroModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      parityGrowingShiftResidueFrequencyMajorant b d k

/-- Endpoint aggregate in the exact growing-shift coordinates. -/
def parityGrowingShiftResidueEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      parityGrowingShiftResidueNonzeroModulusMajorant b d
    else 0

/-- Exact equality of the growing-shift and signed residue-convolution endpoint
surfaces. -/
theorem parityGrowingShiftResidueEndpointMajorant_eq_signedConvolution
    (b : ℕ) :
    parityGrowingShiftResidueEndpointMajorant b =
      paritySignedResidueConvolutionEndpointMajorant b := by
  unfold parityGrowingShiftResidueEndpointMajorant
    paritySignedResidueConvolutionEndpointMajorant
    parityGrowingShiftResidueNonzeroModulusMajorant
    paritySignedResidueConvolutionNonzeroModulusMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  apply congrArg
  apply Finset.sum_congr rfl
  intro k _hk
  exact parityGrowingShiftResidueFrequencyMajorant_eq_signedConvolution b d k

/-- All-scale signed growing-shift residue/Fourier supplier. -/
def DyadicNaturalScaleGrowingShiftResidueFourierBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityGrowingShiftResidueEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The growing-shift supplier is source-identical to the signed residue
convolution supplier. -/
theorem dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_signedConvolution :
    DyadicNaturalScaleGrowingShiftResidueFourierBudget ↔
      DyadicNaturalScaleSignedResidueConvolutionBudget := by
  constructor
  · intro hShift δ hδ
    obtain ⟨C, hC, hscale⟩ := hShift δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← parityGrowingShiftResidueEndpointMajorant_eq_signedConvolution]
    exact hscale j b hb
  · intro hSigned δ hδ
    obtain ⟨C, hC, hscale⟩ := hSigned δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [parityGrowingShiftResidueEndpointMajorant_eq_signedConvolution]
    exact hscale j b hb

/-- Therefore the growing-shift supplier is exactly equivalent to the live
nonzero-frequency parity/Fourier target. -/
theorem dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_nonzeroParityFourier :
    DyadicNaturalScaleGrowingShiftResidueFourierBudget ↔
      DyadicNaturalScaleNonzeroParityFourierBudget :=
  dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_signedConvolution.trans
    dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier

/-- Combining the pointwise ordinary-Mertens zero-mode premise with the exact
growing-shift signed family reaches the natural-scale congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftResidue
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hShift : DyadicNaturalScaleGrowingShiftResidueFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution
    hPoint
    (dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_signedConvolution.mp
      hShift)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionBucket_eq_sum_shiftCorrelations
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionFourier_eq_sum_shiftFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_nonzeroParityFourier
```
