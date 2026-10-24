# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantf10bb66610e9306e4e05b0a9de3874b33f3328f9d5ad4f381a63aaca31feb5a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b45f6b003860864c62a09408632c2dfcccef36c` · SHA-256 `321027608932eecb1d700eec06d7402fa360d2365cca8ca0d88afb9171a5c75e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceLogKernel.Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceLogKernel.Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e","mathematical_subject":"Analysis.Calculus","original_sha256":"796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateActualSourceKernelBound

/-!
# The logarithmically normalized actual source kernel

The source scale and its finite inventory stay fixed during differentiation.
This module identifies the literal kernel with its logarithmic profile and
retains the half-weight cancellation in the Euler derivative.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceLogKernel.Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceKernelLogProfile

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateSourceMobiusKernel EstimateActualSourceKernelBound
open EstimateTwoMomentSampling EstimateLogSampling EstimateTwoMomentSamplingBound
open Realization CorrelationRegularity

noncomputable section

/-- The actual source kernel with its square-root weight removed in logarithmic coordinates. -/
def sourceLogKernel (A s : ℝ) : ℝ :=
  Real.exp (s / 2) * sourceMobiusKernel A (Real.exp s)

/-- Exact normalization of the fixed finite sampling inventory. -/
theorem exp_half_mul_leftSampleSum (F : ℝ → ℝ) (N : ℕ) (s : ℝ) :
    Real.exp (s / 2) * leftSampleSum (logSamplingTerm F (Real.exp s)) N =
      ∑ k ∈ Finset.Icc 1 N,
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) * F (s + Real.log (k : ℝ)) := by
  unfold leftSampleSum
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hk).1)
  have he : Real.exp (s / 2) * Real.exp (-(s + Real.log (k : ℝ)) / 2) =
      (Real.sqrt (k : ℝ))⁻¹ := by
    rw [← Real.exp_add]
    calc
      _ = Real.exp (-Real.log (k : ℝ) / 2) := by congr 1; ring
      _ = _ := exp_neg_log_half_eq_inv_sqrt hkpos
  simp only [logSamplingTerm, Real.log_exp]
  calc
    _ = Real.log (k : ℝ) *
        (Real.exp (s / 2) * Real.exp (-(s + Real.log (k : ℝ)) / 2)) *
          F (s + Real.log (k : ℝ)) := by ring
    _ = _ := by rw [he]; ring

/-- The unchanged kernel is a finite sum of translates of the literal correlation. -/
theorem sourceLogKernel_eq_sum (A s : ℝ) :
    sourceLogKernel A s =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          sourceCorrelation explicitSecondDerivative A (s + Real.log (k : ℝ)) := by
  have h := exp_half_mul_leftSampleSum
    (sourceCorrelation explicitSecondDerivative A) (sourceKernelCutoff A) s
  rw [leftSampleSum_source_eq A (Real.exp s) (sourceKernelCutoff A)
    (Real.exp_pos s)] at h
  exact h

/-- The logarithmic source profile is globally continuously differentiable. -/
theorem sourceLogKernel_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (sourceLogKernel A) := by
  have heq : sourceLogKernel A = fun s ↦
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          sourceCorrelation explicitSecondDerivative A (s + Real.log (k : ℝ)) :=
    funext (sourceLogKernel_eq_sum A)
  rw [heq]
  apply ContDiff.sum
  intro k _
  exact contDiff_const.mul ((sourceCorrelation_contDiff A hA).comp
    (contDiff_id.add contDiff_const))

/-- Differentiation acts on the correlation alone; the source inventory is fixed. -/
theorem sourceLogKernel_hasDerivAt (A s : ℝ) (hA : 0 < A) :
    HasDerivAt (sourceLogKernel A)
      (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          deriv (sourceCorrelation explicitSecondDerivative A) (s + Real.log (k : ℝ))) s := by
  have heq : sourceLogKernel A = fun u ↦
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          sourceCorrelation explicitSecondDerivative A (u + Real.log (k : ℝ)) :=
    funext (sourceLogKernel_eq_sum A)
  rw [heq]
  have hs : ∀ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      HasDerivAt
        (fun u ↦ Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          sourceCorrelation explicitSecondDerivative A (u + Real.log (k : ℝ)))
        (Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          deriv (sourceCorrelation explicitSecondDerivative A) (s + Real.log (k : ℝ))) s := by
    intro k _
    have hd := ((sourceCorrelation_contDiff A hA).differentiable
      (by norm_num)).differentiableAt.hasDerivAt (x := s + Real.log (k : ℝ))
    simpa using (hd.comp s ((hasDerivAt_id s).add_const (Real.log (k : ℝ)))).const_mul
      (Real.log (k : ℝ) / Real.sqrt (k : ℝ))
  exact HasDerivAt.fun_sum hs

