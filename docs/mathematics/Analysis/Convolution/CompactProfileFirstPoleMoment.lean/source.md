# Complete source: GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74baec6042165051d94875b6c1b449de453f6f76` · SHA-256 `c12de7e6a101c4a4daa71a61c0c1e2a692dee849bb5c4ed9324724dde9a1f571`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Distribution.CompactProfileDilation
import GRWTSK.Analysis.Convolution.ExponentialMoments
import GRWTSK.Analysis.Convolution.FirstMomentConvolution

/-!
# The actual compact residual correlation's first pole moment

The source is the actual squared-integral normalizedSource.
Positive scale supplies compact support and all four genuine weighted factor
integrability premises. The whole-line first moment retains both factors.
No C2 source assumption, rational replacement or arithmetic estimate is used.
-/

open scoped Convolution

namespace GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment

open MeasureTheory Filter
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticSupplier
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

/-- Actual compact support admits every first exponentially weighted source factor. -/
theorem normalized_source_first_exponential_integrable {A : ℝ} (hA : 0 < A) (c : ℝ) :
    Integrable (fun x : ℝ ↦ x * (Real.exp (c * x) * normalizedSource A x)) := by
  have actual := SourceDilation.compact_product_integrable
    (SourceNormalization.normalized_source_continuous A)
    (SourceRegularity.normalized_source_hasCompactSupport hA)
    (g := fun x : ℝ ↦ x * Real.exp (c * x)) (by fun_prop)
  convert actual using 1
  funext x
  ring

/-- Genuine first-moment integrability comes from both full weighted factors. -/
theorem first_exponential_correlation_integrable {A : ℝ} (hA : 0 < A) (c : ℝ) :
    Integrable (fun t : ℝ ↦ t * Real.exp (c * t) * correlation A t) := by
  let f : ℝ → ℝ := fun x ↦ Real.exp (c * x) * normalizedSource A x
  let g : ℝ → ℝ := fun x ↦ Real.exp (c * x) * normalizedSource A (-x)
  have hf : Integrable f := by
    convert SourceDilation.normalized_source_exponential_integrable hA c using 1
    funext x
    dsimp [f]
    ring
  have hg : Integrable g := CorrelationMoment.reflected_weight_integrable
    (normalizedSource A) c
    (by
      convert SourceDilation.normalized_source_exponential_integrable hA (-c) using 1
      funext x
      ring)
  have hxf : Integrable (fun x : ℝ ↦ x * f x) :=
    normalized_source_first_exponential_integrable hA c
  have hxg : Integrable (fun x : ℝ ↦ x * g x) := by
    convert (normalized_source_first_exponential_integrable hA (-c)).comp_neg.neg using 1
    funext x
    dsimp [g]
    rw [neg_mul_neg]
    ring
  have actual := FirstMomentConvolution.first_moment_convolution_integrable hf hg hxf hxg
  apply actual.congr
  filter_upwards [] with t
  calc
    t * (f ⋆ g) t = t * (Real.exp (c * t) * correlation A t) := by
      exact congrArg (fun z : ℝ ↦ t * z)
        (CorrelationMoment.weighted_correlation_eq_convolution
          (normalizedSource A) c t).symm
    _ = t * Real.exp (c * t) * correlation A t := by ring

/-- Both proved source poles annihilate the actual full first correlation moment. -/
theorem first_pole_correlation_integral_zero {A c : ℝ} (hA : 0 < A)
    (pole : c ^ 2 = 1 / 4) :
    (∫ t : ℝ, t * Real.exp (c * t) * correlation A t) = 0 := by
  let f : ℝ → ℝ := fun x ↦ Real.exp (c * x) * normalizedSource A x
  let g : ℝ → ℝ := fun x ↦ Real.exp (c * x) * normalizedSource A (-x)
  have hf : Integrable f := by
    convert SourceDilation.normalized_source_exponential_integrable hA c using 1
    funext x
    dsimp [f]
    ring
  have hg : Integrable g := CorrelationMoment.reflected_weight_integrable
    (normalizedSource A) c
    (by
      convert SourceDilation.normalized_source_exponential_integrable hA (-c) using 1
      funext x
      ring)
  have hxf : Integrable (fun x : ℝ ↦ x * f x) :=
    normalized_source_first_exponential_integrable hA c
  have hxg : Integrable (fun x : ℝ ↦ x * g x) := by
    convert (normalized_source_first_exponential_integrable hA (-c)).comp_neg.neg using 1
    funext x
    dsimp [g]
    rw [neg_mul_neg]
    ring
  have weightedZero (d : ℝ) (admitted : d ^ 2 = 1 / 4) :
      (∫ x : ℝ, Real.exp (d * x) * normalizedSource A x) = 0 := by
    calc
      _ = ∫ x : ℝ, normalizedSource A x * Real.exp (d * x) := by
        apply integral_congr_ae
        filter_upwards [] with x
        ring
      _ = 0 := SourceDilation.normalized_source_exponential_integral_zero hA admitted
  have zeroF : (∫ x : ℝ, f x) = 0 := weightedZero c pole
  have zeroG : (∫ x : ℝ, g x) = 0 := by
    have reflected := integral_neg_eq_self
      (fun x : ℝ ↦ Real.exp ((-c) * x) * normalizedSource A x) volume
    calc
      _ = ∫ x : ℝ, Real.exp ((-c) * x) * normalizedSource A x := by
        simpa only [neg_mul_neg] using reflected
      _ = 0 := weightedZero (-c) (by nlinarith [pole])
  calc
    (∫ t : ℝ, t * Real.exp (c * t) * correlation A t) =
        ∫ t : ℝ, t * (f ⋆ g) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      calc
        _ = t * (Real.exp (c * t) * correlation A t) := by ring
        _ = t * (f ⋆ g) t := by
          exact congrArg (fun z : ℝ ↦ t * z)
            (CorrelationMoment.weighted_correlation_eq_convolution (normalizedSource A) c t)
    _ = 0 := FirstMomentConvolution.first_moment_convolution_integral_zero
      hf hg hxf hxg zeroF zeroG

end

end GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment
```
