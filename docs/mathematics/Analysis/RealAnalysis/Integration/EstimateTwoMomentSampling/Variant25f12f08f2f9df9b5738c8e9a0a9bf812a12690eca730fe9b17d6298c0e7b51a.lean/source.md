# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSampling.Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a86e018aef906374465f8fc13eddaed028b6fb58` · SHA-256 `603a0c1fa79ca7ad896e28a8c2548e71703f82d6fad208b8989c2abd8815da2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LeftSampleSum.Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LeftSampleSum.Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171","mathematical_subject":"Analysis.Integration","original_sha256":"b6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateTwoMomentSampling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral

/-!
# RH estimate: finite left-endpoint sampling core

This module formalizes the numerical-analysis core of the archived two-moment
sampling lemma.

For a C¹ real function g, the error between its left endpoint on a unit
interval and its integral is represented exactly by one integration-by-parts
term.  Summing over consecutive unit intervals gives a finite sampling error
bounded by the integral of |g'|.

No source-specific estimate is used here.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.LeftSampleSum.Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateTwoMomentSampling

open MeasureTheory Set

noncomputable section

/-- Left-endpoint samples on the unit intervals
    [1,2], [2,3], ..., [N,N+1]. -/
def leftSampleSum (g : ℝ → ℝ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 N, g k

/-- Exact one-interval integration-by-parts identity. -/
theorem unit_sampling_error_identity
    (g : ℝ → ℝ)
    (hg : ContDiff ℝ 1 g)
    (k : ℕ) :
    g k - ∫ u in (k : ℝ)..(k + 1 : ℝ), g u =
      -∫ u in (k : ℝ)..(k + 1 : ℝ),
        ((k + 1 : ℝ) - u) * deriv g u := by
  let w : ℝ → ℝ := fun u => (k + 1 : ℝ) - u
  have hw (u : ℝ) :
      HasDerivAt w (-1) u := by
    unfold w
    exact (hasDerivAt_id u).const_sub (k + 1 : ℝ)
  have hg' (u : ℝ) :
      HasDerivAt g (deriv g u) u :=
    (hg.differentiable (by norm_num) u).hasDerivAt
  have hwi :
      IntervalIntegrable (fun _ : ℝ => (-1 : ℝ))
        volume (k : ℝ) (k + 1 : ℝ) :=
    continuous_const.intervalIntegrable _ _
  have hgi :
      IntervalIntegrable (deriv g)
        volume (k : ℝ) (k + 1 : ℝ) :=
    (hg.continuous_deriv (by norm_num)).intervalIntegrable _ _
  have h :=
    intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (a := (k : ℝ)) (b := (k + 1 : ℝ))
      (u := w) (v := g)
      (u' := fun _ => (-1 : ℝ))
      (v' := deriv g)
      (fun u _ => hw u)
      (fun u _ => hg' u)
      hwi hgi
  unfold w at h
  simp only [sub_self, add_sub_cancel_left, zero_mul, one_mul, neg_one_mul,
    intervalIntegral.integral_neg] at h
  linarith

/-- On one unit interval, left-endpoint quadrature error is controlled by
the total variation of g on that interval. -/
theorem abs_unit_sampling_error_le
    (g : ℝ → ℝ)
    (hg : ContDiff ℝ 1 g)
    (k : ℕ) :
    |g k - ∫ u in (k : ℝ)..(k + 1 : ℝ), g u| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ), |deriv g u| := by
  rw [unit_sampling_error_identity g hg k, abs_neg]
  have hInt :
      IntervalIntegrable
        (fun u : ℝ => |deriv g u|)
        volume (k : ℝ) (k + 1 : ℝ) :=
    ((hg.continuous_deriv (by norm_num)).abs).intervalIntegrable _ _
  have h :=
    intervalIntegral.norm_integral_le_of_norm_le
      (a := (k : ℝ)) (b := (k + 1 : ℝ))
      (by norm_num : (k : ℝ) ≤ k + 1)
      (f := fun u : ℝ =>
        ((k + 1 : ℝ) - u) * deriv g u)
      (g := fun u : ℝ => |deriv g u|)
      ?_ hInt
  · simpa [Real.norm_eq_abs] using h
  · filter_upwards with u hu
    have hu' : (k : ℝ) < u ∧ u ≤ k + 1 := hu
    have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith
    have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hw0]
    nlinarith [abs_nonneg (deriv g u)]

/-- Integral additivity across an integer partition. -/
theorem integral_eq_sum_unit_intervals
    (g : ℝ → ℝ)
    (hg : Continuous g)
    (N : ℕ) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ), g u) =
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ), g u := by
  induction N with
  | zero =>
      norm_num
  | succ N ih =>
      by_cases hN : N = 0
      · subst N
        norm_num
      · have h1N : 1 ≤ N := Nat.one_le_iff_ne_zero.mpr hN
        have hsplit :=
          intervalIntegral.integral_add_adjacent_intervals
            (μ := volume)
            (a := (1 : ℝ))
            (b := (N + 1 : ℝ))
            (c := (N + 2 : ℝ))
            (hg.intervalIntegrable _ _)
            (hg.intervalIntegrable _ _)
        rw [ih] at hsplit
        rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
        have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
        simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm

/-- The finite left-endpoint rule differs from the integral by at most the
integral of |g'| over the same union of unit intervals. -/
theorem abs_leftSampleSum_sub_integral_le
    (g : ℝ → ℝ)
    (hg : ContDiff ℝ 1 g)
    (N : ℕ) :
    |leftSampleSum g N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ), g u| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ), |deriv g u| := by
  rw [integral_eq_sum_unit_intervals g hg.continuous N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    |∑ k ∈ Finset.Icc 1 N,
        (g k -
          ∫ u in (k : ℝ)..(k + 1 : ℝ), g u)| ≤
        ∑ k ∈ Finset.Icc 1 N,
          |g k -
            ∫ u in (k : ℝ)..(k + 1 : ℝ), g u| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
        ∑ k ∈ Finset.Icc 1 N,
          ∫ u in (k : ℝ)..(k + 1 : ℝ),
            |deriv g u| := by
      gcongr with k hk
      exact abs_unit_sampling_error_le g hg k
    _ =
        ∫ u in (1 : ℝ)..(N + 1 : ℝ),
          |deriv g u| := by
      symm
      exact integral_eq_sum_unit_intervals
        (fun u => |deriv g u|)
        (hg.continuous_deriv (by norm_num)).abs
        N

/-- A convenient record of the finite sampling theorem used by the
source-specific logarithmic kernel. -/
def FiniteSamplingCheckpoint : Prop :=
  ∀ g : ℝ → ℝ,
    ContDiff ℝ 1 g →
    ∀ N : ℕ,
      |leftSampleSum g N -
          ∫ u in (1 : ℝ)..(N + 1 : ℝ), g u| ≤
        ∫ u in (1 : ℝ)..(N + 1 : ℝ), |deriv g u|

theorem finite_sampling_checkpoint :
    FiniteSamplingCheckpoint :=
  abs_leftSampleSum_sub_integral_le

end
end EstimateTwoMomentSampling
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
