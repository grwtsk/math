# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroTransform.Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b01ceb99dcca3b98410b832b57e05abf3fff361` · SHA-256 `fb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Tactic
/-!
# Actual bilateral transform of the source test
Finite polynomial antiderivatives prove the exact RH-0010 transform of the actual
unnormalized, zero-extended `F_A`. Genuine integrability is checked before the
integral identity. Endpoint evaluation retains both exponential signs, the
`z ^ 2 - 1/4` factor, `z ^ 9` denominator, and the real scale exponent `17/2`.
The divided identity requires `z ≠ 0`; integrability holds for every complex z.
This proves Z2.2 only and supplies no all-zero summability, explicit-formula,
Laplace-pole, Landau, or Riemann Hypothesis certificate.
-/
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroTransform
open Polynomial MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
noncomputable section
/-- The unscaled numerator of the actual compact bump, with radius retained exactly. -/
def bumpPolynomial (A : ℂ) : ℂ[X] := (C (A ^ 2) - X ^ 2) ^ 4
/-- Finite polynomial antiderivative coefficients for the exponential times the bump. -/
def primitivePolynomial (A z : ℂ) : ℂ[X] :=
  C ((1) * z ^ 8) * (C ((1) * A ^ 8) * X ^ 0 +
      C ((-4) * A ^ 6) * X ^ 2 +
      C ((6) * A ^ 4) * X ^ 4 +
      C ((-4) * A ^ 2) * X ^ 6 +
      C ((1) * A ^ 0) * X ^ 8) +
  C ((-1) * z ^ 7) * (C ((-8) * A ^ 6) * X ^ 1 +
      C ((24) * A ^ 4) * X ^ 3 +
      C ((-24) * A ^ 2) * X ^ 5 +
      C ((8) * A ^ 0) * X ^ 7) +
  C ((1) * z ^ 6) * (C ((-8) * A ^ 6) * X ^ 0 +
      C ((72) * A ^ 4) * X ^ 2 +
      C ((-120) * A ^ 2) * X ^ 4 +
      C ((56) * A ^ 0) * X ^ 6) +
  C ((-1) * z ^ 5) * (C ((144) * A ^ 4) * X ^ 1 +
      C ((-480) * A ^ 2) * X ^ 3 +
      C ((336) * A ^ 0) * X ^ 5) +
  C ((1) * z ^ 4) * (C ((144) * A ^ 4) * X ^ 0 +
      C ((-1440) * A ^ 2) * X ^ 2 +
      C ((1680) * A ^ 0) * X ^ 4) +
  C ((-1) * z ^ 3) * (C ((-2880) * A ^ 2) * X ^ 1 + C ((6720) * A ^ 0) * X ^ 3) +
  C ((1) * z ^ 2) * (C ((-2880) * A ^ 2) * X ^ 0 + C ((20160) * A ^ 0) * X ^ 2) +
  C ((-1) * z ^ 1) * (C ((40320) * A ^ 0) * X ^ 1) +
  C ((1) * z ^ 0) * (C ((40320) * A ^ 0) * X ^ 0)
/-- The polynomial derivative identity clears the ninth power without division. -/
theorem primitive_derivative (A z : ℂ) :
    (primitivePolynomial A z).derivative + C z * primitivePolynomial A z =
      C (z ^ 9) * bumpPolynomial A := by
  simp only [primitivePolynomial, bumpPolynomial, derivative_add, derivative_mul,
    derivative_pow, derivative_X, derivative_C]
  norm_num [map_ofNat]
  ring
/-- Exact positive-endpoint evaluation produces the source degree-four polynomial. -/
theorem primitive_endpoint_pos (A z : ℂ) :
    (primitivePolynomial A z).eval A = 384 * ZeroSideTargets.transformPolynomial (A * z) := by
  simp [primitivePolynomial, ZeroSideTargets.transformPolynomial]
  ring
/-- Exact negative-endpoint evaluation preserves the negated transform argument. -/
theorem primitive_endpoint_neg (A z : ℂ) :
    (primitivePolynomial A z).eval (-A) = 384 * ZeroSideTargets.transformPolynomial (-(A * z)) := by
  simp [primitivePolynomial, ZeroSideTargets.transformPolynomial]
  ring
