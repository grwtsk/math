/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #847. Direct stacked parent: draft PR #844 at exact head
`3ba9f8bf6a33eea73115389c22db1b75727cbb3d`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingFourierBridge

/-!
# Zero-mode and nonzero-frequency split of centered winding

The parent identifies the complete centered-winding residue dispersion with a
normalized full-frequency Fourier energy minus the zero-winding fiber energy.

This module separates the Fourier zero mode exactly.  If `F̂(k)` is the
centered residue transform, then

`(d^2)^(-1) * sum_k |2*F̂(k)|^2`

is the sum of its zero-mode energy and its nonzero-frequency energy.

The zero mode is the total signed centered binary Möbius-pair mass.  Hence the
nonzero-winding wrap correlation is exactly

`nonzero-frequency energy + zero-mode energy - zero-winding fiber energy`.

The same identity is recorded for the existing even- and odd-half-shift
signed-residue Fourier transforms, then aggregated over both endpoint parities
and all effective square moduli.

No estimate of any term is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Total signed binary Möbius-pair mass on one half-index shift family. -/
def parityHalfIndexCenteredPairMass
    (b r : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ h ∈ H,
    ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
      halfIndexBinaryMobiusCoefficient r m h

/-- The centered residue fibers partition the total signed pair mass. -/
theorem sum_parityHalfIndexCenteredResidueFiberZMod
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ s : ZMod (d * d),
      parityHalfIndexCenteredResidueFiberZMod b d r H s) =
      parityHalfIndexCenteredPairMass b r H := by
  classical
  unfold parityHalfIndexCenteredResidueFiberZMod
    parityHalfIndexCenteredPairMass
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m _hm
  simp

/-- The zero Fourier mode is exactly the total signed centered pair mass. -/
theorem parityHalfIndexCenteredResidueFourier_zero
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredResidueFourier b d r H
        (0 : ZMod (d * d)) =
      (parityHalfIndexCenteredPairMass b r H : ℂ) := by
  simpa [parityHalfIndexCenteredResidueFourier] using
    congrArg (fun x : ℝ => (x : ℂ))
      (sum_parityHalfIndexCenteredResidueFiberZMod b d r H)

/-- Normalized Fourier energy away from the zero frequency. -/
def parityHalfIndexCenteredNonzeroFrequencyEnergy
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      ‖(2 : ℂ) *
        parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2

/-- Normalized energy of the centered Fourier zero mode. -/
def parityHalfIndexCenteredZeroModeEnergy
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ‖(2 : ℂ) *
      parityHalfIndexCenteredResidueFourier b d r H
        (0 : ZMod (d * d))‖ ^ 2

theorem parityHalfIndexCenteredNonzeroFrequencyEnergy_nonneg
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    0 ≤ parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H := by
  unfold parityHalfIndexCenteredNonzeroFrequencyEnergy
  positivity

theorem parityHalfIndexCenteredZeroModeEnergy_nonneg
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    0 ≤ parityHalfIndexCenteredZeroModeEnergy b d r H := by
  unfold parityHalfIndexCenteredZeroModeEnergy
  positivity

/-- Explicit real-square form of the normalized zero-mode energy. -/
theorem parityHalfIndexCenteredZeroModeEnergy_eq_pairMassSquare
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredZeroModeEnergy b d r H =
      (((d * d : ℕ) : ℝ))⁻¹ * 4 *
        parityHalfIndexCenteredPairMass b r H ^ 2 := by
  unfold parityHalfIndexCenteredZeroModeEnergy
  rw [parityHalfIndexCenteredResidueFourier_zero]
  simp [norm_mul, Complex.norm_real, Real.norm_eq_abs, sq_abs]
  ring

/-- Exact split of the normalized complete Fourier energy into its zero and
nonzero modes. -/
theorem normalized_centeredFullFrequencyEnergy_eq_zeroMode_add_nonzero
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (((d * d : ℕ) : ℝ))⁻¹ *
        (∑ k : ZMod (d * d),
          ‖(2 : ℂ) *
            parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) =
      parityHalfIndexCenteredZeroModeEnergy b d r H +
        parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H := by
  classical
  have hsplit :
      (∑ k : ZMod (d * d),
        ‖(2 : ℂ) *
          parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) =
        ‖(2 : ℂ) *
          parityHalfIndexCenteredResidueFourier b d r H
            (0 : ZMod (d * d))‖ ^ 2 +
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          ‖(2 : ℂ) *
            parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2 := by
    rw [Finset.sum_eq_sum_sdiff_singleton_add
      (Finset.mem_univ (0 : ZMod (d * d)))]
    simp [nonzeroSquareModulusFrequencySet, add_comm]
  unfold parityHalfIndexCenteredZeroModeEnergy
    parityHalfIndexCenteredNonzeroFrequencyEnergy
  rw [hsplit]
  ring

