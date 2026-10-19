import RootActualFullPhysicalPeriodicInterior

/-!
The actual signed period mean is evaluated against the genuine source test.
Its exact source antiderivative turns the whole mean integral into both traces;
this retains the actual mean rather than cancelling it with a different main.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualRetainedMeanTrace
open MeasureTheory Set
open scoped Interval
open SourcePairing SourceActualCovariantKernel SourceActualDoubleMixedKernel
open RootActualFullPhysicalPeriodicInterior SourceActualPeriodicInteriorAbel
open SourceActualPeriodicColumnPrimitive SourceActualAdjointAbelPrimitives
open RootActualCriticalColumnTransfer RootActualDoubleAdjointTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateBetaCentering Realization RH16IndependentChallengeNext
noncomputable section

/-- The genuine primitive of the original odd-jet source test in the column variable. -/
def actualRetainedMeanSourcePrimitive (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) +
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2)

/-- The full boundary includes both actual mean source traces. -/
def actualMeanResolvedColumnBoundary (A t : ℝ) : ℝ :=
  actualPeriodicAdjustedColumnBoundary A t -
    actualCenteredPrefixPeriodMean (vaughanCutoff A) *
      (actualRetainedMeanSourcePrimitive A t (actualColumnUpper A) -
        actualRetainedMeanSourcePrimitive A t
          (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)))

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  have hc := actual_correlation_contDiff_four A hA
  simpa only [iteratedDeriv_succ] using
    ((hc.differentiable_iteratedDeriv n (by exact_mod_cast hn)) z).hasDerivAt

/-- Only the original source jets are used in the exact column antiderivative. -/
theorem actualRetainedMeanSourcePrimitive_hasDerivAt {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (actualRetainedMeanSourcePrimitive A t) (actualTwistedTimeDensity A t s) s := by
  have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h2 := (jet_hasDerivAt hA 2 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hd := he.mul (h2.add (h1.div_const 2))
  unfold actualRetainedMeanSourcePrimitive actualTwistedTimeDensity
  convert hd using 1 <;> try rfl
  simp only [Function.comp_apply, id_eq, Pi.sub_apply, Pi.neg_apply]
  ring

/-- The actual source derivative preserves its third-minus-quarter-first sectors. -/
theorem actualRetainedMeanSourcePrimitive_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (actualRetainedMeanSourcePrimitive A t) s = actualTwistedTimeDensity A t s :=
  (actualRetainedMeanSourcePrimitive_hasDerivAt hA t s).deriv

/-- The genuine source mean integral is exactly both column traces on every finite interval. -/
theorem actualTwistedTimeDensity_integral_eq_mean_traces {A : ℝ} (hA : 0 < A)
    (t l b : ℝ) :
    (∫ s in l..b, actualTwistedTimeDensity A t s) =
      actualRetainedMeanSourcePrimitive A t b - actualRetainedMeanSourcePrimitive A t l := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 := hc.continuous_iteratedDeriv 1 (by norm_num)
  have h3 := hc.continuous_iteratedDeriv 3 (by norm_num)
  have ht : Continuous (actualTwistedTimeDensity A t) := by
    unfold actualTwistedTimeDensity
    fun_prop
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ => actualRetainedMeanSourcePrimitive_hasDerivAt hA t s) (ht.intervalIntegrable l b)

/-- This primitive vanishes only at the true closed upper support, including its source jets. -/
theorem actualRetainedMeanSourcePrimitive_zero_right {A t s : ℝ} (hA : 1 ≤ A)
    (hz : 2 * A ≤ t + s) : actualRetainedMeanSourcePrimitive A t s = 0 := by
  unfold actualRetainedMeanSourcePrimitive
  rw [actualCorrelation_jet_zero_right A hA 2 _ hz,
    actualCorrelation_jet_zero_right A hA 1 _ hz]
  simp

/-- The original adjusted inner work retains the resolved mean traces and full physical row. -/
theorem actual_adjusted_inner_eq_mean_traces_physical {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualCriticalAdjustedColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s) =
      actualMeanResolvedColumnBoundary A t - actualFullPhysicalPeriodicRow A t := by
  rw [actual_adjusted_inner_eq_mean_periodic hA t,
    actualTwistedTimeDensity_integral_eq_mean_traces (by linarith : 0 < A),
    ← actualFullPhysicalPeriodicRow_eq_finite_abel hA t]
  rfl

end
end FormalResearch.RiemannHypothesis.RootActualRetainedMeanTrace