/-- The antiderivative numerator for the actual second derivative minus one-quarter bump. -/
def fullPrimitive (A z : ℂ) : ℂ[X] :=
  C (z ^ 2 - 1 / 4) * primitivePolynomial A z +
    C (z ^ 9) * ((bumpPolynomial A).derivative - C z * bumpPolynomial A)
/-- The finite differential identity for the actual pole-annihilated polynomial. -/
theorem fullPrimitive_derivative (A z : ℂ) :
    (fullPrimitive A z).derivative + C z * fullPrimitive A z =
      C (z ^ 9) * ((bumpPolynomial A).derivative.derivative - C (1 / 4) * bumpPolynomial A) := by
  have h := primitive_derivative A z
  simp only [fullPrimitive, derivative_add, derivative_mul, derivative_sub, derivative_C,
    zero_mul, zero_add]
  simp only [map_sub, map_pow] at h ⊢
  linear_combination (C z ^ 2 - C (1 / 4)) * h
/-- At the positive endpoint the bump and its first derivative vanish exactly. -/
theorem fullPrimitive_endpoint_pos (A z : ℂ) :
    (fullPrimitive A z).eval A =
      (z ^ 2 - 1 / 4) * 384 * ZeroSideTargets.transformPolynomial (A * z) := by
  simp [fullPrimitive, primitive_endpoint_pos, bumpPolynomial, derivative_pow,
    derivative_sub, derivative_C, derivative_X, mul_assoc]
/-- At the negative endpoint the bump and its first derivative vanish exactly. -/
theorem fullPrimitive_endpoint_neg (A z : ℂ) :
    (fullPrimitive A z).eval (-A) =
      (z ^ 2 - 1 / 4) * 384 * ZeroSideTargets.transformPolynomial (-(A * z)) := by
  simp [fullPrimitive, primitive_endpoint_neg, bumpPolynomial, derivative_pow,
    derivative_sub, derivative_C, derivative_X, mul_assoc]
/-- The complex polynomial interior with the actual unnormalized source denominator. -/
def interior (A : ℝ) (x : ℝ) : ℂ :=
  (((bumpPolynomial (A : ℂ)).derivative.derivative).eval (x : ℂ) -
    (bumpPolynomial (A : ℂ)).eval (x : ℂ) / 4) / ((A : ℂ) ^ 8 * (Real.sqrt A : ℂ))
/-- Exact equality with the source second interior derivative minus one-quarter bump. -/
theorem interior_eq (A : ℝ) (hA : 0 < A) (x : ℝ) :
    interior A x =
      ((Realization.secondInterior A x - Realization.bumpInterior A x / 4 : ℝ) : ℂ) := by
  unfold interior bumpPolynomial Realization.secondInterior Realization.bumpInterior
  simp only [derivative_pow, derivative_sub, derivative_C, derivative_X, derivative_mul,
    derivative_one, derivative_zero, eval_sub, eval_add,
    eval_mul, eval_pow, eval_C, eval_X, eval_one, eval_zero]
  push_cast
  have ha : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  field_simp
  ring
/-- The real-variable derivative of the complex polynomial exponential is checked exactly. -/
theorem exponential_primitive (A z : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (z * y) * (fullPrimitive A z).eval (y : ℂ))
      (z ^ 9 * ((bumpPolynomial A).derivative.derivative.eval (x : ℂ) -
         (bumpPolynomial A).eval (x : ℂ) / 4) * Complex.exp (z * x)) x := by
  have hx : HasDerivAt (fun y : ℝ ↦ z * (y : ℂ)) z x := by
    simpa using (((hasDerivAt_id (x : ℂ)).const_mul z).comp_ofReal)
  have h := hx.cexp.mul (((fullPrimitive A z).hasDerivAt (x : ℂ)).comp_ofReal)
  convert h using 1 <;> try rfl
  have hp := congrArg (Polynomial.eval (x : ℂ)) (fullPrimitive_derivative A z)
  simp only [eval_add, eval_mul, eval_C, eval_sub] at hp
  linear_combination (-(Complex.exp (z * x))) * hp
