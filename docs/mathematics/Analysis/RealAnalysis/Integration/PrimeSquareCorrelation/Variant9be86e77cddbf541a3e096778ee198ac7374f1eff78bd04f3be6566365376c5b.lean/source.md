# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PrimeSquareCorrelation.Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b6e97e244f9104f54aea6fe81b8401690b9e433` · SHA-256 `9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondDerivative

set_option autoImplicit false

namespace PrimeSquareCorrelationScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment
open FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondDerivative

noncomputable section

theorem sourceCorrelation_derivative_zero (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hd := ((sourceCorrelation_contDiff A (by linarith)).differentiable
    (by norm_num) (0 : ℝ)).hasDerivAt
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by simpa using hd
  have hn := hdneg.comp (0 : ℝ) (hasDerivAt_neg (0 : ℝ))
  have he : (sourceCorrelation explicitSecondDerivative A) ∘ Neg.neg =
      sourceCorrelation explicitSecondDerivative A :=
    funext (sourceCorrelation_even A)
  rw [he] at hn
  have hu := hd.unique hn
  simp only [mul_neg_one] at hu
  linarith

theorem sourceCorrelation_derivative_linear_bound (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      (65 / (3 * A ^ 2)) * |t| := by
  have hm := convex_univ.norm_image_sub_le_of_norm_deriv_le
    (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ ↦ ((sourceCorrelation_derivative_contDiff A hA).differentiable
      (by norm_num) x))
    (fun x _ ↦ show ‖deriv (deriv (sourceCorrelation explicitSecondDerivative A)) x‖ ≤
      65 / (3 * A ^ 2) from by simpa only [Real.norm_eq_abs] using
        sourceCorrelation_second_derivative_abs_le A x hA)
    (Set.mem_univ (0 : ℝ)) (Set.mem_univ t)
  simpa only [sourceCorrelation_derivative_zero A hA, sub_zero, Real.norm_eq_abs] using hm

theorem sourceCorrelation_double_hasDerivAt (A u : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))
      (2 * deriv (sourceCorrelation explicitSecondDerivative A) (2 * u)) u := by
  have hd := ((sourceCorrelation_contDiff A (by linarith)).differentiable
    (by norm_num) (2 * u)).hasDerivAt
  simpa only [Function.comp_def, mul_one, one_mul, mul_comm] using
    hd.comp u ((hasDerivAt_id u).const_mul 2)

theorem sourceCorrelation_double_derivative_abs_le (A u : ℝ) (hA : 1 ≤ A) (hu : 0 ≤ u) :
    |deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u| ≤
      (260 / (3 * A ^ 2)) * u := by
  rw [(sourceCorrelation_double_hasDerivAt A u hA).deriv, abs_mul]
  have hd := sourceCorrelation_derivative_linear_bound A (2 * u) hA
  rw [abs_of_nonneg (by positivity : 0 ≤ 2 * u)] at hd
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    2 * _ ≤ 2 * ((65 / (3 * A ^ 2)) * (2 * u)) := mul_le_mul_of_nonneg_left hd (by norm_num)
    _ = _ := by ring

/-- An exact polynomial primitive for the unmodified scaled bump. -/
def bumpPrimitive (A x : ℝ) : ℝ :=
  (A / Real.sqrt A) * (x / A - 4 * (x / A) ^ 3 / 3 +
    6 * (x / A) ^ 5 / 5 - 4 * (x / A) ^ 7 / 7 + (x / A) ^ 9 / 9)

theorem bumpPrimitive_hasDerivAt (A x : ℝ) (hA : A ≠ 0) :
    HasDerivAt (bumpPrimitive A) (bumpInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have hd := ((((hy.sub (((hy.pow 3).const_mul 4).div_const 3)).add
    (((hy.pow 5).const_mul 6).div_const 5)).sub
    (((hy.pow 7).const_mul 4).div_const 7)).add
    ((hy.pow 9).div_const 9)).const_mul (A / Real.sqrt A)
  convert hd using 1 <;> try rfl
  dsimp [bumpInterior]
  field_simp
  ring

theorem bumpInterior_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in -A..A, bumpInterior A x) = (256 / 315) * A / Real.sqrt A := by
  have hn : A ≠ 0 := by linarith
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ bumpPrimitive_hasDerivAt A x hn)
    ((bumpInterior_continuous A).intervalIntegrable (-A) A)]
  simp only [bumpPrimitive, neg_div, div_self hn]
  ring

