# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePairedTailTest.Varianta1ada155e44fb8d4e236c69a6e1335bdc5c1b720f0303fab87b83b99f777e90d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df3703219db0898eec0e539d8898bc17176400fb` · SHA-256 `a1ada155e44fb8d4e236c69a6e1335bdc5c1b720f0303fab87b83b99f777e90d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages

/-!
# Actual normalized negative tails and the paired source test

The negative derivative mass normalizes an actual source tail on the whole real
axis. Both source endpoints, the full continuous drift and both derivative
phases remain explicit. This mass is not the integer arithmetic cutoff. No
prime-error sign, correlated lower witness or changed Vaughan term is assumed.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedTailTest

open MeasureTheory Set
open scoped Interval
open SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedPrimeAverages

/-- The actual normalized negative tail, defined on all real positions. -/
def negativeSurvival (A u : ℝ) : ℝ :=
  (∫ t in u..2 * A, negativeSlope A t) / negativeMass A

/-- The paired test retains the entire actual critical test and the normalized tail. -/
def pairedTailTest (A u : ℝ) : ℝ := -criticalPrimeTest A u + negativeSurvival A u

/-- The independent negative-phase time moment, with no residual fitting. -/
def negativeTimeMean (A : ℝ) : ℝ :=
  (∫ u in 0..2 * A, u * negativeSlope A u) / negativeMass A