/-- The correction left after comparing the zero Fourier mode with the exact
equal-center fiber energy. -/
def parityHalfIndexCenteredZeroModeCorrection
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  parityHalfIndexCenteredZeroModeEnergy b d r H -
    parityHalfIndexZeroWindingFiberEnergy b r H

/-- Centered winding written as nonzero-frequency energy plus its exact
zero-mode correction. -/
def parityCenteredWindingNonzeroFrequencySplit
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H +
    parityHalfIndexCenteredZeroModeCorrection b d r H

/-- The nonzero-frequency split is exactly the parent full-frequency
dispersion. -/
theorem parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredWindingNonzeroFrequencySplit b d r H =
      parityCenteredWindingFullFrequencyDispersion b d r H := by
  unfold parityCenteredWindingNonzeroFrequencySplit
    parityHalfIndexCenteredZeroModeCorrection
    parityCenteredWindingFullFrequencyDispersion
  rw [normalized_centeredFullFrequencyEnergy_eq_zeroMode_add_nonzero]
  ring

/-- Load-bearing identity: nonzero winding equals nonzero-frequency energy plus
the zero-mode correction. -/
theorem parityCenteredWindingNonzeroFrequencySplit_eq_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredWindingNonzeroFrequencySplit b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  rw [parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency]
  exact parityCenteredWindingFullFrequencyDispersion_eq_wrap b d r H

theorem parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_zeroModeCorrection
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexSignedQuarticWrap b d r H =
      parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H +
        parityHalfIndexCenteredZeroModeCorrection b d r H :=
  (parityCenteredWindingNonzeroFrequencySplit_eq_wrap b d r H).symm

