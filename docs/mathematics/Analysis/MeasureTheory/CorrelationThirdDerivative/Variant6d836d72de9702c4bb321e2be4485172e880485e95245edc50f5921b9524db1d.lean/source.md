# Complete source: GRWTSK.Analysis.MeasureTheory.CorrelationThirdDerivative.Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8365a39d284800474460ecaf8ef2831423255ce0` · SHA-256 `6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondDerivative
import Mathlib.Analysis.Calculus.ParametricIntegral
import scratch.mertens.SecondDerivativeEnergy

set_option autoImplicit false

namespace CorrelationThirdDerivativeScratch

open MeasureTheory Set
open scoped Topology NNReal Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationSecondDerivative
open SecondDerivativeEnergyScratch

noncomputable section

/-- The actual weak second derivative remains measurable with both endpoint values retained. -/
theorem normalizedSecondTest_measurable (A : ℝ) : Measurable (normalizedSecondTest A) :=
  (normalizedSecondInterior_continuous A).measurable.indicator measurableSet_Icc

/-- Dominated Lipschitz differentiation gives the actual third derivative and genuine integrability. -/
theorem sourceCorrelation_third_derivative_integral (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedSecondTest A (x - t)) volume ∧
    HasDerivAt (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      (∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedSecondTest A (x - t)) t := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hf : Continuous f := (normalizedTest_contDiff A (by linarith)).continuous_deriv_one
  obtain ⟨L, hL⟩ := normalized_derivative_lipschitz A hA
  have hmeas : ∀ᶠ s in 𝓝 t, AEStronglyMeasurable (fun x ↦ -(f x * f (x - s))) volume := by
    apply Filter.Eventually.of_forall
    intro s
    exact (hf.mul (hf.comp (continuous_id.sub continuous_const))).neg.aestronglyMeasurable
  have hint : Integrable (fun x ↦ -(f x * f (x - t))) volume :=
    (derivative_correlation_product_integrable A t hA).neg
  have hdmeas : AEStronglyMeasurable
      (fun x ↦ f x * normalizedSecondTest A (x - t)) volume :=
    (hf.measurable.mul ((normalizedSecondTest_measurable A).comp
      (measurable_id.sub measurable_const))).aestronglyMeasurable
  have hlip : ∀ᵐ x : ℝ, LipschitzOnWith (Real.nnabs ((L : ℝ) * |f x|))
      (fun s ↦ -(f x * f (x - s))) Set.univ := by
    apply Filter.Eventually.of_forall
    intro x
    apply LipschitzWith.lipschitzOnWith
    apply LipschitzWith.of_dist_le_mul
    intro y z
    rw [dist_neg_neg, Real.dist_eq, ← mul_sub, abs_mul, Real.coe_nnabs,
      abs_of_nonneg (mul_nonneg L.coe_nonneg (abs_nonneg (f x))), Real.dist_eq]
    have hh := hL.dist_le_mul (x - y) (x - z)
    change |f (x - y) - f (x - z)| ≤ (L : ℝ) * |x - y - (x - z)| at hh
    have heq : |x - y - (x - z)| = |y - z| := by
      rw [show x - y - (x - z) = -(y - z) by ring, abs_neg]
    rw [heq] at hh
    calc
      _ ≤ |f x| * ((L : ℝ) * |y - z|) := mul_le_mul_of_nonneg_left hh (abs_nonneg _)
      _ = _ := by ring
  have hb : Integrable (fun x ↦ (L : ℝ) * |f x|) volume :=
    (normalized_derivative_integrable A hA).abs.const_mul (L : ℝ)
  have hshift : ∀ᵐ x : ℝ, HasDerivAt f (normalizedSecondTest A (x - t)) (x - t) :=
    (measurePreserving_sub_right volume t).quasiMeasurePreserving.tendsto_ae.eventually
      (normalized_derivative_hasDerivAt_ae A hA)
  have hdiff : ∀ᵐ x : ℝ, HasDerivAt (fun s ↦ -(f x * f (x - s)))
      (f x * normalizedSecondTest A (x - t)) t := by
    filter_upwards [hshift] with x hx
    have hh := ((hx.comp t ((hasDerivAt_id t).const_sub x)).const_mul (f x)).neg
    convert! hh using 1
    simp only [mul_neg, neg_neg, mul_one]
  have hd := hasDerivAt_integral_of_dominated_loc_of_lip (μ := volume)
    (Filter.univ_mem : Set.univ ∈ 𝓝 t) hmeas hint hdmeas hlip hb hdiff
  refine ⟨hd.1, ?_⟩
  have heq : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
      fun s ↦ ∫ x, -(f x * f (x - s)) := by
    funext s
    rw [integral_neg]
    exact sourceCorrelation_second_derivative_eq A s hA
  rw [heq]
  exact hd.2

/-- The resulting third derivative is the original first/second-test convolution. -/
theorem sourceCorrelation_third_derivative_eq (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t =
      ∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedSecondTest A (x - t) :=
  (sourceCorrelation_third_derivative_integral A t hA).2.deriv


/-- Moving reflection to the integrable weak factor gives a continuous actual third derivative. -/
theorem sourceCorrelation_third_derivative_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) := by
  have heq : deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) =
      deriv (normalizedTest explicitSecondDerivative A) ⋆
        (fun x ↦ normalizedSecondTest A (-x)) := by
    funext t
    rw [sourceCorrelation_third_derivative_eq A t hA]
    simp only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub]
  rw [heq]
  exact (normalizedTest_hasCompactSupport A (by linarith)).deriv.continuous_convolution_left
    (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_contDiff A (by linarith)).continuous_deriv_one
    (normalizedSecondTest_integrable A).comp_neg.locallyIntegrable

