# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroLogarithmicCoreProbe.Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7584f5cba5db593e20780293320c9c3bf685dbd5` · SHA-256 `2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier

/-!
# Scratch: exact source logarithmic energy controlled by genuine L¹ masses

This is a Z2.5 preparation file, not accepted source. The Fourier transform is
the source's positive-exponent angular-frequency transform throughout. The
weight includes its unweighted term and the source energy retains `1 / (2π)`.
Integrability is proved before the displayed energies and bounds are used.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroLogarithmicCore

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open BridgeFourier

noncomputable section

/-- The source's exact logarithmic norm weight, including the unweighted term. -/
def logarithmicWeight (ξ : ℝ) : ℝ := 1 + Real.log (1 + 4 * ξ ^ 2) / 2

/-- A fixed integrable envelope; the coefficient eight includes the source factor one-half. -/
def fourierEnvelope (ξ : ℝ) : ℝ :=
  (1 + ξ ^ 2)⁻¹ + 8 * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ))

/-- This single finite constant is independent of the input function and every family index. -/
def fourierEnvelopeConstant : ℝ := ∫ ξ : ℝ, fourierEnvelope ξ

/-- The raw weighted Fourier square integral, before the fixed source normalization. -/
def rawLogarithmicEnergy (f : ℝ → ℝ) : ℝ :=
  ∫ ξ : ℝ, logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)

/-- The source's exact squared logarithmic norm includes its factor `1 / (2π)`. -/
def sourceLogarithmicEnergy (f : ℝ → ℝ) : ℝ :=
  rawLogarithmicEnergy f / (2 * Real.pi)

/-- Every source frequency has a nonnegative logarithmic weight. -/
theorem logarithmicWeight_nonneg (ξ : ℝ) : 0 ≤ logarithmicWeight ξ := by
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  unfold logarithmicWeight
  positivity

/-- The fixed power tail is genuinely integrable on the whole real line. -/
theorem powerTail_integrable :
    Integrable (fun ξ : ℝ ↦ (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ))) volume := by
  convert (integrable_rpow_neg_one_add_norm_sq
    (E := ℝ) (μ := volume) (r := (3 / 2 : ℝ)) (by norm_num)) using 1
  ext ξ
  simp [Real.norm_eq_abs, sq_abs]
  norm_num

/-- Both terms of the fixed envelope have genuine finite integrals. -/
theorem fourierEnvelope_integrable : Integrable fourierEnvelope volume :=
  integrable_inv_one_add_sq.add (powerTail_integrable.const_mul 8)

/-- Finiteness of the constant's defining integral is explicit. -/
theorem fourierEnvelope_hasFiniteIntegral : HasFiniteIntegral fourierEnvelope volume :=
  fourierEnvelope_integrable.hasFiniteIntegral

/-- The fixed envelope has no negative values. -/
theorem fourierEnvelope_nonneg (ξ : ℝ) : 0 ≤ fourierEnvelope ξ := by
  unfold fourierEnvelope
  positivity

/-- The finite constant used in the energy bound is nonnegative. -/
theorem fourierEnvelopeConstant_nonneg : 0 ≤ fourierEnvelopeConstant :=
  integral_nonneg fourierEnvelope_nonneg

/-- The mass and derivative-mass bounds also control the unweighted Fourier square. -/
theorem unweighted_fourier_majorant (ξ n b d : ℝ) (hn : 0 ≤ n) (hnb : n ≤ b)
    (hnd : |ξ| * n ≤ d) :
    n ^ 2 ≤ (b ^ 2 + d ^ 2) * (1 + ξ ^ 2)⁻¹ := by
  rw [← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < 1 + ξ ^ 2)).2
  have hb : 0 ≤ b := hn.trans hnb
  have hd : 0 ≤ d := (mul_nonneg (abs_nonneg ξ) hn).trans hnd
  have hb2 := (sq_le_sq₀ hn hb).2 hnb
  have hd2 := (sq_le_sq₀ (mul_nonneg (abs_nonneg ξ) hn) hd).2 hnd
  simp only [mul_pow, sq_abs] at hd2
  nlinarith

/-- Combine the source logarithmic majorant with the required unweighted part. -/
theorem weighted_fourier_majorant (ξ n b d : ℝ) (hn : 0 ≤ n) (hnb : n ≤ b)
    (hnd : |ξ| * n ≤ d) :
    logarithmicWeight ξ * n ^ 2 ≤ (b ^ 2 + d ^ 2) * fourierEnvelope ξ := by
  have hu := unweighted_fourier_majorant ξ n b d hn hnb hnd
  have hl := log_fourier_majorant ξ n b d hn hnb hnd
  calc
    logarithmicWeight ξ * n ^ 2 = n ^ 2 + (Real.log (1 + 4 * ξ ^ 2) * n ^ 2) / 2 := by
      unfold logarithmicWeight
      ring
    _ ≤ (b ^ 2 + d ^ 2) * (1 + ξ ^ 2)⁻¹ +
        ((16 * (b ^ 2 + d ^ 2)) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ))) / 2 :=
      add_le_add hu (div_le_div_of_nonneg_right hl (by norm_num))
    _ = (b ^ 2 + d ^ 2) * fourierEnvelope ξ := by
      unfold fourierEnvelope
      ring

/-- The complete weighted Fourier square is integrable under explicit analytic premises. -/
theorem logarithmic_integrand_integrable (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) volume := by
  have hu := fourier_normSq_integrable f hf hd hdi
  have hl := logarithmic_fourier_integrable f hf hd hdi
  apply (hu.add (hl.div_const 2)).congr
  exact Eventually.of_forall fun ξ ↦ by
    dsimp
    unfold logarithmicWeight
    ring

