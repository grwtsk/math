# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.156a705b42c568f74a02SourceConstantOffsetCancellation.Variant8f564844a447d2103f40c088e71555e5d850af562766a7d3b00e549f6371b6b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb795d728c027304c41bb4160eb7be27eb97896b` · SHA-256 `c919b490233dac2c28c786643fddba01483c75e29e212eb4c223ec03406aa2bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ColumnTest.Variant156a705b42c568f74a02499425baa5e9d9c8d26abefc9546b58df2acdb6a8b04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"156a705b42c568f74a02499425baa5e9d9c8d26abefc9546b58df2acdb6a8b04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ColumnTest.Variant156a705b42c568f74a02499425baa5e9d9c8d26abefc9546b58df2acdb6a8b04","mathematical_subject":"Analysis.Calculus","original_sha256":"156a705b42c568f74a02499425baa5e9d9c8d26abefc9546b58df2acdb6a8b04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/156a705b42c568f74a02-SourceConstantOffsetCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMixedWorkEstimate

/-!
# Actual Abel error: constant offset cancellation

AI attribution: OpenAI Codex. The original error and actual joint test profile
are preserved. A freely chosen real constant changes the lower boundary and
work together; it supplies no uniform signed bound. The original profile C1,
upper support zero and logarithmic bounds are reconstructed from original source
proofs, with public exports for this exact profile.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ColumnTest.Variant156a705b42c568f74a02499425baa5e9d9c8d26abefc9546b58df2acdb6a8b04

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceConstantOffsetCancellation

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourcePairing SourceJointMangoldtWork SourceVaughanHankel
open SourceMangoldtAbel SourceStrictColumnInterior
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel EstimateBetaCentering

noncomputable section

private def columnTest (A : ℝ) (k : ℕ) (t : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt (k : ℝ) *
    sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ))

private def centeredPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n


private theorem columnTest_contDiff (A : ℝ) (hA : 0 < A) (k : ℕ) :
    ContDiff ℝ 1 (columnTest A k) := by
  have hc := (sourceCorrelation_contDiff A hA).comp
    (contDiff_id.add contDiff_const :
      ContDiff ℝ 1 (fun t : ℝ => t + Real.log (k : ℝ)))
  exact (((contDiff_id.div_const 2).exp).div_const _).mul hc

theorem actual_jointTest_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (jointMangoldtTestProfile A) := by
  change ContDiff ℝ 1 (fun t =>
    ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      centeredPrefix A k * (columnTest A k t - columnTest A (k + 1) t))
  apply ContDiff.sum
  intro k _
  exact contDiff_const.mul
    ((columnTest_contDiff A hA k).sub (columnTest_contDiff A hA (k + 1)))

private theorem columnTest_at_natural (A : ℝ) (m k : ℕ)
    (hm : 0 < m) (hk : 0 < k) :
    columnTest A k (Real.log (m : ℝ)) / (m : ℝ) =
      sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast hm
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast hk
  unfold columnTest sourcePlainWeight
  rw [Real.exp_half, Real.exp_log hm0, Nat.cast_mul,
    Real.log_mul hm0.ne' hk0.ne', Real.sqrt_mul hm0.le]
  calc
    Real.sqrt (m : ℝ) / Real.sqrt (k : ℝ) *
        sourceCorrelation explicitSecondDerivative A
          (Real.log (m : ℝ) + Real.log (k : ℝ)) / (m : ℝ) =
      (Real.sqrt (m : ℝ) / (m : ℝ)) *
        sourceCorrelation explicitSecondDerivative A
          (Real.log (m : ℝ) + Real.log (k : ℝ)) / Real.sqrt (k : ℝ) := by ring
    _ = _ := by rw [Real.sqrt_div_self]; ring


private theorem columnTest_at_upper_zero (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : 2 ≤ k) :
    columnTest A k (Real.log (sourceKernelCutoff A : ℝ)) = 0 := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  have hcut : sourceKernelCutoff A < sourceKernelCutoff A * k := by nlinarith
  have hw := sourcePlainWeight_zero_of_cutoff_lt A hA
    (sourceKernelCutoff A * k) hcut
  have ht := columnTest_at_natural A (sourceKernelCutoff A) k (by omega) (by omega)
  rw [hw] at ht
  have hN0 : (sourceKernelCutoff A : ℝ) ≠ 0 := by
    exact_mod_cast (by omega : sourceKernelCutoff A ≠ 0)
  have he := (div_eq_iff hN0).mp ht
  simpa using he

