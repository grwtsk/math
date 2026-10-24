# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceJointMangoldtWork.Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d4e2b0260225c3ab16efa8c2cc679e9df63e555` · SHA-256 `472898786a87b2eca945a40adf3961b114d3a566a298f93457f942abf4f8ba0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ColumnTest.Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ColumnTest.Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665","mathematical_subject":"Analysis.Calculus","original_sha256":"021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-joint-mangoldt-work-v1/SourceJointMangoldtWork.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceStrictColumnInterior
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
# The literal joint Mangoldt work of the strict column interior

Private proof-text preparation only: UNCOMPILED. The private33 prerequisite has
an author packet and awaits its independent gate. Every strict column coefficient
is fixed before the arithmetic Abel identity is applied. The continuous integral,
lower boundary, full centered diagonal and independently defined main term remain
explicit. No signed work bound, positivity or tail witness is supplied.

AI attribution: prepared with OpenAI Codex; native34 verification is pending.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ColumnTest.Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointMangoldtWork

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourceVaughanHankel SourceStrictColumnInterior SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel EstimateBetaCentering

noncomputable section

private def columnTest (A : ℝ) (k : ℕ) (t : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt (k : ℝ) *
    sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ))

private def centeredPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n

private def column (A : ℝ) (k : ℕ) : ℝ :=
  ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)

/-- The actual combined test, independently built from the original finite signed prefix. -/
def jointMangoldtTestProfile (A t : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let F : ℕ → ℝ → ℝ := fun k s =>
    Real.exp (s / 2) / Real.sqrt (k : ℝ) *
      sourceCorrelation explicitSecondDerivative A (s + Real.log (k : ℝ))
  ∑ k ∈ Finset.Ico (U + 1) K, B k * (F k t - F (k + 1) t)

/-- The original Mangoldt error works against the derivative of that independently fixed test. -/
def jointMangoldtErrorWork (A : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
    mangoldtLogError t * deriv (jointMangoldtTestProfile A) t

private theorem columnTest_contDiff (A : ℝ) (hA : 0 < A) (k : ℕ) :
    ContDiff ℝ 1 (columnTest A k) := by
  have hc := (sourceCorrelation_contDiff A hA).comp
    (contDiff_id.add contDiff_const :
      ContDiff ℝ 1 (fun t : ℝ => t + Real.log (k : ℝ)))
  exact (((contDiff_id.div_const 2).exp).div_const _).mul hc

private theorem jointTest_contDiff (A : ℝ) (hA : 0 < A) :
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

private theorem weighted_columnTest_at_natural (A : ℝ) (m k : ℕ)
    (hm : 0 < m) (hk : 0 < k) :
    vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  rw [show vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
    vonMangoldt m * (columnTest A k (Real.log (m : ℝ)) / (m : ℝ)) by ring,
    columnTest_at_natural A m k hm hk]

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

private theorem jointTest_at_upper_zero (A : ℝ) (hA : 1 ≤ A) :
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

private theorem log_cutoff_bounds (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ Real.log (vaughanCutoff A : ℝ) ∧
      Real.log (vaughanCutoff A : ℝ) ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast (by omega : 0 < vaughanCutoff A)
  have hUr : (1 : ℝ) ≤ vaughanCutoff A := by exact_mod_cast hU
  have hUNr : (vaughanCutoff A : ℝ) ≤ sourceKernelCutoff A := by exact_mod_cast hUN
  exact ⟨Real.log_nonneg hUr, Real.log_le_log hU0 hUNr⟩

private theorem jointWindow_eq_strict_column_sum (A : ℝ) (hA : 1 ≤ A) :
    mangoldtLogWindow (Real.log (vaughanCutoff A : ℝ))
        (Real.log (sourceKernelCutoff A : ℝ)) (jointMangoldtTestProfile A) =
      ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
        (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        centeredPrefix A k * (column A k - column A (k + 1)) := by
  classical
  rcases log_cutoff_bounds A hA with ⟨hl, hlb⟩
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast (by omega : 0 < vaughanCutoff A)
  have hN0 : 0 < (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (by omega : 0 < sourceKernelCutoff A)
  rw [mangoldtLogWindow_eq_interval_sum _ _ hl hlb,
    Real.exp_log hU0, Real.exp_log hN0]
  simp only [Nat.floor_natCast]
  change (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ) *
      (∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
        (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        centeredPrefix A k *
          (columnTest A k (Real.log (m : ℝ)) -
            columnTest A (k + 1) (Real.log (m : ℝ))))) = _
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k hk
  have hk0 : 0 < k := by have := (Finset.mem_Ico.mp hk).1; omega
  change (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ) *
      (centeredPrefix A k *
        (columnTest A k (Real.log (m : ℝ)) -
          columnTest A (k + 1) (Real.log (m : ℝ))))) =
    centeredPrefix A k *
      ((∑ m ∈ longInventory A,
        vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) -
        (∑ m ∈ longInventory A,
          vonMangoldt m * sourcePlainWeight A ((m * (k + 1) : ℕ) : ℝ)))
  rw [← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  have hm0 : 0 < m := by have := (Finset.mem_Ioc.mp hm).1; omega
  rw [show vonMangoldt m / (m : ℝ) *
      (centeredPrefix A k *
        (columnTest A k (Real.log (m : ℝ)) -
          columnTest A (k + 1) (Real.log (m : ℝ)))) =
    centeredPrefix A k *
      (vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) -
        vonMangoldt m / (m : ℝ) * columnTest A (k + 1) (Real.log (m : ℝ))) by ring]
  rw [weighted_columnTest_at_natural A m k hm0 hk0,
    weighted_columnTest_at_natural A m (k + 1) hm0 (by omega)]

private theorem jointWork_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable
      (fun t => mangoldtLogError t * deriv (jointMangoldtTestProfile A) t) volume
      (Real.log (vaughanCutoff A : ℝ)) (Real.log (sourceKernelCutoff A : ℝ)) := by
  exact mangoldtLogError_mul_deriv_intervalIntegrable _ _
    (log_cutoff_bounds A hA).2 _ (jointTest_contDiff A (by linarith))

/-- Exact finite signed work; only the actual upper support boundary has been removed. -/
theorem strictColumnInterior_eq_joint_mangoldt_error_work (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  classical
  rcases log_cutoff_bounds A hA with ⟨hl, hlb⟩
  have hw := mangoldtLogWindow_sub_integral _ _ hl hlb
    (jointMangoldtTestProfile A) (jointTest_contDiff A (by linarith))
  rw [jointTest_at_upper_zero A hA, zero_mul] at hw
  have hi : strictColumnInterior A =
      mangoldtLogWindow (Real.log (vaughanCutoff A : ℝ))
        (Real.log (sourceKernelCutoff A : ℝ)) (jointMangoldtTestProfile A) -
      centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
    rw [jointWindow_eq_strict_column_sum A hA]
    rfl
  rw [hi]
  dsimp only [jointMangoldtErrorWork]
  linarith

end
end FormalResearch.RiemannHypothesis.SourceJointMangoldtWork
```
