-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourcePlainSamplingTerm.Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourcePlainSamplingTerm.Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636","mathematical_subject":"Analysis.Integration","original_sha256":"84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner-six46-incremental-20261006T225931Z/captured/scratch/confluence/cycle26/principal-joint-mangoldt-work-v1/actual-projection-v1/import-tree/FormalResearch/RiemannHypothesis/SourceSamplingTaylor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# Exact continuous cancellation and Taylor remainders for actual source sampling

The continuous sampling integrals run over the entire positive axis. Retaining
this domain preserves the two signed source moments, including the below-one
correction. Curvature controls a linear Taylor expansion with a quadratic
remainder. A universal fractional-part quadrature theorem and its coefficient
integrals are separate obligations; this module does not assert their sampling
conclusion or a bounded Vaughan ledger.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourcePlainSamplingTerm.Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingTaylor

open MeasureTheory Set
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMomentReflection

/-- The actual continuously sampled plain source, written in exponential coordinates. -/
noncomputable def sourcePlainSamplingTerm (A k u : ℝ) : ℝ :=
  Real.exp (-(Real.log k + Real.log u) / 2) *
    sourceCorrelation explicitSecondDerivative A (Real.log k + Real.log u)

/-- The exact logarithmic sampling profile; its logarithm concerns the sampled variable. -/
noncomputable def sourceLogSamplingTerm (A k u : ℝ) : ℝ :=
  Real.log u * sourcePlainSamplingTerm A k u

/-- On positive multiplicative inputs this is the literal source weight at `k*u`. -/
theorem sourcePlainSamplingTerm_eq_source_weight (A : ℝ) {k u : ℝ}
    (hk : 0 < k) (hu : 0 < u) :
    sourcePlainSamplingTerm A k u =
      sourceCorrelation explicitSecondDerivative A (Real.log (k * u)) / Real.sqrt (k * u) := by
  unfold sourcePlainSamplingTerm
  rw [← Real.log_mul hk.ne' hu.ne', neg_div, Real.exp_neg, Real.exp_half,
    Real.exp_log (mul_pos hk hu)]
  ring

/-- The logarithmic coefficient remains the sampled variable's logarithm at positive inputs. -/
theorem sourceLogSamplingTerm_eq_source_weight (A : ℝ) {k u : ℝ}
    (hk : 0 < k) (hu : 0 < u) :
    sourceLogSamplingTerm A k u =
      Real.log u * sourceCorrelation explicitSecondDerivative A (Real.log (k * u)) /
        Real.sqrt (k * u) := by
  unfold sourceLogSamplingTerm
  rw [sourcePlainSamplingTerm_eq_source_weight A hk hu]
  ring

/-- Exponential change of variables on the entire real line, preserving `(0,∞)`. -/
theorem integral_comp_exp_univ (g : ℝ → ℝ) :
    (∫ u in Ioi (0 : ℝ), g u) = ∫ r : ℝ, Real.exp r * g (Real.exp r) := by
  have h := integral_image_eq_integral_abs_deriv_smul MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    Real.exp_injective.injOn g
  simpa only [image_univ, Real.range_exp, Measure.restrict_univ,
    abs_of_pos (Real.exp_pos _), smul_eq_mul] using h

private theorem shifted_zero_moment {F : ℝ → ℝ} (hMom : TwoMomentProfile F) (s : ℝ) :
    (∫ r : ℝ, Real.exp (r / 2) * F (s + r)) = 0 := by
  have he : (fun r : ℝ ↦ Real.exp (r / 2) * F (s + r)) =
      fun r ↦ Real.exp (-s / 2) * (Real.exp ((r + s) / 2) * F (r + s)) := by
    funext r
    rw [← mul_assoc, ← Real.exp_add]
    congr 2 <;> ring
  rw [he, integral_const_mul,
    integral_add_right_eq_self (fun t ↦ Real.exp (t / 2) * F t) s,
    hMom.2.2.1, mul_zero]