theorem explicitSecondDerivative_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, explicitSecondDerivative A x) = 0 := by
  rw [explicitSecondDerivative, zeroExtension_integral _ (-A) A (by linarith),
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ firstInterior_hasDerivAt A x)
      ((secondInterior_continuous A).intervalIntegrable (-A) A),
    (firstInterior_endpoints A (by linarith)).1,
    (firstInterior_endpoints A (by linarith)).2, sub_self]

theorem scaledBump_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, scaledBump A x) = (256 / 315) * A / Real.sqrt A := by
  rw [scaledBump_eq_indicator A (by linarith),
    zeroExtension_integral _ (-A) A (by linarith), bumpInterior_integral A hA]

theorem dilationTest_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, dilationTest explicitSecondDerivative A x) =
      -(256 / 315) * A / (4 * Real.sqrt A) := by
  unfold dilationTest
  rw [integral_sub (explicitSecondDerivative_integrable A)
    ((scaledBump_integrable A (by linarith)).div_const 4), integral_div,
    explicitSecondDerivative_integral_zero A hA, scaledBump_integral A hA]
  ring

theorem normalizedTest_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, normalizedTest explicitSecondDerivative A x) =
      -(256 / 315) * A / (4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  simp_rw [normalizedTest]
  rw [integral_div, dilationTest_integral A hA]
  ring

theorem sourceCorrelation_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, sourceCorrelation explicitSecondDerivative A t) =
      (256 / 315) ^ 2 * A / (16 * sourceNormalization A) := by
  have hf := weighted_normalizedTest_integrable A 0 hA
  have hfull := weighted_correlation_integral
    (normalizedTest explicitSecondDerivative A) 0 hf (by simpa using hf)
  simp only [zero_mul, neg_zero, Real.exp_zero, one_mul] at hfull
  change (∫ t, sourceCorrelation explicitSecondDerivative A t) =
    (∫ x, normalizedTest explicitSecondDerivative A x) *
      (∫ x, normalizedTest explicitSecondDerivative A x) at hfull
  rw [hfull, normalizedTest_integral A hA]
  have hsa : Real.sqrt A ^ 2 = A := Real.sq_sqrt (by linarith)
  have hsz : Real.sqrt (sourceNormalization A) ^ 2 = sourceNormalization A :=
    Real.sq_sqrt (source_normalization_pos A hA).le
  have hnA : A ≠ 0 := by linarith
  have hnZ : sourceNormalization A ≠ 0 := ne_of_gt (source_normalization_pos A hA)
  have hnsa : Real.sqrt A ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr (by linarith))
  have hnsz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    ne_of_gt (Real.sqrt_pos.mpr (source_normalization_pos A hA))
  field_simp
  nlinarith [hsa, hsz]

theorem sourceCorrelation_full_eq_four_half (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, sourceCorrelation explicitSecondDerivative A t) =
      4 * ∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hi := sourceCorrelation_integrable A (by linarith)
  have hfull : (∫ t, C t) = ∫ t in -(2 * A)..(2 * A), C t := by
    calc
      _ = ∫ t, (Icc (-(2 * A)) (2 * A)).indicator C t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
        · simp only [indicator_of_mem ht]
        · rw [indicator_of_notMem ht]
          exact sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
            (by by_contra h; exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h))))
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have hr : (∫ t in -(2 * A)..0, C t) = ∫ t in 0..(2 * A), C t := by
    calc
      _ = ∫ t in 0..(2 * A), C (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg C (a := 0) (b := 2 * A)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro t _
        exact sourceCorrelation_even A t
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  have hscale := intervalIntegral.integral_comp_mul_left C (a := 0) (b := A)
    (by norm_num : (2 : ℝ) ≠ 0)
  simp only [mul_zero, smul_eq_mul] at hscale
  change (∫ u in 0..A, C (2 * u)) = _ at hscale
  rw [hr, ← hfull] at hsplit
  change (∫ t, C t) = 4 * ∫ u in 0..A, C (2 * u)
  rw [hscale]
  linarith

theorem sourceCorrelation_double_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u)) =
      (256 / 315) ^ 2 * A / (64 * sourceNormalization A) := by
  have hfull := sourceCorrelation_full_eq_four_half A hA
  rw [sourceCorrelation_integral A hA] at hfull
  calc
    _ = ((256 / 315) ^ 2 * A / (16 * sourceNormalization A)) / 4 := by linarith
    _ = _ := by ring

end
end PrimeSquareCorrelationScratch
```
