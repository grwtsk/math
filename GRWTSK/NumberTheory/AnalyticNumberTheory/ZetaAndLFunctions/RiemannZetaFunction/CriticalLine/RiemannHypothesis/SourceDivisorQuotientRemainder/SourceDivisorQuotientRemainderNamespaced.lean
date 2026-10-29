-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.QuotientSampleEqFullSubShort.Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.QuotientSampleEqFullSubShort.Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/2c9f867972402a405a0c-SourceDivisorQuotientRemainder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceDivisorQuotientSampling

/-!
# Actual divisor quotient remainder after its retained short prefix

AI attribution: OpenAI Codex. The quotient endpoints are the literal natural
divisions in the original long inventory. Only actual source-support zeros
extend the upper sample. The independent source main and retained finite short
multiples are subtracted together before the proved second-order error bound.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.QuotientSampleEqFullSubShort.Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDivisorQuotientRemainder

open scoped BigOperators
open SourceDivisorQuotientSampling SourceVaughanHankel
open SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel

/-- The literal quotient row equals the complete actual sample minus its short multiples. -/
theorem quotient_sample_eq_full_sub_short
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) =
    (∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
    ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let f : ℕ → ℝ := fun j => sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)
  have hab : U / d ≤ N / d := Nat.div_le_div_right (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hs : (∑ j ∈ Finset.Icc 1 N, f j) = ∑ j ∈ Finset.Icc 1 (N / d), f j := by
    symm
    apply Finset.sum_subset
    · intro j hj
      have hb := (Finset.mem_Icc.mp hj).2
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hj).1, hb.trans (Nat.div_le_self _ _)⟩
    · intro j hj hjn
      have hgt : N / d < j := by
        have hlow := (Finset.mem_Icc.mp hj).1
        simp only [Finset.mem_Icc, not_and] at hjn
        exact lt_of_not_ge (hjn hlow)
      have hjN : N < d * j := by
        simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hd).mp hgt
      have hcut : N < m * (d * j) := by
        have hmul := Nat.mul_le_mul_right (d * j) (show 1 ≤ m by omega)
        have hmul' : d * j ≤ m * (d * j) := by simpa only [one_mul] using hmul
        exact hjN.trans_le hmul'
      exact sourcePlainWeight_zero_of_cutoff_lt A hA _ hcut
  have hdj : Disjoint (Finset.Icc 1 (U / d)) (Finset.Icc (U / d + 1) (N / d)) := by
    apply Finset.disjoint_left.mpr
    intro j hj hj'
    have h1 := (Finset.mem_Icc.mp hj).2
    have h2 := (Finset.mem_Icc.mp hj').1
    omega
  have hu : Finset.Icc 1 (U / d) ∪ Finset.Icc (U / d + 1) (N / d) =
      Finset.Icc 1 (N / d) := by
    have hua : 0 ≤ U / d := Nat.zero_le _
    ext j
    simp only [Finset.mem_union, Finset.mem_Icc]
    omega
  have hp := Finset.sum_union (f := f) hdj
  rw [hu] at hp
  change (∑ j ∈ Finset.Icc (U / d + 1) (N / d), f j) =
    (∑ j ∈ Finset.Icc 1 N, f j) - ∑ j ∈ Finset.Icc 1 (U / d), f j
  rw [hs]
  linarith

/-- The actual quotient remainder preserves the source main and short prefix at their signs. -/
theorem quotient_sample_sub_main_minus_short_abs_le
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    |(∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
        sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
      (sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) -
        ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)) := by
  rw [quotient_sample_eq_full_sub_short A hA m d hm hd]
  convert actual_full_multiple_sample_sub_main_abs_le A hA m d hm hd using 1
  congr 1
  ring

end FormalResearch.RiemannHypothesis.SourceDivisorQuotientRemainder