theorem actual_jointTest_at_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    jointMangoldtTestProfile A (Real.log (sourceKernelCutoff A : ℝ)) = 0 := by
  classical
  change (∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      centeredPrefix A k *
        (columnTest A k (Real.log (sourceKernelCutoff A : ℝ)) -
          columnTest A (k + 1) (Real.log (sourceKernelCutoff A : ℝ)))) = 0
  apply Finset.sum_eq_zero
  intro k hk
  have hkm := (Finset.mem_Ico.mp hk).1
  have hU := vaughanCutoff_pos A hA
  rw [columnTest_at_upper_zero A hA k (by omega),
    columnTest_at_upper_zero A hA (k + 1) (by omega), sub_self, mul_zero]

theorem actual_log_cutoff_bounds (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ Real.log (vaughanCutoff A : ℝ) ∧
      Real.log (vaughanCutoff A : ℝ) ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast (by omega : 0 < vaughanCutoff A)
  have hUr : (1 : ℝ) ≤ vaughanCutoff A := by exact_mod_cast hU
  have hUNr : (vaughanCutoff A : ℝ) ≤ sourceKernelCutoff A := by exact_mod_cast hUN
  exact ⟨Real.log_nonneg hUr, Real.log_le_log hU0 hUNr⟩


/-- The original arithmetic error shifted by an arbitrary fixed constant. -/
def centeredErrorExpMass (A offset : ℝ) : ℝ :=
  ∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    |mangoldtLogError t - offset| * Real.exp (t / 2)

/-- Actual shifted error work uses the unchanged source derivative and cutoff window. -/
def centeredErrorWork (A offset : ℝ) : ℝ :=
  ∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t

/-- The entire derivative window equals its retained negative lower boundary. -/
theorem actual_jointTest_derivative_window (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
      deriv (jointMangoldtTestProfile A) t) =
        -jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) := by
  have hc := actual_jointTest_contDiff A (by linarith : 0 < A)
  have hi : IntervalIntegrable (deriv (jointMangoldtTestProfile A)) volume
      (Real.log (vaughanCutoff A : ℝ)) (Real.log (sourceKernelCutoff A : ℝ)) :=
    hc.continuous_deriv_one.intervalIntegrable _ _
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hc.differentiable (by norm_num) t).hasDerivAt) hi
  rw [actual_jointTest_at_upper_zero A hA, zero_sub] at h
  exact h

/-- The shifted work retains the exact constant times the original lower source value. -/
theorem centeredErrorWork_eq_original_add_lower (A offset : ℝ) (hA : 1 ≤ A) :
    centeredErrorWork A offset = jointMangoldtErrorWork A +
      offset * jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) := by
  have hc := actual_jointTest_contDiff A (by linarith : 0 < A)
  have hie := mangoldtLogError_mul_deriv_intervalIntegrable _ _
    (actual_log_cutoff_bounds A hA).2 _ hc
  have hid : IntervalIntegrable (deriv (jointMangoldtTestProfile A)) volume
      (Real.log (vaughanCutoff A : ℝ)) (Real.log (sourceKernelCutoff A : ℝ)) :=
    hc.continuous_deriv_one.intervalIntegrable _ _
  unfold centeredErrorWork jointMangoldtErrorWork
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub hie (hid.const_mul offset),
    intervalIntegral.integral_const_mul, actual_jointTest_derivative_window A hA]
  ring

/-- Original compensation is invariant under a joint constant shift of error and boundary. -/
theorem original_compensation_eq_constant_offset (A offset : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
      jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A =
    (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
      jointMangoldtTestProfile A t) -
      (mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) - offset) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      centeredErrorWork A offset - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  rw [centeredErrorWork_eq_original_add_lower A offset hA]
  ring

/-- Choosing the actual lower error anchors the work and cancels that boundary exactly. -/
theorem strictColumnInterior_eq_lower_anchored_error_work (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      centeredErrorWork A (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) -
      centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
  rw [strictColumnInterior_eq_joint_mangoldt_error_work A hA,
    original_compensation_eq_constant_offset A
      (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) hA]
  simp only [sub_self, zero_mul, sub_zero]

end
end FormalResearch.RiemannHypothesis.SourceConstantOffsetCancellation
```
