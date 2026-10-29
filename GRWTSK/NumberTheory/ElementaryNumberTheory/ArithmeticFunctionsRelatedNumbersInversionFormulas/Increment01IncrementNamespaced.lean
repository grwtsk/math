-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortInventorySucc.Variantb53221a8ab64dcb6f693c842732ed42362eb8c57b85d4291b699a6155bdb0450","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b53221a8ab64dcb6f693c842732ed42362eb8c57b85d4291b699a6155bdb0450","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ShortInventorySucc.Variantb53221a8ab64dcb6f693c842732ed42362eb8c57b85d4291b699a6155bdb0450","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b53221a8ab64dcb6f693c842732ed42362eb8c57b85d4291b699a6155bdb0450","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-divisor-refinement/flux/increment-01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankel

/-!
# Exact adjacent cutoff balance at fixed source scale

The cutoff is a finite classification parameter. This module keeps the unchanged
source, both long axes, the centered deleted diagonal and all independent
counterterms in the same signed adjacent balance. A cutoff change at fixed A is
not a derivative in A and supplies no uniform signed upper bound.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortInventorySucc.Variantb53221a8ab64dcb6f693c842732ed42362eb8c57b85d4291b699a6155bdb0450

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCutoffFlux

open ArithmeticFunction SourcePairing SourceVaughanHankel SourceSamplingLedger
open SourceShortSamplingInventory SourceSamplingPointwise SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering EstimateVaughanSource
open EstimatePlainKernel EstimateBetaSourceRecombination EstimateVaughanTranslationGate

noncomputable section

/-- The adjacent closed short inventory adds precisely U+1. -/
theorem shortInventory_succ (U : ℕ) :
    Finset.Icc 1 (U + 1) = insert (U + 1) (Finset.Icc 1 U) := by
  ext d
  simp only [Finset.mem_Icc, Finset.mem_insert]
  omega

/-- The finite mean changes by the actual new Möbius coefficient. -/
theorem alpha_succ (U : ℕ) :
    alpha (U + 1) = alpha U + (moebius (U + 1) : ℝ) / (U + 1 : ℕ) := by
  classical
  have hn : U + 1 ∉ Finset.Icc 1 U := by simp
  simp only [alpha, shortInventory_succ, Finset.sum_insert hn]
  ring

/-- Positive row indices retain the exact divisibility update. -/
theorem beta_succ (U n : ℕ) (hn : 0 < n) :
    beta (U + 1) n = beta U n -
      (if U + 1 ∣ n then (moebius (U + 1) : ℝ) else 0) := by
  classical
  have hnew : U + 1 ∉ Finset.Icc 1 U := by simp
  rw [beta_eq_delta_sub_short, beta_eq_delta_sub_short,
    short_divisor_sum_eq_indicator _ _ hn, short_divisor_sum_eq_indicator _ _ hn,
    shortInventory_succ, Finset.sum_insert hnew]
  ring

/-- The centered row keeps the reciprocal mean and signed multiples atom together. -/
theorem centeredBeta_succ (U n : ℕ) (hn : 0 < n) :
    centeredBeta (U + 1) n = centeredBeta U n +
      (moebius (U + 1) : ℝ) *
        (1 / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0) := by
  rw [centeredBeta, centeredBeta, beta_succ U n hn, alpha_succ]
  split_ifs <;> ring

/-- Adjacent long-axis deletion removes precisely U+1, when it lies in the old axis. -/
theorem longInventory_succ (U N : ℕ) (h : U < N) :
    Finset.Ioc U N = insert (U + 1) (Finset.Ioc (U + 1) N) := by
  ext n
  simp only [Finset.mem_Ioc, Finset.mem_insert]
  omega

/-- A finite rectangle with its signed row retained. -/
def rectangle (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) : ℝ :=
  ∑ m ∈ S, ∑ n ∈ S, K m n * b n

/-- Equality-of-indices deletion on the same finite rectangle. -/
def diagonal (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) : ℝ :=
  ∑ m ∈ S, K m m * b m

/-- The complementary joint interaction is signed rectangle minus its literal diagonal. -/
def offDiagonal (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) : ℝ :=
  rectangle S K b - diagonal S K b

/-- The deleted first-axis row, with the removed corner omitted. -/
def rowBoundary (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ S, K k n * b n

/-- The deleted second-axis column, with the removed corner omitted. -/
def columnBoundary (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ) (k : ℕ) : ℝ :=
  ∑ m ∈ S, K m k * b k

theorem rectangle_insert (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (k : ℕ) (hk : k ∉ S) :
    rectangle (insert k S) K b = rectangle S K b + rowBoundary S K b k +
      columnBoundary S K b k + K k k * b k := by
  classical
  simp only [rectangle, rowBoundary, columnBoundary, Finset.sum_insert hk]
  simp only [Finset.sum_add_distrib]
  ring

theorem diagonal_insert (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (k : ℕ) (hk : k ∉ S) :
    diagonal (insert k S) K b = diagonal S K b + K k k * b k := by
  classical
  simp only [diagonal, Finset.sum_insert hk]
  ring

/-- Both axes are removed, while the common corner cancels with diagonal deletion. -/
theorem offDiagonal_insert (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (k : ℕ) (hk : k ∉ S) :
    offDiagonal (insert k S) K b = offDiagonal S K b + rowBoundary S K b k +
      columnBoundary S K b k := by
  rw [offDiagonal, rectangle_insert S K b k hk, diagonal_insert S K b k hk]
  unfold offDiagonal
  ring

theorem rectangle_row_add (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ) :
    rectangle S K (fun n ↦ b n + c n) = rectangle S K b + rectangle S K c := by
  simp only [rectangle, mul_add, Finset.sum_add_distrib]

theorem diagonal_row_add (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ) :
    diagonal S K (fun n ↦ b n + c n) = diagonal S K b + diagonal S K c := by
  simp only [diagonal, mul_add, Finset.sum_add_distrib]

theorem offDiagonal_row_add (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (b c : ℕ → ℝ) :
    offDiagonal S K (fun n ↦ b n + c n) = offDiagonal S K b + offDiagonal S K c := by
  simp only [offDiagonal, rectangle_row_add, diagonal_row_add]
  ring

theorem rectangle_row_smul (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (a : ℝ) (b : ℕ → ℝ) :
    rectangle S K (fun n ↦ a * b n) = a * rectangle S K b := by
  simp only [rectangle, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  ring

theorem diagonal_row_smul (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (a : ℝ) (b : ℕ → ℝ) :
    diagonal S K (fun n ↦ a * b n) = a * diagonal S K b := by
  simp only [diagonal, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  ring

theorem offDiagonal_row_smul (S : Finset ℕ) (K : ℕ → ℕ → ℝ) (a : ℝ) (b : ℕ → ℝ) :
    offDiagonal S K (fun n ↦ a * b n) = a * offDiagonal S K b := by
  simp only [offDiagonal, rectangle_row_smul, diagonal_row_smul]
  ring

end
end FormalResearch.RiemannHypothesis.SourceCutoffFlux
