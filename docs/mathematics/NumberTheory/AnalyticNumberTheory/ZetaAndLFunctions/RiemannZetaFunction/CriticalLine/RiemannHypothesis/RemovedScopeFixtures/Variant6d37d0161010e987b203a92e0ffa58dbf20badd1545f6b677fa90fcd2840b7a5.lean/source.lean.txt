-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointOneRequired.Variant09bbb2ca38e89ff0b5746d80465839dda69d723f951647fa3be690190da6071f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09bbb2ca38e89ff0b5746d80465839dda69d723f951647fa3be690190da6071f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointOneRequired.Variant09bbb2ca38e89ff0b5746d80465839dda69d723f951647fa3be690190da6071f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"09bbb2ca38e89ff0b5746d80465839dda69d723f951647fa3be690190da6071f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle18/regent-critical20/native-replay-v1/overlay/RemovedScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

/-! Actual private scope guards; these are excluded from the ten candidate declarations.
AI attribution: developed with OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointOneRequired.Variant09bbb2ca38e89ff0b5746d80465839dda69d723f951647fa3be690190da6071f

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures
open SourceCriticalRemovedPrimeWork SourceCriticalDecayWork SourcePairedPrimeAverages
open SourcePairedTailQuadrature SourcePairedTailTest SourceDiagonalMainTerm
open WeightedPrimeAbel

/-- The actual endpoint compensation cannot be silently dropped. -/
theorem endpoint_one_required {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A ≠ pairedErrorContrast A-diagonalMainCoefficient A*A-
      criticalDecayNegativeMean A := by
  rw [criticalRemovedPairedWork_eq hA]
  linarith

/-- The complete source drift precedes the new independent scalar compensation. -/
theorem complete_drift_required {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A ≠ primeLogSum (2*A) (pairedTailTest A)-
      diagonalMainCoefficient A*A+1-criticalDecayNegativeMean A := by
  rw [criticalRemovedPairedWork_eq_prime_quadrature hA]
  have hd := pairedTailTest_drift_pos hA
  linarith

/-- The actual error minus decay still has a negative oriented difference before the first prime. -/
theorem actual_removed_error_negative_difference :
    (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := Real.add_one_le_exp (-(Real.log 2/2)/2)
  rw [show (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) =
      (primeLogError (Real.log 2/2)-primeLogError 0)+
        (criticalDecay 0-criticalDecay (Real.log 2/2)) by ring,
    primeError_difference_before_first (by linarith) (by linarith)]
  simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures
#check endpoint_one_required
#print axioms endpoint_one_required
#check complete_drift_required
#print axioms complete_drift_required
#check actual_removed_error_negative_difference
#print axioms actual_removed_error_negative_difference
