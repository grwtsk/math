# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudgetAttempt02.Variant70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5ff8f13d5403255b563a1201e7ff5ec635f88b3` · SHA-256 `70c4d4b48131b5e877e6bc9513000dc524b1a0ace4d4583858a305922507bea3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualSecondAbel
import BridgeLipschitz
import Mathlib.Analysis.Calculus.MeanValue

/-! Explicit actual curvature amplification for joint coefficient resolution.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
This growing absolute budget is a numerical-error control, not the signed RH witness. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCurvatureBudget
open MeasureTheory Set Filter
open scoped Interval NNReal Topology
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedPrimeAverages
open SourcePairedTailTest SourceCriticalCumulativeDiscrepancy
open SourceCorrelationCurvature SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation
open ContinuousResearch.ActualSecondAbel

theorem criticalPrimeTest_second_deriv {A : ℝ} (hA : 0 < A) (u : ℝ) :
    deriv (deriv (criticalPrimeTest A)) u = Real.exp (u/2) *
      (sourceCorrelation explicitSecondDerivative A u / 4 +
       deriv (sourceCorrelation explicitSecondDerivative A) u +
       deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u) := by
  have heq : deriv (criticalPrimeTest A) = fun t => Real.exp (t/2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
       deriv (sourceCorrelation explicitSecondDerivative A) t) :=
    funext fun t => criticalPrimeTest_deriv A t hA
  rw [heq]
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hc := ((sourceCorrelation_contDiff A hA).differentiable_one u).hasDerivAt
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable_one u).hasDerivAt
  have hprod : HasDerivAt (fun t => Real.exp (t/2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
       deriv (sourceCorrelation explicitSecondDerivative A) t))
      (Real.exp (u/2) * (sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) u +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)) u := by
    convert (he.mul ((hc.div_const 2).add hd)) using 1 <;> first | rfl | (dsimp; ring)
  exact hprod.deriv

theorem criticalPrimeTest_deriv_zero_after {A u : ℝ} (hA : 0 < A) (hu : 2*A < u) :
    deriv (criticalPrimeTest A) u = 0 := by
  have he : criticalPrimeTest A =ᶠ[𝓝 u] (fun _ => (0:ℝ)) := by
    filter_upwards [Ioi_mem_nhds hu] with t ht
    rw [criticalPrimeTest, sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA
      ((le_of_lt ht).trans (le_abs_self t)), mul_zero]
  rw [he.deriv_eq, deriv_const]

theorem criticalPrimeTest_second_deriv_zero_after {A u : ℝ} (hA : 0 < A)
    (hu : 2*A < u) : deriv (deriv (criticalPrimeTest A)) u = 0 := by
  have he : deriv (criticalPrimeTest A) =ᶠ[𝓝 u] (fun _ => (0:ℝ)) := by
    filter_upwards [Ioi_mem_nhds hu] with t ht
    exact criticalPrimeTest_deriv_zero_after hA ht
  rw [he.deriv_eq, deriv_const]

/-- A deliberately coarse global bound retains the true exponential amplification. -/
theorem criticalPrimeTest_second_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    |deriv (deriv (criticalPrimeTest A)) u| ≤ 28 * Real.exp A := by
  have hp : 0 < A := by linarith
  by_cases hu : u ≤ 2*A
  · rw [criticalPrimeTest_second_deriv hp, abs_mul, abs_of_pos (Real.exp_pos _)]
    have hc := actual_correlation_abs_le_one A u hA
    have hd := sourceCorrelation_deriv_abs_le_five_div hA u
    have hdd := sourceCorrelation_second_deriv_abs_le_coefficient hA u
    have hdf : |deriv (sourceCorrelation explicitSecondDerivative A) u| ≤ 5 := by
      apply hd.trans
      exact (div_le_iff₀ hp).2 (by linarith)
    have hddf : |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u| ≤ 22 := by
      apply hdd.trans
      apply (div_le_iff₀ (by positivity : 0 < 7623*A^2)).2
      nlinarith [sq_nonneg (A-1)]
    have hbr : |sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) u +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u| ≤ 28 := by
      have h1 := abs_add_le (sourceCorrelation explicitSecondDerivative A u / 4)
        (deriv (sourceCorrelation explicitSecondDerivative A) u)
      have h2 := abs_add_le (sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) u)
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)
      rw [abs_div, abs_of_pos (by norm_num : (0:ℝ)<4)] at h1
      linarith
    have hex : Real.exp (u/2) ≤ Real.exp A := Real.exp_le_exp.mpr (by linarith)
    nlinarith [Real.exp_pos (u/2), Real.exp_pos A]
  · rw [criticalPrimeTest_second_deriv_zero_after hp (lt_of_not_ge hu), abs_zero]
    positivity

