# Complete source: GRWTSK.Analysis.Distribution.CompactProfileDilation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2` · SHA-256 `46502a7767240271235ba0ed63d9008efa25e80f73592fc599db229ce3f99071`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Integration.CompactPolynomialMoments
import GRWTSK.Analysis.Convolution.CompactProfileCorrelation
import GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# Actual weak derivative and pole moments for the source dilation interface

Integration by parts proves that the already checked classical second derivative
is also the prescribed weak derivative. Compact support supplies integrability
before each identity. The two pole moments are proved for the actual source.
A full realization still consumes the named archimedean
integrability obligation; no arithmetic estimate or RH conclusion is asserted.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceDilation

open MeasureTheory Set
open scoped ContDiff
open ArithmeticSupplier SourceResidual SourceRegularity SourceClosedNormalization

noncomputable section

theorem source_continuous (A : ℝ) : Continuous (source A) :=
  (show Differentiable ℝ (source A) from
    fun x ↦ (source_hasDerivAt A x).differentiableAt).continuous

theorem source_first_continuous (A : ℝ) : Continuous (sourceFirst A) :=
  (show Differentiable ℝ (sourceFirst A) from
    fun x ↦ (sourceFirst_hasDerivAt A x).differentiableAt).continuous

theorem source_second_continuous (A : ℝ) : Continuous (sourceSecond A) :=
  (show Differentiable ℝ (sourceSecond A) from
    fun x ↦ (sourceSecond_hasDerivAt A x).differentiableAt).continuous

theorem source_hasCompactSupport {A : ℝ} (hA : 0 < A) : HasCompactSupport (source A) := by
  apply HasCompactSupport.intro (show IsCompact (Icc (-A) A) from isCompact_Icc)
  intro x hx
  have outside : x / A ∉ Icc (-1 : ℝ) 1 := fun h ↦ hx ((scaled_mem_iff hA x).mp h)
  simp [source, bump, outside]

theorem source_first_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (sourceFirst A) := by
  rw [← source_deriv]
  exact (source_hasCompactSupport hA).deriv

theorem source_second_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (sourceSecond A) := by
  rw [← source_second_deriv]
  exact (source_hasCompactSupport hA).deriv.deriv

theorem compact_product_integrable {f g : ℝ → ℝ} (hf : Continuous f)
    (hcompact : HasCompactSupport f) (hg : Continuous g) :
    Integrable (fun x ↦ f x * g x) :=
  (hf.mul hg).integrable_of_hasCompactSupport hcompact.mul_right

/-- The distributional test identity follows from actual integration by parts. -/
theorem actual_weak_second_derivative {A : ℝ} (hA : 0 < A) :
    GRWTSK.RiemannHypothesis.SourcePairing.IsWeakSecondDerivative
      (GRWTSK.RiemannHypothesis.SourcePairing.scaledBump A) (sourceSecond A) := by
  rw [← source_eq_scaled_bump hA]
  refine ⟨(source_continuous A).locallyIntegrable,
    (source_second_continuous A).locallyIntegrable, ?_⟩
  intro η smooth _compact
  have ηone : ContDiff ℝ 1 η := smooth.of_le (by simp)
  have ηderiv : ContDiff ℝ 1 (deriv η) :=
    (contDiff_infty_iff_deriv.mp smooth).2.of_le (by simp)
  have ηfirst := ηone.continuous_deriv_one
  have ηsecond := ηderiv.continuous_deriv_one
  have product (g : ℝ → ℝ) (hg : Continuous g) :=
    compact_product_integrable (source_continuous A) (source_hasCompactSupport hA) hg
  have firstProduct (g : ℝ → ℝ) (hg : Continuous g) :=
    compact_product_integrable (source_first_continuous A) (source_first_hasCompactSupport hA) hg
  have secondProduct := compact_product_integrable (source_second_continuous A)
    (source_second_hasCompactSupport hA) smooth.continuous
  refine ⟨secondProduct, product _ ηsecond, ?_⟩
  have firstParts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := sourceFirst A) (u' := sourceSecond A) (v := η) (v' := deriv η)
    (fun x _ ↦ sourceFirst_hasDerivAt A x)
    (fun x _ ↦ (ηone.differentiable one_ne_zero).differentiableAt.hasDerivAt)
    (firstProduct _ ηfirst) secondProduct (firstProduct _ smooth.continuous)
  have secondParts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := source A) (u' := sourceFirst A) (v := deriv η) (v' := deriv (deriv η))
    (fun x _ ↦ source_hasDerivAt A x)
    (fun x _ ↦ (ηderiv.differentiable one_ne_zero).differentiableAt.hasDerivAt)
    (product _ ηsecond) (firstProduct _ ηfirst) (product _ ηfirst)
  rw [firstParts, neg_neg] at secondParts
  exact secondParts.symm

