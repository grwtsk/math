# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Issue9TransformActual.Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb` · SHA-256 `b26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Tactic
/- Disposable Issue 9 Z2.2 exact actual-transform probe. No shared target changes. -/
namespace Issue9Transform
open Polynomial MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
noncomputable section

def bumpPolynomial (A : ℂ) : ℂ[X] := (C (A^2) - X^2)^4

def primitivePolynomial (A z : ℂ) : ℂ[X] :=
  C ((1) * z ^ 8) * (C ((1) * A ^ 8) * X ^ 0 + C ((-4) * A ^ 6) * X ^ 2 + C ((6) * A ^ 4) * X ^ 4 + C ((-4) * A ^ 2) * X ^ 6 + C ((1) * A ^ 0) * X ^ 8) +
  C ((-1) * z ^ 7) * (C ((-8) * A ^ 6) * X ^ 1 + C ((24) * A ^ 4) * X ^ 3 + C ((-24) * A ^ 2) * X ^ 5 + C ((8) * A ^ 0) * X ^ 7) +
  C ((1) * z ^ 6) * (C ((-8) * A ^ 6) * X ^ 0 + C ((72) * A ^ 4) * X ^ 2 + C ((-120) * A ^ 2) * X ^ 4 + C ((56) * A ^ 0) * X ^ 6) +
  C ((-1) * z ^ 5) * (C ((144) * A ^ 4) * X ^ 1 + C ((-480) * A ^ 2) * X ^ 3 + C ((336) * A ^ 0) * X ^ 5) +
  C ((1) * z ^ 4) * (C ((144) * A ^ 4) * X ^ 0 + C ((-1440) * A ^ 2) * X ^ 2 + C ((1680) * A ^ 0) * X ^ 4) +
  C ((-1) * z ^ 3) * (C ((-2880) * A ^ 2) * X ^ 1 + C ((6720) * A ^ 0) * X ^ 3) +
  C ((1) * z ^ 2) * (C ((-2880) * A ^ 2) * X ^ 0 + C ((20160) * A ^ 0) * X ^ 2) +
  C ((-1) * z ^ 1) * (C ((40320) * A ^ 0) * X ^ 1) +
  C ((1) * z ^ 0) * (C ((40320) * A ^ 0) * X ^ 0)

theorem primitive_derivative (A z : ℂ) :
    (primitivePolynomial A z).derivative + C z * primitivePolynomial A z =
      C (z^9) * bumpPolynomial A := by
  simp only [primitivePolynomial, bumpPolynomial, derivative_add, derivative_mul,
    derivative_pow, derivative_X, derivative_C]
  norm_num [map_ofNat]
  ring

theorem primitive_endpoint_pos (A z : ℂ) :
    (primitivePolynomial A z).eval A = 384 * ZeroSideTargets.transformPolynomial (A*z) := by
  simp [primitivePolynomial, ZeroSideTargets.transformPolynomial]
  ring

theorem primitive_endpoint_neg (A z : ℂ) :
    (primitivePolynomial A z).eval (-A) = 384 * ZeroSideTargets.transformPolynomial (-(A*z)) := by
  simp [primitivePolynomial, ZeroSideTargets.transformPolynomial]
  ring

def fullPrimitive (A z : ℂ) : ℂ[X] :=
  C (z^2-1/4) * primitivePolynomial A z +
    C (z^9) * ((bumpPolynomial A).derivative - C z * bumpPolynomial A)

theorem fullPrimitive_derivative (A z : ℂ) :
    (fullPrimitive A z).derivative + C z * fullPrimitive A z =
      C (z^9) * ((bumpPolynomial A).derivative.derivative - C (1/4) * bumpPolynomial A) := by
  have h := primitive_derivative A z
  simp only [fullPrimitive, derivative_add, derivative_mul, derivative_sub, derivative_C,
    zero_mul, zero_add]
  simp only [map_sub, map_pow] at h ⊢
  linear_combination (C z ^ 2 - C (1/4)) * h

theorem fullPrimitive_endpoint_pos (A z : ℂ) :
    (fullPrimitive A z).eval A =
      (z^2-1/4) * 384 * ZeroSideTargets.transformPolynomial (A*z) := by
  simp [fullPrimitive, primitive_endpoint_pos, bumpPolynomial, derivative_pow,
    derivative_sub, derivative_C, derivative_X, mul_assoc]

theorem fullPrimitive_endpoint_neg (A z : ℂ) :
    (fullPrimitive A z).eval (-A) =
      (z^2-1/4) * 384 * ZeroSideTargets.transformPolynomial (-(A*z)) := by
  simp [fullPrimitive, primitive_endpoint_neg, bumpPolynomial, derivative_pow,
    derivative_sub, derivative_C, derivative_X, mul_assoc]

