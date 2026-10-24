import SourceActualMertensGammaCalibration
import SourceActualXiErrorCriticalCovariance
import SourceFiveCancelledFactorialBudget

/-!
The genuine ordinary gamma-centered error limit gives an actual small-amplitude
threshold. The original critical covariance retains its complete early head
and its signed late source. This finite quantitative decomposition does not
control the growing critical factor or supply an eventual uniform witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceOrdinarySplit
open MeasureTheory Set Filter
open scoped Interval Topology
open SourceMangoldtAbel SourceActualXiErrorConvolution SourceActualXiErrorConvolutionKernel
open SourceActualMertensGammaCalibration SourceFiveCancelledFactorialBudget SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation
noncomputable section
local notation "B" => Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|

/-- The literal zeroth/first critical source density after exact convolution return. -/
def actualCriticalErrorDensity (A t : ℝ) : ℝ :=
  actualCenteredMangoldtLogError t * Real.exp (t / 2) *
    (sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2)

/-- The complete actual critical covariance remains on the original seven-to-support window. -/
def actualCriticalErrorCovariance (A : ℝ) : ℝ :=
  ∫ t in Real.log 7..2 * A, actualCriticalErrorDensity A t

/-- The full fixed early head is signed and independent of the radius. -/
def actualEarlyCriticalErrorCenter (T : ℝ) : ℝ :=
  (1 / 4 : ℝ) * ∫ t in Real.log 7..T,
    actualCenteredMangoldtLogError t * Real.exp (t / 2)

private theorem B_nonneg : 0 ≤ B := by
  positivity

private theorem error_integrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualCenteredMangoldtLogError volume 0 b := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  exact he.add intervalIntegrable_const

/-- Genuine actual local L1 precedes every split and signed integral comparison. -/
theorem actualCriticalErrorDensity_intervalIntegrable {A l b : ℝ}
    (hA : 91 ≤ A) (hl : 0 ≤ l) (hlb : l ≤ b) :
    IntervalIntegrable (actualCriticalErrorDensity A) volume l b := by
  have hp : 0 < A := by linarith
  have hi := (error_integrable (show 0 ≤ b by linarith)).mono_set (by
    rw [uIcc_of_le (show 0 ≤ b by linarith), uIcc_of_le hlb]
    exact Icc_subset_Icc hl le_rfl)
  have hc := sourceCorrelation_contDiff_two hp
  have hD : Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) :=
    (sourceCorrelation_deriv_contDiff hp).continuous
  exact (hi.mul_continuousOn (by fun_prop)).mul_continuousOn
    ((hc.continuous.div_const 4).add (hD.div_const 2)).continuousOn

/-- The exact real split retains the entire early and late source intervals. -/
theorem actualCriticalErrorCovariance_split {A T : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) :
    actualCriticalErrorCovariance A =
      (∫ t in Real.log 7..T, actualCriticalErrorDensity A t) +
        ∫ t in T..2 * A, actualCriticalErrorDensity A t := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  exact (intervalIntegral.integral_add_adjacent_intervals
    (actualCriticalErrorDensity_intervalIntegrable hA ha hT)
    (actualCriticalErrorDensity_intervalIntegrable hA (by linarith) hTA)).symm

private theorem exponential_mass {l b : ℝ} (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (t / 2)) ≤ 2 * Real.exp (b / 2) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
      (Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).div_const 2).exp.const_mul 2) using 1 <;> simp
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)]
  have := Real.exp_pos (l / 2)
  linarith