/-- The actual plain profile is integrable on the full positive axis, including below one. -/
theorem sourcePlainSampling_integrableOn {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    IntegrableOn (sourcePlainSamplingTerm A k) (Ioi (0 : ℝ)) := by
  have hs := integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    Real.exp_injective.injOn (sourcePlainSamplingTerm A k)
  simp only [image_univ, Real.range_exp,
    abs_of_pos (Real.exp_pos _), smul_eq_mul] at hs
  apply hs.mpr
  rw [integrableOn_univ]
  have he : (fun r : ℝ ↦ Real.exp r * sourcePlainSamplingTerm A k (Real.exp r)) =
      fun r ↦ Real.exp (-Real.log k / 2) *
        (Real.exp (r / 2) * sourceCorrelation explicitSecondDerivative A (Real.log k + r)) := by
    funext r
    dsimp [sourcePlainSamplingTerm]
    rw [Real.log_exp, ← mul_assoc, ← Real.exp_add, ← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [he]
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc := (CorrelationRegularity.sourceCorrelation_contDiff A hp).continuous
  have hsupp := (CorrelationRegularity.sourceCorrelation_hasCompactSupport A hp).comp_homeomorph
     (Homeomorph.addLeft (Real.log k))
  have hcontinuous : Continuous (fun r : ℝ ↦ Real.exp (r / 2) *
      sourceCorrelation explicitSecondDerivative A (Real.log k + r)) := by fun_prop
  exact (hcontinuous.integrable_of_hasCompactSupport hsupp.mul_left).const_mul _

/-- The actual logarithmic profile is integrable on the full positive axis. -/
theorem sourceLogSampling_integrableOn {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    IntegrableOn (sourceLogSamplingTerm A k) (Ioi (0 : ℝ)) := by
  have hs := integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    Real.exp_injective.injOn (sourceLogSamplingTerm A k)
  simp only [image_univ, Real.range_exp,
    abs_of_pos (Real.exp_pos _), smul_eq_mul] at hs
  apply hs.mpr
  rw [integrableOn_univ]
  have he : (fun r : ℝ ↦ Real.exp r * sourceLogSamplingTerm A k (Real.exp r)) =
      fun r ↦ Real.exp (-Real.log k / 2) *
        shiftedMomentIntegrand (sourceCorrelation explicitSecondDerivative A) (Real.log k) r := by
    funext r
    dsimp [sourceLogSamplingTerm, sourcePlainSamplingTerm, shiftedMomentIntegrand]
    rw [Real.log_exp]
    have hexp : Real.exp r * Real.exp (-(Real.log k + r) / 2) =
        Real.exp (-Real.log k / 2) * Real.exp (r / 2) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    calc
      _ = r * (Real.exp r * Real.exp (-(Real.log k + r) / 2)) *
          sourceCorrelation explicitSecondDerivative A (Real.log k + r) := by ring
      _ = _ := by rw [hexp]; ring
  rw [he]
  exact (shiftedMomentIntegrand_integrable (sourceCorrelation_twoMomentProfile A hA)
    (Real.log k)).const_mul _

/-- The entire positive-axis plain integral vanishes by the signed zeroth source moment. -/
theorem sourcePlainSampling_integral_zero {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    (∫ u in Ioi (0 : ℝ), sourcePlainSamplingTerm A k u) = 0 := by
  rw [integral_comp_exp_univ]
  have he : (fun r : ℝ ↦ Real.exp r * sourcePlainSamplingTerm A k (Real.exp r)) =
      fun r ↦ Real.exp (-Real.log k / 2) *
        (Real.exp (r / 2) * sourceCorrelation explicitSecondDerivative A (Real.log k + r)) := by
    funext r
    dsimp [sourcePlainSamplingTerm]
    rw [Real.log_exp, ← mul_assoc, ← Real.exp_add, ← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [he, integral_const_mul,
    shifted_zero_moment (sourceCorrelation_twoMomentProfile A hA), mul_zero]

/-- The entire positive-axis logarithmic sampling integral vanishes by the signed first moment. -/
theorem sourceLogSampling_integral_zero {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    (∫ u in Ioi (0 : ℝ), sourceLogSamplingTerm A k u) = 0 := by
  rw [integral_comp_exp_univ]
  have he : (fun r : ℝ ↦ Real.exp r * sourceLogSamplingTerm A k (Real.exp r)) =
      fun r ↦ Real.exp (-Real.log k / 2) *
        shiftedMomentIntegrand (sourceCorrelation explicitSecondDerivative A) (Real.log k) r := by
    funext r
    dsimp [sourceLogSamplingTerm, sourcePlainSamplingTerm, shiftedMomentIntegrand]
    rw [Real.log_exp]
    have hexp : Real.exp r * Real.exp (-(Real.log k + r) / 2) =
        Real.exp (-Real.log k / 2) * Real.exp (r / 2) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    calc
      _ = r * (Real.exp r * Real.exp (-(Real.log k + r) / 2)) *
          sourceCorrelation explicitSecondDerivative A (Real.log k + r) := by ring
      _ = _ := by rw [hexp]; ring
  rw [he, integral_const_mul,
    shiftedMoment_integral_zero (sourceCorrelation_twoMomentProfile A hA), mul_zero]

/-- Actual source remainder after retaining the constant and linear sampling coefficients. -/
noncomputable def correlationTaylorRemainder (A a y : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (a + y) -
    sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a

/-- The remainder derivative tracks the difference of actual correlation derivatives. -/
theorem correlationTaylorRemainder_hasDerivAt {A : ℝ} (hA : 1 ≤ A) (a y : ℝ) :
    HasDerivAt (correlationTaylorRemainder A a)
      (deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
        deriv (sourceCorrelation explicitSecondDerivative A) a) y := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have h := ((CorrelationRegularity.sourceCorrelation_contDiff A hp).differentiable
    (by norm_num) (a + y)).hasDerivAt.comp y ((hasDerivAt_id y).const_add a)
  exact ((h.sub_const _).sub ((hasDerivAt_id y).mul_const _)).congr_deriv (by simp)

/-- The actual remainder has the exact quadratic curvature bound. -/
theorem correlationTaylorRemainder_abs_le {A : ℝ} (hA : 1 ≤ A) (a y : ℝ) :
    |correlationTaylorRemainder A a y| ≤ 162826 / (7623 * A ^ 2) * y ^ 2 / 2 :=
  sourceCorrelation_linear_taylor_bound hA a y

/-- The actual remainder derivative has the exact linear curvature bound. -/
theorem correlationTaylorRemainder_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (a y : ℝ) :
    |deriv (correlationTaylorRemainder A a) y| ≤ 162826 / (7623 * A ^ 2) * |y| := by
  rw [(correlationTaylorRemainder_hasDerivAt hA a y).deriv]
  exact sourceCorrelation_deriv_increment_bound hA a y

end FormalResearch.RiemannHypothesis.SourceSamplingTaylor
