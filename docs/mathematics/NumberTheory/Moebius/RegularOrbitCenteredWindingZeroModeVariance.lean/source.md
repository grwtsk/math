# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingZeroModeVariance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86aee0d7b10b468badc8e0f46d5d369e33c3f66d` · SHA-256 `7bb4c6d6d58902aa05955759ba20e0452c603ab2a1af3814b53e7367d41b4cae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #853. Direct stacked parent: draft PR #849 at exact head
`ff0afd5851746a99e2d442e0a28f43a6e79c7a01`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingNonzeroFrequencySplit

/-!
# Centered-winding zero mode as mean inflation minus integer-center variance

The zero-mode correction from the parent is

  4 * P^2 / d^2 - 4 * sum_c C(c)^2,

where P is the total signed centered pair mass and C(c) is the signed
equal-center fiber amplitude on c in range (b+1).Writing N=b+1 and centering C(c) at P/N gives the exact finite identity

  sum_c C(c)^2 = V + P^2/N,

where V=sum_c (C(c)-P/N)^2 >= 0. Hence

  zero-mode correction
    = 4 * P^2 * (1/d^2 - 1/N) - 4*V.

No estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Integer-center signed amplitude, reusing the exact zero-winding shift fiber. -/
abbrev parityCenteredIntegerCoordinateAmplitude
    (b r : ℕ) (H : Finset ℕ) (c : ℕ) : ℝ :=
  parityZeroWindingShiftFiberCorrelation b r c H

/-- The integer-center amplitudes sum to the total signed centered pair mass. -/
theorem sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass
    (b r : ℕ) (H : Finset ℕ) :
    (∑ c ∈ Finset.range (b + 1),
      parityCenteredIntegerCoordinateAmplitude b r H c) =
      parityHalfIndexCenteredPairMass b r H := by
  classical
  unfold parityCenteredIntegerCoordinateAmplitude
  simp_rw [← parityHalfIndexZeroWindingFiber_eq_shiftCorrelation]
  unfold parityHalfIndexZeroWindingFiber parityHalfIndexCenteredPairMass
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m hm
  simp [halfIndexZeroWindingCoordinate_lt_endpoint hm]

/-- Mean integer-center amplitude over the N=b+1 possible centers. -/
def parityCenteredIntegerCoordinateMean
    (b r : ℕ) (H : Finset ℕ) : ℝ :=
  parityHalfIndexCenteredPairMass b r H / ((b + 1 : ℕ) : ℝ)

