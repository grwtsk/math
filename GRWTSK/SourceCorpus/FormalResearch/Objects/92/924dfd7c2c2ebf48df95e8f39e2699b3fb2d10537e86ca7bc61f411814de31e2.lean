import FormalResearch.RiemannHypothesis.Conversation.ActualLogarithmicSampling

/-!
# The full integer census retains its exponential cutoff cell

Every integer from one through floor(exp(2A/r)) remains in the actual source
census. The final unit cell extends beyond the cutoff; its excess contributes
zero because the unchanged source correlation vanishes at and beyond the
support boundary. A uniform coarse quadrature bound is proved for 0<r<=6 and
A>=8. It is not the sharper paper constant or a signed arithmetic estimate.
Human full-census direction: grwtsk contributors. Local support, cutoff and
quadrature consumer: OpenAI Codex. Qualified sources retain their origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualCensusCutoff
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateTwoMomentSampling
open ActualLogarithmicSampling MeasureTheory Set
noncomputable section

/-- The census cutoff in this module, with the following exact parameterization.

def censusCutoff (A r : ℝ) : ℝ := Real.exp (2 * A / r)
-/
def censusCutoff (A r : ℝ) : ℝ := Real.exp (2 * A / r)
/-- The census count in this module, with the following exact parameterization.

def censusCount (A r : ℝ) : ℕ := ⌊censusCutoff A r⌋₊
-/
def censusCount (A r : ℝ) : ℕ := ⌊censusCutoff A r⌋₊
/-- The actual census in this module, with the following exact parameterization.

def actualCensus (A r : ℝ) : ℝ := leftSampleSum (logarithmicSample A r) (censusCount A r)
-/
def actualCensus (A r : ℝ) : ℝ :=
  leftSampleSum (logarithmicSample A r) (censusCount A r)

theorem actual_sample_zero_at_and_beyond_cutoff {A r x : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) (hx : censusCutoff A r ≤ x) :
    logarithmicSample A r x = 0 := by
  have hX : 0 < censusCutoff A r := Real.exp_pos _
  have hlog := Real.log_le_log hX hx
  rw [censusCutoff, Real.log_exp] at hlog
  have ht : 2 * A ≤ r * Real.log x := by
    have h := mul_le_mul_of_nonneg_left hlog hr.le
    rw [mul_div_cancel₀ (2 * A) hr.ne'] at h
    exact h
  exact sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (ht.trans (le_abs_self _))

theorem actual_census_integral_retains_final_cell {A r : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) :
    (∫ x in (1 : ℝ)..(censusCount A r + 1 : ℝ), logarithmicSample A r x) =
      ∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x := by
  have hX1 : 1 ≤ censusCutoff A r := Real.one_le_exp_iff.mpr (by positivity)
  have hXN : censusCutoff A r ≤ censusCount A r + 1 :=
    (Nat.lt_floor_add_one _).le
  have hc : ContinuousOn (logarithmicSample A r) (Ioi 0) :=
    fun x hx ↦ (actual_logarithmic_hasDerivAt hA r hx).continuousAt.continuousWithinAt
  have hi {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
      IntervalIntegrable (logarithmicSample A r) volume a b := by
    apply ContinuousOn.intervalIntegrable
    apply hc.mono
    rw [uIcc_of_le hab]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
  have hz : (∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ),
      logarithmicSample A r x) = 0 := by
    calc
      _ = ∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hXN] at hx
        exact actual_sample_zero_at_and_beyond_cutoff hA hr hx.1
      _ = 0 := intervalIntegral.integral_zero
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (hi (by norm_num) hX1) (hi hX1 hXN)
  rw [hz, add_zero] at hs
  exact hs.symm

theorem actual_census_quadrature_price_le_fourteen {A r : ℝ}
    (hA : 8 ≤ A) (hr : 0 < r) (hr6 : r ≤ 6) :
    |actualCensus A r -
      (∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x)| ≤ 14 := by
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have hX1 : 1 ≤ censusCutoff A r := Real.one_le_exp_iff.mpr (by positivity)
  have hXpos : 0 < censusCutoff A r := Real.exp_pos _
  have hNpos : 0 < (censusCount A r + 1 : ℝ) := by positivity
  have hN2X : (censusCount A r + 1 : ℝ) ≤ 2 * censusCutoff A r := by
    have hn : (censusCount A r : ℝ) ≤ censusCutoff A r := Nat.floor_le hXpos.le
    linarith
  have hl := Real.log_le_log hNpos hN2X
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hXpos.ne', censusCutoff,
    Real.log_exp] at hl
  have hlog2 : Real.log (2 : ℝ) ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h
    exact h
  have hco : 0 ≤ 5 * r / A := by positivity
  have hco4 : 5 * r / A ≤ 4 := (div_le_iff₀ hApos).mpr (by nlinarith)
  have hp : (5 * r / A) * Real.log (censusCount A r + 1 : ℝ) ≤ 14 := by
    calc
      _ ≤ (5 * r / A) * (Real.log 2 + 2 * A / r) :=
        mul_le_mul_of_nonneg_left hl hco
      _ = (5 * r / A) * Real.log 2 + 10 := by field_simp; ring
      _ ≤ 14 := by nlinarith [mul_le_mul_of_nonneg_left hlog2 hco]
  have h := actual_logarithmic_complete_sampling_price hA1 hr.le (censusCount A r)
  rw [actual_census_integral_retains_final_cell hA1 hr] at h
  exact h.trans hp

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCensusCutoff
