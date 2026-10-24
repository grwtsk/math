# Complete source: GRWTSK.Analysis.ActualComplexSourceMoment.Variantf1864158bdbd17e90b2cfe83d4bfe6f21d34742dab956a52c58ea84236704ee7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `028a6e0865d76cae28c9378aa5da820159e44aa4` · SHA-256 `f1864158bdbd17e90b2cfe83d4bfe6f21d34742dab956a52c58ea84236704ee7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualSourceLaplaceMoment
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

/-!
# Complex-parameter access to the unchanged native source moment

This adapter generalizes the earlier real-parameter pole primitive and moment
multiplier to complex z while retaining every qualified source definition,
its exact pole coefficient and normalization. Both weighted actual source
and bump are genuinely integrable through their complete compact supports.
Human exact-source and off-grid direction: grwtsk contributors. Local complex
parameter calculus: OpenAI Codex. This is a checked interface delta from
qualified Realization and CorrelationMoment, without new theorem priority or
ownership of those source artifacts. A complex convolution and native
readout consumer still require their own checks.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualComplexSourceMoment
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity MeasureTheory Set
noncomputable section

/-- The complex bump moment in this module, with the following exact parameterization.

def complexBumpMoment (A : ℝ) (z : ℂ) : ℂ := ∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (scaledBump
A x : ℂ)
-/
def complexBumpMoment (A : ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (scaledBump A x : ℂ)
/-- The complex test moment in this module, with the following exact parameterization.

def complexTestMoment (A : ℝ) (z : ℂ) : ℂ := ∫ x : ℝ, Complex.exp (z * (x : ℂ)) *
(normalizedTest explicitSecondDerivative A x : ℂ)
-/
def complexTestMoment (A : ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (normalizedTest explicitSecondDerivative A x : ℂ)
/-- The complex pole primitive in this module, with the following exact parameterization.

def complexPolePrimitive (A : ℝ) (z : ℂ) (x : ℝ) : ℂ := Complex.exp (z * (x : ℂ)) *
((firstInterior A x : ℂ) - z * (bumpInterior A x : ℂ))
-/
def complexPolePrimitive (A : ℝ) (z : ℂ) (x : ℝ) : ℂ :=
  Complex.exp (z * (x : ℂ)) *
    ((firstInterior A x : ℂ) - z * (bumpInterior A x : ℂ))

theorem complex_source_primitive_derivative (A : ℝ) (z : ℂ) (x : ℝ) :
    HasDerivAt (complexPolePrimitive A z)
      (Complex.exp (z * (x : ℂ)) *
        ((secondInterior A x : ℂ) - z ^ 2 * (bumpInterior A x : ℂ))) x := by
  have hd := (((hasDerivAt_id x).ofReal_comp.const_mul z).cexp).mul
    ((firstInterior_hasDerivAt A x).ofReal_comp.sub
      ((bumpInterior_hasDerivAt A x).ofReal_comp.const_mul z))
  apply hd.congr_deriv
  dsimp only [Pi.sub_apply, id_eq, Complex.ofReal_one]
  ring

theorem complex_source_primitive_endpoints {A : ℝ} (hA : 0 < A) (z : ℂ) :
    complexPolePrimitive A z (-A) = 0 ∧ complexPolePrimitive A z A = 0 := by
  rcases bumpInterior_endpoints A hA.ne' with ⟨hl, hr⟩
  rcases firstInterior_endpoints A hA.ne' with ⟨hl', hr'⟩
  simp [complexPolePrimitive, hl, hr, hl', hr']

theorem complex_weighted_bump_indicator {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (scaledBump A x : ℂ)) =
      (Icc (-A) A).indicator
        (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) := by
  rw [scaledBump_eq_indicator A (by linarith)]
  funext x
  by_cases hx : x ∈ Icc (-A) A <;> simp [hx]

theorem complex_weighted_source_indicator {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      (dilationTest explicitSecondDerivative A x : ℂ)) =
      (Icc (-A) A).indicator (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
        ((secondInterior A x : ℂ) - (bumpInterior A x : ℂ) / 4)) := by
  rw [explicit_dilationTest_eq_indicator A (by linarith)]
  funext x
  by_cases hx : x ∈ Icc (-A) A <;> simp [hx]

theorem complex_weighted_bump_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (scaledBump A x : ℂ)) volume := by
  rw [complex_weighted_bump_indicator hA]
  have hc : Continuous (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) :=
    (Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).mul
      (Complex.continuous_ofReal.comp (bumpInterior_continuous A))
  exact hc.integrableOn_Icc.integrable_indicator measurableSet_Icc

theorem complex_weighted_source_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      (dilationTest explicitSecondDerivative A x : ℂ)) volume := by
  rw [complex_weighted_source_indicator hA]
  have hc : Continuous (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      ((secondInterior A x : ℂ) - (bumpInterior A x : ℂ) / 4)) :=
    (Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).mul
      ((Complex.continuous_ofReal.comp (secondInterior_continuous A)).sub
        ((Complex.continuous_ofReal.comp (bumpInterior_continuous A)).div_const 4))
  exact hc.integrableOn_Icc.integrable_indicator measurableSet_Icc

