# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant5a9ea82220c8e82a5d29ab5aaf18276395a25d8e3f89300b46778c4168610d17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a79d4796f5a6515eedc734b340f6629a82f1319c` · SHA-256 `0205be64ad3a3cca6a8d55a9256c055448f50889a115d69d1f2e37b0faa465b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SumLongPart.Variant467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SumLongPart.Variant467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource

/-!
# Fixed finite inventory for the complete signed Type II source

The long-divisor coefficient is expanded before scale integration. Extra
products are removed only by the existing source-support theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SumLongPart.Variant467e29c4ae524efe96601b58c650eb0cea27e9428367ae4a9d8c69a3c7cf8bcb

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateScaleVaughan

open ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateVaughanSource EstimateVaughanIdentity EstimatePlainKernel
open EstimateSourceMobiusKernel

noncomputable section

private theorem sum_longPart (U N : ℕ) (f : ArithmeticFunction ℝ) (w : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, longPart U f n * w n) = ∑ n ∈ Finset.Ioc U N, f n * w n := by
  classical
  simp_rw [longPart_apply, ite_mul, zero_mul]
  rw [← Finset.sum_filter]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ioc]
  omega

private theorem typeTwo_eq_convolution (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      (longPart (vaughanCutoff A) vonMangoldt *
        (longPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          (zeta : ArithmeticFunction ℝ))) n * sourcePlainWeight A n := by
  rw [finite_convolution_sum _ _ _ _ (sourcePlainWeight_zero_of_cutoff_lt A hA)]
  simp_rw [mul_assoc, ← Finset.mul_sum]
  rw [sum_longPart, typeTwoSource_eq_rectangle A hA]
  apply Finset.sum_congr rfl
  intro m _
  congr 1
  simp_rw [← beta_eq_long_convolution]
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Ioc.mp hn).1; omega,
      (Finset.mem_Ioc.mp hn).2⟩
  · intro n hn hnot
    have hnU : n ≤ vaughanCutoff A := by
      by_contra h
      exact hnot (Finset.mem_Ioc.mpr ⟨by omega, (Finset.mem_Icc.mp hn).2⟩)
    rw [beta_zero_of_le _ _ hnU, zero_mul]

/-- A single fixed triple inventory retains both strict long-factor cutoffs. -/
theorem typeTwoSource_eq_triple (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    (hN : sourceKernelCutoff A ≤ N) :
    typeTwoSource A = ∑ m ∈ Finset.Icc 1 N, ∑ d ∈ Finset.Icc 1 N,
      ∑ k ∈ Finset.Icc 1 N,
        if A^2 < (m:ℝ) ∧ A^2 < (d:ℝ) then
          vonMangoldt m * (moebius d : ℝ) * sourcePlainWeight A ((m*d*k : ℕ) : ℝ)
        else 0 := by
  classical
  have hw : ∀ n, N < n → sourcePlainWeight A n = 0 :=
    fun n hn ↦ sourcePlainWeight_zero_of_cutoff_lt A hA n (hN.trans_lt hn)
  rw [typeTwo_eq_convolution A hA]
  have he : (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      (longPart (vaughanCutoff A) vonMangoldt *
        (longPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          (zeta : ArithmeticFunction ℝ))) n * sourcePlainWeight A n) =
      ∑ n ∈ Finset.Icc 1 N,
      (longPart (vaughanCutoff A) vonMangoldt *
        (longPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          (zeta : ArithmeticFunction ℝ))) n * sourcePlainWeight A n := by
    apply Finset.sum_subset (Finset.Icc_subset_Icc_right hN)
    intro n hn hnot
    have hcut : sourceKernelCutoff A < n := by
      have := Finset.mem_Icc.mp hn
      simp only [Finset.mem_Icc] at hnot
      omega
    rw [sourcePlainWeight_zero_of_cutoff_lt A hA n hcut, mul_zero]
  rw [he, finite_convolution_sum N _ _ _ hw]
  apply Finset.sum_congr rfl
  intro m hm
  simp_rw [mul_assoc, ← Finset.mul_sum]
  rw [finite_convolution_sum N _ _ (fun n ↦ sourcePlainWeight A ((m*n : ℕ) : ℝ))]
  · rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro d _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k hk
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega)]
    simp only [Nat.cast_one, mul_one, longPart_apply, intCoe_apply,
      vaughanCutoff, Nat.floor_lt (sq_nonneg A)]
    split_ifs <;> simp_all
  · intro n hn
    exact hw _ (hn.trans_le (Nat.le_mul_of_pos_left n (Finset.mem_Icc.mp hm).1))

/-- The closed product inventory at a real upper scale contains every earlier source inventory. -/
theorem sourceKernelCutoff_mono {A T : ℝ} (hAT : A ≤ T) :
    sourceKernelCutoff A ≤ sourceKernelCutoff T := by
  apply Nat.floor_mono
  exact Real.exp_le_exp.mpr (by linarith)

end
end EstimateScaleVaughan
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
