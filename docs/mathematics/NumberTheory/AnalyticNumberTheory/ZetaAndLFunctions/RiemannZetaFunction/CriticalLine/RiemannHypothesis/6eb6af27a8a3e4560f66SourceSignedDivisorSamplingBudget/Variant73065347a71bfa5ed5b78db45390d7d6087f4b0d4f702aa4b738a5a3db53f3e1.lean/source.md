# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget.Variant73065347a71bfa5ed5b78db45390d7d6087f4b0d4f702aa4b738a5a3db53f3e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29ad78d12d1c39ba08f1ba15dc1e613cce45e007` · SHA-256 `91915e5977d61d6ca3191e32472397278fd954e506ae950d5ae8705ddcc08496`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualQuotientSamplingError.Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualQuotientSamplingError.Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/6eb6af27a8a3e4560f66-SourceSignedDivisorSamplingBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceDivisorQuotientRemainder

/-!
# Actual signed divisor sampling error with original rows retained

AI attribution: OpenAI Codex. The sampling error is defined from the literal
quotient samples, their independent plain source main, and their actual short
multiples. The full divisor remainder keeps its long main row, short multiples,
original divisible diagonal, log main and short plain main before estimation.
The global baseline and independent main are preserved. No uniform bound is supplied.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualQuotientSamplingError.Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSignedDivisorSamplingBudget

open ArithmeticFunction
open scoped BigOperators
open SourceVaughanHankel SourceDivisorCounterterms SourceDivisorQuotientSampling
open SourceDivisorQuotientRemainder SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel EstimateMertensAbel

noncomputable section

/-- Independently sampled error in the actual long quotient row with its short prefix retained. -/
def actualQuotientSamplingError (A : ℝ) (d m : ℕ) : ℝ :=
  (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
    sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
  (sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) -
    ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))

/-- Actual original arithmetic coefficients multiply the errors before any absolute estimate. -/
def actualSignedQuotientSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
    (∑ m ∈ longInventory A, vonMangoldt m * actualQuotientSamplingError A d m)

/-- The original divisor remainder retains all independently specified rows and diagonal. -/
theorem divisorRemainder_eq_original_sampling_rows (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorRemainder A d =
      -(∑ m ∈ longInventory A,
        vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) +
      (∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
      (∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
      sourceLogSamplingMainTerm A d -
      (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) -
      ∑ m ∈ longInventory A, vonMangoldt m * actualQuotientSamplingError A d m := by
  rw [divisorRemainder_eq_quotient_sampling A d hd]
  simp only [actualQuotientSamplingError, mul_sub, Finset.sum_sub_distrib]
  ring

/-- Global reconstruction changes no baseline or compensation and keeps the signed error intact. -/
theorem jointSignedRemainder_eq_original_sampling_rows (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (-(∑ m ∈ longInventory A,
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) +
        (∑ m ∈ longInventory A, vonMangoldt m *
          (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
            sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
        (∑ m ∈ longInventory A,
          if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
        sourceLogSamplingMainTerm A d -
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) -
      actualSignedQuotientSamplingError A := by
  rw [jointSignedRemainder_eq_divisor_remainders A hA]
  unfold actualSignedQuotientSamplingError
  rw [add_sub_assoc, ← Finset.sum_sub_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro d hd
  rw [divisorRemainder_eq_original_sampling_rows A d (by
    have := (Finset.mem_Icc.mp hd).1; omega)]
  ring

/-- The actual signed error is bounded after both original arithmetic rows are formed. -/
theorem actualSignedQuotientSamplingError_abs_le_weighted_budget (A : ℝ) (hA : 1 ≤ A) :
    |actualSignedQuotientSamplingError A| ≤
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| *
        (∑ m ∈ longInventory A, vonMangoldt m *
          (16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)))) := by
  unfold actualSignedQuotientSamplingError
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * (∑ m ∈ longInventory A,
          vonMangoldt m * actualQuotientSamplingError A d m)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
      calc
        _ ≤ ∑ m ∈ longInventory A, |vonMangoldt m * actualQuotientSamplingError A d m| :=
          Finset.abs_sum_le_sum_abs _ _
        _ ≤ _ := by
          apply Finset.sum_le_sum
          intro m hm
          rw [abs_mul, abs_of_nonneg vonMangoldt_nonneg]
          apply mul_le_mul_of_nonneg_left _ vonMangoldt_nonneg
          exact quotient_sample_sub_main_minus_short_abs_le A hA m d
            (longInventory_pos A hm) (by have := (Finset.mem_Icc.mp hd).1; omega)

end
end FormalResearch.RiemannHypothesis.SourceSignedDivisorSamplingBudget
```
