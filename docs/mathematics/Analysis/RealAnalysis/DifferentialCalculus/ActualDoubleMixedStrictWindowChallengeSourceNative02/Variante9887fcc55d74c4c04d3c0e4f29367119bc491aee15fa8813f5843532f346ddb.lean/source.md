# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualDoubleMixedStrictWindowChallengeSourceNative02.Variante9887fcc55d74c4c04d3c0e4f29367119bc491aee15fa8813f5843532f346ddb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6d1ed1548d6b3ddec74337d75c998c856217a39` · SHA-256 `95911c695be0df416af1f3fdb2451c97c31a32f497ce3dc99ff9c0eb3c4e5ae4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMixedRectangleCorrelationLower.Variant3685328e504bf014a43fe92f6008a17992fe55698908f029345517870843ed07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3685328e504bf014a43fe92f6008a17992fe55698908f029345517870843ed07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualMixedRectangleCorrelationLower.Variant3685328e504bf014a43fe92f6008a17992fe55698908f029345517870843ed07","mathematical_subject":"Analysis.Calculus","original_sha256":"3685328e504bf014a43fe92f6008a17992fe55698908f029345517870843ed07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualDoubleMixedStrictWindowChallenge.source-native02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualMixedKernelFirstColumnChallenge
import SourceActualDoubleMixedKernel
import SourceActualStrictWindow

/-!
The unchanged fourth mixed logarithmic kernel is bounded away from zero on a
true strict source rectangle. Its exponential factor is also retained and
bounded below there. This challenges pure curvature-power absorption only;
no sign of the actual arithmetic row, column, work or compensation is inferred.
Research direction: grwtsk contributors. Formal challenge: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMixedRectangleCorrelationLower.Variant3685328e504bf014a43fe92f6008a17992fe55698908f029345517870843ed07

set_option autoImplicit false
namespace RH16IndependentChallengeNext
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFiveCancelledFactorialBudget
open SourceActualDoubleMixedKernel SourceActualStrictWindow
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The actual correlation stays close to its unit trace on the strict rectangle. -/
theorem actualMixed_rectangle_correlation_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (39 / 40 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (t + Real.log u) := by
  have hy := actualMixed_firstColumn_shift_bounds hA ht ht1 hu hu2
  have hy2 : (t + Real.log u) ^ 2 ≤ A ^ 2 / 100 := by nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A) (t + Real.log u)
  have hc1 : |sourceCorrelation explicitSecondDerivative A (t + Real.log u) - 1| ≤
      (1 / 40 : ℝ) := by
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (t + Real.log u) ^ 2 := hc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (A ^ 2 / 100) := by gcongr
      _ = 1 / 40 := by field_simp; ring
  linarith [(abs_le.mp hc1).1]

/-- The complete fourth mixed kernel retains a positive zeroth-order contribution. -/
theorem actualDoubleMixed_firstColumn_kernel_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (1 / 32 : ℝ) ≤ actualLogFourthKernel A (t + Real.log u) := by
  have hc := actualMixed_rectangle_correlation_lower hA ht ht1 hu hu2
  have h2 := RH16FiveCesaro.actualCorrelation_second_abs_le_five
    (by linarith : 91 ≤ A) (t + Real.log u)
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven
    A (t + Real.log u) (by linarith : 91 ≤ A)
  have h21 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A)
      (t + Real.log u)| ≤ (1 / 1600 : ℝ) := by
    simp only [iteratedDeriv_succ, iteratedDeriv_zero]
    calc
      _ ≤ 5 / A ^ 2 := h2
      _ ≤ 5 / 8000 := div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
      _ = 1 / 1600 := by norm_num
  have h41 : |iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A)
      (t + Real.log u)| ≤ (1 / 1600 : ℝ) := by
    calc
      _ ≤ 67 / A ^ 4 := h4
      _ ≤ 67 / 64000000 := div_le_div_of_nonneg_left (by norm_num)
        (by norm_num) (by nlinarith [sq_nonneg (A ^ 2 - 8000)])
      _ ≤ 1 / 1600 := by norm_num
  unfold actualLogFourthKernel
  linarith [(abs_le.mp h21).2, (abs_le.mp h41).1]

/-- The literal exponential factor stays positive and does not supply an A power. -/
theorem actualMixed_rectangle_exp_prefactor_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (1 / 2 : ℝ) ≤ Real.exp (t / 2) * Real.exp (-Real.log u / 2) := by
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hu0 : 0 < u := by push_cast at hu; linarith
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by linarith
  have hup : u ≤ 3 * (vaughanCutoff A : ℝ) := by push_cast at hu2; linarith
  have het : (vaughanCutoff A : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log hU0] using Real.exp_le_exp.mpr ht
  have heq : (Real.exp (t / 2) * Real.exp (-Real.log u / 2)) ^ 2 =
      Real.exp t / u := by
    rw [← Real.exp_add, ← Real.exp_nat_mul]
    have ha : (2 : ℝ) * (t / 2 + -Real.log u / 2) = t - Real.log u := by ring
    norm_num only [Nat.cast_ofNat]
    rw [ha, Real.exp_sub, Real.exp_log hu0]
  have hepos : 0 < Real.exp (t / 2) * Real.exp (-Real.log u / 2) := by positivity
  have he2 : (1 / 4 : ℝ) ≤ Real.exp t / u := by
    apply (le_div_iff₀ hu0).mpr
    linarith
  rw [← heq] at he2
  nlinarith

/-- A genuine second logarithmic mixed derivative is positive on the whole strict rectangle. -/
theorem actualDoubleMixed_rectangle_density_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (1 / 64 : ℝ) ≤
      deriv (fun y => deriv (fun x => actualLogMixedDensity A x y) t) (Real.log u) := by
  rw [actualLogMixedDensity_mixed_derivative A (by linarith : 0 < A)]
  have h := mul_le_mul (actualMixed_rectangle_exp_prefactor_lower hA ht hu hu2)
    (actualDoubleMixed_firstColumn_kernel_lower hA ht ht1 hu hu2)
    (by norm_num : (0 : ℝ) ≤ 1 / 32)
    (by positivity : 0 ≤ Real.exp (t / 2) * Real.exp (-Real.log u / 2))
  norm_num at h ⊢
  exact h

/-- These lower bounds occur inside the unchanged strict source support, below the cutoff. -/
theorem actualDoubleMixed_rectangle_strict_support {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    Real.exp t * u < (sourceKernelCutoff A : ℝ) ∧
      (1 / 64 : ℝ) ≤
        deriv (fun y => deriv (fun x => actualLogMixedDensity A x y) t) (Real.log u) :=
  ⟨actual_strict_real_rectangle hA ⟨ht, ht1⟩ ⟨hu, hu2⟩,
    actualDoubleMixed_rectangle_density_lower hA ht ht1 hu hu2⟩

/-- The actual physical mixed coefficient cannot use the curvature-only five budget here. -/
theorem actualMixed_firstColumn_not_curvature_only {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    ¬ |actualMixedColumnCoefficient A t u| ≤ 5 / A ^ 2 := by
  intro h
  have hb := actualMixed_firstColumn_coefficient_abs_lower hA ht ht1 hu hu2
  have hsmall : (5 : ℝ) / A ^ 2 ≤ 1 / 1600 := by
    calc
      (5 : ℝ) / A ^ 2 ≤ 5 / 8000 := div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
      _ = 1 / 1600 := by norm_num
  linarith

end
end RH16IndependentChallengeNext
```