theorem exponential_hasDerivAt (c x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Real.exp (c * y)) (Real.exp (c * x) * c) x :=
  by simpa only [id_eq, mul_one] using ((hasDerivAt_id x).const_mul c).exp

theorem second_derivative_exponential_integral {A : ℝ} (hA : 0 < A) (c : ℝ) :
    (∫ x : ℝ, sourceSecond A x * Real.exp (c * x)) =
      c ^ 2 * ∫ x : ℝ, source A x * Real.exp (c * x) := by
  have ce : Continuous (fun x : ℝ ↦ Real.exp (c * x)) := by fun_prop
  have sourceProduct := compact_product_integrable (source_continuous A)
    (source_hasCompactSupport hA) ce
  have firstProduct := compact_product_integrable (source_first_continuous A)
    (source_first_hasCompactSupport hA) ce
  have secondProduct := compact_product_integrable (source_second_continuous A)
    (source_second_hasCompactSupport hA) ce
  have firstParts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := sourceFirst A) (u' := sourceSecond A)
    (v := fun x ↦ Real.exp (c * x)) (v' := fun x ↦ Real.exp (c * x) * c)
    (fun x _ ↦ sourceFirst_hasDerivAt A x) (fun x _ ↦ exponential_hasDerivAt c x)
    (by
      change Integrable (fun x ↦ sourceFirst A x * (Real.exp (c * x) * c))
      simpa only [← mul_assoc] using firstProduct.mul_const c)
    secondProduct firstProduct
  have secondParts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := source A) (u' := sourceFirst A)
    (v := fun x ↦ Real.exp (c * x)) (v' := fun x ↦ Real.exp (c * x) * c)
    (fun x _ ↦ source_hasDerivAt A x) (fun x _ ↦ exponential_hasDerivAt c x)
    (by
      change Integrable (fun x ↦ source A x * (Real.exp (c * x) * c))
      simpa only [← mul_assoc] using sourceProduct.mul_const c)
    firstProduct sourceProduct
  simp only [← mul_assoc, integral_mul_const] at firstParts secondParts
  have multiplied := congrArg (fun z : ℝ ↦ z * c) secondParts
  nlinarith [multiplied]

theorem normalized_source_exponential_integrable {A : ℝ} (hA : 0 < A) (c : ℝ) :
    Integrable (fun x : ℝ ↦ normalizedSource A x * Real.exp (c * x)) :=
  compact_product_integrable (SourceNormalization.normalized_source_continuous A)
    (normalized_source_hasCompactSupport hA) (by fun_prop)

theorem residual_exponential_integral_zero {A : ℝ} (hA : 0 < A) {c : ℝ}
    (hc : c ^ 2 = (1 / 4 : ℝ)) :
    (∫ x : ℝ, sourceResidual A x * Real.exp (c * x)) = 0 := by
  have ce : Continuous (fun x : ℝ ↦ Real.exp (c * x)) := by fun_prop
  have sourceProduct := compact_product_integrable (source_continuous A)
    (source_hasCompactSupport hA) ce
  have secondProduct := compact_product_integrable (source_second_continuous A)
    (source_second_hasCompactSupport hA) ce
  simp_rw [sourceResidual_eq, sub_mul]
  have quarterProduct : Integrable (fun x ↦ (1 / 4 : ℝ) * source A x * Real.exp (c * x)) := by
    simpa only [mul_assoc] using sourceProduct.const_mul (1 / 4 : ℝ)
  rw [integral_sub secondProduct quarterProduct]
  simp_rw [mul_assoc]
  rw [integral_const_mul, second_derivative_exponential_integral hA, hc]
  ring

theorem normalized_source_exponential_integral_zero {A : ℝ} (hA : 0 < A) {c : ℝ}
    (hc : c ^ 2 = (1 / 4 : ℝ)) :
    (∫ x : ℝ, normalizedSource A x * Real.exp (c * x)) = 0 := by
  simp only [normalizedSource, div_mul_eq_mul_div]
  rw [integral_div, residual_exponential_integral_zero hA hc, zero_div]

theorem positive_pole_integral_zero {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedSource A x * Real.exp (x / 2)) = 0 := by
  simpa only [one_div, mul_comm, ← div_eq_mul_inv] using
    normalized_source_exponential_integral_zero hA (c := 1 / 2) (by norm_num)

theorem negative_pole_integral_zero {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedSource A x * Real.exp (-x / 2)) = 0 := by
  have arg (x : ℝ) : (-1 / 2 : ℝ) * x = -x / 2 := by ring
  simpa only [arg] using
    normalized_source_exponential_integral_zero hA (c := -1 / 2) (by norm_num)

/-- Every constructive source field is supplied; archimedean integrability stays explicit. -/
def actualDilationRealization
    (archimedean : ∀ A : ℝ, 1 ≤ A → Integrable
      (GRWTSK.RiemannHypothesis.SourcePairing.archimedeanIntegrand sourceSecond A)) :
    GRWTSK.RiemannHypothesis.SourcePairing.DilationRealization where
  secondDerivative := sourceSecond
  weak_second_derivative A hA := actual_weak_second_derivative (by linarith)
  zero_extension A hA x hx := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    exact sourceResidual_zero_outside (by linarith) hx
  test_integrable A hA := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    exact (sourceResidual_continuous A).integrable_of_hasCompactSupport
      (sourceResidual_hasCompactSupport (by linarith))
  test_square_integrable A hA := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    simpa only [sq_abs] using sourceResidual_square_integrable (by linarith : 0 < A)
  normalization A hA := by
    rw [dilation_test_eq_residual (by linarith : 0 < A)]
    simpa only [sourceNormalization, sq_abs] using
      source_normalization_eq_rational (by linarith : 0 < A)
  positive_pole_integrable A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    simpa only [one_div, mul_comm, ← div_eq_mul_inv] using
      normalized_source_exponential_integrable (by linarith : 0 < A) (1 / 2)
  negative_pole_integrable A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    convert normalized_source_exponential_integrable (by linarith : 0 < A) (-1 / 2) using 1
    ext x
    congr 2
    ring
  positive_pole_zero A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    exact positive_pole_integral_zero (by linarith)
  negative_pole_zero A hA := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    exact negative_pole_integral_zero (by linarith)
  correlation_product_integrable A hA t := by
    rw [normalized_test_eq_source (by linarith : 0 < A)]
    exact compact_product_integrable (SourceNormalization.normalized_source_continuous A)
      (normalized_source_hasCompactSupport (by linarith))
      ((SourceNormalization.normalized_source_continuous A).comp
        (continuous_id.sub continuous_const))
  correlation_regular A hA := by
    rw [source_pairing_correlation_eq (by linarith : 0 < A)]
    exact correlation_contDiff_one (by linarith)
  archimedean_integrable := archimedean
  signed_pairing_integrable _A hA := SourceSignedIntegrability.signed_pairing_integrable hA

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceDilation
```