/-- The second source correlation derivative is genuinely C1 across both support seams. -/
theorem sourceCorrelation_second_derivative_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
  apply contDiff_one_iff_deriv.mpr
  exact ⟨fun t ↦ (sourceCorrelation_third_derivative_integral A t hA).2.differentiableAt,
    sourceCorrelation_third_derivative_continuous A hA⟩


private theorem abs_integral_mul_le_sqrt_bounds (f g : ℝ → ℝ) (B D : ℝ)
    (hB : 0 < B) (hD : 0 < D)
    (hf : Integrable (fun x ↦ f x ^ 2) volume)
    (hg : Integrable (fun x ↦ g x ^ 2) volume)
    (hp : Integrable (fun x ↦ f x * g x) volume)
    (hfB : (∫ x, f x ^ 2) ≤ B) (hgD : (∫ x, g x ^ 2) ≤ D) :
    |∫ x, f x * g x| ≤ Real.sqrt D * Real.sqrt B := by
  let c := Real.sqrt D * Real.sqrt B
  have hc : 0 < c := mul_pos (Real.sqrt_pos.mpr hD) (Real.sqrt_pos.mpr hB)
  have hc2 : c^2 = B * D := by
    dsimp [c]
    rw [mul_pow, Real.sq_sqrt hD.le, Real.sq_sqrt hB.le]
    ring
  have hpoint (x : ℝ) (sgn : ℝ) (hsign : sgn^2 = 1) :
      sgn * (2 * c) * (f x * g x) ≤ D * f x ^ 2 + B * g x ^ 2 := by
    have heq : D * f x ^ 2 + B * g x ^ 2 - sgn * (2 * c) * (f x * g x) =
        (Real.sqrt D * f x - sgn * Real.sqrt B * g x)^2 := by
      dsimp [c]
      calc
        _ = (Real.sqrt D)^2 * f x ^ 2 + (Real.sqrt B)^2 * g x ^ 2 -
            sgn * (2 * (Real.sqrt D * Real.sqrt B)) * (f x * g x) := by
          rw [Real.sq_sqrt hD.le, Real.sq_sqrt hB.le]
        _ = _ := by
          rw [sub_sq, mul_pow, mul_pow, mul_pow, hsign]
          ring
    exact sub_nonneg.mp (heq ▸ sq_nonneg _)
  have hh (sgn : ℝ) (hsign : sgn^2 = 1) :
      sgn * (2*c) * (∫ x, f x * g x) ≤ 2 * c^2 := by
    have hi := integral_mono (hp.const_mul (sgn * (2*c)))
      ((hf.const_mul D).add (hg.const_mul B)) (fun x ↦ hpoint x sgn hsign)
    simp only [Pi.add_apply] at hi
    rw [integral_const_mul, integral_add (hf.const_mul D) (hg.const_mul B),
      integral_const_mul, integral_const_mul] at hi
    have h1 := mul_le_mul_of_nonneg_left hfB hD.le
    have h2 := mul_le_mul_of_nonneg_left hgD hB.le
    nlinarith [hc2]
  have hplus := hh 1 (by norm_num)
  have hminus := hh (-1) (by norm_num)
  have upper : (∫ x, f x * g x) ≤ c := (mul_le_mul_iff_right₀ hc).mp (by nlinarith)
  have lower : -(∫ x, f x * g x) ≤ c := (mul_le_mul_iff_right₀ hc).mp (by nlinarith)
  exact abs_le.mpr ⟨by linarith, upper⟩

/-- The two actual derivative energies give a uniform inverse-cubic source bound. -/
theorem sourceCorrelation_third_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      Real.sqrt (325325 / 18) / A^3 := by
  have hA0 : 0 < A := by linarith
  rw [sourceCorrelation_third_derivative_eq A t hA]
  have hi := (normalizedSecondTest_square_integrable A).comp_sub_right t
  have he : (∫ x, normalizedSecondTest A (x - t)^2) =
      ∫ x, normalizedSecondTest A x^2 :=
    integral_sub_right_eq_self (μ := volume) (fun x ↦ normalizedSecondTest A x^2) t
  have h := abs_integral_mul_le_sqrt_bounds
    (deriv (normalizedTest explicitSecondDerivative A)) (fun x ↦ normalizedSecondTest A (x-t))
    (65 / (3*A^2)) (5005 / (6*A^4)) (by positivity) (by positivity)
    (DerivativeEnergy.normalized_derivative_square_integrable A hA) hi
    (sourceCorrelation_third_derivative_integral A t hA).1
    (DerivativeEnergy.normalized_derivative_square_integral_le A hA)
    (by rw [he]; exact normalizedSecondTest_square_integral_le A hA)
  refine h.trans_eq ?_
  rw [← Real.sqrt_mul (by positivity : 0 ≤ 5005 / (6*A^4))]
  have heq : (5005 / (6*A^4)) * (65 / (3*A^2)) =
      (325325 / 18 : ℝ) / (A^3)^2 := by field_simp; ring
  rw [heq, Real.sqrt_div (by norm_num : (0 : ℝ) ≤ 325325 / 18),
    Real.sqrt_sq (pow_nonneg hA0.le 3)]

end
end CorrelationThirdDerivativeScratch

#print axioms CorrelationThirdDerivativeScratch.normalizedSecondTest_measurable
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_integral
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_eq
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_continuous
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_second_derivative_contDiff
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_abs_le
```
