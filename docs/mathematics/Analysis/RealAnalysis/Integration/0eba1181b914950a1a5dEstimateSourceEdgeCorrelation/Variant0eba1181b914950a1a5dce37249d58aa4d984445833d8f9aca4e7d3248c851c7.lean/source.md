# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.0eba1181b914950a1a5dEstimateSourceEdgeCorrelation.Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43ba870d8c981430d77cc302b53942adde471534` · SHA-256 `0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile

/-!
# Exact finite upper-edge correlation and its fixed polynomial envelope

The integral is first restricted to the actual support overlap, then reflected
into its endpoint coordinate. No bulk decay is inferred from the edge scale.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceEdgeCorrelation

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimateSourceEdgeProfile

noncomputable section

/-- One fixed nonnegative polynomial controls the upper-edge numerator. -/
def edgePolynomial (z : ℝ) : ℝ := 512 * z^5 * (48+z^2)^2

/-- Restriction to the exact overlap of the two closed source supports. -/
theorem sourceCorrelation_edge_overlap (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) :
    sourceCorrelation explicitSecondDerivative A (2 * A-z) =
      ∫ x in A-z..A, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x-(2 * A-z)) := by
  have hA0 : 0 < A := by linarith
  have heq : (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x-(2 * A-z))) =
      (Icc (A-z) A).indicator (fun x ↦ normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x-(2 * A-z))) := by
    funext x
    by_cases hm : x ∈ Icc (A-z) A
    · simp [hm]
    · have hf : normalizedTest explicitSecondDerivative A x *
          normalizedTest explicitSecondDerivative A (x-(2 * A-z)) = 0 := by
        simp only [mem_Icc, not_and_or, not_le] at hm
        rcases hm with hl | hr
        · rw [normalizedTest_zero_of_le_abs A (x-(2 * A-z)) hA0
            (by rw [abs_of_nonpos (by linarith)]; linarith), mul_zero]
        · rw [normalizedTest_zero_of_le_abs A x hA0
            ((by linarith : A ≤ x).trans (le_abs_self _)), zero_mul]
      simp [hm, hf]
  unfold sourceCorrelation
  calc
    _ = ∫ x, (Icc (A-z) A).indicator
        (fun x ↦ normalizedTest explicitSecondDerivative A x *
          normalizedTest explicitSecondDerivative A (x-(2 * A-z))) x :=
      congrArg (fun f : ℝ → ℝ ↦ ∫ x, f x) heq
    _ = _ := zeroExtension_integral _ (A-z) A (by linarith)

/-- The actual finite endpoint-product integral is genuinely interval-integrable. -/
theorem endpointProduct_intervalIntegrable (A z : ℝ) :
    IntervalIntegrable (fun r ↦ endpointPolynomial A r * endpointPolynomial A (z-r))
      volume 0 z := by
  have hc : Continuous (fun r ↦ endpointPolynomial A r * endpointPolynomial A (z-r)) :=
    (endpointPolynomial_continuous A).mul
    ((endpointPolynomial_continuous A).comp (continuous_const.sub continuous_id))
  exact hc.intervalIntegrable 0 z

/-- Exact source edge identity, with its A^9 normalization and endpoint polynomial. -/
theorem sourceCorrelation_upper_edge (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A (2 * A-z) =
      1 / (A^9 * sourceNormalization A) *
        ∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r) := by
  have hA0 : 0 < A := by linarith
  rw [sourceCorrelation_edge_overlap A z hA hz]
  have hs := intervalIntegral.integral_comp_sub_left (a := (0 : ℝ)) (b := z)
    (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x-(2 * A-z))) A
  simp only [sub_zero] at hs
  rw [← hs, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro r hr
  have hr' : r ∈ Icc (0 : ℝ) z := (uIcc_of_le hz) ▸ hr
  dsimp only
  rw [show A-r-(2 * A-z) = -(A-(z-r)) by ring,
    normalizedTest_even A hA (A-(z-r)),
    normalizedTest_endpoint A r hA hr'.1 (hr'.2.trans hzA),
    normalizedTest_endpoint A (z-r) hA (by linarith [hr'.2]) (by linarith [hr'.1])]
  have hZ := source_normalization_pos A hA
  field_simp [hA0.ne', hZ.ne', Real.sqrt_ne_zero'.mpr hA0, Real.sqrt_ne_zero'.mpr hZ]
  rw [Real.sq_sqrt hA0.le, Real.sq_sqrt hZ.le]
  ring

/-- At full overlap the extracted A^9 is exactly cancelled by the actual numerator mass. -/
theorem endpointPolynomial_full_overlap_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ r in (0 : ℝ)..2 * A, endpointPolynomial A r * endpointPolynomial A (2 * A-r)) =
      A^9 * sourceNormalization A := by
  have hA0 : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have h := sourceCorrelation_upper_edge A (2 * A) hA (by linarith) le_rfl
  rw [sub_self, EstimateCorrelation.actual_correlation_at_zero A hA] at h
  field_simp [hA0.ne', hZ.ne'] at h
  simpa only [mul_comm A 2] using h.symm

/-- The exact endpoint integral has this explicit fixed polynomial majorant. -/
theorem sourceCorrelation_upper_edge_abs_le (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A (2 * A-z)| ≤ edgePolynomial z / A^9 := by
  have hA0 : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hi : |∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r)| ≤
      (192*z^2+4*z^4)^2 * z := by
    have h := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := z) (f := fun r ↦ endpointPolynomial A r * endpointPolynomial A (z-r))
      (C := (192*z^2+4*z^4)^2) ?_
    · simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hz] using h
    · intro r hr
      have hrI : r ∈ Ioc (0 : ℝ) z := uIoc_of_le hz ▸ hr
      have hr' : r ∈ Icc (0 : ℝ) z := ⟨hrI.1.le, hrI.2⟩
      have hb (s : ℝ) (hs0 : 0 ≤ s) (hsz : s ≤ z) :
          |endpointPolynomial A s| ≤ 192*z^2+4*z^4 := by
        refine (endpointPolynomial_abs_le A s hA hs0 (hsz.trans hzA)).trans ?_
        have h2 : s^2 ≤ z^2 := (sq_le_sq₀ hs0 hz).2 hsz
        have h4 : s^4 ≤ z^4 := by nlinarith [sq_nonneg (z^2-s^2)]
        nlinarith
      rw [Real.norm_eq_abs, abs_mul]
      have hm := mul_le_mul (hb r hr'.1 hr'.2)
        (hb (z-r) (by linarith [hr'.2]) (by linarith [hr'.1]))
        (abs_nonneg _) (by positivity)
      simpa only [pow_two] using hm
  rw [sourceCorrelation_upper_edge A z hA hz hzA, abs_mul,
    abs_of_nonneg (by positivity : 0 ≤ 1 / (A^9 * sourceNormalization A))]
  calc
    _ ≤ 1 / (A^9 * sourceNormalization A) * ((192*z^2+4*z^4)^2 * z) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ edgePolynomial z / A^9 := by
      apply (le_div_iff₀ (pow_pos hA0 9)).2
      have hn := sourceNormalization_ge_one_div_32 A hA
      have hb : 1 / sourceNormalization A ≤ 32 := by
        apply (div_le_iff₀ hZ).2
        linarith
      calc
        _ = (1 / sourceNormalization A) * ((192*z^2+4*z^4)^2 * z) := by
          field_simp
        _ ≤ 32 * ((192*z^2+4*z^4)^2 * z) := mul_le_mul_of_nonneg_right hb (by positivity)
        _ = _ := by unfold edgePolynomial; ring

end
end EstimateSourceEdgeCorrelation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
