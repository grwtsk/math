-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.ActualRieszCriticalNumerator.Variant51a1e8ccc34096a95c2442132dbceb0ed48ab897b59c01f75fb0de7c5eb2b57a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51a1e8ccc34096a95c2442132dbceb0ed48ab897b59c01f75fb0de7c5eb2b57a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.ActualRieszCriticalNumerator.Variant51a1e8ccc34096a95c2442132dbceb0ed48ab897b59c01f75fb0de7c5eb2b57a","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"51a1e8ccc34096a95c2442132dbceb0ed48ab897b59c01f75fb0de7c5eb2b57a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next-rate-ingestion/direct-continuation/inputs/scratch/rh16-continuation-20261006-signed-next/actual-riesz-critical-center/SourceActualRieszCriticalCenter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszCenteredReconstruction
import ActualCriticalOrdinateBudget
import Zeta23.WeilEF.XiLogDeriv
import Zeta23.WeilEF.GammaRBracket
import Mathlib.Analysis.Analytic.IsolatedZeros

/-!
The authentic completed functional equation calibrates the limiting linear
center of the actual closed Mangoldt Riesz primitive. The local twice-slope
regularization concerns the displayed zeta numerator; it does not assert a
Laplace integral outside its initial convergence domain or a uniform signed
arithmetic bound. The finite source center retains its rational correction.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.ActualRieszCriticalNumerator.Variant51a1e8ccc34096a95c2442132dbceb0ed48ab897b59c01f75fb0de7c5eb2b57a

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszCriticalCenter
open Complex Filter Topology
open SourcePairing SourceActualRieszCenteredReconstruction ActualCriticalOrdinateBudget

/-- The genuine zeta numerator prescribed by the initial Riesz Laplace formula. -/
def actualRieszCriticalNumerator (z : ℂ) : ℂ :=
  -logDeriv riemannZeta (1 / 2 + z) - 1 / (z - 1 / 2)

/-- The limiting linear center, using the actual source archimedean multiplier. -/
def actualRieszLimitingLinearCenter : ℝ := archimedeanMultiplier 0 / 2 + 2

/-- The second local center is the derivative of the authentic numerator. -/
def actualRieszLocalConstantCenter : ℂ := deriv actualRieszCriticalNumerator 0

/-- The genuine local removable value, rather than a totalized quotient at zero. -/
def actualRieszCriticalRegularization : ℂ → ℂ :=
  dslope (dslope actualRieszCriticalNumerator 0) 0

/-- Completed-zeta symmetry fixes its logarithmic derivative at the real midpoint. -/
theorem actualCompletedZeta_logDeriv_half :
    logDeriv completedRiemannZeta (1 / 2 : ℂ) = 0 := by
  have h := Zeta23.WeilEF.logDeriv_completedZeta_one_sub (1 / 2 : ℂ)
    (by norm_num) (by norm_num)
  norm_num at h
  linear_combination h / 2

/-- The nonzero actual zeta value and genuine gamma bracket calibrate the midpoint. -/
theorem actualZeta_logDeriv_half :
    logDeriv riemannZeta (1 / 2 : ℂ) = -(archimedeanMultiplier 0 : ℂ) / 2 := by
  have hc := Zeta23.WeilEF.logDeriv_completedZeta (1 / 2 : ℂ)
    (by norm_num) actual_zeta_half_ne_zero (by norm_num)
  rw [actualCompletedZeta_logDeriv_half] at hc
  have hg := Zeta23.WeilEF.gammaR_bracket 0
  simp only [Complex.ofReal_zero, zero_mul, add_zero, sub_zero, zero_div] at hg
  have hg2 : logDeriv Gammaℝ (1 / 2) + logDeriv Gammaℝ (1 / 2) =
      (archimedeanMultiplier 0 : ℂ) := by
    simpa [archimedeanMultiplier] using hg
  linear_combination -hc - hg2 / 2

/-- The limiting center is exactly the authentic numerator's value at zero. -/
theorem actualRieszCriticalNumerator_zero :
    actualRieszCriticalNumerator 0 = (actualRieszLimitingLinearCenter : ℂ) := by
  unfold actualRieszCriticalNumerator actualRieszLimitingLinearCenter
  rw [add_zero, actualZeta_logDeriv_half]
  push_cast
  norm_num
  ring