private theorem early_kernel_error {A T t : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htT : t ≤ T) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - (1 / 4 : ℝ)| ≤
        (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
  have h0 := actualCorrelation_sub_one_abs_le_five hA t
  have h1 := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at h1
  have he : sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - (1 / 4 : ℝ) =
        (sourceCorrelation explicitSecondDerivative A t - 1) / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by ring
  rw [he]
  have hh := abs_add_le ((sourceCorrelation explicitSecondDerivative A t - 1) / 4)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
  rw [abs_div, abs_div] at hh
  norm_num only [abs_ofNat] at hh
  have hs : t ^ 2 ≤ T ^ 2 := by nlinarith
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t - 1| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := hh
    _ ≤ (5 / 2 / A ^ 2 * t ^ 2) / 4 + (5 / A ^ 2 * t) / 2 :=
      add_le_add (div_le_div_of_nonneg_right h0 (by norm_num))
        (div_le_div_of_nonneg_right h1 (by norm_num))
    _ ≤ _ := by
      have hp : 0 < A ^ 2 := by positivity
      apply (le_div_iff₀ hp).2
      field_simp
      nlinarith

/-- The actual finite early head approaches its independent signed center at an explicit rate. -/
theorem actualCriticalErrorCovariance_early_error_abs_le {A T : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) :
    |(∫ t in Real.log 7..T, actualCriticalErrorDensity A t) -
        actualEarlyCriticalErrorCenter T| ≤
      2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hT0 : 0 ≤ T := by linarith
  have hi := actualCriticalErrorDensity_intervalIntegrable hA ha hT
  have he := (error_integrable hT0).mono_set (by
    rw [uIcc_of_le hT0, uIcc_of_le hT]
    exact Icc_subset_Icc ha le_rfl)
  have hg := he.mul_continuousOn (by fun_prop : ContinuousOn
    (fun t : ℝ => Real.exp (t / 2)) (uIcc (Real.log 7) T))
  let k : ℝ := B * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ => k * Real.exp (t / 2))
      volume (Real.log 7) T := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) T,
      ‖actualCriticalErrorDensity A t - (1 / 4 : ℝ) *
        (actualCenteredMangoldtLogError t * Real.exp (t / 2))‖ ≤
          k * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := by linarith [ht.1]
    have hh := early_kernel_error hA ht0 ht.2
    have hE := actualCenteredMangoldtLogError_abs_le ht0
    rw [Real.norm_eq_abs, show actualCriticalErrorDensity A t - (1 / 4 : ℝ) *
        (actualCenteredMangoldtLogError t * Real.exp (t / 2)) =
          actualCenteredMangoldtLogError t * Real.exp (t / 2) *
          (sourceCorrelation explicitSecondDerivative A t / 4 +
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - 1 / 4)
              by unfold actualCriticalErrorDensity; ring,
      abs_mul, abs_mul, Real.abs_exp]
    have hP : 0 ≤ (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by positivity
    calc
      _ ≤ (B * Real.exp (t / 2)) *
          ((5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2) :=
        mul_le_mul (mul_le_mul_of_nonneg_right hE (by positivity)) hh
          (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  unfold actualEarlyCriticalErrorCenter
  rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_sub hi (hg.const_mul _)]
  have hn := intervalIntegral.norm_integral_le_of_norm_le hT (ae_of_all _ hp) hb
  rw [Real.norm_eq_abs] at hn
  rw [intervalIntegral.integral_const_mul] at hn
  calc
    _ ≤ k * ∫ t in Real.log 7..T, Real.exp (t / 2) := hn
    _ ≤ k * (2 * Real.exp (T / 2)) :=
      mul_le_mul_of_nonneg_left (exponential_mass hT) hk
    _ = _ := by dsimp [k]; ring

private theorem critical_kernel_abs_le {A t : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htA : t ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤ 1 / 4 + 5 / A := by
  have h0 := actual_correlation_abs_le_one A t (by linarith : 1 ≤ A)
  have h1 := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at h1
  have hp : 0 < A := by linarith
  have h2 : |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 10 / A := by
    apply h1.trans
    apply (div_le_div_iff₀ (sq_pos_of_pos hp) hp).2
    nlinarith
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := by
      simpa using abs_add_le (sourceCorrelation explicitSecondDerivative A t / 4)
        (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    _ ≤ 1 / 4 + (10 / A) / 2 := add_le_add
      (div_le_div_of_nonneg_right h0 (by norm_num))
      (div_le_div_of_nonneg_right h2 (by norm_num))
    _ = _ := by ring

/-- A genuine late amplitude controls only the stated signed lower direction with its critical cost. -/
theorem actualCriticalErrorCovariance_late_lower_bound {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    -(2 * eta * Real.exp A * (1 / 4 + 5 / A)) ≤
      ∫ t in T..2 * A, actualCriticalErrorDensity A t := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  let k : ℝ := eta * (1 / 4 + 5 / A)
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ => k * Real.exp (t / 2)) volume T (2 * A) :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc T (2 * A), ‖actualCriticalErrorDensity A t‖ ≤
      k * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := by linarith [ht.1]
    unfold actualCriticalErrorDensity
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hh := critical_kernel_abs_le hA ht0 ht.2
    calc
      _ ≤ (eta * Real.exp (t / 2)) * (1 / 4 + 5 / A) :=
        mul_le_mul (mul_le_mul_of_nonneg_right (hG t (le_of_lt ht.1)) (by positivity))
          hh (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hTA (ae_of_all _ hp) hb
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  have hm := mul_le_mul_of_nonneg_left (exponential_mass hTA) hk
  rw [show 2 * A / 2 = A by ring] at hm
  have : |∫ t in T..2 * A, actualCriticalErrorDensity A t| ≤
      2 * eta * Real.exp A * (1 / 4 + 5 / A) := by
    apply hn.trans
    convert hm using 1 <;> dsimp [k] <;> ring
  exact (neg_le_of_abs_le this)

/-- Genuine unconditional ordinary gamma centering supplies each actual amplitude threshold. -/
theorem actualCenteredMangoldtLogError_small_after {eta : ℝ} (heta : 0 < eta) :
    ∃ T : ℝ, Real.log 7 ≤ T ∧
      ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta := by
  have he := (tendsto_order.mp actualCenteredMangoldtLogError_tendsto_zero).2 eta heta
  have hl := (tendsto_order.mp actualCenteredMangoldtLogError_tendsto_zero).1 (-eta)
    (by linarith)
  obtain ⟨T, hT⟩ := eventually_atTop.1 (he.and hl)
  refine ⟨max T (Real.log 7), le_max_right _ _, fun t ht => ?_⟩
  exact abs_le.mpr ⟨le_of_lt (hT t ((le_max_left _ _).trans ht)).2,
    le_of_lt (hT t ((le_max_left _ _).trans ht)).1⟩

/-- The exact early center and directional late cost remain visible before any triangle loss. -/
theorem actualCriticalErrorCovariance_lower_estimate {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    actualEarlyCriticalErrorCenter T -
        2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 -
        2 * eta * Real.exp A * (1 / 4 + 5 / A) ≤ actualCriticalErrorCovariance A := by
  have he := actualCriticalErrorCovariance_early_error_abs_le hA hT
  have hl := actualCriticalErrorCovariance_late_lower_bound hA hT hTA heta hG
  rw [actualCriticalErrorCovariance_split hA hT hTA]
  have hh := neg_le_of_abs_le he
  linarith

/-- Every positive actual amplitude has a genuine fixed threshold, without a uniform critical conclusion. -/
theorem actualCriticalErrorCovariance_eventual_amplitude {eta : ℝ} (heta : 0 < eta) :
    ∃ T : ℝ, Real.log 7 ≤ T ∧ ∀ A : ℝ, 91 ≤ A → T ≤ 2 * A →
      actualEarlyCriticalErrorCenter T -
        2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 -
        2 * eta * Real.exp A * (1 / 4 + 5 / A) ≤ actualCriticalErrorCovariance A := by
  obtain ⟨T, hT, hG⟩ := actualCenteredMangoldtLogError_small_after heta
  exact ⟨T, hT, fun A hA hTA =>
    actualCriticalErrorCovariance_lower_estimate hA hT hTA (le_of_lt heta) hG⟩
end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceOrdinarySplit
