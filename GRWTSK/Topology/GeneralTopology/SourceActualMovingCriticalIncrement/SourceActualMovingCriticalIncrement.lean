import SourceActualCriticalCovarianceOrdinarySplit

/-!
The moving center of the original actual Mangoldt error gives an exact closed
short-interval discrepancy. The full lower-seven boundary remains in the
critical covariance. Genuine ordinary centering makes only that boundary vanish;
it supplies no uniform estimate for the retained signed increment interaction.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMovingCriticalIncrement

open MeasureTheory Set Filter
open scoped BigOperators Interval Topology
open SourceActualCriticalCovarianceOrdinarySplit SourceActualXiErrorConvolution
open SourceActualXiErrorConvolutionKernel SourceActualMertensGammaCalibration
open SourceMangoldtAbel SourceFirstPrimeAbel WeightedPrimeMertens SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

noncomputable section

local notation "B" => Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|

/-- The literal closed upper prime-power interval with the preceding prefix removed. -/
def actualClosedMangoldtIncrement (t b : ℝ) : ℝ :=
  (b - t) - ∑ n ∈ Finset.Ioc ⌊Real.exp t⌋₊ ⌊Real.exp b⌋₊,
    ArithmeticFunction.vonMangoldt n / (n : ℝ)

/-- The unchanged critical test paired with its actual moving arithmetic increment. -/
def actualMovingCriticalIncrementCovariance (A : ℝ) : ℝ :=
  ∫ t in Real.log 7..2 * A, actualClosedMangoldtIncrement t (2 * A) *
    Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2)

/-- The genuine lower-seven payment for subtracting the actual upper error value. -/
def actualMovingCriticalHead (A : ℝ) : ℝ :=
  actualCenteredMangoldtLogError (2 * A) * Real.sqrt 7 *
    sourceCorrelation explicitSecondDerivative A (Real.log 7) / 2

/-- Every actual closed prime-power jump occurs with its original weighted coefficient. -/
theorem actualCenteredError_increment_eq_closed {t b : ℝ} (htb : t ≤ b) :
    actualCenteredMangoldtLogError t - actualCenteredMangoldtLogError b =
      actualClosedMangoldtIncrement t b := by
  have hfloor : ⌊Real.exp t⌋₊ ≤ ⌊Real.exp b⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr htb)
  have hs := Finset.sum_Ioc_consecutive
    (fun n : ℕ => ArithmeticFunction.vonMangoldt n / (n : ℝ))
    (Nat.zero_le ⌊Real.exp t⌋₊) hfloor
  unfold actualCenteredMangoldtLogError mangoldtLogError mangoldtLogPrefix
    weightedMangoldt actualClosedMangoldtIncrement
  linarith

/-- The actual weighted short interval has the genuine elementary discrepancy budget. -/
theorem actualClosedMangoldtIncrement_abs_le {t b : ℝ}
    (ht : 0 ≤ t) (htb : t ≤ b) :
    |actualClosedMangoldtIncrement t b| ≤ 2 * B := by
  rw [← actualCenteredError_increment_eq_closed htb]
  have h := abs_sub_le (actualCenteredMangoldtLogError t) 0
    (actualCenteredMangoldtLogError b)
  simp only [sub_zero, zero_sub, abs_neg] at h
  have h0 := actualCenteredMangoldtLogError_abs_le ht
  have h1 := actualCenteredMangoldtLogError_abs_le (ht.trans htb)
  linarith

/-- Genuine ordinary centering gives the actual discrepancy limit on each fixed log window. -/
theorem actualClosedMangoldtIncrement_fixed_window_tendsto_zero (h : ℝ) (hh : 0 ≤ h) :
    Tendsto (fun t => actualClosedMangoldtIncrement t (t + h)) atTop (𝓝 0) := by
  have ht : Tendsto (fun t : ℝ => t + h) atTop atTop := by
    apply tendsto_atTop.2
    intro b
    filter_upwards [eventually_ge_atTop (b - h)] with t htb
    linarith
  have hs := actualCenteredMangoldtLogError_tendsto_zero.sub
    (actualCenteredMangoldtLogError_tendsto_zero.comp ht)
  simp only [sub_zero] at hs
  apply hs.congr'
  exact Eventually.of_forall fun t =>
    actualCenteredError_increment_eq_closed (by linarith : t ≤ t + h)

