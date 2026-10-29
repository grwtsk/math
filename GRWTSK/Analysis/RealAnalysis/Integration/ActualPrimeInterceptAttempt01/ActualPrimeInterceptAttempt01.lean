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
