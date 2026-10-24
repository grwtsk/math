# Complete source: GRWTSK.Analysis.SourceActualRelativeKernelMoments.Variantfec8bfde77d80647f6749f4d44eef055d01ac18b9b846292042d9fc3f0ec371d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed3cc39c154002cadb2e8771ac09d29ebf3500f1` · SHA-256 `fec8bfde77d80647f6749f4d44eef055d01ac18b9b846292042d9fc3f0ec371d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
open SourceContinuousHalfEnergy
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
        Complex.im_ofNat, mul_zero, sub_zero, add_zero] 
      norm_num at *
      linarith
    dsimp [F', F]
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
    calc
      _ ≤ (1:ℝ) * Real.exp (3*A) * (2*A) := by
        gcongr
        · exact actual_correlation_abs_le_one A t hA
        · exact Real.exp_le_exp.mpr he
        · exact htabs
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
      _ = _ := integral_complex_ofReal
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

end FormalResearch.RiemannHypothesis.SourceActualRelativeKernelMoments
```
