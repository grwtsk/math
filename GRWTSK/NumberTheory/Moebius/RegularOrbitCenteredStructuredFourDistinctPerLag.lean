/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #907. Parent: draft PR #906 at a8ad9522d54f369fceae4338c5a2eabc156b4f32.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredStructuredFourDistinct

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Per-lag analytic cost.  Arguments are endpoint, square modulus, winding
index, endpoint parity, and the selected half-shift family. -/
abbrev StructuredFourDistinctLagCost :=
  ℕ → ℕ → ℕ → ℕ → Finset ℕ → ℝ

/-- Pointwise premise at the exact lag level, before any winding or modulus
aggregation. -/
def RegularCenteredStructuredFourDistinctPerLagBound
    (L : StructuredFourDistinctLagCost) : Prop :=
  ∀ b d r z : ℕ, ∀ _hd : NeZero d, ∀ H : Finset ℕ,
    |centeredStructuredFourDistinctLagCorrelation
        b r (z * (d * d)) H| ≤ L b d z r H

/-- Deterministic four-family cost at one modulus after summing the known
positive winding range. -/
def regularCenteredStructuredFourDistinctLagCostAtModulus
    (L : StructuredFourDistinctLagCost)
    (b d : ℕ) : ℝ :=
  (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      8 * L b d z 0 (positiveEndpointEvenShiftSet b)) +
  (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      8 * L b d z 0 (positiveEndpointOddShiftSet b)) +
  (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      8 * L b d z 1 (positiveEndpointEvenShiftSet b)) +
  (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      8 * L b d z 1 (positiveEndpointOddShiftSet b))

/-- Endpoint cost after effective square-modulus aggregation. -/
def regularCenteredStructuredFourDistinctLagCostEndpoint
    (L : StructuredFourDistinctLagCost)
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    regularCenteredStructuredFourDistinctLagCostAtModulus L b d

/-- Per-lag control supplies the exact structured endpoint envelope with the
deterministic summed cost. -/
theorem regularCenteredStructuredFourDistinctEnvelope_of_perLag
    (L : StructuredFourDistinctLagCost)
    (hL : RegularCenteredStructuredFourDistinctPerLagBound L)
    (_hLnonneg : ∀ b d z r H, 0 ≤ L b d z r H) :
    RegularCenteredStructuredFourDistinctEnvelope
      (regularCenteredStructuredFourDistinctLagCostEndpoint L) := by
  intro b
  unfold regularCenteredStructuredFourDistinctEndpoint
    regularCenteredStructuredFourDistinctAtModulus
    centeredStructuredFourDistinctWindingLagSum
    centeredStructuredFourDistinctWindingLagCorrelation
    regularCenteredStructuredFourDistinctLagCostEndpoint
    regularCenteredStructuredFourDistinctLagCostAtModulus
  apply Finset.sum_le_sum
  intro d hdmem
  have hdpos : 0 < d :=
    (Finset.mem_Ico.mp (Finset.mem_filter.mp hdmem).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  have familyBound :
      ∀ r : ℕ, ∀ H : Finset ℕ,
        |∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
            8 * centeredStructuredFourDistinctLagCorrelation
              b r (z * (d * d)) H| ≤
          ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
            8 * L b d z r H := by
    intro r H
    calc
      |∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          8 * centeredStructuredFourDistinctLagCorrelation
            b r (z * (d * d)) H| ≤
        ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          |8 * centeredStructuredFourDistinctLagCorrelation
            b r (z * (d * d)) H| := by
              exact Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          8 * L b d z r H := by
            apply Finset.sum_le_sum
            intro z hz
            simpa only [abs_mul, show |(8 : ℝ)| = 8 by norm_num] using
              mul_le_mul_of_nonneg_left (hL b d r z inferInstance H)
                (by norm_num : (0 : ℝ) ≤ 8)
  have h0e := familyBound 0 (positiveEndpointEvenShiftSet b)
  have h0o := familyBound 0 (positiveEndpointOddShiftSet b)
  have h1e := familyBound 1 (positiveEndpointEvenShiftSet b)
  have h1o := familyBound 1 (positiveEndpointOddShiftSet b)
  linarith

/-- Conservative source profile: no exponent is baked into the interface. -/
structure RegularCenteredStructuredFourDistinctPerLagSourceData where
  theoremStatement : Prop
  exactLagLevelMatched : Prop
  windingRadiusMatched : Prop
  factorEightMatched : Prop
  fourParityShiftFamiliesMatched : Prop
  effectiveModulusAggregationMatched : Prop
  triangleInequalityOnly : Prop
  noCancellationExponentAssumed : Prop
  endpointCostExplicit : Prop

def RegularCenteredStructuredFourDistinctPerLagSource
    (d : RegularCenteredStructuredFourDistinctPerLagSourceData) : Prop :=
  d.theoremStatement ∧
  d.exactLagLevelMatched ∧
  d.windingRadiusMatched ∧
  d.factorEightMatched ∧
  d.fourParityShiftFamiliesMatched ∧
  d.effectiveModulusAggregationMatched ∧
  d.triangleInequalityOnly ∧
  d.noCancellationExponentAssumed ∧
  d.endpointCostExplicit

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
