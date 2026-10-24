-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBumpMoments.Variant2460373e7445b60ec6f60e8e3bcd10882b87ef8bab2ed5ebc979f414e60efa2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2460373e7445b60ec6f60e8e3bcd10882b87ef8bab2ed5ebc979f414e60efa2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceBumpMoments.Variant2460373e7445b60ec6f60e8e3bcd10882b87ef8bab2ed5ebc979f414e60efa2c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2460373e7445b60ec6f60e8e3bcd10882b87ef8bab2ed5ebc979f414e60efa2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/integrated-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpMoments
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpGlobal
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpAdapter
import FormalResearch.RiemannHypothesis.SourceComparison.ControllerSchedule
import FormalResearch.RiemannHypothesis.SourceComparison.ControllerRHTransport
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorTailBlock
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpHorizontal
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDelta
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence



/-! Global corrected controller source checks; residual convergence remains explicit. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBumpMoments.Variant2460373e7445b60ec6f60e8e3bcd10882b87ef8bab2ed5ebc979f414e60efa2c

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
open FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpMoments

example (k : ℕ) (z : ℂ) : bumpMoment k z =
    ∫ x : ℝ in (-1)..1, (x : ℂ)^k * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ)) := rfl

example (k : ℕ) (z : ℂ) : IntervalIntegrable
    (fun x : ℝ => (x : ℂ)^k * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ)))
      volume (-1) 1 := bumpMoment_intervalIntegrable k z

example (z : ℂ) : bumpMoment 0 z =
    ∫ x : ℝ, (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ)) :=
  bumpMoment_zero_eq_source z

example : bumpMoment 0 0 = (256 / 315 : ℂ) := bumpMoment_zero_zero

example (z : ℂ) :
    z*bumpMoment 2 z + 10*bumpMoment 1 z - z*bumpMoment 0 z = 0 :=
  bumpMoment_equation z

example (z : ℂ) (D E : ℝ) (hD : 0 < D) (hE : 0 ≤ E)
    (h : -(E : ℂ) = z^2*(D : ℂ)) : z.re = 0 :=
  re_eq_zero_of_weighted_energy z D E hD hE h

example : bumpMoment 0 0 ≠ 0 := by rw [bumpMoment_zero_zero]; norm_num

example (z : ℂ) :
    z * (∫ x : ℝ in (-1)..1, (x : ℂ)^2 * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ))) +
    10 * (∫ x : ℝ in (-1)..1, (x : ℂ)^1 * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ))) -
    z * (∫ x : ℝ in (-1)..1, (x : ℂ)^0 * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ))) = 0 :=
  bumpMoment_equation z

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpMoments FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpGlobal
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter

example (k : ℕ) (z : ℂ) :
    HasDerivAt (bumpMoment k) (bumpMoment (k + 1) z) z :=
  bumpMoment_hasDerivAt k z

example (k : ℕ) : Continuous (bumpMoment k) := bumpMoment_continuous k

example (z : ℂ) (r : ℝ) : radialProfile z r = bumpMoment 0 (z * (r : ℂ)) := rfl

example (z : ℂ) (r : ℝ) : radialFlux z r =
    (r : ℂ)^10 * z * bumpMoment 1 (z * (r : ℂ)) := rfl

example (z : ℂ) (r : ℝ) :
    HasDerivAt (radialProfile z) (z * bumpMoment 1 (z * (r : ℂ))) r :=
  radialProfile_hasDerivAt z r

example (z : ℂ) (r : ℝ) :
    HasDerivAt (radialFlux z) (z^2 * (r : ℂ)^10 * radialProfile z r) r :=
  radialFlux_hasDerivAt z r

example (z : ℂ) : radialMass z =
    ∫ r : ℝ in 0..1, r^10 * ‖radialProfile z r‖^2 := rfl

example (z : ℂ) : radialEnergy z =
    ∫ r : ℝ in 0..1, r^10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖^2 := rfl

example (z : ℂ) :
    IntervalIntegrable (fun r : ℝ => r^10 * ‖radialProfile z r‖^2) volume 0 1 ∧
    IntervalIntegrable (fun r : ℝ =>
      r^10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖^2) volume 0 1 :=
  radial_integrands_intervalIntegrable z

example (z : ℂ) : 0 ≤ radialEnergy z := radialEnergy_nonneg z

example (z : ℂ) : 0 < radialMass z := radialMass_pos z