/-- Source normalization does not change genuine integrability. -/
theorem sourceLogarithmic_integrand_integrable (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    Integrable
      (fun ξ ↦ (logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi))
      volume :=
  (logarithmic_integrand_integrable f hf hd hdi).div_const (2 * Real.pi)

/-- The source energy equals the integral with its normalization inside the integrand. -/
theorem sourceLogarithmicEnergy_eq_integral (f : ℝ → ℝ) :
    sourceLogarithmicEnergy f =
      ∫ ξ : ℝ, (logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) := by
  simp only [sourceLogarithmicEnergy, rawLogarithmicEnergy, div_eq_mul_inv, integral_mul_const]

/-- The raw energy has no negative contribution. -/
theorem rawLogarithmicEnergy_nonneg (f : ℝ → ℝ) : 0 ≤ rawLogarithmicEnergy f :=
  integral_nonneg fun ξ ↦ mul_nonneg (logarithmicWeight_nonneg ξ) (Complex.normSq_nonneg _)

/-- The source energy remains nonnegative with its actual positive normalization. -/
theorem sourceLogarithmicEnergy_nonneg (f : ℝ → ℝ) : 0 ≤ sourceLogarithmicEnergy f :=
  div_nonneg (rawLogarithmicEnergy_nonneg f) (by positivity)

/-- A single finite envelope constant controls the full raw energy by genuine L¹ masses. -/
theorem rawLogarithmicEnergy_le (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    rawLogarithmicEnergy f ≤
      fourierEnvelopeConstant * ((∫ x : ℝ, ‖f x‖) ^ 2 + (∫ x : ℝ, ‖deriv f x‖) ^ 2) := by
  let B : ℝ := (∫ x : ℝ, ‖f x‖) ^ 2 + (∫ x : ℝ, ‖deriv f x‖) ^ 2
  have hp (ξ : ℝ) :
      logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ) ≤ B * fourierEnvelope ξ := by
    rw [Complex.normSq_eq_norm_sq]
    exact weighted_fourier_majorant ξ _ _ _ (norm_nonneg _) (sourceFourier_norm_le f ξ)
      (sourceFourier_frequency_bound f hf hd hdi ξ)
  calc
    rawLogarithmicEnergy f ≤ ∫ ξ : ℝ, B * fourierEnvelope ξ :=
      integral_mono (logarithmic_integrand_integrable f hf hd hdi)
        (fourierEnvelope_integrable.const_mul B) hp
    _ = fourierEnvelopeConstant * B := by
      rw [integral_const_mul]
      exact mul_comm _ _

/-- The corresponding source-energy estimate retains the factor `1 / (2π)`. -/
theorem sourceLogarithmicEnergy_le (f : ℝ → ℝ) (hf : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) :
    sourceLogarithmicEnergy f ≤
      (fourierEnvelopeConstant /
        (2 * Real.pi)) * ((∫ x : ℝ, ‖f x‖) ^ 2 + (∫ x : ℝ, ‖deriv f x‖) ^ 2) := by
  have h := div_le_div_of_nonneg_right (rawLogarithmicEnergy_le f hf hd hdi)
    (by positivity : 0 ≤ 2 * Real.pi)
  simpa only [sourceLogarithmicEnergy, div_mul_eq_mul_div] using h

/-- Vanishing genuine L¹ masses of the function and its derivative give raw energy convergence. -/
theorem rawLogarithmicEnergy_tendsto_zero {ι : Type*} {l : Filter ι}
    (f : ι → ℝ → ℝ) (hf : ∀ i, Integrable (f i) volume)
    (hd : ∀ i, Differentiable ℝ (f i)) (hdi : ∀ i, Integrable (deriv (f i)) volume)
    (hL1 : Tendsto (fun i ↦ ∫ x : ℝ, ‖f i x‖) l (𝓝 0))
    (hD1 : Tendsto (fun i ↦ ∫ x : ℝ, ‖deriv (f i) x‖) l (𝓝 0)) :
    Tendsto (fun i ↦ rawLogarithmicEnergy (f i)) l (𝓝 0) := by
  have hbound : Tendsto
      (fun i ↦ fourierEnvelopeConstant *
        ((∫ x : ℝ, ‖f i x‖) ^ 2 + (∫ x : ℝ, ‖deriv (f i) x‖) ^ 2)) l (𝓝 0) := by
    simpa only [zero_pow two_ne_zero, zero_add, mul_zero] using
      ((hL1.pow 2).add (hD1.pow 2)).const_mul fourierEnvelopeConstant
  exact squeeze_zero (fun i ↦ rawLogarithmicEnergy_nonneg (f i))
    (fun i ↦ rawLogarithmicEnergy_le (f i) (hf i) (hd i) (hdi i)) hbound

/-- The exact source-normalized energy converges to zero under the same genuine premises. -/
theorem sourceLogarithmicEnergy_tendsto_zero {ι : Type*} {l : Filter ι}
    (f : ι → ℝ → ℝ) (hf : ∀ i, Integrable (f i) volume)
    (hd : ∀ i, Differentiable ℝ (f i)) (hdi : ∀ i, Integrable (deriv (f i)) volume)
    (hL1 : Tendsto (fun i ↦ ∫ x : ℝ, ‖f i x‖) l (𝓝 0))
    (hD1 : Tendsto (fun i ↦ ∫ x : ℝ, ‖deriv (f i) x‖) l (𝓝 0)) :
    Tendsto (fun i ↦ sourceLogarithmicEnergy (f i)) l (𝓝 0) := by
  simpa only [sourceLogarithmicEnergy, zero_div] using
    (rawLogarithmicEnergy_tendsto_zero f hf hd hdi hL1 hD1).div_const (2 * Real.pi)

end
end ZeroLogarithmicCore
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
