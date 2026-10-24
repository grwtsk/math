/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral
import Mathlib.Tactic

/-!
# Full variation remainder for finite sums over unit intervals

Each sample and the entire final unit interval are retained.
The bound uses C1 regularity, without monotonicity or a sign assumption.
No actual source moment, kernel, improper integral or arithmetic bound is
identified by these generic comparison lemmas.
-/

namespace GRWTSK.Analysis.Integration.FiniteUnitSumVariation

open MeasureTheory Set Filter
open scoped ContDiff

noncomputable section

theorem unit_interval_sample_error {f : ℝ → ℝ} (regular : ContDiff ℝ 1 f) (a : ℝ) :
    |f a - ∫ x in a..a + 1, f x| ≤ ∫ x in a..a + 1, |deriv f x| := by
  have derivativeContinuous := regular.continuous_deriv_one.abs
  have pointwise : ∀ x ∈ Icc a (a + 1), |f a - f x| ≤
      ∫ y in a..a + 1, |deriv f y| := by
    intro x retained
    have displacement := _root_.norm_sub_le_integral_of_norm_deriv_le_of_le
      retained.1 regular.continuous.continuousOn
      (regular.differentiable one_ne_zero).differentiableOn
      (Eventually.of_forall (fun _ _ ↦ by simp only [Real.norm_eq_abs, le_refl]))
      (derivativeContinuous.intervalIntegrable a x)
    have enlarged := intervalIntegral.integral_mono_interval (μ := volume)
      le_rfl retained.1 retained.2
      (Eventually.of_forall (fun y ↦ abs_nonneg (deriv f y)))
      (derivativeContinuous.intervalIntegrable a (a + 1))
    have small : |f a - f x| ≤ ∫ y in a..x, |deriv f y| := by
      simpa only [Real.norm_eq_abs, abs_sub_comm] using displacement
    exact small.trans enlarged
  have representation : f a - (∫ x in a..a + 1, f x) =
      ∫ x in a..a + 1, f a - f x := by
    rw [intervalIntegral.integral_sub intervalIntegrable_const
      (regular.continuous.intervalIntegrable a (a + 1)), intervalIntegral.integral_const]
    simp
  calc
    |f a - (∫ x in a..a + 1, f x)| = |∫ x in a..a + 1, f a - f x| := by
      rw [representation]
    _ ≤ ∫ x in a..a + 1, |f a - f x| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ _ in a..a + 1, (∫ y in a..a + 1, |deriv f y|) :=
      intervalIntegral.integral_mono_on (by linarith)
        ((continuous_const.sub regular.continuous).abs.intervalIntegrable a (a + 1))
        intervalIntegrable_const pointwise
    _ = ∫ y in a..a + 1, |deriv f y| := by simp

theorem finite_unit_sum_error {f : ℝ → ℝ} (regular : ContDiff ℝ 1 f)
    {a b : ℕ} (ordered : a ≤ b) :
    |(∑ i ∈ Finset.Ico a b, f (i : ℝ)) - (∫ x in (a : ℝ)..(b : ℝ), f x)| ≤
      ∫ x in (a : ℝ)..(b : ℝ), |deriv f x| := by
  have telescoping := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun i : ℕ ↦ (i : ℝ)) (f := f) (μ := volume) ordered
    (fun i _ ↦ regular.continuous.intervalIntegrable (i : ℝ) ((i + 1 : ℕ) : ℝ))
  have derivativeTelescoping := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun i : ℕ ↦ (i : ℝ)) (f := fun x : ℝ ↦ |deriv f x|) (μ := volume) ordered
    (fun i _ ↦ regular.continuous_deriv_one.abs.intervalIntegrable
      (i : ℝ) ((i + 1 : ℕ) : ℝ))
  rw [← telescoping, ← Finset.sum_sub_distrib]
  calc
    |∑ i ∈ Finset.Ico a b, (f (i : ℝ) - ∫ x in (i : ℝ)..↑(i + 1), f x)| ≤
        ∑ i ∈ Finset.Ico a b, |f (i : ℝ) - ∫ x in (i : ℝ)..↑(i + 1), f x| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ Finset.Ico a b, ∫ x in (i : ℝ)..↑(i + 1), |deriv f x| := by
      apply Finset.sum_le_sum
      intro i _
      simpa only [Nat.cast_add, Nat.cast_one] using unit_interval_sample_error regular (i : ℝ)
    _ = ∫ x in (a : ℝ)..(b : ℝ), |deriv f x| := derivativeTelescoping

end

end GRWTSK.Analysis.Integration.FiniteUnitSumVariation
