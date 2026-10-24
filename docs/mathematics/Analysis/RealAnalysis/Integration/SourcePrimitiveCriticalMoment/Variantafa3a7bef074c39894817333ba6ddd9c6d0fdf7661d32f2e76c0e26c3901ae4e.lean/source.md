# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveCriticalMoment.Variantafa3a7bef074c39894817333ba6ddd9c6d0fdf7661d32f2e76c0e26c3901ae4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d763d17f5e3f8c6f2fd0993130c15173ec3b55a` · SHA-256 `afa3a7bef074c39894817333ba6ddd9c6d0fdf7661d32f2e76c0e26c3901ae4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

/-!
# Private continuous primitive-filter cancellation

This future source calculation retains actual x-s correlations over the full
line. Compact weighted integrability and both derivative-transform signs are
proved before Fubini or integral linearity. It supplies no sign of shifted
correlations, discrete prime estimate, signed surplus witness or RH result.
The private focused status and independent review remain external and separate
from the canonical cycle-15 twenty-two declarations and complete verifier.

AI attribution: developed with OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMoment

open MeasureTheory
open SourcePrimitivePrimeInteraction SourceCausalEnergy SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open CorrelationMoment Realization

private theorem weighted_compact_integrable {b : ℝ → ℝ} (hb : Continuous b)
    (hs : HasCompactSupport b) (σ : ℝ) :
    Integrable (fun x : ℝ => Real.exp (σ * x) * b x) :=
  ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hb)
    .integrable_of_hasCompactSupport hs.mul_left

