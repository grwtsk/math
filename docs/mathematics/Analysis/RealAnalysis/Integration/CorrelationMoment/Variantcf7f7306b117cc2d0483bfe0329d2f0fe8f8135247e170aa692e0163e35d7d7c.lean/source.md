# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CorrelationMoment.Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed0451c647701bff0458e9c1625e07723c725ec6` · SHA-256 `cf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import Mathlib.Analysis.Convolution

/-!
# Exact exponential moments of the actual source correlation

The pole moments are proved for the concrete zero-extended source test. The
weighted correlation identity uses the integrable convolution theorem, with
all integrability premises proved. No full realization or RH bridge is assumed.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

open MeasureTheory Set
open scoped ContDiff Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

noncomputable section

/-- An exact primitive for the exponentially weighted pole-annihilated polynomial. -/
def polePrimitive (A σ x : ℝ) : ℝ :=
  Real.exp (σ * x) * (firstInterior A x - σ * bumpInterior A x)

/-- The eigenvalue condition `σ²=1/4` cancels the source's precise pole coefficient. -/
theorem polePrimitive_hasDerivAt (A σ x : ℝ) (hσ : σ ^ 2 = 1 / 4) :
    HasDerivAt (polePrimitive A σ)
      (Real.exp (σ * x) * (secondInterior A x - bumpInterior A x / 4)) x := by
  have hd := (((hasDerivAt_id x).const_mul σ).exp).mul
    ((firstInterior_hasDerivAt A x).sub ((bumpInterior_hasDerivAt A x).const_mul σ))
  apply hd.congr_deriv
  dsimp only [Pi.sub_apply, id_eq]
  calc
    _ = Real.exp (σ * x) * (secondInterior A x - σ ^ 2 * bumpInterior A x) := by ring
    _ = _ := by rw [hσ]; ring

/-- Both primitive boundary traces are zero, using the actual bump and derivative traces. -/
theorem polePrimitive_endpoints (A σ : ℝ) (hA : A ≠ 0) :
    polePrimitive A σ (-A) = 0 ∧ polePrimitive A σ A = 0 := by
  rcases bumpInterior_endpoints A hA with ⟨hl, hr⟩
  rcases firstInterior_endpoints A hA with ⟨hl', hr'⟩
  simp [polePrimitive, hl, hr, hl', hr']

/-- The exponentially weighted source test has an exact compact-interval representation. -/
theorem weighted_dilationTest_eq_indicator (A σ : ℝ) (hA : 1 ≤ A) :
    (fun x ↦ Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      (Icc (-A) A).indicator (fun x ↦ Real.exp (σ * x) *
        (secondInterior A x - bumpInterior A x / 4)) := by
  rw [explicit_dilationTest_eq_indicator A (by linarith)]
  funext x
  exact (Set.indicator_mul_right (Icc (-A) A) (fun x ↦ Real.exp (σ * x))
    (fun x ↦ secondInterior A x - bumpInterior A x / 4)).symm

/-- Every fixed exponential weight is integrable against the actual compact source test. -/
theorem weighted_dilationTest_integrable (A σ : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) volume := by
  rw [weighted_dilationTest_eq_indicator A σ hA]
  exact integrable_zeroExtension (fun x ↦ Real.exp (σ * x) *
      (secondInterior A x - bumpInterior A x / 4))
      (((Real.continuous_exp.comp (continuous_const.mul continuous_id))).mul
        ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4))) (-A) A

/-- The actual source test annihilates both exponential poles by the fundamental theorem. -/
theorem weighted_dilationTest_integral_zero (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) = 0 := by
  have hpos : 0 < A := by linarith
  have hab : -A ≤ A := by linarith
  have hc : Continuous (fun x ↦ Real.exp (σ * x) *
      (secondInterior A x - bumpInterior A x / 4)) :=
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id))).mul
      ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4))
  rw [weighted_dilationTest_eq_indicator A σ hA]
  rw [zeroExtension_integral _ (-A) A hab,
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ polePrimitive_hasDerivAt A σ x hσ) (hc.intervalIntegrable (-A) A)]
  rw [(polePrimitive_endpoints A σ (ne_of_gt hpos)).1,
    (polePrimitive_endpoints A σ (ne_of_gt hpos)).2]
  ring

/-- Fixed source normalization preserves genuine weighted integrability. -/
theorem weighted_normalizedTest_integrable (A σ : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ Real.exp (σ * x) * normalizedTest explicitSecondDerivative A x) volume := by
  simpa only [normalizedTest, ← mul_div_assoc] using
    (weighted_dilationTest_integrable A σ hA).div_const (Real.sqrt (sourceNormalization A))

