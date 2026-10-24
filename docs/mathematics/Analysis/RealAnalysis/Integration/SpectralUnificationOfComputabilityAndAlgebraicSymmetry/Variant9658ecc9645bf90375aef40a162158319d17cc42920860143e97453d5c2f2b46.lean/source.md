# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant9658ecc9645bf90375aef40a162158319d17cc42920860143e97453d5c2f2b46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f16d78a22a1091034076e3ba835d9dd8c899599c` · SHA-256 `9658ecc9645bf90375aef40a162158319d17cc42920860143e97453d5c2f2b46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceRieszFilter

/-!
# The exact source mass for the even prime-power sector

The original signed correlation supplies the main term. Both independent
half-factors are retained: half of the full autocorrelation mass is on the
positive half-line, and the square-exponent substitution supplies another half.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCompositeMainTerm

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateSourceCorrelationPolynomial EstimateSourceRieszFilter

noncomputable section

/-- The positive-half bump correlation mass is half the square of the original bump mass. -/
theorem bumpCorrelation_integral :
    (∫ v in (0 : ℝ)..2, bumpCorrelation v) = (256 / 315 : ℝ) ^ 2 / 2 := by
  have h := intervalIntegral.integral_comp_sub_left (a := (0 : ℝ)) (b := 2)
    bumpCorrelation 2
  norm_num only [sub_self, sub_zero] at h
  rw [← h]
  simp_rw [bumpCorrelation_boundary_expansion]
  rw [intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul, integral_pow]
    have hI : Finset.Icc 9 17 = {9, 10, 11, 12, 13, 14, 15, 16, 17} := by decide
    rw [hI]
    norm_num [boundaryCoefficient]
  · intro j _
    exact (by fun_prop : Continuous
      (fun d : ℝ ↦ boundaryCoefficient j * d ^ j)).intervalIntegrable _ _

/-- The integrated second-derivative correction vanishes at both endpoints. -/
theorem bumpCorrelationSecond_integral :
    (∫ v in (0 : ℝ)..2, bumpCorrelationSecond v) = 0 := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun v _ ↦ bumpCorrelationFirst_hasDerivAt v)
    ((by unfold bumpCorrelationSecond; fun_prop :
      Continuous bumpCorrelationSecond).intervalIntegrable _ _)]
  norm_num [bumpCorrelationFirst]

/-- The integrated fourth-derivative correction also vanishes at both endpoints. -/
theorem bumpCorrelationFourth_integral :
    (∫ v in (0 : ℝ)..2, bumpCorrelationFourth v) = 0 := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun v _ ↦ bumpCorrelationThird_hasDerivAt v)
    ((by unfold bumpCorrelationFourth; fun_prop :
      Continuous bumpCorrelationFourth).intervalIntegrable _ _)]
  norm_num [bumpCorrelationThird]

/-- Exact source-native main term, with the square-exponent half-factor explicit. -/
theorem sourceCorrelation_half_integral (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t in (0 : ℝ)..2 * A,
      sourceCorrelation explicitSecondDerivative A t) =
      1024 * A / (99225 * sourceNormalization A) := by
  have hp : 0 < A := by linarith
  have hn := ne_of_gt hp
  have hs := intervalIntegral.integral_comp_mul_left
    (a := (0 : ℝ)) (b := 2) (sourceCorrelation explicitSecondDerivative A) hn
  simp only [mul_zero, smul_eq_mul, mul_comm A 2] at hs
  have he : (∫ v in (0 : ℝ)..2, sourceCorrelation explicitSecondDerivative A (A * v)) =
      (∫ v in (0 : ℝ)..2, (bumpCorrelation v / 16 -
        (1 / A ^ 2) * bumpCorrelationSecond v / 2 +
        (1 / A ^ 2) ^ 2 * bumpCorrelationFourth v) / sourceNormalization A) := by
    apply intervalIntegral.integral_congr
    intro v hv
    rw [uIcc_of_le (by norm_num : (0 : ℝ) ≤ 2)] at hv
    exact sourceCorrelation_eq_polynomial A v hA hv.1 hv.2
  rw [he] at hs
  have hi0 : IntervalIntegrable bumpCorrelation volume 0 2 :=
    (by unfold bumpCorrelation; fun_prop : Continuous bumpCorrelation).intervalIntegrable _ _
  have hi2 : IntervalIntegrable bumpCorrelationSecond volume 0 2 :=
    (by unfold bumpCorrelationSecond; fun_prop :
      Continuous bumpCorrelationSecond).intervalIntegrable _ _
  have hi4 : IntervalIntegrable bumpCorrelationFourth volume 0 2 :=
    (by unfold bumpCorrelationFourth; fun_prop :
      Continuous bumpCorrelationFourth).intervalIntegrable _ _
  rw [intervalIntegral.integral_div,
    intervalIntegral.integral_add
      ((hi0.div_const 16).sub ((hi2.const_mul _).div_const 2)) (hi4.const_mul _),
    intervalIntegral.integral_sub (hi0.div_const 16) ((hi2.const_mul _).div_const 2),
    intervalIntegral.integral_div, intervalIntegral.integral_div,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    bumpCorrelation_integral, bumpCorrelationSecond_integral, bumpCorrelationFourth_integral] at hs
  have hZ := ne_of_gt (source_normalization_pos A hA)
  norm_num at hs
  field_simp at hs ⊢
  nlinarith

/-- The actual normalization approaches its nonzero constant coefficient through real scales. -/
theorem sourceNormalization_tendsto :
    Tendsto sourceNormalization atTop (𝓝 (4096 / 109395 : ℝ)) := by
  have hi : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have h := ((tendsto_const_nhds (x := (65536 / 109395 : ℝ) / 16)).add
    ((tendsto_const_nhds (x := (131072 / 45045 : ℝ) / 2)).mul (hi.pow 2))).add
      ((tendsto_const_nhds (x := (196608 / 5005 : ℝ))).mul (hi.pow 4))
  norm_num at h
  convert h using 1
  funext A
  unfold sourceNormalization
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The exact normalized linear coefficient of the composite-sector main term. -/
theorem composite_main_coefficient_tendsto :
    Tendsto (fun A : ℝ ↦ 1024 / (99225 * sourceNormalization A))
      atTop (𝓝 (2431 / 8820 : ℝ)) := by
  have h := (tendsto_const_nhds (x := (1024 : ℝ))).div
    ((tendsto_const_nhds (x := (99225 : ℝ))).mul sourceNormalization_tendsto)
    (by norm_num : (99225 : ℝ) * (4096 / 109395) ≠ 0)
  norm_num at h
  exact h

end
end EstimateCompositeMainTerm
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
