# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualPrimeIntercept.Variant2cc5c18ddb3e974fc42989eced2bf81fc36d36b8630aa889960aea99db770e8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ee96ff12e1f8bb1ea3c3bbba9c8aa1c85292b5d` · SHA-256 `2cc5c18ddb3e974fc42989eced2bf81fc36d36b8630aa889960aea99db770e8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualArithmeticIntercept
import ProperPowerAssembly

/-! Literal prime residual integral and independently defined candidate intercept.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
The genuine unweighted actual full-Mangoldt L1 hypothesis remains explicit.
No signed estimate, source-bridge asymptotic, Ramaré import or RH claim. -/
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
