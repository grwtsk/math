import FormalResearch.RiemannHypothesis.SourceHeatExpansion
import FormalResearch.RiemannHypothesis.SourceTuplePackets

/-!
# Finite heat-to-tuple approximation of the complete signed source

The actual source probability measure, complete ordered index/sign tuples and
finite heat polynomial are joined in one paid approximation. Its absolute high
moment is retained; no scale-uniform arithmetic bound is asserted.

Research direction: grwtsk contributors.
This particular source consumer and formal implementation: OpenAI Codex,
7 October 2026.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceHeatPacketExpansion

open MeasureTheory
open SourceSignedHeat SourceHeatExpansion SourceTuplePackets SourceMultiplicativePackets
open SourceCompensatedFourier SourceDualFourierJump SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- The actual source correlation response over every ordered tuple and sign.
The factor `2^(-j)` is carried by the existing tuple observation. -/
def sourceTupleMoment (A : ℝ) (j : ℕ) : ℝ :=
  tupleObservation (fun n : SourceIndex A => compensatedCoefficient n.1)
    (fun n : SourceIndex A => Real.log n.1) j
    (sourceCorrelation explicitSecondDerivative A) 0

/-- Fixed-scale power integrability is transported from the genuine source
density to the already normalized probability measure. -/
theorem sourceProbability_power_integrable {A : ℝ} (hA : 1 ≤ A) (j : ℕ) :
    Integrable (fun ξ : ℝ => compensatedFourierSymbol A ξ ^ j)
      (sourceProbabilityMeasure A) := by
  unfold sourceProbabilityMeasure
  have hmeas : Measurable (fun ξ : ℝ =>
      ENNReal.ofReal (Complex.normSq (standardSourceTransform A ξ))) :=
    (Complex.continuous_normSq.comp
      (standardSourceTransform_continuous A hA)).measurable.ennreal_ofReal
  apply (integrable_withDensity_iff hmeas
    (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))).mpr
  simpa only [sourceDensity, ENNReal.toReal_ofReal (Complex.normSq_nonneg _)] using
    source_power_integrable hA j

/-- Every power under the actual probability source is the complete signed
tuple observation; no auxiliary moment is assumed. -/
theorem sourceProbability_moment_eq_tuples {A : ℝ} (hA : 1 ≤ A) (j : ℕ) :
    (∫ ξ : ℝ, compensatedFourierSymbol A ξ ^ j ∂sourceProbabilityMeasure A) =
      sourceTupleMoment A j := by
  rw [sourceProbabilityMeasure_integral A hA]
  change (∫ ξ : ℝ, compensatedFourierSymbol A ξ ^ j * sourceDensity A ξ) = _
  rw [source_moment_eq_signed_tuples hA j]
  simp only [sourceTupleMoment, tupleObservation, zero_add]

/-- The fixed-scale absolute high moment is integrable and bounded by the
complete coefficient envelope; that envelope need not be uniform in `A`. -/
theorem sourceProbability_absoluteMoment_le_bound {A : ℝ} (hA : 1 ≤ A) (j : ℕ) :
    (∫ ξ : ℝ, |compensatedFourierSymbol A ξ| ^ j ∂sourceProbabilityMeasure A) ≤
      sourceSymbolBound A ^ j := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  have hi : Integrable (fun ξ : ℝ => |compensatedFourierSymbol A ξ| ^ j)
      (sourceProbabilityMeasure A) := by
    simpa only [abs_pow] using (sourceProbability_power_integrable hA j).abs
  calc
    _ ≤ ∫ _ξ : ℝ, sourceSymbolBound A ^ j ∂sourceProbabilityMeasure A := by
      apply integral_mono hi (integrable_const _)
      intro ξ
      exact pow_le_pow_left₀ (abs_nonneg _) (compensatedFourierSymbol_abs_le A ξ) j
    _ = _ := by simp