example (z : ℂ) (hz : bumpMoment 0 z = 0) :
    -(radialEnergy z : ℂ) = z^2 * (radialMass z : ℂ) := radial_energy_identity z hz

example (z : ℂ) (hz : bumpMoment 0 z = 0) : z.re = 0 := bumpMoment_zero_re z hz

example (z : ℂ)
    (hz : (∫ x : ℝ, (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ))) = 0) :
    z.re = 0 := by
  apply bumpMoment_zero_re z
  rw [bumpMoment_zero_eq_source]
  exact hz

example (z : ℂ) (hz : 0 < z.re) :
    (∫ x : ℝ in (-1)..1, (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ))) ≠ 0 := by
  intro he
  have hB : bumpMoment 0 z = 0 := by simpa only [bumpMoment, pow_zero, one_mul] using he
  exact hz.ne' (bumpMoment_zero_re z hB)

namespace SourceBumpAdapterLiteral
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceBumpMoments SourceBumpAdapter FixedSourceFilter
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
noncomputable section
example (z : ℂ) (hz : z ≠ 0) : bumpMoment 0 z = 384 *
    (Complex.exp z * transformPolynomial z -
      Complex.exp (-z) * transformPolynomial (-z)) / z ^ 9 :=
  bumpMoment_closedFormula z hz
