# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualEndpointCorrelationAttempt01.Variantb5176671d58a1383d8fdc258888124923542cdae5413aa144fdf3604f0f20197

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44e8c35f9725f6490e3e45420815d0465b0e7cce` · SHA-256 `b5176671d58a1383d8fdc258888124923542cdae5413aa144fdf3604f0f20197`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import EndpointProfile

/-! Exact source-bound upper-endpoint correlation overlap.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No differentiated remainder or actual eventual sign is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualEndpointCorrelation
open MeasureTheory Set
open scoped Interval
open EndpointProfile
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- This finite overlap is built directly from the exact source interior polynomial. -/
def endpointPolynomialCorrelation (a y : ℝ) : ℝ :=
  ∫ s in 0..y,endpointInteriorPolynomial a s*endpointInteriorPolynomial a (y-s)

theorem endpointPolynomialCorrelation_integrand_intervalIntegrable (a y : ℝ) :
    IntervalIntegrable (fun s => endpointInteriorPolynomial a s*
      endpointInteriorPolynomial a (y-s)) volume 0 y := by
  apply Continuous.intervalIntegrable
  unfold endpointInteriorPolynomial
  fun_prop

theorem normalizedInterior_even (A x : ℝ) : normalizedInterior A (-x)=normalizedInterior A x := by
  dsimp [normalizedInterior,secondInterior,bumpInterior]
  simp only [neg_div]
  ring

/-- Exact source support intersection, retaining both closed endpoints. -/
theorem actual_endpoint_overlap {A y : ℝ} (hA : 0<A) (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)=
      ∫ x in (A-y)..A,normalizedInterior A x*normalizedInterior A (x-(2*A-y)) := by
  have he : (fun x => normalizedTest explicitSecondDerivative A x*
      normalizedTest explicitSecondDerivative A (x-(2*A-y)))=
      (Icc (A-y) A).indicator (fun x => normalizedInterior A x*
        normalizedInterior A (x-(2*A-y))) := by
    funext x
    rw [normalizedTest_eq_indicator A hA]
    by_cases hx : x∈Icc (A-y) A
    · have hx1 : x∈Icc (-A) A := by constructor <;> linarith [hx.1,hx.2,hy.1,hy.2]
      have hx2 : x-(2*A-y)∈Icc (-A) A := by
        constructor <;> linarith [hx.1,hx.2,hy.1,hy.2]
      rw [indicator_of_mem hx1,indicator_of_mem hx2,indicator_of_mem hx]
    · rw [indicator_of_notMem hx]
      by_cases hx1 : A-y≤x
      · have hx2 : A<x := by
          by_contra hn
          exact hx ⟨hx1,le_of_not_gt hn⟩
        rw [indicator_of_notMem (show x∉Icc (-A) A from fun h => not_le_of_gt hx2 h.2)]
        simp
      · have hx2 : x-(2*A-y)<-A := by linarith [lt_of_not_ge hx1]
        rw [indicator_of_notMem (show x-(2*A-y)∉Icc (-A) A from
          fun h => not_le_of_gt hx2 h.1)]
        simp
  rw [sourceCorrelation,he,zeroExtension_integral _ (A-y) A (by linarith [hy.1])]

/-- Actual correlation uses the physical endpoint distance and reflected second factor. -/
theorem actual_endpoint_overlap_distance {A y : ℝ} (hA : 0<A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)=
      ∫ s in 0..y,normalizedInterior A (A-s)*normalizedInterior A (A-(y-s)) := by
  rw [actual_endpoint_overlap hA hy]
  have hc := intervalIntegral.integral_comp_sub_left
    (fun x => normalizedInterior A x*normalizedInterior A (x-(2*A-y)))
    (a:=0) (b:=y) A
  simp only [sub_zero] at hc
  rw [←hc]
  apply intervalIntegral.integral_congr
  intro s _
  dsimp only
  have he : A-s-(2*A-y)=-(A-(y-s)) := by ring
  rw [he,normalizedInterior_even]

/-- Squaring the two original source normalizations gives exactly one Z denominator. -/
theorem normalized_endpoint_product {A s t : ℝ} (hA : 1≤A) :
    normalizedInterior A (A-s)*normalizedInterior A (A-t)*
      (A^9*sourceNormalization A)=
      endpointInteriorPolynomial A⁻¹ s*endpointInteriorPolynomial A⁻¹ t := by
  have hp : 0<A := by linarith
  have hZ := source_normalization_pos A hA
  have hsZ : Real.sqrt (sourceNormalization A)≠0 := ne_of_gt (Real.sqrt_pos.mpr hZ)
  rw [←actual_interior_endpoint_polynomial hp,←actual_interior_endpoint_polynomial hp]
  dsimp [normalizedInterior]
  field_simp [hsZ]
  rw [Real.sq_sqrt hZ.le]
  have hsA := Real.sq_sqrt hp.le
  nlinarith [hsA]

/-- Kernel checked exact A^-9/Z_A endpoint scaling of the literal correlation. -/
theorem actual_endpoint_polynomial_correlation {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)*(A^9*sourceNormalization A)=
      endpointPolynomialCorrelation A⁻¹ y := by
  rw [actual_endpoint_overlap_distance (by linarith : 0<A) hy]
  rw [←intervalIntegral.integral_mul_const]
  unfold endpointPolynomialCorrelation
  apply intervalIntegral.integral_congr
  intro s _
  exact normalized_endpoint_product hA

end ContinuousResearch.ActualEndpointCorrelation
```