/-- Only local analyticity is used: actual zeta is nonzero at the midpoint. -/
theorem actualRieszCriticalNumerator_analyticAt_zero :
    AnalyticAt ℂ actualRieszCriticalNumerator 0 := by
  have hz : AnalyticAt ℂ riemannZeta (1 / 2 : ℂ) :=
    Zeta23.WeilEF.analyticAt_riemannZeta (by norm_num)
  have hl : AnalyticAt ℂ (logDeriv riemannZeta) (1 / 2 : ℂ) := by
    have heq : logDeriv riemannZeta =
        fun z : ℂ => deriv riemannZeta z / riemannZeta z := by
      funext z
      rw [logDeriv_apply]
    rw [heq]
    exact hz.deriv.div hz actual_zeta_half_ne_zero
  have hs : AnalyticAt ℂ (fun z : ℂ => 1 / 2 + z) 0 :=
    analyticAt_const.add analyticAt_id
  have hcomp : AnalyticAt ℂ (fun z : ℂ => logDeriv riemannZeta (1 / 2 + z)) 0 := by
    have hl' : AnalyticAt ℂ (logDeriv riemannZeta) ((fun z : ℂ => 1 / 2 + z) 0) := by
      simpa only [add_zero] using hl
    exact hl'.comp hs
  have hi : AnalyticAt ℂ (fun z : ℂ => 1 / (z - 1 / 2)) 0 :=
    analyticAt_const.div (analyticAt_id.sub analyticAt_const) (by norm_num)
  exact hcomp.neg.sub hi

/-- Both local numerator poles are removed by a genuine analytic extension. -/
theorem actualRieszCriticalRegularization_analyticAt_zero :
    AnalyticAt ℂ actualRieszCriticalRegularization 0 := by
  have hp := actualRieszCriticalNumerator_analyticAt_zero.hasFPowerSeriesAt
  have hp1 := hp.has_fpower_series_dslope_fslope
  exact hp1.has_fpower_series_dslope_fslope.analyticAt

/-- Away from zero the local extension is the fully centered displayed quotient. -/
theorem actualRieszCriticalRegularization_eq {z : ℂ} (hz : z ≠ 0) :
    actualRieszCriticalRegularization z =
      (actualRieszCriticalNumerator z - (actualRieszLimitingLinearCenter : ℂ) -
        actualRieszLocalConstantCenter * z) / z ^ 2 := by
  unfold actualRieszCriticalRegularization actualRieszLocalConstantCenter
  rw [dslope_of_ne _ hz, slope_def_field, dslope_of_ne _ hz, slope_def_field,
    dslope_same, actualRieszCriticalNumerator_zero]
  simp only [sub_zero]
  field_simp

/-- The finite source center keeps the full explicitly evaluated continuous payment. -/
theorem actualRiesz_finite_center_payment (A : ℝ) :
    actualRieszLimitingLinearCenter - actualRieszLinearCenter A =
      2 - actualRieszContinuousMagnitude A := by
  unfold actualRieszLimitingLinearCenter actualRieszLinearCenter
  ring

/-- The source-specific finite payment is nonnegative and has an explicit quadratic bound. -/
theorem actualRiesz_finite_center_payment_bound {A : ℝ} (hA : 0 < A) :
    0 ≤ actualRieszLimitingLinearCenter - actualRieszLinearCenter A ∧
      actualRieszLimitingLinearCenter - actualRieszLinearCenter A ≤ 56 / A ^ 2 := by
  rw [actualRiesz_finite_center_payment]
  have hd : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  have hA2 : 0 < A ^ 2 := by positivity
  have heq : 2 - actualRieszContinuousMagnitude A =
      (272 * A ^ 2 + 14688) / (7 * A ^ 4 + 272 * A ^ 2 + 7344) := by
    unfold actualRieszContinuousMagnitude
    field_simp
    ring
  rw [heq]
  constructor
  · positivity
  · apply (div_le_div_iff₀ hd hA2).2
    nlinarith [sq_nonneg (A ^ 2)]

end FormalResearch.RiemannHypothesis.SourceActualRieszCriticalCenter