/-- The complete finite heat approximation, with no omitted tuple or sign. -/
def sourceHeatPacketApproximation (A τ : ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range (N + 1),
    ((-1 : ℝ) ^ j * τ ^ (j + 1) / (j + 1).factorial) *
      sourceTupleMoment A (2 * j + 3)

/-- The finite polynomial integral is exactly the source tuple approximation.
Power integrability pays every finite-sum interchange. -/
theorem sourceHeatPolynomial_integral_eq_packets (A : ℝ) (hA : 1 ≤ A)
    (N : ℕ) (τ : ℝ) :
    (∫ ξ : ℝ, heatRemainderPolynomial N τ (compensatedFourierSymbol A ξ)
      ∂sourceProbabilityMeasure A) = sourceHeatPacketApproximation A τ N := by
  have he : (fun ξ : ℝ => heatRemainderPolynomial N τ (compensatedFourierSymbol A ξ)) =
      fun ξ => ∑ j ∈ Finset.range (N + 1),
        ((-1 : ℝ) ^ j * τ ^ (j + 1) / (j + 1).factorial) *
          compensatedFourierSymbol A ξ ^ (2 * j + 3) := by
    funext ξ
    rw [heatRemainderPolynomial_eq_sum]
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [he, integral_finsetSum _ (fun j _ =>
    (sourceProbability_power_integrable hA (2 * j + 3)).const_mul _)]
  simp_rw [integral_const_mul, sourceProbability_moment_eq_tuples hA]
  rfl

/-- Nonzero-time source-to-heat-to-tuples with the full sharp absolute tail.
The time is common to the source calculation, while the estimate is at fixed `A`. -/
theorem sourceHeatRemainder_packet_error (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    {τ : ℝ} (hτ : 0 ≤ τ) :
    |sourceHeatRemainder A τ - sourceHeatPacketApproximation A τ N| ≤
      τ ^ (N + 2) / (N + 2).factorial *
        (∫ ξ : ℝ, |compensatedFourierSymbol A ξ| ^ (2 * N + 5)
          ∂sourceProbabilityMeasure A) := by
  rw [← sourceHeatPolynomial_integral_eq_packets A hA N τ]
  exact sourceHeatRemainder_polynomial_error A hA N hτ

/-- The coarser finite approximation budget retains its explicit scale-dependent
coefficient envelope instead of presenting it as a uniform arithmetic cap. -/
theorem sourceHeatRemainder_packet_error_le_bound (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    {τ : ℝ} (hτ : 0 ≤ τ) :
    |sourceHeatRemainder A τ - sourceHeatPacketApproximation A τ N| ≤
      τ ^ (N + 2) / (N + 2).factorial * sourceSymbolBound A ^ (2 * N + 5) := by
  apply (sourceHeatRemainder_packet_error A hA N hτ).trans
  exact mul_le_mul_of_nonneg_left (sourceProbability_absoluteMoment_le_bound hA _)
    (by positivity)

/-- The degree-three tuple observation is the actual cubic heat at time zero. -/
theorem sourceTupleMoment_three_eq_cubicHeat {A : ℝ} (hA : 1 ≤ A) :
    sourceTupleMoment A 3 = sourceCubicHeat A 0 := by
  rw [← sourceProbability_moment_eq_tuples hA]
  unfold sourceCubicHeat cubicHeat
  simp only [neg_zero, zero_mul, Real.exp_zero, mul_one]

/-- The first finite approximation uses the exact rational cubic packets and
pays the complete fifth-moment error, rather than using a time-zero observation alone. -/
theorem sourceHeatRemainder_cubic_packet_error (A : ℝ) (hA : 1 ≤ A)
    {τ : ℝ} (hτ : 0 ≤ τ) :
    |sourceHeatRemainder A τ - τ *
      (∑ q ∈ (cubicPacketInventory A).image cubicPacketKey,
        (∑ p ∈ cubicPacketInventory A with cubicPacketKey p = q, cubicPacketWeight p) *
          sourceCorrelation explicitSecondDerivative A (Real.log (q : ℝ)))| ≤
      τ ^ 2 / 2 *
        (∫ ξ : ℝ, |compensatedFourierSymbol A ξ| ^ 5 ∂sourceProbabilityMeasure A) := by
  have h := sourceHeatRemainder_packet_error A hA 0 hτ
  simp only [sourceHeatPacketApproximation, zero_add, Finset.sum_range_one,
    pow_zero, pow_one, Nat.factorial_one, Nat.cast_one, div_one, one_mul,
    Nat.mul_zero, sourceTupleMoment_three_eq_cubicHeat hA,
    sourceCubicHeat_zero_eq_grouped_packets hA] at h
  norm_num only [Nat.factorial, Nat.cast_ofNat] at h
  exact h

end FormalResearch.RiemannHypothesis.SourceHeatPacketExpansion