/-- The source's fixed normalization preserves the proved zero exponential moment. -/
theorem weighted_normalizedTest_integral_zero (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, Real.exp (σ * x) * normalizedTest explicitSecondDerivative A x) = 0 := by
  simp_rw [normalizedTest, ← mul_div_assoc]
  rw [integral_div, weighted_dilationTest_integral_zero A σ hA hσ, zero_div]

/-- The correlation convention is exactly the real source convention `v(x)v(x-t)`. -/
def correlation (v : ℝ → ℝ) (t : ℝ) : ℝ := ∫ x, v x * v (x - t)

/-- Exponential weighting commutes with convolution after reflection of the second factor. -/
theorem weighted_correlation_eq_convolution (v : ℝ → ℝ) (σ t : ℝ) :
    Real.exp (σ * t) * correlation v t =
      ((fun x ↦ Real.exp (σ * x) * v x) ⋆
        (fun x ↦ Real.exp (σ * x) * v (-x))) t := by
  rw [correlation, ← integral_const_mul, convolution_lsmul]
  apply integral_congr_ae
  filter_upwards [] with x
  change Real.exp (σ * t) * (v x * v (x - t)) =
    (Real.exp (σ * x) * v x) * (Real.exp (σ * (t - x)) * v (-(t - x)))
  rw [neg_sub]
  have he : Real.exp (σ * t) = Real.exp (σ * x) * Real.exp (σ * (t - x)) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  ring

/-- Reflection of the negative weighted factor is integrable whenever that factor is. -/
theorem reflected_weight_integrable (v : ℝ → ℝ) (σ : ℝ)
    (hnegative : Integrable (fun x ↦ Real.exp ((-σ) * x) * v x) volume) :
    Integrable (fun x ↦ Real.exp (σ * x) * v (-x)) volume := by
  have hi := hnegative.comp_neg
  simpa only [neg_mul_neg] using hi

/-- Weighted correlation integrability follows from integrable convolution; Fubini is justified. -/
theorem weighted_correlation_integrable (v : ℝ → ℝ) (σ : ℝ)
    (hpositive : Integrable (fun x ↦ Real.exp (σ * x) * v x) volume)
    (hnegative : Integrable (fun x ↦ Real.exp ((-σ) * x) * v x) volume) :
    Integrable (fun t ↦ Real.exp (σ * t) * correlation v t) volume := by
  have hi := hpositive.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ)
    (reflected_weight_integrable v σ hnegative)
  have he : (fun t ↦ Real.exp (σ * t) * correlation v t) =
      (fun x ↦ Real.exp (σ * x) * v x) ⋆
        (fun x ↦ Real.exp (σ * x) * v (-x)) := by
    funext t
    exact weighted_correlation_eq_convolution v σ t
  rw [he]
  exact hi

/-- Exact weighted Fubini factorization with both genuine integrability premises exposed. -/
theorem weighted_correlation_integral (v : ℝ → ℝ) (σ : ℝ)
    (hpositive : Integrable (fun x ↦ Real.exp (σ * x) * v x) volume)
    (hnegative : Integrable (fun x ↦ Real.exp ((-σ) * x) * v x) volume) :
    (∫ t, Real.exp (σ * t) * correlation v t) =
      (∫ x, Real.exp (σ * x) * v x) * (∫ x, Real.exp ((-σ) * x) * v x) := by
  simp_rw [weighted_correlation_eq_convolution]
  rw [integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hpositive
    (reflected_weight_integrable v σ hnegative)]
  change (∫ x, Real.exp (σ * x) * v x) * (∫ x, Real.exp (σ * x) * v (-x)) = _
  congr 1
  have he := integral_neg_eq_self (fun x ↦ Real.exp ((-σ) * x) * v x) volume
  simpa only [neg_mul_neg] using he