private theorem kernel_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (fun t : ℝ => Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
  have hd := (contDiff_one_iff_deriv.mp (criticalPrimeTest_contDiff A hA)).2
  have he : (fun t : ℝ => Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) =
        fun t => deriv (criticalPrimeTest A) t / 2 := by
    funext t
    rw [criticalPrimeTest_deriv A t hA]
    ring
  rw [he]
  exact hd.div_const 2

/-- The test kernel has its exact full lower-seven mass, with the touching upper zero. -/
theorem actualCriticalKernel_mass {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in Real.log 7..2 * A, Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) =
      -(Real.sqrt 7 * sourceCorrelation explicitSecondDerivative A (Real.log 7) / 2) := by
  have hp : 0 < A := by linarith
  have hd (t : ℝ) : HasDerivAt (fun t => criticalPrimeTest A t / 2)
      (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) t := by
    have h := (((criticalPrimeTest_contDiff A hp).differentiable (by norm_num)) t).hasDerivAt
    rw [criticalPrimeTest_deriv A t hp] at h
    exact (h.div_const 2).congr_deriv (by ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((kernel_continuous A hp).intervalIntegrable _ _), criticalPrimeTest_at_upper A hp]
  unfold criticalPrimeTest
  rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  ring

private theorem centered_error_intervalIntegrable {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    IntervalIntegrable actualCenteredMangoldtLogError volume l b := by
  have hb : 0 ≤ b := hl.trans hlb
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  exact (he.add intervalIntegrable_const).mono_set (by
    rw [uIcc_of_le hb, uIcc_of_le hlb]
    exact Icc_subset_Icc hl le_rfl)

/-- Genuine finite L1 is established for the actual moving source before splitting. -/
theorem actualMovingCriticalIncrement_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => actualClosedMangoldtIncrement t (2 * A) *
      Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))
      volume (Real.log 7) (2 * A) := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 5
    norm_num [Finset.sum_range_succ] at he
    have hlog : Real.log (7 : ℝ) ≤ 2 :=
      (Real.log_le_iff_le_exp (by norm_num)).2 (by linarith)
    linarith
  have hi : IntervalIntegrable
      (fun t => actualCenteredMangoldtLogError t - actualCenteredMangoldtLogError (2 * A))
      volume (Real.log 7) (2 * A) :=
    (centered_error_intervalIntegrable ha hab).sub intervalIntegrable_const
  have hp : 0 < A := by linarith
  have hj := hi.mul_continuousOn (kernel_continuous A hp).continuousOn
  apply hj.congr
  rw [uIoc_of_le hab]
  intro t ht
  dsimp only
  rw [actualCenteredError_increment_eq_closed ht.2]
  ring

