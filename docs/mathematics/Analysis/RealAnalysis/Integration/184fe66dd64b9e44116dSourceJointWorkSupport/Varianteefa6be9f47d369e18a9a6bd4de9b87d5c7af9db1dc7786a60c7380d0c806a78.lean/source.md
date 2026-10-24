# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.184fe66dd64b9e44116dSourceJointWorkSupport.Varianteefa6be9f47d369e18a9a6bd4de9b87d5c7af9db1dc7786a60c7380d0c806a78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f09a4cd7934aa15eff66f6065659b363d2131aa` · SHA-256 `9b9960b2f6d81fe2cdf03a2bb5b4960d7691dd4805b0b2faaac372b784b0a830`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualJointSupportUpper.Variant184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualJointSupportUpper.Variant184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4","mathematical_subject":"Analysis.Integration","original_sha256":"184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/184fe66dd64b9e44116d-SourceJointWorkSupport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceConstantOffsetCancellation

/-!
# Exact support window for the original joint Abel work

AI attribution: OpenAI Codex. All cutoffs and signed coefficients are the
original ones. The time derivative fixes A, including at floor discontinuities.
The closed support seam is retained. This gives no uniform signed witness.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualJointSupportUpper.Variant184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointWorkSupport

open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceMangoldtAbel SourceJointMangoldtWork
open SourceConstantOffsetCancellation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel

noncomputable section

/-- The smallest literal strict column determines the positive time support. -/
def actualJointSupportUpper (A : ℝ) : ℝ :=
  2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)

theorem actual_jointTest_zero_of_support_upper_le (A t : ℝ) (hA : 1 ≤ A)
    (ht : actualJointSupportUpper A ≤ t) :
    jointMangoldtTestProfile A t = 0 := by
  classical
  let a := vaughanCutoff A + 1
  have ha : 0 < (a : ℝ) := by dsimp only [a]; positivity
  have hc (k : ℕ) (hk : a ≤ k) :
      sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ)) = 0 := by
    have hlog : Real.log (a : ℝ) ≤ Real.log (k : ℝ) :=
      Real.log_le_log ha (by exact_mod_cast hk)
    apply sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    apply le_trans _ (le_abs_self _)
    change 2 * A - Real.log (a : ℝ) ≤ t at ht
    linarith
  unfold jointMangoldtTestProfile
  apply Finset.sum_eq_zero
  intro k hk
  have hka : a ≤ k := (Finset.mem_Ico.mp hk).1
  dsimp only
  rw [hc k hka, hc (k + 1) (by omega)]
  simp

/-- The derivative is zero at the closed support seam as well as beyond it. -/
theorem actual_jointTest_deriv_zero_of_support_upper_le (A t : ℝ) (hA : 1 ≤ A)
    (ht : actualJointSupportUpper A ≤ t) :
    deriv (jointMangoldtTestProfile A) t = 0 := by
  have hz : ∀ y ∈ Ici t, jointMangoldtTestProfile A y = 0 := by
    intro y hy
    exact actual_jointTest_zero_of_support_upper_le A y hA (ht.trans hy)
  have hd : HasDerivWithinAt (jointMangoldtTestProfile A) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- This support cutoff precedes the original floor-based upper boundary. -/
theorem actualJointSupportUpper_le_log_sourceCutoff (A : ℝ) (hA : 1 ≤ A) :
    actualJointSupportUpper A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : (1 : ℝ) ≤ N := by exact_mod_cast (hU.trans hUN)
  have hN0 : 0 < (N : ℝ) := by linarith
  have ha : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
  have hfloor : Real.exp (2 * A) < (N : ℝ) + 1 := by
    exact Nat.lt_floor_add_one _
  have hprod : Real.exp (2 * A) ≤ (N : ℝ) * ((U + 1 : ℕ) : ℝ) := by
    have hua : (2 : ℝ) ≤ ((U + 1 : ℕ) : ℝ) := by exact_mod_cast (by omega : 2 ≤ U + 1)
    nlinarith
  have hlog := Real.log_le_log (Real.exp_pos _) hprod
  rw [Real.log_exp, Real.log_mul hN0.ne' ha.ne'] at hlog
  change 2 * A - Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (N : ℝ)
  linarith