example : V 0 = ((-64 / (315 * Real.sqrt (45056 / 1105 : ℝ)) : ℝ) : ℂ) := V_zero
example (z : ℂ) : V z = (z ^ 2 - 1 / 4) * bumpMoment 0 z /
    (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := V_eq_bumpMoment z
example (z : ℂ) : MobiusSourceFilterQuotient.W z =
    Complex.exp (-z) * (z ^ 2 - 1 / 4) * bumpMoment 0 z /
      (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := W_eq_bumpMoment z
end
end SourceBumpAdapterLiteral

namespace ControllerScheduleLiteral
open Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open FormalResearch.RiemannHypothesis.SourceComparison.ControllerSchedule
noncomputable section
example (q : ℕ → H) (j : ℕ) :
    cumulativeCost q j = ∑ k ∈ Finset.Icc 1 j, ‖q k‖ ^ 2 := rfl
example (q : ℕ → H) (j : ℕ) :
    controllerAlpha q j =
      1 / ((j : ℝ) * (1 + ∑ k ∈ Finset.Icc 1 j, ‖q k‖ ^ 2)) := rfl
example (q : ℕ → H) (j : ℕ) : 0 ≤ cumulativeCost q j := cumulativeCost_nonneg q j
example (q : ℕ → H) : Monotone (cumulativeCost q) := cumulativeCost_monotone q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    0 < controllerAlpha q j := controllerAlpha_pos q j hj
example (q : ℕ → H) : StrictAntiOn (controllerAlpha q) (Set.Ici 1) :=
  controllerAlpha_strictAntiOn q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j ≤ 1 / (j : ℝ) := controllerAlpha_le_one_div q j hj
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j * ‖q j‖ ^ 2 ≤ 1 / (j : ℝ) := controllerAlpha_input_cost_le q j hj
example (q : ℕ → H) : Tendsto (controllerAlpha q) atTop (nhds 0) :=
  controllerAlpha_tendsto_zero q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    sourceMass (controllerAlpha q j) ≤
      ‖referenceVector - sourceOperator (q j)‖ ^ 2 + 1 / (j : ℝ) :=
  sourceMass_controllerAlpha_le q j hj
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    Tendsto (fun j => sourceMass (controllerAlpha q j)) atTop (nhds 0) :=
  sourceMass_controllerAlpha_tendsto_zero q hres
end
end ControllerScheduleLiteral

namespace ControllerRHTransportLiteral
open Filter
open FormalResearch.RiemannHypothesis
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open FormalResearch.RiemannHypothesis.SourceComparison.ControllerRHTransport
noncomputable section
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 :=
  nontrivial_re_le_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re = 1 / 2 :=
  nontrivial_re_eq_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0)) :
    _root_.RiemannHypothesis := conditional_rh_of_mass_subsequence α hα hmass
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    ∀ (s : ℂ), riemannZeta s = 0 →
      (¬ ∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 → s.re = 1 / 2 :=
  conditional_rh_of_full_residual q hres
end
end ControllerRHTransportLiteral

namespace DivisorTailBlockLiteral
open ArithmeticFunction Finset
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
example (X n : ℕ) (hn : n ≤ X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      if n = 1 then 1 else 0 := FormalResearch.RiemannHypothesis.SourceComparison.DivisorTailBlock.before_cutoff X n hn

example (X n : ℕ) (hn : X < n) (hn2 : n < 2 * X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      -(moebius n : ℝ) := FormalResearch.RiemannHypothesis.SourceComparison.DivisorTailBlock.first_dyadic_block X n hn hn2

example (X : ℕ) (hX : 2 ≤ X) :
    (∑ d ∈ X.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) -
      (X : ℝ) * mobiusReciprocalSum X = -(X : ℝ) * mobiusReciprocalSum X := FormalResearch.RiemannHypothesis.SourceComparison.DivisorTailBlock.corrected_endpoint X hX

example (X N : ℕ) (hX : 1 ≤ X)
    (hXN : X ≤ N) (hN2 : N < 2 * X) :
    (1 : ℝ) -
      ((∑ n ∈ Finset.Icc 1 N,
          ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X) =
      (∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ)) -
        (∑ n ∈ Finset.Icc 1 X, (moebius n : ℝ)) +
          (X : ℝ) * mobiusReciprocalSum X := FormalResearch.RiemannHypothesis.SourceComparison.DivisorTailBlock.corrected_first_block_prefix X N hX hXN hN2

end DivisorTailBlockLiteral

namespace CorrectedControllerAnalyticLiteral
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceBumpMoments MobiusPoleNumerator MobiusSourceFilterQuotient
open CorrectedControllerAnalytic
noncomputable section
example (z : ℂ) : reducedW z = Complex.exp (-z) * (z + 1 / 2) * bumpMoment 0 z /
    (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := rfl
example (z : ℂ) : W z = (z - 1 / 2) * reducedW z := W_factor z
example : Differentiable ℂ reducedW := reducedW_differentiable
example (z : ℂ) (hz : 0 < z.re) : reducedW z ≠ 0 := reducedW_ne_zero z hz
example (z : ℂ) (hz : 0 < z.re) : W z = 0 ↔ z = 1 / 2 := W_zero_iff z hz
example : reducedW (1 / 2) = deriv W (1 / 2) := reducedW_half
example (X : ℕ) (z : ℂ) : quotient X z = correctedQuotient X z / reducedW z := rfl
example (X : ℕ) (z : ℂ) (hz : z ≠ 1 / 2) :
    quotient X z = correctedNumerator X z / W z := quotient_of_ne X z hz
example (X : ℕ) (z : ℂ) (hz : 0 < z.re) :
    W z * quotient X z = correctedNumerator X z := W_mul_quotient X z hz
example (X : ℕ) (hX : 1 ≤ X) :
    quotient X (1 / 2) = (logNormalization X : ℂ) / deriv W (1 / 2) := quotient_half X hX
example (X : ℕ) (z : ℂ) (hz : 0 < z.re) :
    DifferentiableAt ℂ (quotient X) z := quotient_differentiableAt X z hz
example (X : ℕ) (ε h : ℝ) (z : ℂ) : candidate X ε h z =
    quotient X (z + ε) * (1 + (h : ℂ) * (z + ε))⁻¹ ^ 6 / (1 + z + ε) := rfl
example (ε h : ℝ) (hε : 0 < ε) (hh : 0 ≤ h) (z : ℂ) (hz : 0 ≤ z.re) :
    reducedW (z + ε) ≠ 0 ∧ 1 + (h : ℂ) * (z + ε) ≠ 0 ∧ 1 + z + (ε : ℂ) ≠ 0 :=
  candidate_denominators_ne_zero ε h hε hh z hz
example (X : ℕ) (ε h : ℝ) (hε : 0 < ε) (hh : 0 ≤ h) (z : ℂ) (hz : 0 ≤ z.re) :
    DifferentiableAt ℂ (candidate X ε h) z := candidate_differentiableAt X ε h hε hh z hz
end
end CorrectedControllerAnalyticLiteral

namespace FixedLaplaceBoundaryLiteral
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedLaplaceContinuation MobiusSourceFilterQuotient
open FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary
noncomputable section
example : Continuous V := V_continuous
example : ContinuousOn actualLaplace {z : ℂ | 0 ≤ z.re} :=
  actualLaplace_continuousOn_closed
example (z : ℂ) (hz : z ≠ 1 / 2) :
    ContinuousAt (fun w : ℂ => W w * riemannZeta (1 / 2 + w)) z :=
  sourceProduct_continuousAt z hz
example (z : ℂ) (hz : 0 ≤ z.re) (hzp : z ≠ 1 / 2) :
    actualLaplace z = W z * riemannZeta (1 / 2 + z) :=
  actualLaplace_eq_product_closed z hz hzp
example (t : ℝ) :
    (∫ u : ℝ in Ioi 0, (FixedSourceKernel.fixedKernel u : ℂ) *
      Complex.exp ((-((t : ℂ) * Complex.I)) * (u : ℂ))) =
      W ((t : ℂ) * Complex.I) * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) :=
  actualLaplace_boundary t
end
end FixedLaplaceBoundaryLiteral

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpMoments FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpGlobal FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpHorizontal
example (z : ℂ) : z * bumpMoment 1 z * star (bumpMoment 0 z) =
    (radialEnergy z : ℂ) + z^2 * (radialMass z : ℂ) := radial_boundary_energy_identity z
example (z : ℂ) (hz : 0 < z.re) :
    0 ≤ (bumpMoment 1 z * star (bumpMoment 0 z)).re :=
  bumpMoment_derivative_pairing_nonneg z hz
example (t x : ℝ) :
    HasDerivAt (fun a : ℝ => ‖bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I)‖^2)
      (2 * (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I) *
        star (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I))).re) x :=
  bumpMoment_horizontal_norm_sq_hasDerivAt t x