/-- The derivative formula for the actual logarithmic kernel. -/
theorem sourceLogKernel_deriv_eq_sum (A s : ℝ) (hA : 0 < A) :
    deriv (sourceLogKernel A) s =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          deriv (sourceCorrelation explicitSecondDerivative A) (s + Real.log (k : ℝ)) :=
  (sourceLogKernel_hasDerivAt A s hA).deriv

/-- The exact upper Abel boundary vanishes after logarithmic normalization. -/
theorem sourceLogKernel_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceLogKernel A (2 * A) = 0 := by
  unfold sourceLogKernel
  rw [show Real.exp (2 * A) = EstimateMertensAbel.sourceUpper A from rfl,
    sourceMobiusKernel_upper_zero A hA, mul_zero]

/-- The previous kernel envelope becomes a uniform amplitude bound on logarithmic scales. -/
theorem sourceLogKernel_abs_le (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |sourceLogKernel A s| ≤ 8 + 20 / A := by
  have hx : 1 ≤ Real.exp s := Real.one_le_exp_iff.mpr hs
  have h := mul_le_mul_of_nonneg_left (sourceMobiusKernel_abs_le A (Real.exp s) hA hx)
    (Real.exp_pos (s / 2)).le
  have he : Real.exp (s / 2) * ((8 + 20 / A) / Real.sqrt (Real.exp s)) =
      8 + 20 / A := by
    rw [← Real.exp_half]
    field_simp
  rw [he] at h
  simpa only [sourceLogKernel, abs_mul, abs_of_pos (Real.exp_pos (s / 2))] using h

/-- The amplitude bound is independent of every admitted real source scale. -/
theorem sourceLogKernel_abs_le_uniform (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |sourceLogKernel A s| ≤ 28 := by
  have hdiv : 20 / A ≤ 20 := (div_le_iff₀ (by linarith : 0 < A)).2 (by linarith)
  exact (sourceLogKernel_abs_le A s hA hs).trans (by linarith)

/-- The logarithmic profile is exactly the square-root-weighted real kernel. -/
theorem sourceLogKernel_log (A x : ℝ) (hx : 0 < x) :
    sourceLogKernel A (Real.log x) = Real.sqrt x * sourceMobiusKernel A x := by
  simp only [sourceLogKernel, Real.exp_half, Real.exp_log hx]

/-- The Euler derivative retains the cancellation of the original half weight. -/
theorem sourceLogKernel_deriv_log (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    deriv (sourceLogKernel A) (Real.log x) =
      Real.sqrt x * (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) := by
  have hK : DifferentiableAt ℝ (sourceMobiusKernel A) x :=
    ((sourceMobiusKernel_contDiffOn_pos A hA).contDiffAt
      (Ioi_mem_nhds hx)).differentiableAt (by norm_num)
  have hKlog : HasDerivAt (fun s ↦ sourceMobiusKernel A (Real.exp s))
      (deriv (sourceMobiusKernel A) x * x) (Real.log x) := by
    have hK' : HasDerivAt (sourceMobiusKernel A) (deriv (sourceMobiusKernel A) x)
        (Real.exp (Real.log x)) := by simpa only [Real.exp_log hx] using hK.hasDerivAt
    simpa only [Real.exp_log hx, Function.comp_def] using
      hK'.comp (Real.log x) (Real.hasDerivAt_exp (Real.log x))
  have hE : HasDerivAt (fun s : ℝ ↦ Real.exp (s / 2))
      (Real.exp (Real.log x / 2) / 2) (Real.log x) := by
    simpa only [id_eq, div_eq_mul_inv, one_mul] using
      ((hasDerivAt_id (Real.log x)).div_const 2).exp
  have hG := hE.mul hKlog
  change HasDerivAt (sourceLogKernel A) _ _ at hG
  rw [hG.deriv, Real.exp_log hx, Real.exp_half, Real.exp_log hx]
  ring

/-- Differentiation of the weighted source kernel in the real Abel variable. -/
theorem sourceLogKernel_comp_log_hasDerivAt (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    HasDerivAt (fun y ↦ sourceLogKernel A (Real.log y))
      (deriv (sourceLogKernel A) (Real.log x) / x) x := by
  have h := ((sourceLogKernel_contDiff A hA).differentiable
    (by norm_num)).differentiableAt.hasDerivAt (x := Real.log x)
  simpa only [div_eq_mul_inv, Function.comp_def] using h.comp x (Real.hasDerivAt_log hx.ne')

end
end EstimateSourceKernelLogProfile
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