def interior (A : ℝ) (x : ℝ) : ℂ :=
  (((bumpPolynomial (A:ℂ)).derivative.derivative).eval (x:ℂ) -
    (bumpPolynomial (A:ℂ)).eval (x:ℂ) / 4) / ((A:ℂ)^8 * (Real.sqrt A:ℂ))

theorem interior_eq (A : ℝ) (hA : 0 < A) (x : ℝ) :
    interior A x = ((Realization.secondInterior A x - Realization.bumpInterior A x / 4 : ℝ) : ℂ) := by
  unfold interior bumpPolynomial Realization.secondInterior Realization.bumpInterior
  simp only [derivative_pow, derivative_sub, derivative_C, derivative_X, derivative_mul,
    derivative_one, derivative_zero, eval_sub, eval_add,
    eval_mul, eval_pow, eval_C, eval_X, eval_one, eval_zero]
  push_cast
  have ha : (A:ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  have hs : (Real.sqrt A:ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  field_simp
  ring

#print axioms interior_eq

theorem exponential_primitive (A z : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (z*y) * (fullPrimitive A z).eval (y:ℂ))
      (z^9 * ((bumpPolynomial A).derivative.derivative.eval (x:ℂ) -
         (bumpPolynomial A).eval (x:ℂ) / 4) * Complex.exp (z*x)) x := by
  have hx : HasDerivAt (fun y : ℝ ↦ z * (y:ℂ)) z x := by
    simpa using (((hasDerivAt_id (x:ℂ)).const_mul z).comp_ofReal)
  have h := hx.cexp.mul (((fullPrimitive A z).hasDerivAt (x:ℂ)).comp_ofReal)
  convert h using 1 <;> try rfl
  have hp := congrArg (Polynomial.eval (x:ℂ)) (fullPrimitive_derivative A z)
  simp only [eval_add, eval_mul, eval_C, eval_sub] at hp
  linear_combination (-(Complex.exp (z*x))) * hp

theorem interior_continuous (A : ℝ) : Continuous (interior A) := by
  unfold interior
  fun_prop

theorem actual_integrand_indicator (A : ℝ) (hA : 0 < A) (z : ℂ) :
    (fun x : ℝ ↦ (ZeroSideTargets.actualTest A x : ℂ) * Complex.exp (z*(x:ℂ))) =
      (Icc (-A) A).indicator (fun x : ℝ ↦ interior A x * Complex.exp (z*(x:ℂ))) := by
  funext x
  simp only [ZeroSideTargets.actualTest, Realization.explicit_dilationTest_eq_indicator A hA,
    indicator_apply]
  split_ifs <;> simp [interior_eq A hA]

theorem actual_integrable (A : ℝ) (hA : 0 < A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (ZeroSideTargets.actualTest A x : ℂ) * Complex.exp (z*(x:ℂ))) := by
  rw [actual_integrand_indicator A hA z]
  have hc : Continuous (fun x : ℝ ↦ interior A x * Complex.exp (z*(x:ℂ))) :=
    (interior_continuous A).mul (by fun_prop)
  exact (hc.integrableOn_Icc (μ := volume)).integrable_indicator measurableSet_Icc

theorem actual_integral_interval (A : ℝ) (hA : 0 < A) (z : ℂ) :
    ZeroSideTargets.bilateralTransform A z =
      ∫ x : ℝ in (-A)..A, interior A x * Complex.exp (z*(x:ℂ)) := by
  unfold ZeroSideTargets.bilateralTransform
  rw [actual_integrand_indicator A hA z, integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc, intervalIntegral.integral_of_le (by linarith : -A ≤ A)]

theorem normalized_primitive (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (z*y) * (fullPrimitive (A:ℂ) z).eval (y:ℂ) /
      (z^9 * ((A:ℂ)^8 * (Real.sqrt A:ℂ))))
      (interior A x * Complex.exp (z*(x:ℂ))) x := by
  have h := (exponential_primitive (A:ℂ) z x).div_const
    (z^9 * ((A:ℂ)^8 * (Real.sqrt A:ℂ)))
  convert h using 1 <;> try rfl
  unfold interior
  have ha : (A:ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  have hs : (Real.sqrt A:ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  field_simp

#print axioms actual_integrable
#print axioms normalized_primitive

theorem source_scale (A : ℝ) (hA : 0 < A) : A ^ (17/2 : ℝ) = A^8 * Real.sqrt A := by
  rw [show (17/2 : ℝ) = (8 : ℕ) + 1/2 by norm_num, Real.rpow_add hA,
    Real.rpow_natCast, ← Real.sqrt_eq_rpow]

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

theorem bilateral_transform : ZeroSideTargets.BilateralTransformObligation := by
  intro A hA z
  have hpos : 0 < A := by linarith
  exact ⟨actual_integrable A hpos z, actual_transform A hpos z⟩

#print axioms bilateral_transform
end
end Issue9Transform
```