example (t : ℝ) :
    MonotoneOn (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖)
      (Ici 0) := bumpMoment_horizontal_norm_monotone t
example (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖ ≤
      ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖ :=
  bumpMoment_horizontal_norm_le ε t hε
example (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖∫ x : ℝ in (-1)..1, (1-(x : ℂ)^2)^4 * Complex.exp (((t : ℂ)*Complex.I)*(x : ℂ))‖ ≤
    ‖∫ x : ℝ in (-1)..1, (1-(x : ℂ)^2)^4 *
      Complex.exp (((ε : ℂ)+(t : ℂ)*Complex.I)*(x : ℂ))‖ := by
  simpa only [bumpMoment, pow_zero, one_mul] using bumpMoment_horizontal_norm_le ε t hε
example (z : ℂ) :
    z * bumpMoment 1 z * star (bumpMoment 0 z) =
      ((∫ r : ℝ in 0..1, r^10 * ‖z * bumpMoment 1 (z*(r : ℂ))‖^2 : ℝ) : ℂ) +
      z^2 * ((∫ r : ℝ in 0..1, r^10 * ‖bumpMoment 0 (z*(r : ℂ))‖^2 : ℝ) : ℂ) :=
  radial_boundary_energy_identity z

namespace SourceFilterDeltaLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient
open FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDelta
noncomputable section
example : {z : ℂ | W z = 0}.Countable := W_zero_set_countable
example : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := boundaryW_ae_ne_zero
example (ε h t : ℝ) : boundaryFilter ε h t =
    W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I) *
      (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6 /
        (1 + (ε : ℂ) + (t : ℂ) * Complex.I) := rfl
end
end SourceFilterDeltaLiteral

namespace CorrectedControllerBoundaryLiteral
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusSourceFilterQuotient MobiusPoleNumerator CorrectedControllerAnalytic
open FixedLaplaceContinuation SourceFilterDelta CorrectedControllerBoundary
noncomputable section
example (ε t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    W ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := shifted_W_ne_zero ε t hε he
example (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I) =
      boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I) :=
  actual_boundary_product X ε h t hε he
example (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I) =
    (1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t) +
      boundaryFilter ε h t *
        (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) :=
  residual_decomposition X ε h t hε he
example (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    ‖1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I)‖ ≤
    ‖1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t‖ +
      ‖boundaryFilter ε h t‖ *
        ‖1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)‖ :=
  residual_norm_le X ε h t hε he
end
end CorrectedControllerBoundaryLiteral

open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusSourceFilterQuotient FixedSourceFilter
open FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio
example (ε t : ℝ) :
    (1 - 4*ε^2) * ‖((t : ℂ)*Complex.I)^2 - 1/4‖ ≤
      ‖((ε : ℂ)+(t : ℂ)*Complex.I)^2 - 1/4‖ := sourceQuadratic_horizontal_bound ε t
example (ε t : ℝ) (hε : 0 ≤ ε) (hsmall : ε ≤ 1/4) :
    (1 - 4*ε^2) * ‖W ((t : ℂ)*Complex.I)‖ ≤
      Real.exp ε * ‖W ((ε : ℂ)+(t : ℂ)*Complex.I)‖ :=
  W_horizontal_multiplicative_bound ε t hε hsmall
example (ε t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1/4) :
    ‖W ((t : ℂ)*Complex.I) / W ((ε : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      Real.exp ε / (1 - 4*ε^2) := W_horizontal_ratio_bound ε t hε hsmall
example (ε t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1/4) :
    ‖(Complex.exp (-((t : ℂ)*Complex.I)) * V ((t : ℂ)*Complex.I)) /
      (Complex.exp (-((ε : ℂ)+(t : ℂ)*Complex.I)) *
        V ((ε : ℂ)+(t : ℂ)*Complex.I))‖ ≤ Real.exp ε / (1 - 4*ε^2) := by
  simpa only [W] using W_horizontal_ratio_bound ε t hε hsmall
example (t : ℝ) :
    ‖W ((t : ℂ)*Complex.I) / W ((1/4 : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      (4/3) * Real.exp (1/4) := by
  have h := W_horizontal_ratio_bound (1/4) t (by norm_num) (by norm_num)
  norm_num at h ⊢
  linarith

example (ε t : ℝ) (hε : 0 < ε) (hs : ε ≤ 1 / 4) :
    ‖FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient.W ((t : ℂ) * Complex.I) /
      FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient.W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      (4 / 3 : ℝ) * Real.exp (1 / 4) :=
  FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio.W_horizontal_uniform_bound ε t hε hs

namespace MobiusEndpointBudgetLiteral
open MeasureTheory Set Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator MobiusEndpointBudget
example (X : ℕ) :
    |mobiusReciprocalSum X| ≤ 1 + Real.log (X : ℝ) := FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget.reciprocal_abs_le_one_add_log X

example (X : ℕ) (ε : ℝ)
    (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ≤
      ε * (1 + Real.log (X : ℝ)) ^ 2 := FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget.correctedNumerator_half_add_norm_le X ε hX hε

example (X : ℕ) (ε : ℝ) (d : ℕ) :
    FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget.dampedCoefficient X ε d =
      (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ)) -
        (if d = X then (X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X else 0) := rfl

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    (∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ≤
      2 * (X : ℝ) * (1 + Real.log (X : ℝ)) := FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget.dampedCoefficient_abs_sum_le X ε hX hε

example (X : ℕ) (ε : ℝ) (z : ℂ)
    (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      correctedNumerator X (z + (ε : ℂ)) := FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget.dampedCoefficient_sum_eq_correctedNumerator X ε z hX

end MobiusEndpointBudgetLiteral

namespace SourceFilterDeltaConvergenceLiteral
open MeasureTheory Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta MobiusSourceFilterQuotient FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence
noncomputable section
example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryFilter ε h t‖ ≤ 2 * Real.exp 1 / ‖1 + (t : ℂ) * Complex.I‖ :=
  boundaryFilter_norm_le ε h t hε hsmall hh
example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2 ≤
      (1 + 2 * Real.exp 1) ^ 2 * (1 + t ^ 2)⁻¹ :=
  boundaryFilter_error_sq_le ε h t hε hsmall hh
example (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    Integrable (fun t : ℝ =>
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) :=
  boundaryFilter_error_integrable ε h hε hsmall hh
example (ε h : ℝ) : deltaSq ε h =
    (1 / (2 * Real.pi)) * (∫ t : ℝ,
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) := rfl
example (ε h : ℝ) : delta ε h = Real.sqrt (deltaSq ε h) := rfl
example (ε h : ℕ → ℝ)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0))
    (t : ℝ) (ht : W ((t : ℂ) * Complex.I) ≠ 0) :
    Tendsto (fun j => boundaryFilter (ε j) (h j) t) atTop
      (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := boundaryFilter_tendsto ε h hε hh t ht
example (ε h : ℕ → ℝ) (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4)
    (hhpos : ∀ j, 0 ≤ h j) (hε : Tendsto ε atTop (nhds 0))
    (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => deltaSq (ε j) (h j)) atTop (nhds 0) :=
  deltaSq_tendsto_zero ε h hεpos hεsmall hhpos hε hh
example (ε h : ℕ → ℝ) (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4)
    (hhpos : ∀ j, 0 ≤ h j) (hε : Tendsto ε atTop (nhds 0))
    (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => delta (ε j) (h j)) atTop (nhds 0) :=
  delta_tendsto_zero ε h hεpos hεsmall hhpos hε hh
end
end SourceFilterDeltaConvergenceLiteral