private theorem weighted_deriv_integral {b : ℝ → ℝ} (hb : ContDiff ℝ 1 b)
    (hs : HasCompactSupport b) (σ : ℝ) :
    (∫ x : ℝ, Real.exp (σ * x) * deriv b x) =
      -σ * ∫ x : ℝ, Real.exp (σ * x) * b x := by
  have h0 := weighted_compact_integrable hb.continuous hs σ
  have h1 := weighted_compact_integrable hb.continuous_deriv_one hs.deriv σ
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => Real.exp (σ * x)) (u' := fun x => σ * Real.exp (σ * x))
    (v := b) (v' := deriv b)
    (fun x _ => by
      simpa only [mul_comm] using ((hasDerivAt_id x).const_mul σ).exp)
    (fun x _ => (hb.differentiable (by norm_num) x).hasDerivAt)
    h1 (by simpa only [Pi.mul_apply, mul_assoc] using h0.const_mul σ) h0
  simpa only [← mul_assoc, integral_const_mul, neg_mul] using h

private theorem primitive_deriv_laplace {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ x : ℝ, Real.exp (σ * x) * deriv (normalizedPrimitiveBump A) x) =
      -σ * ∫ x : ℝ, Real.exp (σ * x) * normalizedPrimitiveBump A x :=
  weighted_deriv_integral ((normalizedPrimitiveBump_contDiff hA).of_le (by norm_num))
    (normalizedPrimitiveBump_hasCompactSupport hA) σ

private theorem primitive_second_laplace {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ x : ℝ, Real.exp (σ * x) * deriv (deriv (normalizedPrimitiveBump A)) x) =
      σ ^ 2 * ∫ x : ℝ, Real.exp (σ * x) * normalizedPrimitiveBump A x := by
  rw [weighted_deriv_integral (normalizedPrimitiveBump_contDiff hA).deriv'
    (normalizedPrimitiveBump_hasCompactSupport hA).deriv σ, primitive_deriv_laplace hA σ]
  ring

/-- All three full-line weighted correlations are genuinely integrable at every real sigma. -/
theorem primitive_correlations_weighted_integrable {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    Integrable (fun s : ℝ => Real.exp (σ * s) * primitiveCorrelationZero A s) ∧
    Integrable (fun s : ℝ => Real.exp (σ * s) * primitiveCorrelationOne A s) ∧
    Integrable (fun s : ℝ => Real.exp (σ * s) * primitiveCorrelationTwo A s) := by
  have hc := normalizedPrimitiveBump_contDiff hA
  have hs := normalizedPrimitiveBump_hasCompactSupport hA
  refine ⟨?_, ?_, ?_⟩
  · simpa only [correlation, primitiveCorrelationZero] using
      weighted_correlation_integrable (normalizedPrimitiveBump A) σ
        (weighted_compact_integrable hc.continuous hs σ)
        (weighted_compact_integrable hc.continuous hs (-σ))
  · simpa only [correlation, primitiveCorrelationOne] using
      weighted_correlation_integrable (deriv (normalizedPrimitiveBump A)) σ
        (weighted_compact_integrable hc.deriv'.continuous hs.deriv σ)
        (weighted_compact_integrable hc.deriv'.continuous hs.deriv (-σ))
  · simpa only [correlation, primitiveCorrelationTwo] using
      weighted_correlation_integrable (deriv (deriv (normalizedPrimitiveBump A))) σ
        (weighted_compact_integrable hc.deriv'.continuous_deriv_one hs.deriv.deriv σ)
        (weighted_compact_integrable hc.deriv'.continuous_deriv_one hs.deriv.deriv (-σ))

/-- Reflection gives opposite derivative-transform signs, hence the first square has a minus. -/
theorem primitiveCorrelationOne_laplace {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationOne A s) =
      -σ ^ 2 * ∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s := by
  have hc := normalizedPrimitiveBump_contDiff hA
  have hs := normalizedPrimitiveBump_hasCompactSupport hA
  have h1 := weighted_correlation_integral (deriv (normalizedPrimitiveBump A)) σ
    (weighted_compact_integrable hc.deriv'.continuous hs.deriv σ)
    (weighted_compact_integrable hc.deriv'.continuous hs.deriv (-σ))
  have h0 := weighted_correlation_integral (normalizedPrimitiveBump A) σ
    (weighted_compact_integrable hc.continuous hs σ)
    (weighted_compact_integrable hc.continuous hs (-σ))
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationOne A s) = _ at h1
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s) = _ at h0
  rw [primitive_deriv_laplace hA σ, primitive_deriv_laplace hA (-σ)] at h1
  rw [h1, h0]
  ring

/-- The second derivative transforms twice before the exact full correlation factorization. -/
theorem primitiveCorrelationTwo_laplace {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationTwo A s) =
      σ ^ 4 * ∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s := by
  have hc := normalizedPrimitiveBump_contDiff hA
  have hs := normalizedPrimitiveBump_hasCompactSupport hA
  have h2 := weighted_correlation_integral (deriv (deriv (normalizedPrimitiveBump A))) σ
    (weighted_compact_integrable hc.deriv'.continuous_deriv_one hs.deriv.deriv σ)
    (weighted_compact_integrable hc.deriv'.continuous_deriv_one hs.deriv.deriv (-σ))
  have h0 := weighted_correlation_integral (normalizedPrimitiveBump A) σ
    (weighted_compact_integrable hc.continuous hs σ)
    (weighted_compact_integrable hc.continuous hs (-σ))
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationTwo A s) = _ at h2
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s) = _ at h0
  rw [primitive_second_laplace hA σ, primitive_second_laplace hA (-σ)] at h2
  rw [h2, h0]
  ring

/-- The actual source filter has its squared Laplace polynomial; no absolute lag bound is used. -/
theorem sourceCorrelation_laplace_filter {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ s : ℝ, Real.exp (σ * s) * sourceCorrelation explicitSecondDerivative A s) =
      (σ ^ 2 - 1 / 4) ^ 2 *
        ∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s := by
  have hi := primitive_correlations_weighted_integrable hA σ
  have he : (fun s : ℝ => Real.exp (σ * s) * sourceCorrelation explicitSecondDerivative A s) =
      fun s => Real.exp (σ * s) * primitiveCorrelationTwo A s +
        (Real.exp (σ * s) * primitiveCorrelationOne A s) / 2 +
        (Real.exp (σ * s) * primitiveCorrelationZero A s) / 16 := by
    funext s
    rw [sourceCorrelation_eq_primitive_filter hA]
    ring
  have ha := integral_add (hi.2.2.add (hi.2.1.div_const 2)) (hi.1.div_const 16)
  have hb := integral_add hi.2.2 (hi.2.1.div_const 2)
  simp only [Pi.add_apply] at ha hb
  rw [he, ha, hb, integral_div, integral_div,
    primitiveCorrelationTwo_laplace hA σ, primitiveCorrelationOne_laplace hA σ]
  ring

/-- Both critical poles cancel on the full line, without a discrete arithmetic conclusion. -/
theorem sourceCorrelation_critical_filter_zero {A : ℝ} (hA : 0 < A) :
    (∫ s : ℝ, Real.exp (s / 2) * sourceCorrelation explicitSecondDerivative A s) = 0 ∧
    (∫ s : ℝ, Real.exp (-s / 2) * sourceCorrelation explicitSecondDerivative A s) = 0 := by
  have hp := sourceCorrelation_laplace_filter hA (1 / 2)
  have hn := sourceCorrelation_laplace_filter hA (-(1 / 2))
  norm_num at hp hn
  constructor
  · convert hp using 1 <;> congr 1 <;> funext s <;> congr 1 <;> ring
  · convert hn using 1 <;> congr 1 <;> funext s <;> congr 1 <;> ring

end FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMoment
```