/-- Exact subtraction of the actual moving value retains the full lower boundary. -/
theorem actualCriticalErrorCovariance_eq_moving_increment {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalErrorCovariance A =
      actualMovingCriticalIncrementCovariance A - actualMovingCriticalHead A := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 5
    norm_num [Finset.sum_range_succ] at he
    have hlog : Real.log (7 : ℝ) ≤ 2 :=
      (Real.log_le_iff_le_exp (by norm_num)).2 (by linarith)
    linarith
  have hk : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))
      volume (Real.log 7) (2 * A) :=
    (kernel_continuous A hp).intervalIntegrable _ _
  have hi := (centered_error_intervalIntegrable ha hab).mul_continuousOn
    (kernel_continuous A hp).continuousOn
  have he : actualMovingCriticalIncrementCovariance A =
      actualCriticalErrorCovariance A - actualCenteredMangoldtLogError (2 * A) *
        (∫ t in Real.log 7..2 * A, Real.exp (t / 2) *
          (sourceCorrelation explicitSecondDerivative A t / 4 +
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
    have he0 : actualCriticalErrorCovariance A =
        ∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
          (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
      unfold actualCriticalErrorCovariance actualCriticalErrorDensity
      apply intervalIntegral.integral_congr
      intro t _
      ring
    rw [he0, ← intervalIntegral.integral_const_mul]
    rw [← intervalIntegral.integral_sub hi (hk.const_mul _)]
    unfold actualMovingCriticalIncrementCovariance
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le hab] at ht
    dsimp only
    rw [← actualCenteredError_increment_eq_closed ht.2]
    ring
  rw [actualCriticalKernel_mass hA] at he
  unfold actualMovingCriticalHead
  linarith

/-- The only moving constant payment has an explicit actual error budget. -/
theorem actualMovingCriticalHead_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualMovingCriticalHead A| ≤
      Real.sqrt 7 / 2 * |actualCenteredMangoldtLogError (2 * A)| := by
  have hc := actual_correlation_abs_le_one A (Real.log 7) hA
  unfold actualMovingCriticalHead
  rw [abs_div, abs_mul, abs_mul, abs_of_nonneg (Real.sqrt_nonneg _)]
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ (|actualCenteredMangoldtLogError (2 * A)| * Real.sqrt 7) * 1 / 2 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hc
        (mul_nonneg (abs_nonneg _) (Real.sqrt_nonneg _))) (by norm_num)
    _ = _ := by ring

/-- Genuine ordinary gamma centering removes this boundary, with its source unchanged. -/
theorem actualMovingCriticalHead_tendsto_zero :
    Tendsto actualMovingCriticalHead atTop (𝓝 0) := by
  have hg := actualCenteredMangoldtLogError_tendsto_zero.comp
    (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  have hnorm := hg.abs.const_mul (Real.sqrt 7 / 2)
  simp only [abs_zero, mul_zero] at hnorm
  exact squeeze_zero_norm' (by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    simpa only [Real.norm_eq_abs, Function.comp_apply, id_eq] using
      actualMovingCriticalHead_abs_le hA) hnorm

/-- The exact increment interaction differs from the original covariance by a vanishing head. -/
theorem actualCriticalErrorCovariance_sub_moving_tendsto_zero :
    Tendsto (fun A => actualCriticalErrorCovariance A -
      actualMovingCriticalIncrementCovariance A) atTop (𝓝 0) := by
  have h := actualMovingCriticalHead_tendsto_zero.neg
  simp only [neg_zero] at h
  apply h.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualCriticalErrorCovariance_eq_moving_increment hA]
  ring

/-- The moving payment is uniformly bounded by the genuine actual elementary error constant. -/
theorem actualMovingCriticalHead_abs_le_uniform {A : ℝ} (hA : 1 ≤ A) :
    |actualMovingCriticalHead A| ≤ Real.sqrt 7 / 2 * B := by
  exact (actualMovingCriticalHead_abs_le hA).trans
    (mul_le_mul_of_nonneg_left
      (actualCenteredMangoldtLogError_abs_le (by linarith : 0 ≤ 2 * A))
      (by positivity))

/-- Uniform lower bounds are equivalent at the same valid real radius.
The forward and reverse constants pay only the displayed actual lower head. -/
theorem actualCriticalCovariance_lower_iff_moving {R : ℝ} (hR : 1 ≤ R) :
    (∃ K : ℝ, ∀ A : ℝ, R ≤ A → -K ≤ actualCriticalErrorCovariance A) ↔
      ∃ K : ℝ, ∀ A : ℝ, R ≤ A → -K ≤ actualMovingCriticalIncrementCovariance A := by
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨K + Real.sqrt 7 / 2 * B, fun A hA => ?_⟩
    have h1 : 1 ≤ A := hR.trans hA
    have he := actualCriticalErrorCovariance_eq_moving_increment h1
    have hh := abs_le.mp (actualMovingCriticalHead_abs_le_uniform h1)
    have hk := hK A hA
    linarith
  · rintro ⟨K, hK⟩
    refine ⟨K + Real.sqrt 7 / 2 * B, fun A hA => ?_⟩
    have h1 : 1 ≤ A := hR.trans hA
    have he := actualCriticalErrorCovariance_eq_moving_increment h1
    have hh := abs_le.mp (actualMovingCriticalHead_abs_le_uniform h1)
    have hk := hK A hA
    linarith

end
end FormalResearch.RiemannHypothesis.SourceActualMovingCriticalIncrement