theorem criticalPrimeTest_deriv_lipschitz_explicit {A : ℝ} (hA : 1 ≤ A) :
    LipschitzWith ⟨28*Real.exp A, by positivity⟩ (deriv (criticalPrimeTest A)) := by
  apply lipschitzWith_of_nnnorm_deriv_le
    ((criticalPrimeTest_contDiff_two (by linarith : 0<A)).deriv'.differentiable_one)
  intro u
  exact_mod_cast (show ‖deriv (deriv (criticalPrimeTest A)) u‖ ≤ 28*Real.exp A by
    simpa only [Real.norm_eq_abs] using criticalPrimeTest_second_deriv_abs_le hA u)

theorem mass_ratio_bounds {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ positiveMass A/negativeMass A ∧ positiveMass A/negativeMass A ≤ 1 := by
  constructor
  · exact div_nonneg (positiveMass_nonneg (by linarith : 0<A)) (negativeMass_pos hA).le
  · apply (div_le_iff₀ (negativeMass_pos hA)).2
    linarith [negativeMass_eq_positive_add_one hA]

theorem pairedTailCurvature_abs_le {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    |pairedTailCurvature A u| ≤ 56*Real.exp A := by
  let K : ℝ≥0 := ⟨28*Real.exp A, by positivity⟩
  have hg : LipschitzWith K (deriv (criticalPrimeTest A)) :=
    criticalPrimeTest_deriv_lipschitz_explicit hA
  have hp := hg.max_const 0
  have hn := hg.neg.max_const 0
  have hscale : LipschitzWith ‖positiveMass A/negativeMass A‖₊
      (fun x : ℝ => (positiveMass A/negativeMass A) • x) :=
    lipschitzWith_smul (positiveMass A/negativeMass A)
  have hh := hp.neg.add (hscale.comp hn)
  have he : deriv (pairedTailTest A) = fun t => -positiveSlope A t +
      (positiveMass A/negativeMass A)*negativeSlope A t := by
    funext t
    exact pairedTailTest_deriv hA t
  have hl : LipschitzWith (K+‖positiveMass A/negativeMass A‖₊*K)
      (deriv (pairedTailTest A)) := by
    rw [he]
    simpa only [Function.comp_def, smul_eq_mul, Pi.neg_apply, positiveSlope, negativeSlope] using hh
  have hb := norm_deriv_le_of_lipschitz (x₀:=u) hl
  have hr := mass_ratio_bounds hA
  change |pairedTailCurvature A u| ≤ 28*Real.exp A +
    |positiveMass A/negativeMass A|*(28*Real.exp A) at hb
  rw [abs_of_nonneg hr.1] at hb
  nlinarith [Real.exp_pos A]

def curvatureVariation (A : ℝ) : ℝ := ∫ u in 0..2*A, |pairedTailCurvature A u|

theorem curvatureVariation_nonneg {A : ℝ} (hA : 1 ≤ A) : 0 ≤ curvatureVariation A :=
  intervalIntegral.integral_nonneg (by linarith) (fun _ _ => abs_nonneg _)

theorem curvatureVariation_le {A : ℝ} (hA : 1 ≤ A) :
    curvatureVariation A ≤ 112*A*Real.exp A := by
  have hi := (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).abs
  have hb := intervalIntegral.integral_mono_on (by linarith : 0≤2*A) hi
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => 56*Real.exp A) volume 0 (2*A))
    (fun u _ => pairedTailCurvature_abs_le hA u)
  calc
    curvatureVariation A ≤ ∫ u in 0..2*A, 56*Real.exp A := hb
    _ = 112*A*Real.exp A := by
      rw [intervalIntegral.integral_const]
      simp only [sub_zero, smul_eq_mul]
      ring

end ContinuousResearch.ActualCurvatureBudget
```
