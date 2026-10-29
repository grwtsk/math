import SourceActualEulerLogarithmicPrimitive
import SourceCriticalRelativeCompensation
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import Mathlib.Analysis.Calculus.ParametricIntegral

/-!
Compact parameter differentiation pays the actual relative-Psi kernel moments.
Both support seams and the true unit trace remain. No arithmetic convergence
or signed global bound is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRelativeKernelMoments
open MeasureTheory Set Filter Complex
open scoped Interval Topology
open SourcePairing SourceActualEulerLogarithmicPrimitive SourceActualInitialPrimeContour
open ActualComplexCorrelationSquare SourceCriticalRelativeCompensation
open SourceContinuousHalfEnergy SourceFirstPrimeAbel EstimateMertensResidual
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment EstimateCorrelation

private theorem mellin_eq_closed (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    actualInitialPrimeMellin A s =
      ∫ t in Icc (-(2*A)) (2*A),
        (sourceCorrelation explicitSecondDerivative A t : ℂ) *
          Complex.exp ((s-1/2)*(t:ℂ)) := by
  unfold actualInitialPrimeMellin
  symm
  apply setIntegral_eq_integral_of_forall_compl_eq_zero
  intro t ht
  have hz : sourceCorrelation explicitSecondDerivative A t = 0 := by
    apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
    by_contra hn
    exact ht (abs_le.mp (le_of_lt (lt_of_not_ge hn)))
  simp [hz]

/-- Genuine compact differentiation identifies the actual first weighted moment. -/
theorem actualInitialPrimeMellin_hasDerivAt_closed_first {A : ℝ} (hA : 1 ≤ A) :
    HasDerivAt (actualInitialPrimeMellin A)
      (∫ t in Icc (-(2*A)) (2*A),
        (sourceCorrelation explicitSecondDerivative A t : ℂ) *
          Complex.exp ((t:ℂ)/2) * (t:ℂ)) 1 := by
  let μ := volume.restrict (Icc (-(2*A)) (2*A))
  let F : ℂ → ℝ → ℂ := fun s t =>
    (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp ((s-1/2)*(t:ℂ))
  let F' : ℂ → ℝ → ℂ := fun s t => F s t * (t:ℂ)
  have hc : Continuous (sourceCorrelation explicitSecondDerivative A) :=
    (sourceCorrelation_contDiff A (by linarith)).continuous
  have hfc (s : ℂ) : Continuous (F s) := by dsimp [F]; fun_prop
  have hpc (s : ℂ) : Continuous (F' s) := by dsimp [F', F]; fun_prop
  have hmeas : ∀ᶠ s in 𝓝 (1:ℂ), AEStronglyMeasurable (F s) μ :=
    Filter.Eventually.of_forall fun s => (hfc s).aestronglyMeasurable
  have hi : Integrable (F 1) μ := (hfc 1).integrableOn_Icc
  have hip : AEStronglyMeasurable (F' 1) μ := (hpc 1).aestronglyMeasurable
  have hib : Integrable (fun _ : ℝ => 2*A*Real.exp (3*A)) μ :=
    continuous_const.integrableOn_Icc
  have hb : ∀ᵐ t ∂μ, ∀ s ∈ Metric.ball (1:ℂ) 1,
      ‖F' s t‖ ≤ 2*A*Real.exp (3*A) := by
    filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht s hs
    have htabs : |t| ≤ 2*A := abs_le.mpr ht
    have hsabs : |s.re-1| ≤ 1 := by
      have hh := Complex.abs_re_le_norm (s-1)
      rw [Metric.mem_ball, dist_eq_norm] at hs
      simpa only [Complex.sub_re, Complex.one_re] using hh.trans hs.le
    have hsr : |s.re-1/2| ≤ (3/2:ℝ) := by
      apply abs_le.mpr
      have hh := abs_le.mp hsabs
      constructor <;> linarith
    have he : ((s-1/2)*(t:ℂ)).re ≤ 3*A := by
      have hmul : |(s.re-1/2)*t| ≤ (3/2:ℝ)*(2*A) := by
        rw [abs_mul]
        exact mul_le_mul hsr htabs (abs_nonneg _) (by norm_num)
      have hh := (le_abs_self ((s.re-1/2)*t)).trans hmul
      simp only [Complex.mul_re, Complex.sub_re, Complex.ofReal_re, Complex.ofReal_im,
        Complex.div_re, Complex.one_re, Complex.one_im, Complex.re_ofNat,
        Complex.im_ofNat, mul_zero, sub_zero] 
      norm_num at *
      linarith
    dsimp [F', F]
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
    calc
      _ ≤ (1:ℝ) * Real.exp (3*A) * (2*A) := by
        gcongr
        · exact actual_correlation_abs_le_one A t hA
        · exact Real.exp_le_exp.mpr he
      _ = _ := by ring
  have hd : ∀ᵐ t ∂μ, ∀ s ∈ Metric.ball (1:ℂ) 1,
      HasDerivAt (fun s => F s t) (F' s t) s := by
    filter_upwards [] with t s _
    have hh := ((((hasDerivAt_id s).sub_const (1/2)).mul_const (t:ℂ)).cexp.const_mul
      (sourceCorrelation explicitSecondDerivative A t : ℂ))
    convert hh using 1 <;> first | rfl | (dsimp [F', F]; ring)
  have hh := (hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (Metric.ball_mem_nhds (1:ℂ) (by norm_num : (0:ℝ)<1))
      hmeas hi hip hb hib hd).2
  have heq : (fun s => ∫ t, F s t ∂μ) = actualInitialPrimeMellin A :=
    funext fun s => (mellin_eq_closed A hA s).symm
  rw [heq] at hh
  apply hh.congr_deriv
  apply integral_congr_ae
  filter_upwards [] with t
  dsimp [F', F, μ]
  congr 2
  ring

/-- The ordinary squared source factor gives a zero full first moment at the pole. -/
theorem actualCorrelation_closed_first_moment_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in Icc (-(2*A)) (2*A),
      t * Real.exp (t/2) * sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hs := actualEulerMellin_hasDerivAt A hA (1:ℂ)
  have hz : actualEulerMellinSlope A (1:ℂ) = 0 := by
    simp [actualEulerMellinSlope]
  rw [hz] at hs
  have hh := (actualInitialPrimeMellin_hasDerivAt_closed_first hA).unique hs
  have he : (∫ t in Icc (-(2*A)) (2*A),
      (sourceCorrelation explicitSecondDerivative A t : ℂ) *
        Complex.exp ((t:ℂ)/2) * (t:ℂ)) =
      ((∫ t in Icc (-(2*A)) (2*A),
        t * Real.exp (t/2) * sourceCorrelation explicitSecondDerivative A t):ℂ) := by
    calc
      _ = ∫ t in Icc (-(2*A)) (2*A),
          ((t * Real.exp (t/2) * sourceCorrelation explicitSecondDerivative A t):ℂ) := by
        apply integral_congr_ae
        filter_upwards [] with t
        rw [show (t:ℂ)/2 = (t/2:ℝ) by push_cast; ring, ← Complex.ofReal_exp]
        push_cast
        ring
      _ = _ := rfl
  rw [he] at hh
  exact_mod_cast hh

/-- Evenness reflects the positive first moment to the bounded opposite half. -/
theorem actualCorrelation_positive_first_eq_negative {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, t * Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t) =
      ∫ t in 0..2*A, t * Real.exp (-t/2) *
        sourceCorrelation explicitSecondDerivative A t := by
  let f : ℝ → ℝ := fun t => t * Real.exp (t/2) *
    sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous f := by
    have hh := (sourceCorrelation_contDiff A (by linarith : 0<A)).continuous
    dsimp [f]
    fun_prop
  have href : (∫ t in -(2*A)..0, f t) =
      -(∫ t in 0..2*A, t * Real.exp (-t/2) *
        sourceCorrelation explicitSecondDerivative A t) := by
    rw [show (∫ t in -(2*A)..0, f t) = ∫ t in 0..2*A, f (-t) by
      simpa only [neg_zero] using
        (intervalIntegral.integral_comp_neg f (a:=0) (b:=2*A)).symm]
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp [f]
    rw [sourceCorrelation_even A t]
    ring
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ:=volume)
    (hc.intervalIntegrable (-(2*A)) 0) (hc.intervalIntegrable 0 (2*A))
  have hz : (∫ t in -(2*A)..2*A, f t) = 0 := by
    rw [intervalIntegral.integral_of_le (by linarith : -(2*A) ≤ 2*A),
      ← integral_Icc_eq_integral_Ioc]
    exact actualCorrelation_closed_first_moment_zero hA
  rw [href, hz] at hs
  linarith



private theorem kernel_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (baselineLogKernel A) := by
  unfold baselineLogKernel
  exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t/2))).mul
    (criticalWeight_continuous hA)

/-- The zeroth compact kernel moment retains the true unit trace and opposite half. -/
theorem actualRelativeKernel_zero_moment_eq {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, baselineLogKernel A t) = 1 - negativeSmoothMoment A := by
  have he : (∫ t in Ioi (0:ℝ), baselineLogKernel A t) =
      ∫ t in 0..2*A, baselineLogKernel A t := by
    rw [intervalIntegral.integral_of_le (by linarith : (0:ℝ) ≤ 2*A),
      ← Ioc_union_Ioi_eq_Ioi (by linarith : (0:ℝ) ≤ 2*A)]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro t ht
    simp [baselineLogKernel, criticalWeight_zero_above hA ht]
  rw [← he, baselineLogKernel_integral hA,
    criticalContinuousMoment_eq_neg_negative A hA]
  ring

/-- Both genuine finite half moments give a strict zeroth-kernel budget. -/
theorem actualRelativeKernel_zero_moment_abs_lt_one {A : ℝ} (hA : 1 ≤ A) :
    |∫ t in 0..2*A, baselineLogKernel A t| < 1 := by
  rw [actualRelativeKernel_zero_moment_eq hA]
  have hh := criticalContinuousMoment_strict_bounds hA
  rw [criticalContinuousMoment_eq_neg_negative A hA] at hh
  exact abs_lt.mpr ⟨by linarith [hh.1], by linarith [hh.2]⟩

private theorem first_kernel_eq {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, t * baselineLogKernel A t) =
      criticalContinuousMoment A +
        ∫ t in 0..2*A, t * Real.exp (-t/2) *
          sourceCorrelation explicitSecondDerivative A t := by
  have hp : 0 < A := by linarith
  have hc := criticalPrimeTest_contDiff A hp
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => t * criticalPrimeTest A t)
      (criticalPrimeTest A t + t * deriv (criticalPrimeTest A) t) t := by
    convert (hasDerivAt_id t).mul ((hc.differentiable (by norm_num) t).hasDerivAt) using 1
    simp only [id_eq, one_mul]
  have hdi : IntervalIntegrable (fun t => criticalPrimeTest A t +
      t * deriv (criticalPrimeTest A) t) volume 0 (2*A) :=
    (hc.continuous.add (continuous_id.mul hc.continuous_deriv_one)).intervalIntegrable _ _
  have hftc := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hdi
  rw [criticalPrimeTest_at_upper A hp, mul_zero, zero_mul, sub_zero] at hftc
  have hbase : baselineLogKernel A = fun t => criticalPrimeTest A t -
      deriv (criticalPrimeTest A) t := by
    funext t
    rw [criticalPrimeTest_deriv A t hp]
    unfold baselineLogKernel criticalPrimeTest criticalWeight
    ring
  have hmul : (fun t => t * baselineLogKernel A t) =
      fun t => t * criticalPrimeTest A t -
        (criticalPrimeTest A t + t * deriv (criticalPrimeTest A) t) +
        criticalPrimeTest A t := by
    funext t
    rw [hbase]
    ring
  have hi1 : IntervalIntegrable (fun t => t * criticalPrimeTest A t)
      volume 0 (2*A) := (continuous_id.mul hc.continuous).intervalIntegrable _ _
  have hi0 : IntervalIntegrable (criticalPrimeTest A) volume 0 (2*A) :=
    hc.continuous.intervalIntegrable _ _
  rw [hmul, intervalIntegral.integral_add (hi1.sub hdi) hi0,
    intervalIntegral.integral_sub hi1 hdi, hftc, sub_zero]
  change (∫ t in 0..2*A, t * (Real.exp (t/2) *
    sourceCorrelation explicitSecondDerivative A t)) + criticalContinuousMoment A = _
  rw [show (fun t => t * (Real.exp (t/2) *
    sourceCorrelation explicitSecondDerivative A t)) =
      (fun t => t * Real.exp (t/2) *
        sourceCorrelation explicitSecondDerivative A t) by funext t; ring,
    actualCorrelation_positive_first_eq_negative hA]
  ring

private theorem negative_first_abs_le_four {A : ℝ} (hA : 1 ≤ A) :
    |∫ t in 0..2*A, t * Real.exp (-t/2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 4 := by
  have hab : (0:ℝ) ≤ 2*A := by linarith
  have hc : Continuous (fun t : ℝ => t * Real.exp (-t/2)) := by fun_prop
  have hg := hc.intervalIntegrable (μ:=volume) 0 (2*A)
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ:=volume)
    (f:=fun t => t * Real.exp (-t/2) * sourceCorrelation explicitSecondDerivative A t)
    (g:=fun t => t * Real.exp (-t/2)) hab (ae_of_all _ (fun t ht => by
      simp only [norm_mul, Real.norm_eq_abs, Real.abs_exp,
        abs_of_nonneg ht.1.le]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (actual_correlation_abs_le_one A t hA)
        (mul_nonneg ht.1.le (Real.exp_pos _).le))) hg
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => -(2*t+4)*Real.exp (-t/2))
      (t * Real.exp (-t/2)) t := by
    convert (((((hasDerivAt_id t).const_mul 2).add_const 4).neg).mul
      (((hasDerivAt_id t).neg.div_const 2).exp)) using 1 <;>
      (simp only [id_eq]; ring)
  have he : (∫ t in 0..2*A, t * Real.exp (-t/2)) =
      4 - (4*A+4)*Real.exp (-A) := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hg]
    simp only [mul_zero, zero_add, neg_zero, zero_div, Real.exp_zero, mul_one]
    congr 1
    ring
  rw [Real.norm_eq_abs, he] at hb
  exact hb.trans (by have := Real.exp_pos (-A); nlinarith)

/-- The full first relative kernel moment is uniformly bounded by six. -/
theorem actualRelativeKernel_first_moment_abs_le_six {A : ℝ} (hA : 1 ≤ A) :
    |∫ t in 0..2*A, t * baselineLogKernel A t| ≤ 6 := by
  rw [first_kernel_eq hA]
  have hi : |criticalContinuousMoment A| ≤ 2 := by
    have hh := criticalContinuousMoment_strict_bounds hA
    exact abs_le.mpr ⟨hh.1.le, by linarith [hh.2]⟩
  exact (abs_add _ _).trans ((add_le_add hi (negative_first_abs_le_four hA)).trans_eq
    (by norm_num))

end FormalResearch.RiemannHypothesis.SourceActualRelativeKernelMoments
