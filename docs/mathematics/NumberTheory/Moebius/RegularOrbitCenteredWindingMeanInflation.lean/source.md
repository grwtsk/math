# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingMeanInflation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0abd6a2e737d405f8d9950e4da27694b86175efd` · SHA-256 `013578a8595658b805f5b16422fa67e6d365df58f09544b8a82479d2aaf34823`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #855. Parent: draft PR #854 at 4863a57ddda62bf6944ee840e8e1f2a724916586.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingZeroModeVariance
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingModulusAggregate

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Effective square moduli have positive mean-inflation reciprocal gap. -/
theorem effectiveSquareModulus_reciprocalDifference_nonneg
    {b d : ℕ} (hd : d ∈ effectiveEndpointSquareModulusSet b) :
    0 ≤ (((d * d : ℕ) : ℝ))⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹ := by
  have hdmem := Finset.mem_filter.mp hd
  have hsq : d * d < b := hdmem.2
  have hpos : 0 < d * d := by
    have hd1 := (Finset.mem_Ico.mp hdmem.1).1
    positivity
  have hle : d * d ≤ b + 1 := by omega
  have hcast : ((d * d : ℕ) : ℝ) ≤ ((b + 1 : ℕ) : ℝ) := by exact_mod_cast hle
  have hdR : (0 : ℝ) < ((d * d : ℕ) : ℝ) := by exact_mod_cast hpos
  have hbR : (0 : ℝ) < ((b + 1 : ℕ) : ℝ) := by positivity
  have hinv : (((b + 1 : ℕ) : ℝ))⁻¹ ≤ (((d * d : ℕ) : ℝ))⁻¹ :=
    (inv_le_inv₀ hbR hdR).2 hcast
  linarith

/-- Mean inflation is nonnegative on effective moduli. -/
theorem parityCenteredWindingMeanInflation_nonneg_of_effective
    {b d r : ℕ} [NeZero d]
    (H : Finset ℕ)
    (hd : d ∈ effectiveEndpointSquareModulusSet b) :
    0 ≤ parityCenteredWindingMeanInflation b d r H := by
  unfold parityCenteredWindingMeanInflation
  exact mul_nonneg
    (mul_nonneg (by positivity) (sq_nonneg _))
    (effectiveSquareModulus_reciprocalDifference_nonneg hd)

/-- Dropping the subtractive endpoint reciprocal gives a reciprocal-square
pointwise majorant. -/
theorem parityCenteredWindingMeanInflation_le_reciprocalSquare
    {b d r : ℕ} [NeZero d]
    (H : Finset ℕ) :
    parityCenteredWindingMeanInflation b d r H ≤
      4 * parityHalfIndexCenteredPairMass b r H ^ 2 *
        (((d : ℝ) ^ 2)⁻¹) := by
  unfold parityCenteredWindingMeanInflation
  have hb : 0 ≤ (((b + 1 : ℕ) : ℝ))⁻¹ := by positivity
  have hcoef : 0 ≤ 4 * parityHalfIndexCenteredPairMass b r H ^ 2 := by positivity
  have hq :
      (((d * d : ℕ) : ℝ))⁻¹ = (((d : ℝ) ^ 2)⁻¹) := by
    push_cast
    ring
  rw [hq]
  nlinarith

/-- Four-family pair-mass-square mass, independent of the square modulus. -/
def regularCenteredWindingPairMassSquare (b : ℕ) : ℝ :=
  parityHalfIndexCenteredPairMass b 0 (positiveEndpointEvenShiftSet b) ^ 2 +
  parityHalfIndexCenteredPairMass b 0 (positiveEndpointOddShiftSet b) ^ 2 +
  parityHalfIndexCenteredPairMass b 1 (positiveEndpointEvenShiftSet b) ^ 2 +
  parityHalfIndexCenteredPairMass b 1 (positiveEndpointOddShiftSet b) ^ 2

theorem regularCenteredWindingPairMassSquare_nonneg (b : ℕ) :
    0 ≤ regularCenteredWindingPairMassSquare b := by
  unfold regularCenteredWindingPairMassSquare
  positivity

/-- Four-family mean inflation at one modulus. -/
def regularCenteredWindingMeanInflationAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  parityCenteredWindingMeanInflation b d 0 (positiveEndpointEvenShiftSet b) +
  parityCenteredWindingMeanInflation b d 0 (positiveEndpointOddShiftSet b) +
  parityCenteredWindingMeanInflation b d 1 (positiveEndpointEvenShiftSet b) +
  parityCenteredWindingMeanInflation b d 1 (positiveEndpointOddShiftSet b)

