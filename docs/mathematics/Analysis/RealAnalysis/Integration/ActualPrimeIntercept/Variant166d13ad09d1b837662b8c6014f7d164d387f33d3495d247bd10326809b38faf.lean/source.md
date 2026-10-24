# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualPrimeIntercept.Variant166d13ad09d1b837662b8c6014f7d164d387f33d3495d247bd10326809b38faf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `485163c83641ccaf1c4fe68ecff2bbcc62776a52` · SHA-256 `c4a9a9eb388edf36139f26a4743f085e146522e37a1b9149598c3c34f081ed68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualPrimeRemainder.Variant73998db11ef4fe791d905deed163475edebaf437f6f06eb1690e87c06c4891c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73998db11ef4fe791d905deed163475edebaf437f6f06eb1690e87c06c4891c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualPrimeRemainder.Variant73998db11ef4fe791d905deed163475edebaf437f6f06eb1690e87c06c4891c1","mathematical_subject":"Analysis.Integration","original_sha256":"73998db11ef4fe791d905deed163475edebaf437f6f06eb1690e87c06c4891c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/laplace_identity/ActualPrimeIntercept.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualArithmeticIntercept
import ProperPowerAssembly

/-! Literal prime residual integral and independently defined candidate intercept.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
The genuine unweighted actual full-Mangoldt L1 hypothesis remains explicit.
No signed estimate, source-bridge asymptotic, Ramaré import or RH claim. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualPrimeRemainder.Variant73998db11ef4fe791d905deed163475edebaf437f6f06eb1690e87c06c4891c1

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

/- Exact public types, full proofs and trusted dependency audits. -/

#check ContinuousResearch.ActualPrimeIntercept.actualPrimeRemainder
#print axioms ContinuousResearch.ActualPrimeIntercept.actualPrimeRemainder
#print ContinuousResearch.ActualPrimeIntercept.actualPrimeRemainder

#check ContinuousResearch.ActualPrimeIntercept.actualPrimeIntercept
#print axioms ContinuousResearch.ActualPrimeIntercept.actualPrimeIntercept
#print ContinuousResearch.ActualPrimeIntercept.actualPrimeIntercept

#check ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_eq_full_plus_tail
#print axioms ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_eq_full_plus_tail
#print ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_eq_full_plus_tail

#check ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_integrable
#print axioms ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_integrable
#print ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_integrable

#check ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_integral
#print axioms ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_integral
#print ContinuousResearch.ActualPrimeIntercept.actual_prime_remainder_integral

#check ContinuousResearch.ActualPrimeIntercept.actual_prime_intercept_eq
#print axioms ContinuousResearch.ActualPrimeIntercept.actual_prime_intercept_eq
#print ContinuousResearch.ActualPrimeIntercept.actual_prime_intercept_eq
```