/-- Centered second moment of the exact integer-center amplitudes. -/
def parityCenteredIntegerCoordinateVariance
    (b r : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ c ∈ Finset.range (b + 1),
    (parityCenteredIntegerCoordinateAmplitude b r H c -
      parityCenteredIntegerCoordinateMean b r H) ^ 2

theorem parityCenteredIntegerCoordinateVariance_nonneg
    (b r : ℕ) (H : Finset ℕ) :
    0 ≤ parityCenteredIntegerCoordinateVariance b r H := by
  unfold parityCenteredIntegerCoordinateVariance
  positivity

/-- Exact finite variance decomposition. -/
theorem sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare
    (b r : ℕ) (H : Finset ℕ) :
    (∑ c ∈ Finset.range (b + 1),
      parityCenteredIntegerCoordinateAmplitude b r H c ^ 2) =
      parityCenteredIntegerCoordinateVariance b r H +
        parityHalfIndexCenteredPairMass b r H ^ 2 /
          ((b + 1 : ℕ) : ℝ) := by
  classical
  have hN : (((b + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  unfold parityCenteredIntegerCoordinateVariance parityCenteredIntegerCoordinateMean
  simp only [sub_sq, Finset.sum_add_distrib, Finset.sum_sub_distrib,
    ← Finset.mul_sum, ← Finset.sum_mul, Finset.sum_const, nsmul_eq_mul,
    Finset.card_range]
  rw [sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass]
  field_simp [hN]
  ring

/-- The existing zero-winding fiber energy is four times the integer-center
second moment. -/
theorem parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_integerCoordinateSecondMoment
    (b r : ℕ) (H : Finset ℕ) :
    parityHalfIndexZeroWindingFiberEnergy b r H =
      4 * ∑ c ∈ Finset.range (b + 1),
        parityCenteredIntegerCoordinateAmplitude b r H c ^ 2 := by
  rw [parityHalfIndexZeroWindingFiberEnergy_eq_shiftCorrelation]

/-- Zero-mode correction in reciprocal-difference minus variance form. -/
theorem parityHalfIndexCenteredZeroModeCorrection_eq_reciprocalDifference_sub_variance
    (b d r : ℕ) [NeZero d] (H : Finset ℕ) :
    parityHalfIndexCenteredZeroModeCorrection b d r H =
      4 * parityHalfIndexCenteredPairMass b r H ^ 2 *
          ((((d * d : ℕ) : ℝ))⁻¹ -
            (((b + 1 : ℕ) : ℝ))⁻¹) -
        4 * parityCenteredIntegerCoordinateVariance b r H := by
  unfold parityHalfIndexCenteredZeroModeCorrection
  rw [parityHalfIndexCenteredZeroModeEnergy_eq_pairMassSquare]
  rw [parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_integerCoordinateSecondMoment]
  rw [sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare]
  have hq : (((d * d : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast (Nat.mul_ne_zero (NeZero.ne d) (NeZero.ne d))
  have hN : (((b + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  field_simp [hq, hN]
  ring

/-- Equivalent mean-inflation form. -/
theorem parityHalfIndexCenteredZeroModeCorrection_eq_meanInflation_sub_variance
    (b d r : ℕ) [NeZero d] (H : Finset ℕ) :
    parityHalfIndexCenteredZeroModeCorrection b d r H =
      4 *
        (((((b + 1 : ℕ) : ℝ) / (((d * d : ℕ) : ℝ))) - 1) *
          (parityHalfIndexCenteredPairMass b r H ^ 2 /
            (((b + 1 : ℕ) : ℝ))) -
          parityCenteredIntegerCoordinateVariance b r H) := by
  rw [parityHalfIndexCenteredZeroModeCorrection_eq_reciprocalDifference_sub_variance]
  have hq : (((d * d : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast (Nat.mul_ne_zero (NeZero.ne d) (NeZero.ne d))
  have hN : (((b + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  field_simp [hq, hN]

/-- Deterministic mean-inflation component. -/
def parityCenteredWindingMeanInflation
    (b d r : ℕ) [NeZero d] (H : Finset ℕ) : ℝ :=
  4 * parityHalfIndexCenteredPairMass b r H ^ 2 *
    ((((d * d : ℕ) : ℝ))⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)

/-- Exact zero-mode correction decomposition. -/
theorem parityHalfIndexCenteredZeroModeCorrection_eq_meanInflation_sub_fourVariance
    (b d r : ℕ) [NeZero d] (H : Finset ℕ) :
    parityHalfIndexCenteredZeroModeCorrection b d r H =
      parityCenteredWindingMeanInflation b d r H -
        4 * parityCenteredIntegerCoordinateVariance b r H := by
  exact
    parityHalfIndexCenteredZeroModeCorrection_eq_reciprocalDifference_sub_variance
      b d r H

/-- The complete centered winding split now has a positive nonzero-frequency
term, deterministic mean inflation, and a negative centered variance. -/
theorem parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance
    (b d r : ℕ) [NeZero d] (H : Finset ℕ) :
    parityHalfIndexSignedQuarticWrap b d r H =
      parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H +
        parityCenteredWindingMeanInflation b d r H -
        4 * parityCenteredIntegerCoordinateVariance b r H := by
  rw [parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_zeroModeCorrection]
  rw [parityHalfIndexCenteredZeroModeCorrection_eq_meanInflation_sub_fourVariance]
  ring

/-- Absolute four-family zero-mode correction decomposition at one modulus. -/
def regularCenteredWindingZeroModeVarianceAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  |parityCenteredWindingMeanInflation b d 0 (positiveEndpointEvenShiftSet b) -
      4 * parityCenteredIntegerCoordinateVariance b 0 (positiveEndpointEvenShiftSet b)| +
  |parityCenteredWindingMeanInflation b d 0 (positiveEndpointOddShiftSet b) -
      4 * parityCenteredIntegerCoordinateVariance b 0 (positiveEndpointOddShiftSet b)| +
  |parityCenteredWindingMeanInflation b d 1 (positiveEndpointEvenShiftSet b) -
      4 * parityCenteredIntegerCoordinateVariance b 1 (positiveEndpointEvenShiftSet b)| +
  |parityCenteredWindingMeanInflation b d 1 (positiveEndpointOddShiftSet b) -
      4 * parityCenteredIntegerCoordinateVariance b 1 (positiveEndpointOddShiftSet b)|

/-- Endpoint aggregate of the exact zero-mode correction decomposition. -/
def regularCenteredWindingZeroModeVarianceEndpoint (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredWindingZeroModeVarianceAtModulus b d
    else 0

/-- Parameterized analytic boundary for the zero-mode correction alone. -/
def RegularCenteredWindingZeroModeVarianceEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ, regularCenteredWindingZeroModeVarianceEndpoint b ≤ E b

structure RegularCenteredWindingZeroModeVarianceSourceData where
  theoremStatement : Prop
  integerCenterAmplitudeMatched : Prop
  totalPairMassMatched : Prop
  exactCenterCountMatched : Prop
  centeredVarianceDefined : Prop
  varianceNonnegative : Prop
  secondMomentDecompositionMatched : Prop
  zeroWindingEnergyMatched : Prop
  zeroModeEnergyMatched : Prop
  reciprocalDifferenceMatched : Prop
  meanInflationMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  effectiveModulusAggregationMatched : Prop
  analyticEnvelopeExplicit : Prop

def RegularCenteredWindingZeroModeVarianceSource
    (d : RegularCenteredWindingZeroModeVarianceSourceData) : Prop :=
  d.theoremStatement ∧
  d.integerCenterAmplitudeMatched ∧
  d.totalPairMassMatched ∧
  d.exactCenterCountMatched ∧
  d.centeredVarianceDefined ∧
  d.varianceNonnegative ∧
  d.secondMomentDecompositionMatched ∧
  d.zeroWindingEnergyMatched ∧
  d.zeroModeEnergyMatched ∧
  d.reciprocalDifferenceMatched ∧
  d.meanInflationMatched ∧
  d.evenOddHalfShiftFamiliesMatched ∧
  d.bothEndpointParitiesMatched ∧
  d.effectiveModulusAggregationMatched ∧
  d.analyticEnvelopeExplicit

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexCenteredZeroModeCorrection_eq_reciprocalDifference_sub_variance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance
```
