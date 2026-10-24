# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.06SourceMangoldtColumnQuotient.Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9a43eff4db160a1c8118c908419c49d8ba62786` · SHA-256 `a239883f16fac8b713cd67bc9044f2b91ef81e667327cea8f0bc8725749a0498`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ActualMangoldtColumnEqZeroOfQuotientLt.Variantb0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ActualMangoldtColumnEqZeroOfQuotientLt.Variantb0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"b0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/actual-vaughan-hankel-storage-prerequisite-assessment-20261007T061827Z/source-captures/06-SourceMangoldtColumnQuotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtColumn

/-!
# Literal quotient support of the joint Mangoldt column

Research preparation, UNCOMPILED. The actual two long inventories and centered
coefficient remain fixed. The quotient endpoint is included, and the full
original centered diagonal and independent main term are retained.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ActualMangoldtColumnEqZeroOfQuotientLt.Variantb0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194

namespace FormalResearch.RiemannHypothesis.SourceMangoldtColumnQuotient

open ArithmeticFunction
open scoped InnerProductSpace
open SourceVaughanHankel SourceJointMangoldtColumn
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateBetaCentering

noncomputable section

/-- Each actual column above the product-support quotient vanishes termwise. -/
theorem actual_mangoldt_column_eq_zero_of_quotient_lt (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : sourceKernelCutoff A / (vaughanCutoff A + 1) < k) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) = 0 := by
  classical
  have hprod : sourceKernelCutoff A < k * (vaughanCutoff A + 1) :=
    (Nat.div_lt_iff_lt_mul (by omega : 0 < vaughanCutoff A + 1)).1 hk
  apply Finset.sum_eq_zero
  intro m hm
  have hmlo : vaughanCutoff A + 1 ≤ m := by
    have := (Finset.mem_Ioc.mp hm).1
    omega
  have hmul := Nat.mul_le_mul_left k hmlo
  have hcut : sourceKernelCutoff A < m * k :=
    hprod.trans_le (by simpa only [Nat.mul_comm] using hmul)
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * k) hcut]
  exact mul_zero _

/-- The quotient ceiling is inclusive, including its possible final B(K)R(K). -/
theorem mangoldt_inner_eq_quotient_truncated_column_increments (A : ℝ) (hA : 1 ≤ A) :
    ⟪mangoldtL2 A hA, centeredMobiusReflectedL2 A hA⟫_ℝ =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      ∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1)) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let R : ℕ → ℝ := fun k =>
    ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 0 < N := by omega
  have hK : K < N := Nat.div_lt_self hN (by omega : 1 < U + 1)
  have hsub : Finset.Ioc U K ⊆ Finset.Ico (U + 1) N := by
    intro k hk
    rcases Finset.mem_Ioc.mp hk with ⟨hu, hk⟩
    exact Finset.mem_Ico.mpr ⟨by omega, hk.trans_lt hK⟩
  rw [mangoldt_inner_eq_centered_prefix_column_increments A hA]
  change (∑ k ∈ Finset.Ico (U + 1) N, B k * (R k - R (k + 1))) =
    ∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))
  symm
  apply Finset.sum_subset hsub
  intro k hk hnot
  have hu : U < k := by have := (Finset.mem_Ico.mp hk).1; omega
  have htail : K < k := by
    by_contra hn
    exact hnot (Finset.mem_Ioc.mpr ⟨hu, by omega⟩)
  have hzero : R k = 0 := actual_mangoldt_column_eq_zero_of_quotient_lt A hA k htail
  have hsucc : R (k + 1) = 0 :=
    actual_mangoldt_column_eq_zero_of_quotient_lt A hA (k + 1) (by
      change K < k + 1
      omega)
  rw [hzero, hsucc, sub_self, mul_zero]

/-- The literal covariance remainder retains the complete original compensation. -/
theorem covariance_sub_main_eq_quotient_truncated_column_increments
    (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      (∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))) -
        centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA]
  have hj := mangoldt_inner_eq_quotient_truncated_column_increments A hA
  rw [← sourceHankelPairing_eq_l2_inner A hA] at hj
  exact congrArg (fun J : ℝ =>
    J - centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A) hj

end
end FormalResearch.RiemannHypothesis.SourceMangoldtColumnQuotient
```
