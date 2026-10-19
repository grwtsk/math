import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import Mathlib.Analysis.Calculus.Deriv.Polynomial

/-!
# Actual normalized source mixed kernel at an interior high lag

UNCOMPILED proof-text preparation; every kernel and acceptance gate is pending.
The actual primitive overlap is locally the existing polynomial profile near
shift19 at scale10. Eventual equality transports derivatives locally; this uses
no global sixth derivative of the compact primitive and no extra bump regularity.
The existing fourth-order source filter then gives the actual correlation and
its curvature with the original normalization and negative curvature sign.

The target refutes universal nonnegative mixed atoms. It neither changes the
actual arithmetic states nor bounds Gamma, the centered deleted diagonal,
independent main term or literal quotient endpoint. High-cell admissibility and
any self-adjoint PSD compression claim require separate adapters.

Research direction and evaluation: grwtsk contributors.
Proof-text preparation: OpenAI Codex; independent verification is pending.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualHighLagMixedSign

open Filter MeasureTheory Set
open scoped Polynomial Topology
open SourcePairing SourceBumpAutocorrelation SourcePrimitivePrimeInteraction
open SourcePrimitiveBumpProfile SourcePrimitiveCorrelationCurvature
open SourcePositivePeanoPrimitive SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- This is precisely the existing overlapProfile(t/10), expanded as a polynomial. -/
private def fixedOverlapPolynomial : ℝ[X] :=
  Polynomial.monomial 0 (65536 / 109395) -
    Polynomial.monomial 2 (16384 / 1126125) +
    Polynomial.monomial 4 (512 / 3128125) -
    Polynomial.monomial 6 (64 / 54140625) +
    Polynomial.monomial 8 (1 / 123046875) -
    Polynomial.monomial 9 (1 / 2460937500) +
    Polynomial.monomial 11 (1 / 2707031250000) -
    Polynomial.monomial 13 (1 / 3128125000000000) +
    Polynomial.monomial 15 (1 / 5630625000000000000) -
    Polynomial.monomial 17 (1 / 21879000000000000000000)

private theorem fixedOverlapPolynomial_eval (t : ℝ) :
    fixedOverlapPolynomial.eval t = overlapProfile (t / 10) := by
  simp only [fixedOverlapPolynomial, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_monomial]
  unfold overlapProfile overlapP0
  ring

private def jetPolynomial : ℕ → ℝ[X]
  | 0 => fixedOverlapPolynomial
  | n + 1 => (jetPolynomial n).derivative

private def jet (n : ℕ) (t : ℝ) : ℝ :=
  (jetPolynomial n).eval t / sourceNormalization 10

private theorem jet_hasDerivAt (n : ℕ) (t : ℝ) :
    HasDerivAt (jet n) (jet (n + 1) t) t := by
  change HasDerivAt (fun x : ℝ => (jetPolynomial n).eval x / sourceNormalization 10)
    ((jetPolynomial n).derivative.eval t / sourceNormalization 10) t
  exact ((jetPolynomial n).hasDerivAt t).div_const (sourceNormalization 10)

private theorem jet_deriv (n : ℕ) : deriv (jet n) = jet (n + 1) :=
  funext fun t => (jet_hasDerivAt n t).deriv

private def fixedCorrelationProfile (t : ℝ) : ℝ := jet 4 t - jet 2 t / 2 + jet 0 t / 16

/-- The actual global fourth-order filter is reused with both existing signed identities. -/
private theorem actualCorrelation_eq_primitive_filter (t : ℝ) :
    sourceCorrelation explicitSecondDerivative 10 t =
      deriv (deriv (deriv (deriv (primitiveCorrelationZero 10)))) t -
        deriv (deriv (primitiveCorrelationZero 10)) t / 2 +
        primitiveCorrelationZero 10 t / 16 := by
  rw [sourceCorrelation_eq_primitive_filter (by norm_num : 0 < (10 : ℝ)),
    primitiveCorrelationZero_fourth_deriv (by norm_num : 0 < (10 : ℝ)),
    primitiveCorrelationZero_second_deriv_eq_neg_one (by norm_num : 0 < (10 : ℝ))]
  ring

private theorem actualPrimitive_eventuallyEq_jet {t : ℝ} (ht0 : 0 < t) (ht20 : t < 20) :
    primitiveCorrelationZero 10 =ᶠ[𝓝 t] jet 0 := by
  have hi : Ioo (0 : ℝ) 20 ∈ 𝓝 t := Ioo_mem_nhds ht0 ht20
  filter_upwards [hi] with s hs
  rw [primitiveCorrelationZero_eq_profile (by norm_num : 0 < (10 : ℝ)) hs.1.le
    (by simpa using hs.2.le)]
  change overlapProfile (s / 10) / sourceNormalization 10 =
    fixedOverlapPolynomial.eval s / sourceNormalization 10
  rw [fixedOverlapPolynomial_eval]

/-- Only an interior neighborhood is differentiated; support seams are not reassigned. -/
private theorem actualCorrelation_eventuallyEq_profile {t : ℝ}
    (ht0 : 0 < t) (ht20 : t < 20) :
    sourceCorrelation explicitSecondDerivative 10 =ᶠ[𝓝 t] fixedCorrelationProfile := by
  have h0 := actualPrimitive_eventuallyEq_jet ht0 ht20
  have h2 : deriv (deriv (primitiveCorrelationZero 10)) =ᶠ[𝓝 t] jet 2 := by
    simpa only [jet_deriv] using h0.deriv.deriv
  have h4 : deriv (deriv (deriv (deriv (primitiveCorrelationZero 10)))) =ᶠ[𝓝 t]
      jet 4 := by
    simpa only [jet_deriv] using h0.deriv.deriv.deriv.deriv
  filter_upwards [h0, h2, h4] with s hs0 hs2 hs4
  rw [actualCorrelation_eq_primitive_filter s, hs4, hs2, hs0]
  rfl