/-- The actual polynomial interior is continuous at every finite radius. -/
theorem interior_continuous (A : ℝ) : Continuous (interior A) := by
  unfold interior
  fun_prop
/-- The externally used integral is exactly the zero extension of this polynomial. -/
theorem actual_integrand_indicator (A : ℝ) (hA : 0 < A) (z : ℂ) :
    (fun x : ℝ ↦ (ZeroSideTargets.actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) =
      (Icc (-A) A).indicator (fun x : ℝ ↦ interior A x * Complex.exp (z * (x : ℂ))) := by
  funext x
  simp only [ZeroSideTargets.actualTest, Realization.explicit_dilationTest_eq_indicator A hA,
    indicator_apply]
  split_ifs <;> simp [interior_eq A hA]
/-- Compact support and continuity establish genuine integrability for every complex argument. -/
theorem actual_integrable (A : ℝ) (hA : 0 < A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (ZeroSideTargets.actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  rw [actual_integrand_indicator A hA z]
  have hc : Continuous (fun x : ℝ ↦ interior A x * Complex.exp (z * (x : ℂ))) :=
    (interior_continuous A).mul (by fun_prop)
  exact (hc.integrableOn_Icc (μ := volume)).integrable_indicator measurableSet_Icc
/-- Lebesgue integration of the zero extension introduces no endpoint atoms. -/
theorem actual_integral_interval (A : ℝ) (hA : 0 < A) (z : ℂ) :
    ZeroSideTargets.bilateralTransform A z =
      ∫ x : ℝ in (-A)..A, interior A x * Complex.exp (z * (x : ℂ)) := by
  unfold ZeroSideTargets.bilateralTransform
  rw [actual_integrand_indicator A hA z, integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc, intervalIntegral.integral_of_le (by linarith : -A ≤ A)]
/-- The divided antiderivative is valid only for positive radius and nonzero argument. -/
theorem normalized_primitive (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (z * y) * (fullPrimitive (A : ℂ) z).eval (y : ℂ) /
      (z ^ 9 * ((A : ℂ) ^ 8 * (Real.sqrt A : ℂ))))
      (interior A x * Complex.exp (z * (x : ℂ))) x := by
  have h := (exponential_primitive (A : ℂ) z x).div_const
    (z ^ 9 * ((A : ℂ) ^ 8 * (Real.sqrt A : ℂ)))
  convert h using 1 <;> try rfl
  unfold interior
  have ha : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  field_simp
/-- The real power `17/2` is exactly `A ^ 8 * sqrt A`, with no integer-division convention. -/
theorem source_scale (A : ℝ) (hA : 0 < A) : A ^ (17 / 2 : ℝ) = A ^ 8 * Real.sqrt A := by
  rw [show (17 / 2 : ℝ) = (8 : ℕ) + 1 / 2 by norm_num, Real.rpow_add hA,
    Real.rpow_natCast, ← Real.sqrt_eq_rpow]
/-- The full actual source transform follows by finite antiderivative and endpoint evaluation. -/
theorem actual_transform (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) :
    ZeroSideTargets.bilateralTransform A z = ZeroSideTargets.dividedTransform A z := by
  rw [actual_integral_interval A hA z]
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ normalized_primitive A hA z hz x)
    (((interior_continuous A).mul (by fun_prop)).intervalIntegrable (-A) A)
  simp only [Complex.ofReal_neg, fullPrimitive_endpoint_pos, fullPrimitive_endpoint_neg] at hi
  rw [hi]
  unfold ZeroSideTargets.dividedTransform
  rw [source_scale A hA]
  push_cast
  simp only [mul_neg, mul_comm z (A : ℂ)]
  ring
/-- The exact frozen Z2.2 obligation, including integrability and the nonzero-argument guard. -/
theorem bilateral_transform : ZeroSideTargets.BilateralTransformObligation := by
  intro A hA z
  have hpos : 0 < A := by linarith
  exact ⟨actual_integrable A hpos z, actual_transform A hpos z⟩
end
end ZeroTransform
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
