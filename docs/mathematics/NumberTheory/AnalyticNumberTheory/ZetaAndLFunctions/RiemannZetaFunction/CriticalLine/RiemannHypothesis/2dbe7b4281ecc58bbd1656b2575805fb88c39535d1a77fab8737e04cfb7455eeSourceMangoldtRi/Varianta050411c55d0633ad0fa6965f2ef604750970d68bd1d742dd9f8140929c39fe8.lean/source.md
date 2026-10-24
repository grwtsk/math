# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.2dbe7b4281ecc58bbd1656b2575805fb88c39535d1a77fab8737e04cfb7455eeSourceMangoldtRi.Varianta050411c55d0633ad0fa6965f2ef604750970d68bd1d742dd9f8140929c39fe8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5d36b72edd319b688cb46d157de9f6fe1a14ab2` · SHA-256 `a050411c55d0633ad0fa6965f2ef604750970d68bd1d742dd9f8140929c39fe8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtRieszReconstruction
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive

/-!
# Conditional quotient-mean control of the complete signed source

The remaining mean witness is an exact open proposition about the actual
Mangoldt primitive, its independently evaluated linear center, and a free
constant center. The consumer uses the native source curvature bound and keeps
all real large scales. It does not construct a mean witness or assert RH.

Research direction and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex / ChatGPT. Focused checks are distinct from
whole-source verification and accepted integration.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean

open MeasureTheory Set
open scoped Interval
open SourcePairing SourceMangoldtRieszReconstruction SourceCorrelationCurvature
open SourceCorrelationCurvatureFive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

/-- Exact missing uniform witness; the constant center may vary with the real scale. -/
def RieszQuotientMeanTailBound (anchor M R : ℝ) : Prop :=
  ∀ A : ℝ, R ≤ A → ∃ b : ℝ,
    (∫ t in 0..2 * A, |centeredRieszProfile A anchor b t|) ≤ M * A ^ 2

/-- The same missing witness with the actual source archimedean anchor. -/
def SourceRieszQuotientMeanTailBound (M R : ℝ) : Prop :=
  RieszQuotientMeanTailBound (archimedeanMultiplier 0) M R

/-- Actual-source curvature prices the complete centered primitive at native large scales. -/
theorem mertensResidual_sub_half_anchor_abs_le_quotient_mean
    (A anchor b : ℝ) (hA : 200 ≤ A) :
    |mertensResidual A - anchor / 2| ≤
      (5 / A ^ 2) * (∫ t in 0..2 * A, |centeredRieszProfile A anchor b t|) := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have h0B : (0 : ℝ) ≤ 2 * A := by linarith
  have hsecond : Continuous (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
    (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hprofile := centeredRieszProfile_continuousOn A anchor b
  have hproduct := hsecond.continuousOn.mul hprofile
  have hbound : ContinuousOn
      (fun t => (5 / A ^ 2) * |centeredRieszProfile A anchor b t|) (Icc 0 (2 * A)) :=
    continuous_const.continuousOn.mul hprofile.abs
  rw [mertensResidual_sub_half_anchor_eq_centered_riesz_work A anchor b hA1]
  calc
    _ ≤ ∫ t in 0..2 * A,
        |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          centeredRieszProfile A anchor b t| :=
      intervalIntegral.abs_integral_le_integral_abs h0B
    _ ≤ ∫ t in 0..2 * A, (5 / A ^ 2) * |centeredRieszProfile A anchor b t| := by
      apply intervalIntegral.integral_mono_on h0B
        (hproduct.abs.intervalIntegrable_of_Icc h0B) (hbound.intervalIntegrable_of_Icc h0B)
      intro t _
      dsimp only [Pi.mul_apply]
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (sourceCorrelation_second_deriv_abs_le_five hA t)
        (abs_nonneg _)
    _ = _ := intervalIntegral.integral_const_mul _ _

/-- A supplied quotient mean at one real scale bounds the complete signed source. -/
theorem mertensResidual_sub_half_anchor_abs_le_five_mul_of_mean
    (A anchor b M : ℝ) (hA : 200 ≤ A)
    (hmean : (∫ t in 0..2 * A, |centeredRieszProfile A anchor b t|) ≤ M * A ^ 2) :
    |mertensResidual A - anchor / 2| ≤ 5 * M := by
  have hp : 0 < A := by linarith
  calc
    _ ≤ (5 / A ^ 2) * (∫ t in 0..2 * A, |centeredRieszProfile A anchor b t|) :=
      mertensResidual_sub_half_anchor_abs_le_quotient_mean A anchor b hA
    _ ≤ (5 / A ^ 2) * (M * A ^ 2) :=
      mul_le_mul_of_nonneg_left hmean (by positivity)
    _ = 5 * M := by field_simp [ne_of_gt hp]

/-- The exact open witness is consumed at every real scale in its tail. -/
theorem quotient_mean_tail_implies_absolute_source_tail
    (anchor M R : ℝ) (hR : 200 ≤ R) (hmean : RieszQuotientMeanTailBound anchor M R) :
    ∀ A : ℝ, R ≤ A → |mertensResidual A - anchor / 2| ≤ 5 * M := by
  intro A hRA
  obtain ⟨b, hb⟩ := hmean A hRA
  exact mertensResidual_sub_half_anchor_abs_le_five_mul_of_mean A anchor b M (hR.trans hRA) hb

/-- Actual archimedean specialization retains the full absolute signed-source conclusion. -/
theorem source_quotient_mean_tail_implies_absolute_source_tail
    (M R : ℝ) (hR : 200 ≤ R) (hmean : SourceRieszQuotientMeanTailBound M R) :
    ∀ A : ℝ, R ≤ A → |mertensResidual A - archimedeanMultiplier 0 / 2| ≤ 5 * M :=
  quotient_mean_tail_implies_absolute_source_tail (archimedeanMultiplier 0) M R hR hmean

/-- One-sided complete source cap for the native downstream signed-bound target. -/
theorem source_quotient_mean_tail_implies_source_upper_tail
    (M R : ℝ) (hR : 200 ≤ R) (hmean : SourceRieszQuotientMeanTailBound M R) :
    ∀ A : ℝ, R ≤ A → mertensResidual A - archimedeanMultiplier 0 / 2 ≤ 5 * M := by
  intro A hRA
  exact (le_abs_self _).trans
    (source_quotient_mean_tail_implies_absolute_source_tail M R hR hmean A hRA)

end FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean
```