private theorem shiftedWork_intervalIntegrable (A offset p q : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => (mangoldtLogError t - offset) *
      deriv (jointMangoldtTestProfile A) t) volume p q := by
  have hc := actual_jointTest_contDiff A (by linarith : 0 < A)
  have hd : IntervalIntegrable (deriv (jointMangoldtTestProfile A)) volume p q :=
    hc.continuous_deriv_one.intervalIntegrable p q
  have he : IntervalIntegrable (fun t => mangoldtLogError t *
      deriv (jointMangoldtTestProfile A) t) volume p q := by
    by_cases hpq : p ≤ q
    · exact mangoldtLogError_mul_deriv_intervalIntegrable p q hpq _ hc
    · exact (mangoldtLogError_mul_deriv_intervalIntegrable q p (le_of_not_ge hpq) _ hc).symm
  simpa only [sub_mul] using he.sub (hd.const_mul offset)

/-- The original shifted work equals its shorter support integral, with either orientation. -/
theorem centeredErrorWork_eq_support_integral (A offset : ℝ) (hA : 1 ≤ A) :
    centeredErrorWork A offset =
      ∫ t in Real.log (vaughanCutoff A : ℝ)..actualJointSupportUpper A,
        (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t := by
  let l := Real.log (vaughanCutoff A : ℝ)
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let L := actualJointSupportUpper A
  have hLb : L ≤ b := actualJointSupportUpper_le_log_sourceCutoff A hA
  have hz : (∫ t in L..b, (mangoldtLogError t - offset) *
      deriv (jointMangoldtTestProfile A) t) = 0 := by
    calc
      _ = ∫ _ in L..b, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have hLt : L ≤ t := by simpa only [min_eq_left hLb] using ht.1
        change (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t = 0
        rw [actual_jointTest_deriv_zero_of_support_upper_le A t hA hLt, mul_zero]
      _ = 0 := by simp
  have hi := intervalIntegral.integral_add_adjacent_intervals
    (shiftedWork_intervalIntegrable A offset l L hA)
    (shiftedWork_intervalIntegrable A offset L b hA)
  rw [hz, add_zero] at hi
  exact hi.symm

theorem jointMangoldtErrorWork_eq_support_integral (A : ℝ) (hA : 1 ≤ A) :
    jointMangoldtErrorWork A =
      ∫ t in Real.log (vaughanCutoff A : ℝ)..actualJointSupportUpper A,
        mangoldtLogError t * deriv (jointMangoldtTestProfile A) t := by
  simpa only [centeredErrorWork, sub_zero, jointMangoldtErrorWork] using
    centeredErrorWork_eq_support_integral A 0 hA

/-- If the support is below the retained lower boundary, the actual work is exactly zero. -/
theorem centeredErrorWork_zero_of_support_le_lower (A offset : ℝ) (hA : 1 ≤ A)
    (hL : actualJointSupportUpper A ≤ Real.log (vaughanCutoff A : ℝ)) :
    centeredErrorWork A offset = 0 := by
  rw [centeredErrorWork_eq_support_integral A offset hA]
  calc
    _ = ∫ _ in Real.log (vaughanCutoff A : ℝ)..actualJointSupportUpper A, (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro t ht
      have hLt : actualJointSupportUpper A ≤ t := by
        simpa only [min_eq_right hL] using ht.1
      change (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t = 0
      rw [actual_jointTest_deriv_zero_of_support_upper_le A t hA hLt, mul_zero]
    _ = 0 := by simp

end
end FormalResearch.RiemannHypothesis.SourceJointWorkSupport
```
