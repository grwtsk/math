# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourcePhysicalCutoffComplement.Variant6bf32d03bced81675f4252a6dc6c9d69b04a45e53740e996032ff149fcc43d72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16fa62c215cd4496deab153e445f1d1d741cec93` · SHA-256 `065ea81a4094c90cf8f340c0b0656e97709ea1371dc4ff68a809389ce25e89b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SupportedPrefixAddTail.Variant10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SupportedPrefixAddTail.Variant10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle31/root/fixed-source-cutoff-complement-v2/SourcePhysicalCutoffComplement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePhysicalSignedBoundaryRefinement

/-!
# Complete signed cutoff reconstruction at a fixed source scale

UNCOMPILED preparation. This file reuses the literal physical column/strip
identity and the owned plain-weight residual sum. The short prefix is the
original Mangoldt payment, not a residual-fitted counterterm. All natural
auxiliary cutoffs U >= 1 are allowed, including U beyond the source support.
The real scale A and its normalized source are fixed throughout refinement.

These identities supply no real-scale flux or uniform signed upper bound.
The centered deletion and independently defined main term keep their owning
source definitions; neither is replaced or bounded here. Source4 remains an
uncompiled review dependency. No new statement is claimed kernel checked.

AI attribution: authored with OpenAI Codex. Exact types, transitive axioms,
warning-fatal compilation, independent review and unchanged full verification
are separate pending gates.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SupportedPrefixAddTail.Variant10ce03ae54fc670618892e4d107be19e6540047f4a1e522f33d850e437abe549

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePhysicalCutoffComplement

open ArithmeticFunction SourcePhysicalQuotientStrip SourcePhysicalSignedBoundaryRefinement
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateMertensResidual EstimatePlainKernel
open EstimateMertensAbel EstimateSourceMobiusKernel

noncomputable section

private theorem supported_prefix_add_tail (U N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n, N < n → f n = 0) :
    (∑ n ∈ Finset.Icc 1 U, f n) + (∑ n ∈ Finset.Ioc U N, f n) =
      ∑ n ∈ Finset.Icc 1 N, f n := by
  classical
  let L := max U N
  have hUL : U ≤ L := le_max_left U N
  have hNL : N ≤ L := le_max_right U N
  have hp : (∑ n ∈ Finset.Icc 1 L, f n) = ∑ n ∈ Finset.Icc 1 N, f n := by
    symm
    apply Finset.sum_subset
      (by
        intro n hn
        exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
          (Finset.mem_Icc.mp hn).2.trans hNL⟩)
    intro n hn hnot
    exact hf n (by
      by_contra h
      apply hnot
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, by omega⟩)
  have ht : (∑ n ∈ Finset.Ioc U L, f n) = ∑ n ∈ Finset.Ioc U N, f n := by
    symm
    apply Finset.sum_subset
      (by
        intro n hn
        exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1,
          (Finset.mem_Ioc.mp hn).2.trans hNL⟩)
    intro n hn hnot
    exact hf n (by
      by_contra h
      apply hnot
      exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hn).1, by omega⟩)
  have hs : Finset.Icc 1 L = Finset.Icc 1 U ∪ Finset.Ioc U L := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_Ioc, Finset.mem_union]
    omega
  have hj : Disjoint (Finset.Icc 1 U) (Finset.Ioc U L) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    have hl := (Finset.mem_Icc.mp hn).2
    have hu := (Finset.mem_Ioc.mp hn').1
    omega
  calc
    _ = (∑ n ∈ Finset.Icc 1 U, f n) + (∑ n ∈ Finset.Ioc U L, f n) := by
      rw [ht]
    _ = ∑ n ∈ Finset.Icc 1 L, f n := by rw [hs, Finset.sum_union hj]
    _ = _ := hp

/-- Every positive auxiliary cutoff reconstructs the original residual at the fixed real scale. -/
theorem short_add_signed_boundary_eq_mertensResidual (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hU : 1 ≤ U) :
    (∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
      (∑ d ∈ Finset.Icc 1 U, realMoebius d *
        (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) =
      mertensResidual A := by
  rw [signed_column_sub_strip_eq_long_mangoldt_row A hA U hU]
  rw [mertensResidual_eq_plainWeight_sum A hA]
  apply supported_prefix_add_tail U (sourceKernelCutoff A)
  intro m hm
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA m hm, mul_zero]

/-- Refinement preserves the compensated signed value without ordering or support-cutoff bounds. -/
theorem short_add_signed_boundary_cutoff_invariant (A : ℝ) (hA : 1 ≤ A)
    (U V : ℕ) (hU : 1 ≤ U) (hV : 1 ≤ V) :
    (∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
      (∑ d ∈ Finset.Icc 1 U, realMoebius d *
        (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) =
    (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
      (∑ d ∈ Finset.Icc 1 V, realMoebius d *
        (shortColumnPlainRowsAt A d V - quotientStripRowsAt A d V)) := by
  rw [short_add_signed_boundary_eq_mertensResidual A hA U hU,
    short_add_signed_boundary_eq_mertensResidual A hA V hV]

/-- Beyond the closed support cutoff, the complete signed physical boundary vanishes. -/
theorem beyond_source_cutoff_signed_boundary_eq_zero (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hNU : sourceKernelCutoff A ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) = 0 := by
  have hU : 1 ≤ U := (vaughanCutoff_pos A hA).trans
    ((vaughanCutoff_le_sourceKernelCutoff A hA).trans hNU)
  rw [signed_column_sub_strip_eq_long_mangoldt_row A hA U hU]
  have he : Finset.Ioc U (sourceKernelCutoff A) = ∅ := by
    ext m
    simp only [Finset.mem_Ioc, Finset.not_mem_empty, iff_false]
    omega
  rw [he]
  simp

/-- An exhausted support leaves the independently defined residual in the short prefix. -/
theorem beyond_source_cutoff_shortPrefix_eq_mertensResidual (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hNU : sourceKernelCutoff A ≤ U) :
    (∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A (m : ℝ)) =
      mertensResidual A := by
  have hU : 1 ≤ U := (vaughanCutoff_pos A hA).trans
    ((vaughanCutoff_le_sourceKernelCutoff A hA).trans hNU)
  have hs := short_add_signed_boundary_eq_mertensResidual A hA U hU
  rw [beyond_source_cutoff_signed_boundary_eq_zero A hA U hNU, add_zero] at hs
  exact hs

/-- The complete reconstruction is the owned prime moment; classification supplies no bound. -/
theorem short_add_signed_boundary_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hU : 1 ≤ U) :
    (∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
      (∑ d ∈ Finset.Icc 1 U, realMoebius d *
        (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) =
      EstimatePrimeSmoothDefect.closedPrimeMoment A := by
  rw [short_add_signed_boundary_eq_mertensResidual A hA U hU]
  exact mertensResidual_eq_closedPrimeMoment A hA

end
end FormalResearch.RiemannHypothesis.SourcePhysicalCutoffComplement
```
