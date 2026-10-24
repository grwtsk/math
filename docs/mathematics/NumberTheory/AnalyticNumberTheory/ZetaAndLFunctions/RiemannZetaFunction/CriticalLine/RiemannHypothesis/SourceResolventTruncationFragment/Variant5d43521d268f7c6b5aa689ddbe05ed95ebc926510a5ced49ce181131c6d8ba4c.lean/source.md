# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceResolventTruncationFragment.Variant5d43521d268f7c6b5aa689ddbe05ed95ebc926510a5ced49ce181131c6d8ba4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3269a363e1ee25b8b512c1cf42872dff1d4a0f3d` · SHA-256 `ae2494e0e52de8b9cc2ab3bbd69dfeb626cdf60e6bcb6d14b922e4f1cc1e25ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMass.Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceMass.Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/SourceResolventTruncationFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation
import FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent

/-!
# Actual source resolvents and a joint time/parameter truncation bound

Every inverse below is justified by positivity of the original TT*. The diagonal
comparison controls approximation error; it does not prove vanishing of either
actual or truncated directional mass.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMass.Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
open MeasureTheory Set Filter
open scoped Topology
open HalfLineExponential FixedSourceKernel HalfLineOperator TimeKernelTruncation PositiveResolvent
noncomputable section

/-- The requested directional mass for the actual source TT*. -/
def sourceMass (α : ℝ) : ℝ := regularizedMass sourceEnergy α referenceVector

/-- The same reference vector and parameter for the actual time-truncated TT*. -/
def truncatedMass (N α : ℝ) : ℝ := regularizedMass (truncatedEnergy N) α referenceVector

/-- The source inverse exists at every strictly positive parameter. -/
theorem sourceShift_isUnit (α : ℝ) (hα : 0 < α) :
    IsUnit (positiveShift sourceEnergy α) :=
  positiveShift_isUnit sourceEnergy sourceEnergy_isPositive α hα

/-- The truncated source inverse exists at every strictly positive parameter. -/
theorem truncatedShift_isUnit (N α : ℝ) (hα : 0 < α) :
    IsUnit (positiveShift (truncatedEnergy N) α) :=
  positiveShift_isUnit (truncatedEnergy N) (truncatedEnergy_isPositive N) α hα

/-- Genuine resolvent positivity retains the actual reference direction. -/
theorem sourceMass_nonneg (α : ℝ) (hα : 0 < α) : 0 ≤ sourceMass α :=
  mul_nonneg hα.le
    ((positiveResolvent_isPositive sourceEnergy sourceEnergy_isPositive α hα).re_inner_nonneg_right _)

/-- Positive approximants use exactly the same reference direction. -/
theorem truncatedMass_nonneg (N α : ℝ) (hα : 0 < α) : 0 ≤ truncatedMass N α :=
  mul_nonneg hα.le
    ((positiveResolvent_isPositive (truncatedEnergy N)
      (truncatedEnergy_isPositive N) α hα).re_inner_nonneg_right _)

private theorem regularizedMass_le_norm_sq
    (S : H →L[ℂ] H) (hS : S.IsPositive) (α : ℝ) (hα : 0 < α) (r : H) :
    regularizedMass S α r ≤ ‖r‖ ^ 2 := by
  have hinner : (inner ℂ r (positiveResolvent S α r)).re ≤
      ‖r‖ ^ 2 * (1 / α) := by
    calc
      _ ≤ ‖inner ℂ r (positiveResolvent S α r)‖ := Complex.re_le_norm _
      _ ≤ ‖r‖ * ‖positiveResolvent S α r‖ := norm_inner_le_norm _ _
      _ ≤ ‖r‖ * (‖positiveResolvent S α‖ * ‖r‖) :=
        mul_le_mul_of_nonneg_left ((positiveResolvent S α).le_opNorm r) (norm_nonneg _)
      _ ≤ ‖r‖ * ((1 / α) * ‖r‖) := by
        gcongr
        exact positiveResolvent_norm_le S hS α hα
      _ = _ := by ring
  calc
    _ ≤ α * (‖r‖ ^ 2 * (1 / α)) := mul_le_mul_of_nonneg_left hinner hα.le
    _ = _ := by field_simp

/-- The original reference has squared norm one half, bounding its actual directional mass. -/
theorem sourceMass_le_half (α : ℝ) (hα : 0 < α) : sourceMass α ≤ 1 / 2 := by
  have h := regularizedMass_le_norm_sq sourceEnergy sourceEnergy_isPositive α hα referenceVector
  simpa only [referenceVector_norm_sq, sourceMass, truncatedMass] using h

/-- The identical reference normalization bounds each actual truncated directional mass. -/
theorem truncatedMass_le_half (N α : ℝ) (hα : 0 < α) : truncatedMass N α ≤ 1 / 2 := by
  have h := regularizedMass_le_norm_sq (truncatedEnergy N)
    (truncatedEnergy_isPositive N) α hα referenceVector
  simpa only [referenceVector_norm_sq, sourceMass, truncatedMass] using h

/-- Uniform source-based error, with one inverse power of the parameter. -/
theorem mass_sub_abs_le (N : ℝ) (hN : 2 ≤ N) (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass N α| ≤
      2 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) / α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy (truncatedEnergy N)
    sourceEnergy_isPositive (truncatedEnergy_isPositive N) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy N‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2)) / (2 * α) :=
      div_le_div_of_nonneg_right (energy_norm_sub_le N hN) (by positivity)
    _ = _ := by ring

/-- The joint cutoff produces a vanishing error, without interchanging limits. -/
theorem diagonal_mass_sub_abs_le (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass (diagonalCutoff α) α| ≤
      2 * kernelMass * derivativeBudget * α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy
    (truncatedEnergy (diagonalCutoff α)) sourceEnergy_isPositive
    (truncatedEnergy_isPositive (diagonalCutoff α)) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * α ^ 2) / (2 * α) :=
      div_le_div_of_nonneg_right (diagonal_energy_error_le α hα) (by positivity)
    _ = _ := by field_simp; ring


/-- Only the actual-versus-truncated directional error is proved to vanish. -/
theorem diagonal_mass_sub_abs_tendsto_zero :
    Tendsto (fun α : ℝ => |sourceMass α - truncatedMass (diagonalCutoff α) α|)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply squeeze_zero' (Filter.Eventually.of_forall (fun _ => abs_nonneg _))
  · filter_upwards [self_mem_nhdsWithin] with α hα
    exact diagonal_mass_sub_abs_le α hα
  · have h : Tendsto (fun α : ℝ => 2 * kernelMass * derivativeBudget * α)
        (𝓝[>] (0 : ℝ)) (𝓝 (2 * kernelMass * derivativeBudget * 0)) :=
      tendsto_const_nhds.mul (tendsto_id.mono_left nhdsWithin_le_nhds)
    simpa only [mul_zero] using h

/-- The signed approximation error also vanishes along the same prescribed joint cutoff. -/
theorem diagonal_mass_sub_tendsto_zero :
    Tendsto (fun α : ℝ => sourceMass α - truncatedMass (diagonalCutoff α) α)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  simpa only [Real.norm_eq_abs] using diagonal_mass_sub_abs_tendsto_zero

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
```