theorem negativeSurvival_hasDerivAt {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    HasDerivAt (negativeSurvival A) (-(negativeSlope A u) / negativeMass A) u := by
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  exact (intervalIntegral.integral_hasDerivAt_left (hc.intervalIntegrable u (2 * A))
    (hc.stronglyMeasurableAtFilter _ _) hc.continuousAt).div_const _

theorem negativeSurvival_deriv {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    deriv (negativeSurvival A) u = -(negativeSlope A u) / negativeMass A :=
  (negativeSurvival_hasDerivAt hA u).deriv

/-- Global C1 uses actual tails, rather than a zero extension at the lower endpoint. -/
theorem negativeSurvival_contDiff {A : ℝ} (hA : 1 ≤ A) :
    ContDiff ℝ 1 (negativeSurvival A) := by
  apply contDiff_one_iff_deriv.mpr
  refine ⟨fun u => (negativeSurvival_hasDerivAt hA u).differentiableAt, ?_⟩
  have he : deriv (negativeSurvival A) =
      fun u => -(negativeSlope A u) / negativeMass A := by
    funext u
    exact negativeSurvival_deriv hA u
  rw [he]
  exact (negativeSlope_continuous (show 0 < A by linarith)).neg.div_const _

theorem negativeSurvival_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (negativeSurvival A) := (negativeSurvival_contDiff hA).continuous

theorem negativeSurvival_at_zero {A : ℝ} (hA : 1 ≤ A) : negativeSurvival A 0 = 1 := by
  change negativeMass A / negativeMass A = 1
  exact div_self (ne_of_gt (negativeMass_pos hA))

theorem negativeSurvival_at_upper (A : ℝ) : negativeSurvival A (2 * A) = 0 := by
  simp [negativeSurvival]

/-- The actual global tail is decreasing; division uses the proved positive mass. -/
theorem negativeSurvival_antitone {A : ℝ} (hA : 1 ≤ A) :
    Antitone (negativeSurvival A) := by
  intro u v huv
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  have hi := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hc.intervalIntegrable u v) (hc.intervalIntegrable v (2 * A))
  have hn := intervalIntegral.integral_nonneg_of_forall (μ := volume) huv (negativeSlope_nonneg A)
  have ht : (∫ t in v..2 * A, negativeSlope A t) ≤ ∫ t in u..2 * A, negativeSlope A t := by
    linarith
  exact div_le_div_of_nonneg_right ht (negativeMass_pos hA).le

theorem negativeSurvival_nonneg {A u : ℝ} (hA : 1 ≤ A) (hu : u ∈ Icc 0 (2 * A)) :
    0 ≤ negativeSurvival A u := by
  have h := negativeSurvival_antitone hA hu.2
  simpa only [negativeSurvival_at_upper] using h

theorem negativeSurvival_le_one {A u : ℝ} (hA : 1 ≤ A) (hu : u ∈ Icc 0 (2 * A)) :
    negativeSurvival A u ≤ 1 := by
  have h := negativeSurvival_antitone hA hu.1
  simpa only [negativeSurvival_at_zero hA] using h

theorem pairedTailTest_hasDerivAt {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    HasDerivAt (pairedTailTest A)
      (-positiveSlope A u + (positiveMass A / negativeMass A) * negativeSlope A u) u := by
  have hg := ((contDiff_one_iff_deriv.mp
    (criticalPrimeTest_contDiff A (show 0 < A by linarith))).1 u).hasDerivAt
  apply (hg.neg.add (negativeSurvival_hasDerivAt hA u)).congr_deriv
  rw [← slope_difference]
  have hn := ne_of_gt (negativeMass_pos hA)
  field_simp [hn]
  rw [negativeMass_eq_positive_add_one hA]
  ring

theorem pairedTailTest_deriv {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    deriv (pairedTailTest A) u =
      -positiveSlope A u + (positiveMass A / negativeMass A) * negativeSlope A u :=
  (pairedTailTest_hasDerivAt hA u).deriv

theorem pairedTailTest_contDiff {A : ℝ} (hA : 1 ≤ A) : ContDiff ℝ 1 (pairedTailTest A) :=
  (criticalPrimeTest_contDiff A (show 0 < A by linarith)).neg.add
    (negativeSurvival_contDiff hA)

theorem pairedTailTest_continuous {A : ℝ} (hA : 1 ≤ A) : Continuous (pairedTailTest A) :=
  (pairedTailTest_contDiff hA).continuous

theorem pairedTailTest_at_zero {A : ℝ} (hA : 1 ≤ A) : pairedTailTest A 0 = 0 := by
  simp [pairedTailTest, criticalPrimeTest_at_zero A hA, negativeSurvival_at_zero hA]

theorem pairedTailTest_at_upper {A : ℝ} (hA : 1 ≤ A) : pairedTailTest A (2 * A) = 0 := by
  simp [pairedTailTest, criticalPrimeTest_at_upper A (show 0 < A by linarith),
    negativeSurvival_at_upper]

theorem negativeTimeMean_nonneg {A : ℝ} (hA : 1 ≤ A) : 0 ≤ negativeTimeMean A := by
  apply div_nonneg _ (negativeMass_pos hA).le
  exact intervalIntegral.integral_nonneg (by linarith) fun u hu =>
    mul_nonneg hu.1 (negativeSlope_nonneg A u)

theorem negativeTimeMean_le_upper {A : ℝ} (hA : 1 ≤ A) : negativeTimeMean A ≤ 2 * A := by
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  have hi := intervalIntegral.integral_mono_on (μ := volume) (show 0 ≤ 2 * A by linarith)
    ((continuous_id.mul hc).intervalIntegrable 0 (2 * A))
    ((hc.const_mul (2 * A)).intervalIntegrable 0 (2 * A))
    (fun u hu => mul_le_mul_of_nonneg_right hu.2 (negativeSlope_nonneg A u))
  rw [intervalIntegral.integral_const_mul] at hi
  exact (div_le_iff₀ (negativeMass_pos hA)).mpr hi

/-- Integration by parts gives the independent time mean, including both endpoints. -/
theorem negativeSurvival_integral_eq_timeMean {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, negativeSurvival A u) = negativeTimeMean A := by
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun u : ℝ => u) (u' := fun _ => (1 : ℝ))
    (v := negativeSurvival A) (v' := fun u => -(negativeSlope A u) / negativeMass A)
    (fun u _ => hasDerivAt_id u) (fun u _ => negativeSurvival_hasDerivAt hA u)
    (continuous_const.intervalIntegrable 0 (2 * A))
    ((hc.neg.div_const _).intervalIntegrable 0 (2 * A))
  simp only [negativeSurvival_at_upper, negativeSurvival_at_zero hA, mul_zero, zero_mul,
    sub_zero, zero_sub, one_mul] at hi
  have he : (fun u : ℝ => u * (-(negativeSlope A u) / negativeMass A)) =
      fun u => -(u * negativeSlope A u) / negativeMass A := by
    funext u
    ring
  rw [he, intervalIntegral.integral_div, intervalIntegral.integral_neg, neg_div] at hi
  unfold negativeTimeMean
  linarith

/-- The complete drift is the negative time mean minus the actual continuous half. -/
theorem pairedTailTest_integral_eq {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, pairedTailTest A u) =
      negativeTimeMean A - criticalContinuousMoment A := by
  simp only [pairedTailTest]
  have hi := intervalIntegral.integral_add (μ := volume)
    ((criticalPrimeTest_contDiff A (show 0 < A by linarith)).continuous.neg.intervalIntegrable
      0 (2 * A)) ((negativeSurvival_continuous hA).intervalIntegrable 0 (2 * A))
  simp only [Pi.neg_apply, intervalIntegral.integral_neg] at hi
  rw [hi, negativeSurvival_integral_eq_timeMean hA]
  unfold criticalContinuousMoment
  ring

/-- Disjoint derivative phases retain their magnitudes with the exact mass ratio. -/
theorem pairedTailTest_deriv_abs {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    |deriv (pairedTailTest A) u| =
      positiveSlope A u + (positiveMass A / negativeMass A) * negativeSlope A u := by
  rw [pairedTailTest_deriv hA]
  by_cases h : 0 ≤ deriv (criticalPrimeTest A) u
  · simp only [positiveSlope, negativeSlope, max_eq_left h,
      max_eq_right (neg_nonpos.mpr h), mul_zero, add_zero, abs_neg, abs_of_nonneg h]
  · have hd : deriv (criticalPrimeTest A) u ≤ 0 := le_of_not_ge h
    have hr : 0 ≤ positiveMass A / negativeMass A :=
      div_nonneg (positiveMass_nonneg (show 0 < A by linarith)) (negativeMass_pos hA).le
    simp only [positiveSlope, negativeSlope, max_eq_right hd,
      max_eq_left (neg_nonneg.mpr hd), neg_zero, zero_add]
    exact abs_of_nonneg (mul_nonneg hr (neg_nonneg.mpr hd))

/-- The normalized correction removes one unit of variation; it leaves the full positive mass. -/
theorem pairedTailTest_variation_eq {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, |deriv (pairedTailTest A) u|) = 2 * positiveMass A := by
  simp_rw [pairedTailTest_deriv_abs hA]
  rw [intervalIntegral.integral_add (positiveSlope_intervalIntegrable (show 0 < A by linarith))
    ((negativeSlope_intervalIntegrable (show 0 < A by linarith)).const_mul _),
    intervalIntegral.integral_const_mul]
  change positiveMass A + (positiveMass A / negativeMass A) * negativeMass A = _
  field_simp [ne_of_gt (negativeMass_pos hA)]
  ring

end FormalResearch.RiemannHypothesis.SourcePairedTailTest
```