/-- Existing even-half-shift normalized nonzero-frequency energy. -/
def parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy
    (b d r : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      ‖parityEvenHalfShiftSignedResidueFourier b d r k‖ ^ 2

/-- Existing odd-half-shift normalized nonzero-frequency energy. -/
def parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy
    (b d r : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      ‖parityOddHalfShiftSignedResidueFourier b d r k‖ ^ 2

/-- Existing even-family zero-mode correction. -/
def parityEvenCenteredWindingZeroModeCorrection
    (b d r : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
      ‖parityEvenHalfShiftSignedResidueFourier b d r
        (0 : ZMod (d * d))‖ ^ 2 -
    parityHalfIndexZeroWindingFiberEnergy
      b r (positiveEndpointEvenShiftSet b)

/-- Existing odd-family zero-mode correction. -/
def parityOddCenteredWindingZeroModeCorrection
    (b d r : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
      ‖parityOddHalfShiftSignedResidueFourier b d r
        (0 : ZMod (d * d))‖ ^ 2 -
    parityHalfIndexZeroWindingFiberEnergy
      b r (positiveEndpointOddShiftSet b)

/-- The even transform's zero mode is twice the total centered pair mass. -/
theorem parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityEvenHalfShiftSignedResidueFourier b d r
        (0 : ZMod (d * d)) =
      (2 : ℂ) *
        (parityHalfIndexCenteredPairMass
          b r (positiveEndpointEvenShiftSet b) : ℂ) := by
  rw [parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered
    b d r hr]
  rw [parityHalfIndexCenteredResidueFourier_zero]

/-- The odd transform's zero mode is twice the total centered pair mass. -/
theorem parityOddHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityOddHalfShiftSignedResidueFourier b d r
        (0 : ZMod (d * d)) =
      (2 : ℂ) *
        (parityHalfIndexCenteredPairMass
          b r (positiveEndpointOddShiftSet b) : ℂ) := by
  rw [parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered
    b d r hr]
  rw [parityHalfIndexCenteredResidueFourier_zero]

/-- The existing even nonzero-frequency energy is exactly the centered one. -/
theorem parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy b d r =
      parityHalfIndexCenteredNonzeroFrequencyEnergy
        b d r (positiveEndpointEvenShiftSet b) := by
  unfold parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy
    parityHalfIndexCenteredNonzeroFrequencyEnergy
  apply congrArg
    (fun x : ℝ => (((d * d : ℕ) : ℝ))⁻¹ * x)
  apply Finset.sum_congr rfl
  intro k _hk
  rw [parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered
    b d r hr k]

/-- The existing odd nonzero-frequency energy is exactly the centered one. -/
theorem parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy b d r =
      parityHalfIndexCenteredNonzeroFrequencyEnergy
        b d r (positiveEndpointOddShiftSet b) := by
  unfold parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy
    parityHalfIndexCenteredNonzeroFrequencyEnergy
  apply congrArg
    (fun x : ℝ => (((d * d : ℕ) : ℝ))⁻¹ * x)
  apply Finset.sum_congr rfl
  intro k _hk
  rw [parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered
    b d r hr k]

/-- The existing even zero-mode correction is exactly the centered one. -/
theorem parityEvenCenteredWindingZeroModeCorrection_eq_centered
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityEvenCenteredWindingZeroModeCorrection b d r =
      parityHalfIndexCenteredZeroModeCorrection
        b d r (positiveEndpointEvenShiftSet b) := by
  unfold parityEvenCenteredWindingZeroModeCorrection
    parityHalfIndexCenteredZeroModeCorrection
    parityHalfIndexCenteredZeroModeEnergy
  rw [parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered
    b d r hr (0 : ZMod (d * d))]

/-- The existing odd zero-mode correction is exactly the centered one. -/
theorem parityOddCenteredWindingZeroModeCorrection_eq_centered
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityOddCenteredWindingZeroModeCorrection b d r =
      parityHalfIndexCenteredZeroModeCorrection
        b d r (positiveEndpointOddShiftSet b) := by
  unfold parityOddCenteredWindingZeroModeCorrection
    parityHalfIndexCenteredZeroModeCorrection
    parityHalfIndexCenteredZeroModeEnergy
  rw [parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered
    b d r hr (0 : ZMod (d * d))]

/-- Even-family centered winding in explicit zero/nonzero-frequency form. -/
def parityEvenCenteredWindingNonzeroFrequencySplit
    (b d r : ℕ) [NeZero d] : ℝ :=
  parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy b d r +
    parityEvenCenteredWindingZeroModeCorrection b d r

/-- Odd-family centered winding in explicit zero/nonzero-frequency form. -/
def parityOddCenteredWindingNonzeroFrequencySplit
    (b d r : ℕ) [NeZero d] : ℝ :=
  parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy b d r +
    parityOddCenteredWindingZeroModeCorrection b d r

theorem parityEvenCenteredWindingNonzeroFrequencySplit_eq_wrap
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityEvenCenteredWindingNonzeroFrequencySplit b d r =
      parityHalfIndexSignedQuarticWrap
        b d r (positiveEndpointEvenShiftSet b) := by
  unfold parityEvenCenteredWindingNonzeroFrequencySplit
  rw [parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered
      b d r hr,
    parityEvenCenteredWindingZeroModeCorrection_eq_centered b d r hr]
  exact
    parityCenteredWindingNonzeroFrequencySplit_eq_wrap
      b d r (positiveEndpointEvenShiftSet b)

theorem parityOddCenteredWindingNonzeroFrequencySplit_eq_wrap
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityOddCenteredWindingNonzeroFrequencySplit b d r =
      parityHalfIndexSignedQuarticWrap
        b d r (positiveEndpointOddShiftSet b) := by
  unfold parityOddCenteredWindingNonzeroFrequencySplit
  rw [parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered
      b d r hr,
    parityOddCenteredWindingZeroModeCorrection_eq_centered b d r hr]
  exact
    parityCenteredWindingNonzeroFrequencySplit_eq_wrap
      b d r (positiveEndpointOddShiftSet b)

/-- Absolute four-family zero/nonzero-frequency split at one square modulus. -/
def regularCenteredWindingNonzeroFrequencySplitAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  |parityEvenCenteredWindingNonzeroFrequencySplit b d 0| +
    |parityOddCenteredWindingNonzeroFrequencySplit b d 0| +
    |parityEvenCenteredWindingNonzeroFrequencySplit b d 1| +
    |parityOddCenteredWindingNonzeroFrequencySplit b d 1|

/-- The four-family split is exactly the residue-dispersion modulus
contribution. -/
theorem regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_residue
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingNonzeroFrequencySplitAtModulus b d =
      regularCenteredWindingResidueDispersionAtModulus b d := by
  unfold regularCenteredWindingNonzeroFrequencySplitAtModulus
    regularCenteredWindingResidueDispersionAtModulus
  rw [parityEvenCenteredWindingNonzeroFrequencySplit_eq_wrap
      b d 0 (by norm_num),
    parityOddCenteredWindingNonzeroFrequencySplit_eq_wrap
      b d 0 (by norm_num),
    parityEvenCenteredWindingNonzeroFrequencySplit_eq_wrap
      b d 1 (by norm_num),
    parityOddCenteredWindingNonzeroFrequencySplit_eq_wrap
      b d 1 (by norm_num),
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap]

/-- Exact comparison with the parent full-frequency modulus contribution. -/
theorem regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_fullFrequency
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingNonzeroFrequencySplitAtModulus b d =
      regularCenteredWindingFullFrequencyDispersionAtModulus b d := by
  rw [regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_residue]
  exact
    (regularCenteredWindingFullFrequencyDispersionAtModulus_eq_residue
      b d).symm

/-- Effective-modulus endpoint aggregate of the exact zero/nonzero-frequency
splits. -/
def regularCenteredWindingNonzeroFrequencySplitEndpoint
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredWindingNonzeroFrequencySplitAtModulus b d
    else 0

/-- The endpoint zero/nonzero-frequency split is exactly the full-frequency
endpoint dispersion. -/
theorem regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency
    (b : ℕ) :
    regularCenteredWindingNonzeroFrequencySplitEndpoint b =
      regularCenteredWindingFullFrequencyDispersionEndpoint b := by
  unfold regularCenteredWindingNonzeroFrequencySplitEndpoint
    regularCenteredWindingFullFrequencyDispersionEndpoint
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  exact
    regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_fullFrequency
      b d

/-- Equivalent endpoint identification with the parent residue dispersion. -/
theorem regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_residue
    (b : ℕ) :
    regularCenteredWindingNonzeroFrequencySplitEndpoint b =
      regularCenteredWindingResidueDispersionEndpoint b := by
  rw [regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency]
  exact regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue b

/-- Parameterized analytic boundary in zero/nonzero-frequency split
coordinates. -/
def RegularCenteredWindingNonzeroFrequencySplitEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ,
    regularCenteredWindingNonzeroFrequencySplitEndpoint b ≤ E b

theorem regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_fullFrequency
    (E : ℕ → ℝ) :
    RegularCenteredWindingNonzeroFrequencySplitEnvelope E ↔
      RegularCenteredWindingFullFrequencyDispersionEnvelope E := by
  constructor
  · intro h b
    rw [←
      regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency]
    exact h b
  · intro h b
    rw [regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency]
    exact h b

theorem regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_residue
    (E : ℕ → ℝ) :
    RegularCenteredWindingNonzeroFrequencySplitEnvelope E ↔
      RegularCenteredWindingResidueDispersionEnvelope E := by
  rw [regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_fullFrequency]
  exact regularCenteredWindingFullFrequencyDispersionEnvelope_iff_residue E

/-- Conservative source profile after the full-frequency centered winding
identity has been split into zero and nonzero modes. -/
structure RegularCenteredWindingNonzeroFrequencySplitSourceData where
  theoremStatement : Prop
  exactCenteredResidueFibersMatched : Prop
  totalSignedPairMassMatched : Prop
  zeroFourierModeMatched : Prop
  nonzeroFrequencySetMatched : Prop
  normalizedZeroModeEnergyMatched : Prop
  normalizedNonzeroFrequencyEnergyMatched : Prop
  zeroWindingFiberEnergyMatched : Prop
  exactZeroNonzeroFrequencySplitMatched : Prop
  nonzeroWindingWrapMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  effectiveModulusAggregationMatched : Prop
  fullFrequencyEnvelopeEquivalent : Prop
  residueEnvelopeEquivalent : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWindingNonzeroFrequencySplitSource
    (d : RegularCenteredWindingNonzeroFrequencySplitSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactCenteredResidueFibersMatched ∧
    d.totalSignedPairMassMatched ∧
    d.zeroFourierModeMatched ∧
    d.nonzeroFrequencySetMatched ∧
    d.normalizedZeroModeEnergyMatched ∧
    d.normalizedNonzeroFrequencyEnergyMatched ∧
    d.zeroWindingFiberEnergyMatched ∧
    d.exactZeroNonzeroFrequencySplitMatched ∧
    d.nonzeroWindingWrapMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.effectiveModulusAggregationMatched ∧
    d.fullFrequencyEnvelopeEquivalent ∧
    d.residueEnvelopeEquivalent ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_parityHalfIndexCenteredResidueFiberZMod
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexCenteredResidueFourier_zero
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalized_centeredFullFrequencyEnergy_eq_zeroMode_add_nonzero
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredWindingNonzeroFrequencySplit_eq_wrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency
