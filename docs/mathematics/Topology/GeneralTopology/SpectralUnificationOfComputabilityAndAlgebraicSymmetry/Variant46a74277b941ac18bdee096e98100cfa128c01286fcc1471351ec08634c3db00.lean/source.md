# Complete source: GRWTSK.Topology.GeneralTopology.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af553f689bf64423082d3c47bed3dcb1c5155b5d` · SHA-256 `59ef9e49289f4aa1df4b4191ab99bb162335fa65d848a8a0e6389f30277ee149`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.BlockLower.Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.BlockLower.Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845","mathematical_subject":"Topology.GeneralTopology","original_sha256":"02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedBetaAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaSourceRecombination

/-! # Exact source inventory specialization of the finite centered-beta Abel formula -/


namespace GRWTSK.Topology.GeneralTopology.BlockLower.Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedBetaInventory

open ArithmeticFunction
open EstimateWeightedBetaKernel EstimateWeightedBetaAbel EstimateBetaSourceRecombination
open EstimateBetaCentering EstimateTypeTwoLogBlocks EstimateVaughanSource
open EstimateSourceMobiusKernel EstimatePlainKernel EstimateMertensResidual

noncomputable section

/-- Lower anchor of the actual closed unit logarithmic inventory. -/
def blockLower (A : ℝ) (j : ℕ) : ℕ :=
  max (vaughanCutoff A) (⌈Real.exp (j : ℝ)⌉₊-1)

/-- Closed product cutoff and strict upper logarithmic bin, clamped for empty intervals. -/
def blockUpper (A : ℝ) (m j : ℕ) : ℕ :=
  max (blockLower A j) (min (sourceKernelCutoff A/m) (⌈Real.exp ((j : ℝ)+1)⌉₊-1))

/-- Exact left endpoint piece when deleting the centered diagonal. -/
def leftUpper (L H m : ℕ) : ℕ := max L (min H (m-1))

/-- Exact right endpoint piece when deleting the centered diagonal. -/
def rightLower (L H m : ℕ) : ℕ := max L (min H m)

/-- Actual inner long bin, closed product restriction, and unequal indices. -/
def innerInventory (A : ℝ) (m j : ℕ) : Finset ℕ :=
  (logLongInventory A j).filter (fun n ↦ n ≠ m ∧ m*n ≤ sourceKernelCutoff A)

/-- Floor logarithms use ceil exponential endpoints, not approximate bin boundaries. -/
theorem floor_log_eq_iff_ceil (n j : ℕ) (hn : 1 ≤ n) :
    ⌊Real.log (n : ℝ)⌋₊ = j ↔
      ⌈Real.exp (j : ℝ)⌉₊ ≤ n ∧ n < ⌈Real.exp ((j : ℝ)+1)⌉₊ := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  rw [Nat.floor_eq_iff (Real.log_nonneg hnR)]
  constructor
  · rintro ⟨hl, hu⟩
    constructor
    · apply Nat.ceil_le.mpr
      simpa only [Real.exp_log hn0] using Real.exp_le_exp.mpr hl
    · apply Nat.lt_ceil.mpr
      simpa only [Real.exp_log hn0] using Real.exp_lt_exp.mpr hu
  · rintro ⟨hl, hu⟩
    constructor
    · apply Real.exp_le_exp.mp
      simpa only [Real.exp_log hn0] using Nat.ceil_le.mp hl
    · apply Real.exp_lt_exp.mp
      simpa only [Real.exp_log hn0] using Nat.lt_ceil.mp hu

/-- The source inner inventory is exactly one interval before deleting n=m. -/
theorem innerInventory_eq_filter_interval (A : ℝ) (m j : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) :
    innerInventory A m j = (Finset.Ioc (blockLower A j) (blockUpper A m j)).filter
      (fun n ↦ n ≠ m) := by
  classical
  have hU := vaughanCutoff_pos A hA
  have hce0 : 1 ≤ ⌈Real.exp (j : ℝ)⌉₊ := Nat.one_le_ceil_iff.mpr (Real.exp_pos _)
  have hce1 : 1 ≤ ⌈Real.exp ((j : ℝ)+1)⌉₊ := Nat.one_le_ceil_iff.mpr (Real.exp_pos _)
  have hm0 : 0 < m := by omega
  ext n
  by_cases hn1 : 1 ≤ n
  · simp only [innerInventory, logLongInventory, Finset.mem_filter, Finset.mem_Ioc,
      floor_log_eq_iff_ceil n j hn1, blockLower, blockUpper]
    have hp : m*n ≤ sourceKernelCutoff A ↔ n ≤ sourceKernelCutoff A/m := by
      rw [Nat.le_div_iff_mul_le hm0, Nat.mul_comm]
    have hnN : n ≤ sourceKernelCutoff A/m → n ≤ sourceKernelCutoff A :=
      fun h ↦ h.trans (Nat.div_le_self _ _)
    rw [hp]
    omega
  · have hn0 : n = 0 := by omega
    subst n
    simp [innerInventory, logLongInventory, blockLower, blockUpper]

/-- Deleting a single index splits the interval into at most two exact disjoint pieces. -/
theorem filter_interval_ne_eq_union (L H m : ℕ) (hLH : L ≤ H) :
    (Finset.Ioc L H).filter (fun n ↦ n ≠ m) =
      (Finset.Ioc L (leftUpper L H m)) ∪ (Finset.Ioc (rightLower L H m) H) := by
  ext n
  simp only [Finset.mem_filter, Finset.mem_Ioc, Finset.mem_union, leftUpper, rightLower]
  omega

/-- The two pieces are always disjoint, including when one or both are empty. -/
theorem split_intervals_disjoint (L H m : ℕ) :
    Disjoint (Finset.Ioc L (leftUpper L H m)) (Finset.Ioc (rightLower L H m) H) := by
  apply Finset.disjoint_left.mpr
  intro n hl hr
  simp only [Finset.mem_Ioc, leftUpper, rightLower] at hl hr
  omega

/-- Exact signed row formula; the endpoint of each finite piece is retained. -/
theorem centeredRow_eq_abel_split (A : ℝ) (m j : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) :
    (∑ n ∈ innerInventory A m j, centeredBeta (vaughanCutoff A) n *
      sourcePlainWeight A ((m*n : ℕ) : ℝ)) =
    abelDiscrepancyMoment A m (vaughanCutoff A) (blockLower A j)
      (leftUpper (blockLower A j) (blockUpper A m j) m) +
    abelDiscrepancyMoment A m (vaughanCutoff A)
      (rightLower (blockLower A j) (blockUpper A m j) m) (blockUpper A m j) := by
  classical
  have hLH : blockLower A j ≤ blockUpper A m j := le_max_left _ _
  have hUL : vaughanCutoff A ≤ blockLower A j := le_max_left _ _
  have hl : blockLower A j ≤ leftUpper (blockLower A j) (blockUpper A m j) m :=
    le_max_left _ _
  have hr : rightLower (blockLower A j) (blockUpper A m j) m ≤ blockUpper A m j := by
    unfold rightLower
    omega
  have hUr : vaughanCutoff A ≤ rightLower (blockLower A j) (blockUpper A m j) m :=
    hUL.trans (le_max_left _ _)
  rw [innerInventory_eq_filter_interval A m j hA hm, filter_interval_ne_eq_union _ _ _ hLH,
    Finset.sum_union (split_intervals_disjoint _ _ _)]
  simp only [Nat.cast_mul]
  change weightedCenteredInterval A m (vaughanCutoff A) _ _ +
    weightedCenteredInterval A m (vaughanCutoff A) _ _ = _
  rw [weightedCenteredInterval_eq_abel A m _ _ _ hA hm (vaughanCutoff_pos A hA) hUL hl,
    weightedCenteredInterval_eq_abel A m _ _ _ hA hm (vaughanCutoff_pos A hA) hUr hr]

/-- Exact finite row rearrangement retains the outer Lambda coefficient. -/
theorem centeredTypeTwoLogBlock_eq_rows (A : ℝ) (c : ℕ × ℕ) :
    centeredTypeTwoLogBlock A c = ∑ m ∈ logLongInventory A c.1, vonMangoldt m *
      ∑ n ∈ innerInventory A m c.2, centeredBeta (vaughanCutoff A) n *
        sourcePlainWeight A ((m*n : ℕ) : ℝ) := by
  classical
  have he : logBlockPairs A c =
      ((logLongInventory A c.1).product (logLongInventory A c.2)).filter
        (fun q ↦ q.2 ≠ q.1 ∧ q.1*q.2 ≤ sourceKernelCutoff A) := by
    rcases c with ⟨i,j⟩
    ext ⟨m,n⟩
    simp only [logBlockPairs, longOffDiagonalPairs, logLongInventory, logPairIndex,
      Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product, Prod.mk.injEq]
    tauto
  unfold centeredTypeTwoLogBlock innerInventory
  rw [he]
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> ring

/-- The actual signed mu-Lambda kernel after finite Abelization of both row pieces. -/
def abelizedCenteredBlock (A : ℝ) (c : ℕ × ℕ) : ℝ :=
  ∑ m ∈ logLongInventory A c.1, vonMangoldt m *
    (abelDiscrepancyMoment A m (vaughanCutoff A) (blockLower A c.2)
      (leftUpper (blockLower A c.2) (blockUpper A m c.2) m) +
    abelDiscrepancyMoment A m (vaughanCutoff A)
      (rightLower (blockLower A c.2) (blockUpper A m c.2) m) (blockUpper A m c.2))

/-- The exact centered block is its signed discrepancy kernel, before any absolute bound. -/
theorem centeredTypeTwoLogBlock_eq_abelized (A : ℝ) (c : ℕ × ℕ) (hA : 1 ≤ A) :
    centeredTypeTwoLogBlock A c = abelizedCenteredBlock A c := by
  rw [centeredTypeTwoLogBlock_eq_rows]
  unfold abelizedCenteredBlock
  apply Finset.sum_congr rfl
  intro m hm
  rw [centeredRow_eq_abel_split A m c.2 hA (by
    have h := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hm).1).1
    omega)]

/-- Complete source consumer keeps the signed beta-main ledger beside the Abelized blocks. -/
theorem mertensResidual_eq_abelized_blocks_add_betaMain (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (∑ c ∈ logCells A, abelizedCenteredBlock A c) + betaMainLedger A := by
  rw [mertensResidual_eq_centered_blocks_add_betaMain A hA]
  congr 1
  apply Finset.sum_congr rfl
  intro c hc
  exact centeredTypeTwoLogBlock_eq_abelized A c hA

end
end EstimateWeightedBetaInventory
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