theorem regularCenteredWindingMeanInflationAtModulus_le
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingMeanInflationAtModulus b d ≤
      4 * regularCenteredWindingPairMassSquare b * (((d : ℝ) ^ 2)⁻¹) := by
  unfold regularCenteredWindingMeanInflationAtModulus
    regularCenteredWindingPairMassSquare
  have h0e := parityCenteredWindingMeanInflation_le_reciprocalSquare
    (b := b) (d := d) (r := 0) (positiveEndpointEvenShiftSet b)
  have h0o := parityCenteredWindingMeanInflation_le_reciprocalSquare
    (b := b) (d := d) (r := 0) (positiveEndpointOddShiftSet b)
  have h1e := parityCenteredWindingMeanInflation_le_reciprocalSquare
    (b := b) (d := d) (r := 1) (positiveEndpointEvenShiftSet b)
  have h1o := parityCenteredWindingMeanInflation_le_reciprocalSquare
    (b := b) (d := d) (r := 1) (positiveEndpointOddShiftSet b)
  nlinarith [show 0 ≤ (((d : ℝ) ^ 2)⁻¹) by positivity]

/-- Effective-modulus endpoint mean inflation. -/
def regularCenteredWindingMeanInflationEndpoint (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredWindingMeanInflationAtModulus b d
    else 0

/-- Reciprocal-square aggregation costs only an absolute constant. -/
theorem regularCenteredWindingMeanInflationEndpoint_le_eight_mul_pairMassSquare
    (b : ℕ) :
    regularCenteredWindingMeanInflationEndpoint b ≤
      8 * regularCenteredWindingPairMassSquare b := by
  unfold regularCenteredWindingMeanInflationEndpoint
  have hpair := regularCenteredWindingPairMassSquare_nonneg b
  calc
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      if hd : 0 < d then
        let : NeZero d := ⟨ne_of_gt hd⟩
        regularCenteredWindingMeanInflationAtModulus b d
      else 0) ≤
      ∑ d ∈ effectiveEndpointSquareModulusSet b,
        4 * regularCenteredWindingPairMassSquare b * (((d : ℝ) ^ 2)⁻¹) := by
          apply Finset.sum_le_sum
          intro d hdmem
          have hdpos : 0 < d :=
            (Finset.mem_Ico.mp (Finset.mem_filter.mp hdmem).1).1
          simp only [dif_pos hdpos]
          let : NeZero d := ⟨ne_of_gt hdpos⟩
          exact regularCenteredWindingMeanInflationAtModulus_le b d
    _ = 4 * regularCenteredWindingPairMassSquare b *
        (∑ d ∈ effectiveEndpointSquareModulusSet b, (((d : ℝ) ^ 2)⁻¹)) := by
          rw [Finset.mul_sum]
    _ ≤ 4 * regularCenteredWindingPairMassSquare b * 2 := by
          exact mul_le_mul_of_nonneg_left
            (effectiveSquareModulusReciprocalSquareMass_le_two b)
            (by positivity)
    _ = 8 * regularCenteredWindingPairMassSquare b := by ring

/-- A pair-mass-square endpoint envelope supplies the deterministic
mean-inflation envelope with only an absolute factor eight. -/
def RegularCenteredWindingPairMassSquareEnvelope (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ, regularCenteredWindingPairMassSquare b ≤ E b

def RegularCenteredWindingMeanInflationEnvelope (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ, regularCenteredWindingMeanInflationEndpoint b ≤ E b

theorem regularCenteredWindingMeanInflationEnvelope_of_pairMassSquare
    {E : ℕ → ℝ}
    (hE : RegularCenteredWindingPairMassSquareEnvelope E) :
    RegularCenteredWindingMeanInflationEnvelope (fun b => 8 * E b) := by
  intro b
  exact
    (regularCenteredWindingMeanInflationEndpoint_le_eight_mul_pairMassSquare b).trans
      (mul_le_mul_of_nonneg_left (hE b) (by norm_num))

structure RegularCenteredWindingMeanInflationSourceData where
  theoremStatement : Prop
  effectiveModulusStrictSquareBoundMatched : Prop
  reciprocalDifferenceSignMatched : Prop
  meanInflationNonnegativeMatched : Prop
  reciprocalSquarePointwiseMajorantMatched : Prop
  fourFamilyPairMassSquareMatched : Prop
  reciprocalSquareAggregationMatched : Prop
  absoluteConstantEightMatched : Prop
  analyticEnvelopeExplicit : Prop

def RegularCenteredWindingMeanInflationSource
    (d : RegularCenteredWindingMeanInflationSourceData) : Prop :=
  d.theoremStatement ∧
  d.effectiveModulusStrictSquareBoundMatched ∧
  d.reciprocalDifferenceSignMatched ∧
  d.meanInflationNonnegativeMatched ∧
  d.reciprocalSquarePointwiseMajorantMatched ∧
  d.fourFamilyPairMassSquareMatched ∧
  d.reciprocalSquareAggregationMatched ∧
  d.absoluteConstantEightMatched ∧
  d.analyticEnvelopeExplicit

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.effectiveSquareModulus_reciprocalDifference_nonneg
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularCenteredWindingMeanInflationEndpoint_le_eight_mul_pairMassSquare
```