/-- An even compactly supported correlation transports its full exponential moment
to the sum of its positive-half moments. All additivity premises are integrable. -/
theorem half_interval_moment_of_even (C : ℝ → ℝ) (b σ : ℝ) (hb : 0 ≤ b)
    (heven : Function.Even C) (hsupport : ∀ t, t ∉ Icc (-b) b → C t = 0)
    (hint : Integrable (fun t ↦ Real.exp (σ * t) * C t) volume)
    (hzero : (∫ t, Real.exp (σ * t) * C t) = 0) :
    (∫ t in 0..b, Real.exp (σ * t) * C t) +
      (∫ t in 0..b, Real.exp ((-σ) * t) * C t) = 0 := by
  have hfull : (∫ t, Real.exp (σ * t) * C t) =
      ∫ t in -b..b, Real.exp (σ * t) * C t := by
    calc
      _ = ∫ t, (Icc (-b) b).indicator (fun x ↦ Real.exp (σ * x) * C x) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-b) b
        · simp only [indicator_of_mem ht]
        · rw [indicator_of_notMem ht, hsupport t ht, mul_zero]
      _ = _ := zeroExtension_integral _ (-b) b (by linarith)
  have hreflection : (∫ t in -b..0, Real.exp (σ * t) * C t) =
      ∫ t in 0..b, Real.exp ((-σ) * t) * C t := by
    calc
      _ = ∫ t in 0..b, Real.exp (σ * (-t)) * C (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg (fun t ↦ Real.exp (σ * t) * C t)
            (a := 0) (b := b)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [heven t]
        congr 2
        ring
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (a := -b) (b := 0) (c := b) hint.intervalIntegrable hint.intervalIntegrable
  rw [hreflection, ← hfull, hzero] at hsplit
  linarith

/-- Positive exponential integrability of the actual normalized test. -/
theorem positive_pole_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ Real.exp (x / 2) * normalizedTest explicitSecondDerivative A x) volume := by
  have hscale (x : ℝ) : (1 / 2 : ℝ) * x = x / 2 := by ring
  simpa only [hscale] using weighted_normalizedTest_integrable A (1 / 2) hA

/-- Negative exponential integrability of the actual normalized test. -/
theorem negative_pole_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x)
      volume := by
  have hscale (x : ℝ) : (-1 / 2 : ℝ) * x = -x / 2 := by ring
  simpa only [hscale] using weighted_normalizedTest_integrable A (-1 / 2) hA

/-- The actual positive pole vanishes, with no realization field assumed. -/
theorem positive_pole_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, Real.exp (x / 2) * normalizedTest explicitSecondDerivative A x) = 0 := by
  have hscale (x : ℝ) : (1 / 2 : ℝ) * x = x / 2 := by ring
  simpa only [hscale] using weighted_normalizedTest_integral_zero A (1 / 2) hA (by norm_num)

/-- The actual negative pole vanishes, with no realization field assumed. -/
theorem negative_pole_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x) = 0 := by
  have hscale (x : ℝ) : (-1 / 2 : ℝ) * x = -x / 2 := by ring
  simpa only [hscale] using weighted_normalizedTest_integral_zero A (-1 / 2) hA (by norm_num)

/-- The actual exponential correlation moment is integrable and vanishes on the whole line. -/
theorem full_correlation_moment_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, Real.exp ((1 / 2 : ℝ) * t) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  change (∫ t, Real.exp ((1 / 2 : ℝ) * t) *
    correlation (normalizedTest explicitSecondDerivative A) t) = 0
  rw [weighted_correlation_integral _ _
    (weighted_normalizedTest_integrable A (1 / 2) hA)
    (weighted_normalizedTest_integrable A (-(1 / 2)) hA),
    weighted_normalizedTest_integral_zero A (1 / 2) hA (by norm_num), zero_mul]

/-- Exact RH-0011 equation (8) for the actual normalized correlation, on every admitted radius.
The only hypothesis is `A≥1`; no full realization or arithmetic representation is assumed. -/
theorem pole_correlation_certificate (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) +
      (∫ t in 0..2 * A, Real.exp (-t / 2) *
        sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hpos : 0 < A := by linarith
  have hsupport : ∀ t, t ∉ Icc (-(2 * A)) (2 * A) →
      sourceCorrelation explicitSecondDerivative A t = 0 := by
    intro t ht
    apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t hpos
    by_contra h
    exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
  have hi : Integrable (fun t ↦ Real.exp ((1 / 2 : ℝ) * t) *
      sourceCorrelation explicitSecondDerivative A t) volume :=
    weighted_correlation_integrable _ _
      (weighted_normalizedTest_integrable A (1 / 2) hA)
      (weighted_normalizedTest_integrable A (-(1 / 2)) hA)
  have h := half_interval_moment_of_even (sourceCorrelation explicitSecondDerivative A)
    (2 * A) (1 / 2) (by linarith) (sourceCorrelation_even A) hsupport hi
    (full_correlation_moment_zero A hA)
  have hscale (t : ℝ) : (1 / 2 : ℝ) * t = t / 2 := by ring
  have hnegative (t : ℝ) : (-(1 / 2) : ℝ) * t = -t / 2 := by ring
  simpa only [hscale, hnegative] using h

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
```
