-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedAtomRetained.Variant491ea96345b4992930c2580382078749c2651d423644573a4ccba4237da701d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"491ea96345b4992930c2580382078749c2651d423644573a4ccba4237da701d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ClosedAtomRetained.Variant491ea96345b4992930c2580382078749c2651d423644573a4ccba4237da701d4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"491ea96345b4992930c2580382078749c2651d423644573a4ccba4237da701d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/resume-action/independent-first-atom-review/attempt2/IndependentFirstAtomChallenge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFirstAtomDirectConsumer

/-! Independent hostile closed-atom, sign, orientation and all-real checks. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClosedAtomRetained.Variant491ea96345b4992930c2580382078749c2651d423644573a4ccba4237da701d4

set_option autoImplicit false
namespace RH16IndependentFirstAtomReview
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent Realization EstimateMertensResidual
open FormalResearch.RiemannHypothesis.SourcePairing
open RH16ResumeBudget RH16ResumeApplication
noncomputable section

theorem closed_atom_retained :
    mangoldtLogError (Real.log 2) = -(Real.log 2) / 2 := by
  rw [mangoldtLogError, mangoldtLogPrefix_eq_sum]
  have hi : primePowerInventory (Real.log 2) = {2} := by
    norm_num [primePowerInventory, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  rw [hi]
  simp only [Finset.sum_singleton, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two,
    Nat.cast_ofNat]
  ring

theorem closed_atom_not_empty_prefix : mangoldtLogError (Real.log 2) ≠ -(Real.log 2) := by
  rw [closed_atom_retained]
  have h : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  linarith

theorem reversed_head (A : ℝ) :
    (∫ t in Real.log 2..0, mangoldtLogError t * deriv (criticalPrimeTest A) t) =
      -firstAtomHeadWork A := by
  rw [intervalIntegral.integral_symm]
  rfl

theorem actual_head_strictly_negative (A : ℝ) (hA : 40 ≤ A) : firstAtomHeadWork A < 0 := by
  have h := (firstAtomHeadWork_signed_bounds A hA).2
  have hl : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  nlinarith [sq_pos_of_pos hl]

theorem remaining_lower_implies_full_at_radius (D R A : ℝ) (hR : 40 ≤ R) (hRA : R ≤ A)
    (htail : -D ≤ remainingAtomWork A) : -(D + 5 / 8) ≤ criticalMangoldtWork A :=
  criticalMangoldtWork_lower_of_remaining_lower A D (hR.trans hRA) htail

theorem radius_forty_residual (D A : ℝ) (hA : 40 ≤ A) (htail : -D ≤ remainingAtomWork A) :
    mertensResidual A ≤ D - 3 / 8 + criticalBaselineCorrection 40 :=
  residual_upper_of_remaining_signed_lower D 40 A (by norm_num) hA htail

theorem original_all_real_consumer (D : ℝ)
    (htail : ∀ A : ℝ, 40 ≤ A → -D ≤ remainingAtomWork A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 40)
        (archimedeanMultiplier 0 - 2 * (D - 3 / 8 + criticalBaselineCorrection 40)) ≤
          sourceQuadraticValue explicitSecondDerivative A :=
  all_real_source_lower_of_remaining_signed_tail D 40 (by norm_num) htail

end
end RH16IndependentFirstAtomReview
