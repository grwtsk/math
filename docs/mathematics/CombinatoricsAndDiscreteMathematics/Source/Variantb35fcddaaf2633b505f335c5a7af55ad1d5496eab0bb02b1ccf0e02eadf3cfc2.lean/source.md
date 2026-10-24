# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Source.Variantb35fcddaaf2633b505f335c5a7af55ad1d5496eab0bb02b1ccf0e02eadf3cfc2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eab43d02eed33041e538ff80892fa7bf865a93a3` · SHA-256 `edc700f7a309f96309de0fc5e95cf97ecbe5904aa15ae472c72585fd8a8e89ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualLargePrimeFirstDiagonal.Variant3217f15cd0d15fbeadd42042f9469fec99224a8995382343032ce6a4ac303ffa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3217f15cd0d15fbeadd42042f9469fec99224a8995382343032ce6a4ac303ffa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualLargePrimeFirstDiagonal.Variant3217f15cd0d15fbeadd42042f9469fec99224a8995382343032ce6a4ac303ffa","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3217f15cd0d15fbeadd42042f9469fec99224a8995382343032ce6a4ac303ffa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-prime-mean/author-evidence/prime-mean-attempt01/source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAlphaBalance
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm

/-!
Literal centered first-prime physical diagonal: unchanged source cutoffs,
signed source main and a fixed doubled inherited prime error.
Direction and conceptual origin: grwtsk contributors.
Source adaptation and native construction: OpenAI Codex assistance.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualLargePrimeFirstDiagonal.Variant3217f15cd0d15fbeadd42042f9469fec99224a8995382343032ce6a4ac303ffa

set_option autoImplicit false
noncomputable section
namespace RH16PrimeMeanMain
open scoped BigOperators
open RH16AlphaBalance
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateBetaCentering EstimateVaughanSource
open EstimateSourceMobiusKernel EstimateMertensAbel

def actualLargePrimeFirstDiagonal (A : ℝ) : ℝ :=
  (alpha (vaughanCutoff A) - 1) *
    ∑ p ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * sourceCorrelation explicitSecondDerivative A
        (2 * Real.log (p : ℝ))

def actualMeanLinearMain (A : ℝ) : ℝ :=
  (alpha (vaughanCutoff A) - 1) *
    (diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ))

theorem actual_first_diagonal_eq_retained (A : ℝ) (hA : 1 ≤ A) :
    actualLargePrimeFirstDiagonal A =
      -(alpha (vaughanCutoff A) - 1) * retainedPrimeDiagonal A := by
  classical
  have hA0 : 0 < A := by linarith
  have hupper : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith))
  have hsub : (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    rcases Finset.mem_Ioc.mp hi with ⟨hlo, hhi⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hlo, hhi.trans hupper⟩, hprime⟩
  have hz (p : ℕ)
      (hp : p ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime)
      (hn : p ∉ (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime) :
      Real.log (p : ℝ) / (p : ℝ) * sourceCorrelation explicitSecondDerivative A
        (2 * Real.log (p : ℝ)) = 0 := by
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    have hpgt : ⌊Real.exp A⌋₊ < p := by
      have hlo := (Finset.mem_Ioc.mp hi).1
      by_contra h
      exact hn (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hlo, by omega⟩, hprime⟩)
    have hexp : Real.exp A < (p : ℝ) := (Nat.floor_lt (Real.exp_nonneg A)).mp hpgt
    have hplog : A < Real.log (p : ℝ) := by
      rw [← Real.log_exp A]
      exact Real.log_lt_log (Real.exp_pos A) hexp
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log (p : ℝ)) hA0
      (by rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]; linarith), mul_zero]
  have hs := Finset.sum_subset hsub hz
  unfold actualLargePrimeFirstDiagonal retainedPrimeDiagonal
  rw [← hs]
  unfold vaughanCutoff diagonalCorrelation
  ring

theorem actual_first_diagonal_fixed_main_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |actualLargePrimeFirstDiagonal A - actualMeanLinearMain A| ≤ 2 * C := by
  obtain ⟨C, hC, hbound⟩ := retainedPrimeDiagonal_main_term_error
  refine ⟨C, hC, ?_⟩
  intro A hA
  have ha := (actual_alpha_minus_one_bounds (vaughanCutoff A) (vaughanCutoff_pos A hA)).2.2
  have he := hbound A hA
  rw [actual_first_diagonal_eq_retained A hA]
  unfold actualMeanLinearMain
  have hid : -(alpha (vaughanCutoff A) - 1) * retainedPrimeDiagonal A -
      (alpha (vaughanCutoff A) - 1) *
        (diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ)) =
      -(alpha (vaughanCutoff A) - 1) *
        (retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
          Real.log (vaughanCutoff A : ℝ)) := by ring
  rw [hid, abs_mul, abs_neg]
  change |alpha (vaughanCutoff A) - 1| *
    |retainedPrimeDiagonal A + diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ)| ≤ _
  change |retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
    Real.log (vaughanCutoff A : ℝ)| ≤ C at he
  exact mul_le_mul ha he (abs_nonneg _) (by norm_num)

end RH16PrimeMeanMain
```
