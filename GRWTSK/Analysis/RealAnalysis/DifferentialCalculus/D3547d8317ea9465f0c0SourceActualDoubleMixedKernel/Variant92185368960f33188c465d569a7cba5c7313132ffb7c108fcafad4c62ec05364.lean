import ActualFourthCorrelationCalibration
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
Actual two-sided log-column differentiation retains its lower correlation jets.
A second mixed Abel derivative exposes C4-C2/2+C/16, rather than pure C4.
The actual origin value contains both genuine derivative energies and one sixteenth.
No arithmetic row, independent main, closed unit, diagonal or boundary is removed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualDoubleMixedKernel
open MeasureTheory
open SourcePairing SourceCorrelationCurvature SourceSecondProfileCorrelation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation
open RH16IndependentChallengeNext
noncomputable section

/-- The literal original source column in logarithmic positive-column coordinates. -/
def actualLogColumnSource (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    sourceCorrelation explicitSecondDerivative A (t + s)

/-- The same second-minus-zeroth kernel as the original checked mixed work. -/
def actualLogMixedDensity (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) -
      sourceCorrelation explicitSecondDerivative A (t + s) / 4)

/-- The actual fourth mixed log derivative retains both its second and zeroth sectors. -/
def actualLogFourthKernel (A z : ℝ) : ℝ :=
  iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
    iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 2 +
      sourceCorrelation explicitSecondDerivative A z / 16

private def timeColumnDerivative (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) +
      sourceCorrelation explicitSecondDerivative A (t + s) / 2)

private def timeMixedDerivative (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) +
      iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
      sourceCorrelation explicitSecondDerivative A (t + s) / 8)

private theorem actual_jet_hasDerivAt (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  have hc := actual_correlation_contDiff_four A hA
  simpa only [iteratedDeriv_succ] using
    ((hc.differentiable_iteratedDeriv n (by exact_mod_cast hn)) z).hasDerivAt

private theorem time_column_hasDerivAt (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (fun x => actualLogColumnSource A x s) (timeColumnDerivative A t s) t := by
  have h0 := (actual_jet_hasDerivAt A hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul h0
  convert hh using 1 <;> try rfl
  simp only [timeColumnDerivative, Function.comp_apply, iteratedDeriv_zero, id_eq,
    ]
  ring

private theorem log_time_column_hasDerivAt (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (timeColumnDerivative A t) (actualLogMixedDensity A t s) s := by
  have h0 := (actual_jet_hasDerivAt A hA 0 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h1 := (actual_jet_hasDerivAt A hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hh := he.mul (h1.add (h0.div_const 2))
  convert hh using 1 <;> try rfl
  simp only [actualLogMixedDensity, Function.comp_apply, iteratedDeriv_zero, id_eq,
    Pi.add_apply, Pi.neg_apply]
  ring

/-- The original first mixed derivative retains the negative quarter correlation sector. -/
theorem actualLogColumnSource_mixed_derivative (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    deriv (fun y => deriv (fun x => actualLogColumnSource A x y) t) s =
      actualLogMixedDensity A t s := by
  have he : (fun y => deriv (fun x => actualLogColumnSource A x y) t) =
      timeColumnDerivative A t := funext fun y => (time_column_hasDerivAt A hA t y).deriv
  rw [he]
  exact (log_time_column_hasDerivAt A hA t s).deriv

private theorem time_mixed_hasDerivAt (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (fun x => actualLogMixedDensity A x s) (timeMixedDerivative A t s) t := by
  have h0 := (actual_jet_hasDerivAt A hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h2 := (actual_jet_hasDerivAt A hA 2 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (h2.sub (h0.div_const 4))
  convert hh using 1 <;> try rfl
  simp only [timeMixedDerivative, Function.comp_apply, iteratedDeriv_zero, id_eq,
    Pi.sub_apply]
  ring

private theorem log_time_mixed_hasDerivAt (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (timeMixedDerivative A t)
      (Real.exp (t / 2) * Real.exp (-s / 2) * actualLogFourthKernel A (t + s)) s := by
  have h0 := (actual_jet_hasDerivAt A hA 0 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h1 := (actual_jet_hasDerivAt A hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h2 := (actual_jet_hasDerivAt A hA 2 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h3 := (actual_jet_hasDerivAt A hA 3 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hh := he.mul (((h3.add (h2.div_const 2)).sub (h1.div_const 4)).sub (h0.div_const 8))
  convert hh using 1 <;> try rfl
  simp only [actualLogFourthKernel, Function.comp_apply, iteratedDeriv_zero, id_eq,
    Pi.add_apply, Pi.sub_apply, Pi.neg_apply]
  ring

/-- A second mixed derivative gives C4-C2/2+C/16; the lower jets do not disappear. -/
theorem actualLogMixedDensity_mixed_derivative (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    deriv (fun y => deriv (fun x => actualLogMixedDensity A x y) t) s =
      Real.exp (t / 2) * Real.exp (-s / 2) * actualLogFourthKernel A (t + s) := by
  have he : (fun y => deriv (fun x => actualLogMixedDensity A x y) t) =
      timeMixedDerivative A t := funext fun y => (time_mixed_hasDerivAt A hA t y).deriv
  rw [he]
  exact (log_time_mixed_hasDerivAt A hA t s).deriv

/-- Positive logarithmic coordinates identify the unchanged original physical source column. -/
theorem actualLogColumnSource_at_log (A t u : ℝ) (hu : 0 < u) :
    actualLogColumnSource A t (Real.log u) =
      Real.exp (t / 2) / Real.sqrt u *
        sourceCorrelation explicitSecondDerivative A (t + Real.log u) := by
  unfold actualLogColumnSource
  rw [show -Real.log u / 2 = -(Real.log u / 2) by ring, Real.exp_neg,
    Real.exp_half (Real.log u), Real.exp_log hu]
  ring

/-- The actual fourth mixed kernel at its center retains both positive source energies. -/
theorem actualLogFourthKernel_at_zero (A : ℝ) (hA : 1 ≤ A) :
    actualLogFourthKernel A 0 =
      (∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) +
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) / 2 + 1 / 16 := by
  have hp : 0 < A := by linarith
  have h4 : iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) 0 =
      ∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 := by
    rw [actual_correlation_iterated_fourth_eq A hp, actualSecondProfileCorrelation]
    simp only [sub_zero, ← pow_two]
    exact actualSecondProfile_square_integral_eq_actual_energy A hp
  have h2 : iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) 0 =
      -(∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    simp only [iteratedDeriv_succ, iteratedDeriv_zero]
    rw [sourceCorrelation_second_deriv_eq_integral hp]
    simp only [sub_zero, ← pow_two]
  rw [actualLogFourthKernel, h4, h2, actual_correlation_at_zero A hA]
  ring

/-- This actual kernel has a nonvanishing center; no global pure A^-4 gain follows. -/
theorem actualLogFourthKernel_at_zero_ge (A : ℝ) (hA : 1 ≤ A) :
    1 / 16 ≤ actualLogFourthKernel A 0 := by
  rw [actualLogFourthKernel_at_zero A hA]
  have h1 : 0 ≤ ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 :=
    integral_nonneg fun x => sq_nonneg _
  have h2 : 0 ≤ ∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 :=
    integral_nonneg fun x => sq_nonneg _
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualDoubleMixedKernel
