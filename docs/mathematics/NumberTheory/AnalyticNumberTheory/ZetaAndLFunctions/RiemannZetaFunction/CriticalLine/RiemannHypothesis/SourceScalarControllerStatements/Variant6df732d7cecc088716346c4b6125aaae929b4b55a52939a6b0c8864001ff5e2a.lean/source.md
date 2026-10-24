# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceScalarControllerStatements.Variant6df732d7cecc088716346c4b6125aaae929b4b55a52939a6b0c8864001ff5e2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08ff95e60b1af057aa928c3f50e970e831c6dfe8` · SHA-256 `6df732d7cecc088716346c4b6125aaae929b4b55a52939a6b0c8864001ff5e2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.SourceLaplaceOne
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
set_option autoImplicit false
namespace SourceScalarControllerScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
open FixedLaplaceContinuation SourceResolventTruncation TimeKernelTruncation
open SourceControllerEnergy SourceLaplaceOne
noncomputable section

/-- The real value of the actual complete source Laplace integral at one. -/
def kappa : ℝ := (actualLaplace 1).re

theorem kappa_pos : 0 < kappa := actualLaplace_one_re_pos

theorem reference_source_inner_re :
    (inner ℂ referenceVector (sourceOperator referenceVector)).re = kappa / 2 := by
  have h := exponential_inner_sourceOperator 1 (by norm_num) referenceVector
  change inner ℂ referenceVector (sourceOperator referenceVector) =
    actualLaplace 1 * inner ℂ referenceVector referenceVector at h
  have hr : inner ℂ referenceVector referenceVector = (1 / 2 : ℂ) := by
    change inner ℂ referenceVector (exponentialVector 1 (by norm_num)) = _
    rw [inner_reference_exponential]
    norm_num
  rw [hr] at h
  rw [h]
  simp [Complex.mul_re, kappa, div_eq_mul_inv]

private theorem source_reference_norm_sq_le :
    ‖sourceOperator referenceVector‖ ^ 2 ≤ kernelMass ^ 2 / 2 := by
  have h := pow_le_pow_left₀ (norm_nonneg (sourceOperator referenceVector))
    (sourceOperator_apply_norm_le referenceVector) 2
  change ‖sourceOperator referenceVector‖ ^ 2 ≤
    (kernelMass * ‖referenceVector‖) ^ 2 at h
  simpa [mul_pow, referenceVector_norm_sq, div_eq_mul_inv] using h

theorem scaled_reference_full_energy (c α : ℝ) :
    ‖referenceVector - sourceOperator ((c : ℂ) • referenceVector)‖ ^ 2 +
      α * ‖(c : ℂ) • referenceVector‖ ^ 2 =
      1 / 2 - c * kappa + c ^ 2 * (‖sourceOperator referenceVector‖ ^ 2 + α / 2) := by
  rw [map_smul, norm_sub_sq (𝕜 := ℂ), referenceVector_norm_sq,
    inner_smul_right]
  change (1 / 2 - 2 * (((c : ℂ) * inner ℂ referenceVector
      (sourceOperator referenceVector)).re) + ‖(c : ℂ) •
      sourceOperator referenceVector‖ ^ 2) + α * ‖(c : ℂ) • referenceVector‖ ^ 2 = _
  simp only [Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  rw [reference_source_inner_re]
  simp only [norm_smul, Complex.norm_real, Real.norm_eq_abs, mul_pow, sq_abs,
    referenceVector_norm_sq]
  ring

/-- A single genuine reference controller, with the complete source operator. -/
def scalarController (α : ℝ) : H :=
  ((kappa / (kernelMass ^ 2 + α) : ℝ) : ℂ) • referenceVector

theorem scalarController_full_energy_le (α : ℝ) (hα : 0 < α) :
    ‖referenceVector - sourceOperator (scalarController α)‖ ^ 2 +
      α * ‖scalarController α‖ ^ 2 ≤
      1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) := by
  have hd : 0 < kernelMass ^ 2 + α := add_pos_of_nonneg_of_pos (sq_nonneg _) hα
  rw [scalarController, scaled_reference_full_energy]
  calc
    _ ≤ 1 / 2 - kappa / (kernelMass ^ 2 + α) * kappa +
        (kappa / (kernelMass ^ 2 + α)) ^ 2 * (kernelMass ^ 2 / 2 + α / 2) := by
      gcongr
      exact source_reference_norm_sq_le
    _ = _ := by
      field_simp
      ring

theorem sourceMass_le_scalar_improvement (α : ℝ) (hα : 0 < α) :
    sourceMass α ≤ 1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
  (sourceMass_le_full_energy α hα (scalarController α)).trans
    (scalarController_full_energy_le α hα)

theorem sourceMass_lt_reference_norm_sq (α : ℝ) (hα : 0 < α) :
    sourceMass α < 1 / 2 := by
  have hd : 0 < 2 * (kernelMass ^ 2 + α) :=
    mul_pos (by norm_num) (add_pos_of_nonneg_of_pos (sq_nonneg _) hα)
  have hp : 0 < kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
    div_pos (sq_pos_of_pos kappa_pos) hd
  linarith [sourceMass_le_scalar_improvement α hα]

end
end SourceScalarControllerScratch

open SourceScalarControllerScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator FixedLaplaceContinuation SourceResolventTruncation TimeKernelTruncation
example : 0 < kappa := kappa_pos


example :
    (inner ℂ referenceVector (sourceOperator referenceVector)).re = kappa / 2 := reference_source_inner_re


example (c α : ℝ) :
    ‖referenceVector - sourceOperator ((c : ℂ) • referenceVector)‖ ^ 2 +
      α * ‖(c : ℂ) • referenceVector‖ ^ 2 =
      1 / 2 - c * kappa + c ^ 2 * (‖sourceOperator referenceVector‖ ^ 2 + α / 2) := scaled_reference_full_energy c α


example (α : ℝ) (hα : 0 < α) :
    ‖referenceVector - sourceOperator (scalarController α)‖ ^ 2 +
      α * ‖scalarController α‖ ^ 2 ≤
      1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) := scalarController_full_energy_le α hα


example (α : ℝ) (hα : 0 < α) :
    sourceMass α ≤ 1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) := sourceMass_le_scalar_improvement α hα


example (α : ℝ) (hα : 0 < α) :
    sourceMass α < 1 / 2 := sourceMass_lt_reference_norm_sq α hα

example : kappa = (actualLaplace 1).re := rfl

example (α : ℝ) : scalarController α =
    ((kappa / (kernelMass ^ 2 + α) : ℝ) : ℂ) • referenceVector := rfl
```
