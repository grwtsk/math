-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.AnalyticOrderAtSubPow.Variantffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.AnalyticOrderAtSubPow.Variantffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"ffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1be2adb07e850a21a2cfc98e/workspace/Audit/ComplexAnalysisResidueExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.ComplexAnalysis.ResidueAPI
import Mathlib.Tactic

/-!
# Generic local-residue examples

Two coefficient-free examples exercising the frozen Surface residue API.
They are submission-gate tests for the prospective mathlib extraction and do
not mention Dirichlet characters, L-functions, explicit formulas, RH, or GRH.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.AnalyticOrderAtSubPow.Variantffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347

open Filter Set
open scoped Topology

namespace Surface.Audit.ComplexAnalysisResidueExamples

private theorem analyticOrderAt_sub_pow
    (z : ℂ) (n : ℕ) :
    analyticOrderAt (fun w : ℂ ↦ (w - z) ^ n) z = n := by
  have hbase : AnalyticAt ℂ (fun w : ℂ ↦ w - z) z := by
    fun_prop
  have hbaseOrder :
      analyticOrderAt (fun w : ℂ ↦ w - z) z = 1 := by
    apply hbase.analyticOrderAt_eq_natCast.mpr
    refine ⟨fun _ ↦ 1, analyticAt_const, one_ne_zero, ?_⟩
    filter_upwards
    intro w
    simp [smul_eq_mul]
  change analyticOrderAt ((fun w : ℂ ↦ w - z) ^ n) z = n
  rw [analyticOrderAt_pow hbase, hbaseOrder]
  simp

/-- The local coefficient of the logarithmic derivative of a pure monomial
is its exponent. -/
example (z : ℂ) (n : ℕ) :
    Surface.Core.ComplexAnalysis.HasResidueCoefficientAt
      (logDeriv (fun w : ℂ ↦ (w - z) ^ n)) z (n : ℂ) := by
  apply Surface.Core.ComplexAnalysis.logDeriv_hasResidueCoefficientAt_order
    (by fun_prop)
  exact analyticOrderAt_sub_pow z n

/-- Multiplication by the nonvanishing analytic unit `exp` preserves the
small-circle logarithmic-derivative multiplicity integral. -/
example (z : ℂ) (n : ℕ) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        Surface.Core.ComplexAnalysis.normalizedResidueCircleIntegral
          (logDeriv
            (fun w : ℂ ↦ (w - z) ^ n * Complex.exp w))
          z r = (n : ℂ) := by
  have hpow :
      AnalyticAt ℂ (fun w : ℂ ↦ (w - z) ^ n) z := by
    fun_prop
  have hexp : AnalyticAt ℂ Complex.exp z := analyticAt_cexp
  apply Surface.Core.ComplexAnalysis.logDeriv_smallCircle_normalizedIntegral_eq_order
    (hf := hpow.mul hexp)
  change analyticOrderAt
      ((fun w : ℂ ↦ (w - z) ^ n) * Complex.exp) z = n
  rw [analyticOrderAt_mul hpow hexp,
    analyticOrderAt_sub_pow z n,
    hexp.analyticOrderAt_eq_zero.mpr (Complex.exp_ne_zero z)]
  simp

end Surface.Audit.ComplexAnalysisResidueExamples