private theorem fixedCorrelationProfile_hasDerivAt (t : ℝ) :
    HasDerivAt fixedCorrelationProfile (jet 5 t - jet 3 t / 2 + jet 1 t / 16) t :=
  ((jet_hasDerivAt 4 t).sub ((jet_hasDerivAt 2 t).div_const 2)).add
    ((jet_hasDerivAt 0 t).div_const 16)

private theorem fixedCorrelationProfile_deriv :
    deriv fixedCorrelationProfile = fun t => jet 5 t - jet 3 t / 2 + jet 1 t / 16 :=
  funext fun t => (fixedCorrelationProfile_hasDerivAt t).deriv

private theorem fixedCorrelationProfile_second_deriv (t : ℝ) :
    deriv (deriv fixedCorrelationProfile) t = jet 6 t - jet 4 t / 2 + jet 2 t / 16 := by
  rw [fixedCorrelationProfile_deriv]
  exact (((jet_hasDerivAt 5 t).sub ((jet_hasDerivAt 3 t).div_const 2)).add
    ((jet_hasDerivAt 1 t).div_const 16)).deriv

/-- The literal Z10 and actual correlation curvature retain their exact rational value. -/
theorem actual_mixed_kernel_ten_nineteen :
    -deriv (deriv (sourceCorrelation explicitSecondDerivative 10)) 19 +
        sourceCorrelation explicitSecondDerivative 10 19 / 4 =
      -(134860219395915291461 / 548111646720000000000000 : ℝ) := by
  have he := actualCorrelation_eventuallyEq_profile (by norm_num : 0 < (19 : ℝ))
    (by norm_num : (19 : ℝ) < 20)
  have h0 := he.eq_of_nhds
  have h2 := he.deriv.deriv.eq_of_nhds
  rw [h0, h2, fixedCorrelationProfile_second_deriv]
  norm_num [fixedCorrelationProfile, jet, jetPolynomial, fixedOverlapPolynomial,
    sourceNormalization, Polynomial.derivative_add, Polynomial.derivative_sub,
    Polynomial.derivative_monomial, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_monomial]

/-- The actual mixed kernel has a negative value; no arithmetic coefficient is altered. -/
theorem actual_mixed_kernel_ten_nineteen_neg :
    -deriv (deriv (sourceCorrelation explicitSecondDerivative 10)) 19 +
      sourceCorrelation explicitSecondDerivative 10 19 / 4 < 0 := by
  rw [actual_mixed_kernel_ten_nineteen]
  norm_num

/-- The source correlation itself is positive at this lag, distinguishing the mixed sign. -/
theorem actual_correlation_ten_nineteen_pos :
    0 < sourceCorrelation explicitSecondDerivative 10 19 := by
  have he := actualCorrelation_eventuallyEq_profile (by norm_num : 0 < (19 : ℝ))
    (by norm_num : (19 : ℝ) < 20)
  rw [he.eq_of_nhds]
  norm_num [fixedCorrelationProfile, jet, jetPolynomial, fixedOverlapPolynomial,
    sourceNormalization, Polynomial.derivative_add, Polynomial.derivative_sub,
    Polynomial.derivative_monomial, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_monomial]

/-- Both full-space source factors are integrable before the shifted pairing is read. -/
theorem actual_shifted_pairings_integrable :
    Integrable (fun x : ℝ =>
      deriv (normalizedTest explicitSecondDerivative 10) x *
        deriv (normalizedTest explicitSecondDerivative 10) (x - 19)) ∧
    Integrable (fun x : ℝ =>
      normalizedTest explicitSecondDerivative 10 x *
        normalizedTest explicitSecondDerivative 10 (x - 19)) := by
  exact ⟨sourceCorrelation_second_deriv_integrand_integrable
    (by norm_num : 0 < (10 : ℝ)) 19,
    correlation_product_integrable 10 19 (by norm_num : 0 < (10 : ℝ))⟩

/-- Actual source derivative pairing plus the quarter mass pairing has the negative sign. -/
theorem actual_shifted_plus_quarter_pairing_neg :
    (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative 10) x *
      deriv (normalizedTest explicitSecondDerivative 10) (x - 19)) +
    (∫ x : ℝ, normalizedTest explicitSecondDerivative 10 x *
      normalizedTest explicitSecondDerivative 10 (x - 19)) / 4 < 0 := by
  have h := actual_mixed_kernel_ten_nineteen_neg
  rw [sourceCorrelation_second_deriv_eq_integral (by norm_num : 0 < (10 : ℝ))] at h
  simpa only [neg_neg, sourceCorrelation] using h

/-- A universal source mixed-atom positivity premise is contradicted by this actual lag. -/
theorem not_all_actual_mixed_atoms_nonneg :
    ¬ ∀ t : ℝ, 0 ≤ -deriv (deriv (sourceCorrelation explicitSecondDerivative 10)) t +
      sourceCorrelation explicitSecondDerivative 10 t / 4 := by
  intro h
  exact not_le_of_gt actual_mixed_kernel_ten_nineteen_neg (h 19)

end FormalResearch.RiemannHypothesis.SourceActualHighLagMixedSign
