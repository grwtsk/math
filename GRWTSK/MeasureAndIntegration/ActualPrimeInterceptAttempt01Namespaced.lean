-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualPrimeRemainder.Variante1a9d70366b24271fedd0dc7152053a171713b4abfda80493fc896745590d1bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1a9d70366b24271fedd0dc7152053a171713b4abfda80493fc896745590d1bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualPrimeRemainder.Variante1a9d70366b24271fedd0dc7152053a171713b4abfda80493fc896745590d1bd","mathematical_subject":"Analysis.Integration","original_sha256":"e1a9d70366b24271fedd0dc7152053a171713b4abfda80493fc896745590d1bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/laplace_identity/ActualPrimeIntercept-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualArithmeticIntercept
import ProperPowerAssembly

/-! Literal prime residual integral and independently defined candidate intercept.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
The genuine unweighted actual full-Mangoldt L1 hypothesis remains explicit.
No signed estimate, source-bridge asymptotic, Ramaré import or RH claim. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualPrimeRemainder.Variante1a9d70366b24271fedd0dc7152053a171713b4abfda80493fc896745590d1bd

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualPrimeIntercept
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open ContinuousResearch.SourceRemainderLaplace ContinuousResearch.ActualArithmeticIntercept
open ContinuousResearch.ProperPowerMoments ContinuousResearch.ProperPowerTransport
open ContinuousResearch.ProperPowerAssembly ContinuousResearch.ActualFirstStieltjes

/-- Literal first-prime error centered by the independent first-Mertens constant. -/
def actualPrimeRemainder (t : ℝ) : ℝ :=
  primeLogError t + Real.eulerMascheroniConstant + properPowerMoment 0

/-- Independently defined unweighted prime residual integral, retaining the -2 compensation. -/
def actualPrimeIntercept : ℝ := (∫ t in Ioi (0:ℝ), actualPrimeRemainder t) - 2

theorem actual_prime_remainder_eq_full_plus_tail (t : ℝ) :
    actualPrimeRemainder t = actualRemainder t + omittedOnsetTail t := by
  rw [←actual_complement_eq_omitted_tail]
  unfold actualPrimeRemainder actualRemainder mangoldtLogError mangoldtLogPrefix primeLogError
  ring

theorem actual_prime_remainder_integrable
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    IntegrableOn actualPrimeRemainder (Ioi (0:ℝ)) := by
  have he : actualPrimeRemainder = fun t => actualRemainder t+omittedOnsetTail t :=
    funext actual_prime_remainder_eq_full_plus_tail
  rw [he]
  exact hI.add omittedOnsetTail_integrable_positive

theorem actual_prime_remainder_integral
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    (∫ t in Ioi (0:ℝ), actualPrimeRemainder t) =
      Real.eulerMascheroniConstant^2+2*firstStieltjesConstant+properPowerB1 := by
  simp_rw [actual_prime_remainder_eq_full_plus_tail]
  rw [integral_add hI omittedOnsetTail_integrable_positive,
    actual_remainder_integral_eq_coefficient hI,omittedOnsetTail_integral_eq_B1]

theorem actual_prime_intercept_eq
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    actualPrimeIntercept =
      Real.eulerMascheroniConstant^2+2*firstStieltjesConstant+properPowerB1-2 := by
  rw [actualPrimeIntercept,actual_prime_remainder_integral hI]

end ContinuousResearch.ActualPrimeIntercept