theorem complex_weighted_normalized_source_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      (normalizedTest explicitSecondDerivative A x : ℂ)) volume := by
  simpa only [normalizedTest, Complex.ofReal_div, ← mul_div_assoc] using!
    (complex_weighted_source_integrable hA z).div_const
      (Real.sqrt (sourceNormalization A) : ℂ)

theorem complex_bump_exact_interval {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    complexBumpMoment A z =
      ∫ x in (-A)..A, Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ) := by
  rw [complexBumpMoment, complex_weighted_bump_indicator hA,
    MeasureTheory.integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    intervalIntegral.integral_of_le (by linarith : -A ≤ A)]

theorem complex_actual_dilation_laplace_multiplier {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (dilationTest explicitSecondDerivative A x : ℂ)) =
      (z ^ 2 - 1 / 4) * complexBumpMoment A z := by
  have hpos : 0 < A := by linarith
  have hexp : Continuous (fun x : ℝ ↦ Complex.exp (z * (x : ℂ))) :=
    Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)
  have hb : Continuous (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) :=
    hexp.mul (Complex.continuous_ofReal.comp (bumpInterior_continuous A))
  have hd : Continuous (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      ((secondInterior A x : ℂ) - z ^ 2 * (bumpInterior A x : ℂ))) :=
    hexp.mul ((Complex.continuous_ofReal.comp (secondInterior_continuous A)).sub
      ((Complex.continuous_ofReal.comp (bumpInterior_continuous A)).const_mul _))
  have heq : (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      ((secondInterior A x : ℂ) - (bumpInterior A x : ℂ) / 4)) =
      fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
        ((secondInterior A x : ℂ) - z ^ 2 * (bumpInterior A x : ℂ)) +
        (z ^ 2 - 1 / 4) * (Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) := by
    funext x
    ring
  rw [complex_weighted_source_indicator hA, MeasureTheory.integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (by linarith : -A ≤ A), heq,
    intervalIntegral.integral_add (hd.intervalIntegrable _ _) ((hb.const_mul
      _).intervalIntegrable _ _),
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ complex_source_primitive_derivative A z x) (hd.intervalIntegrable _ _),
    (complex_source_primitive_endpoints hpos z).1,
    (complex_source_primitive_endpoints hpos z).2, sub_self, zero_add,
    intervalIntegral.integral_const_mul, ← complex_bump_exact_interval hA]

theorem complex_actual_normalized_laplace_multiplier {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    complexTestMoment A z = (z ^ 2 - 1 / 4) * complexBumpMoment A z /
      (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold complexTestMoment
  simp_rw [normalizedTest, Complex.ofReal_div, ← mul_div_assoc]
  rw [integral_div, complex_actual_dilation_laplace_multiplier hA]

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexSourceMoment
```
