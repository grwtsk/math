# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a1636fa127fc7d31c88c67a39c81aeacdbad9ce` · SHA-256 `30bec91e7f2a224eb2ac22e3f3bc6808e7ad172f27947e33f7b84d99c1bfd381`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MovingBlockCount.Variantfc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MovingBlockCount.Variantfc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7","mathematical_subject":"Analysis.Integration","original_sha256":"fc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/fc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSignedMobiusBlocks
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePolynomialResidual

/-!
# Exact clipped blocks of the actual moving signed tail

The logarithmic partition begins at the real square-divisor front `2 log A`
and clips its final cell at `2A`. Each complete signed block retains its
primitive-weighted endpoint difference as well as its centered integral.

An eventual common polynomial upper bound for these complete signed cells
would imply the existing polynomial moving-tail hypothesis. That cell bound
is an explicit remaining hypothesis, not an unconditional arithmetic estimate.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.MovingBlockCount.Variantfc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateMovingTailBlocks

open MeasureTheory Set
open EstimateWeightedMobiusPairing EstimateSourceKernelLogProfile
open EstimateSignedMobiusBlocks EstimateMovingFrontTransport EstimatePolynomialResidual

noncomputable section

/-- The number of fixed-logarithmic-width cells after the actual moving front. -/
def movingBlockCount (A : ℝ) : ℕ :=
  ⌈(2 * A - 2 * Real.log A) / Real.log 2⌉₊

/-- Translated logarithmic nodes with an exact clipped upper endpoint. -/
def movingBlockPoint (A : ℝ) (j : ℕ) : ℝ :=
  min (2 * Real.log A + (j : ℝ) * Real.log 2) (2 * A)

/-- Every node lies between the actual moving front and the support endpoint. -/
theorem movingBlockPoint_mem (A : ℝ) (hA : 1 ≤ A) (j : ℕ) :
    movingBlockPoint A j ∈ Icc (2 * Real.log A) (2 * A) := by
  constructor
  · apply le_min
    · have hlog : 0 ≤ Real.log 2 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
      exact le_add_of_nonneg_right (mul_nonneg (Nat.cast_nonneg j) hlog)
    · exact (square_front_mem A hA).2
  · exact min_le_right _ _

/-- The clipped nodes increase, including any degenerate final cells. -/
theorem movingBlockPoint_le_succ (A : ℝ) (j : ℕ) :
    movingBlockPoint A j ≤ movingBlockPoint A (j + 1) := by
  apply min_le_min_right
  apply add_le_add le_rfl
  exact mul_le_mul_of_nonneg_right (by exact_mod_cast Nat.le_succ j)
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le

/-- The initial node is the true real moving front, without rounding its atoms. -/
theorem movingBlockPoint_zero (A : ℝ) (hA : 1 ≤ A) :
    movingBlockPoint A 0 = 2 * Real.log A := by
  simp only [movingBlockPoint, Nat.cast_zero, zero_mul, add_zero]
  exact min_eq_left (square_front_mem A hA).2

/-- The ceiling reaches the full endpoint, so no final clipped interval is omitted. -/
theorem movingBlockPoint_last (A : ℝ) :
    movingBlockPoint A (movingBlockCount A) = 2 * A := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hc := (div_le_iff₀ hlog).mp
    (Nat.le_ceil ((2 * A - 2 * Real.log A) / Real.log 2))
  unfold movingBlockPoint movingBlockCount
  exact min_eq_right (by linarith)

/-- The count grows at most linearly, uniformly over every real scale at least one. -/
theorem movingBlockCount_le (A : ℝ) (hA : 1 ≤ A) :
    (movingBlockCount A : ℝ) ≤ (2 / Real.log 2 + 1) * A := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hfront := square_front_mem A hA
  have hc := (Nat.ceil_lt_add_one
    (div_nonneg (sub_nonneg.mpr hfront.2) hlog.le)).le
  calc
    _ ≤ (2 * A - 2 * Real.log A) / Real.log 2 + 1 := hc
    _ ≤ (2 * A) / Real.log 2 + 1 := by
      exact add_le_add
        (div_le_div_of_nonneg_right (sub_le_self _ hfront.1) hlog.le) le_rfl
    _ = (2 / Real.log 2) * A + 1 := by ring
    _ ≤ (2 / Real.log 2 + 1) * A := by nlinarith

/-- A complete signed cell of the unchanged moving-tail integrand. -/
def movingSignedBlock (A : ℝ) (j : ℕ) : ℝ :=
  -(∫ s in (movingBlockPoint A j)..(movingBlockPoint A (j + 1)),
    weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)

/-- Each actual clipped cell is genuinely integrable. -/
theorem movingSignedBlock_integrable (A : ℝ) (hA : 1 ≤ A) (j : ℕ) :
    IntervalIntegrable
      (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume (movingBlockPoint A j) (movingBlockPoint A (j + 1)) :=
  signed_block_integrable A _ _ hA
    ((square_front_mem A hA).1.trans (movingBlockPoint_mem A hA j).1)
    (movingBlockPoint_le_succ A j) (movingBlockPoint_mem A hA (j + 1)).2

/-- Exact centering of each cell retains the complete weighted endpoint difference. -/
theorem movingSignedBlock_centering (A : ℝ) (hA : 1 ≤ A) (j : ℕ) :
    movingSignedBlock A j =
      -weightedMobiusPrimitive (movingBlockPoint A j) *
        (sourceLogKernel A (movingBlockPoint A (j + 1)) -
          sourceLogKernel A (movingBlockPoint A j)) -
        ∫ s in (movingBlockPoint A j)..(movingBlockPoint A (j + 1)),
          (weightedMobiusPrimitive s - weightedMobiusPrimitive (movingBlockPoint A j)) *
            deriv (sourceLogKernel A) s :=
  signed_block_centering A _ _ hA
    ((square_front_mem A hA).1.trans (movingBlockPoint_mem A hA j).1)
    (movingBlockPoint_le_succ A j) (movingBlockPoint_mem A hA (j + 1)).2

/-- The actual signed tail is exactly the finite sum of all translated clipped cells. -/
theorem sourceMovingTail_eq_sum_blocks (A : ℝ) (hA : 1 ≤ A) :
    sourceMovingTail A = ∑ j ∈ Finset.range (movingBlockCount A), movingSignedBlock A j := by
  have hi : ∀ j < movingBlockCount A,
      IntervalIntegrable
        (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
        volume (movingBlockPoint A j) (movingBlockPoint A (j + 1)) :=
    fun j _ ↦ movingSignedBlock_integrable A hA j
  have hsum := intervalIntegral.sum_integral_adjacent_intervals hi
  rw [movingBlockPoint_zero A hA, movingBlockPoint_last A] at hsum
  rw [sourceMovingTail, ← hsum, ← Finset.sum_neg_distrib]
  rfl

/-- The complete centered decomposition exposes, rather than drops, every endpoint term. -/
theorem sourceMovingTail_eq_sum_centered_blocks (A : ℝ) (hA : 1 ≤ A) :
    sourceMovingTail A = ∑ j ∈ Finset.range (movingBlockCount A),
      (-weightedMobiusPrimitive (movingBlockPoint A j) *
        (sourceLogKernel A (movingBlockPoint A (j + 1)) -
          sourceLogKernel A (movingBlockPoint A j)) -
        ∫ s in (movingBlockPoint A j)..(movingBlockPoint A (j + 1)),
          (weightedMobiusPrimitive s - weightedMobiusPrimitive (movingBlockPoint A j)) *
            deriv (sourceLogKernel A) s) := by
  rw [sourceMovingTail_eq_sum_blocks A hA]
  exact Finset.sum_congr rfl fun j _ ↦ movingSignedBlock_centering A hA j

/-- A common upper bound on complete signed cells gives an explicit bound on their aggregate.
No bound on a centered remainder alone is substituted for the cell hypothesis. -/
theorem sourceMovingTail_le_of_block_bound (A : ℝ) (p : ℕ) (C : ℝ)
    (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hb : ∀ j < movingBlockCount A, movingSignedBlock A j ≤ C * A ^ p) :
    sourceMovingTail A ≤ (2 / Real.log 2 + 1) * C * A ^ (p + 1) := by
  rw [sourceMovingTail_eq_sum_blocks A hA]
  calc
    _ ≤ ∑ _j ∈ Finset.range (movingBlockCount A), C * A ^ p :=
      Finset.sum_le_sum fun j hj ↦ hb j (Finset.mem_range.mp hj)
    _ = (movingBlockCount A : ℝ) * (C * A ^ p) := by simp
    _ ≤ ((2 / Real.log 2 + 1) * A) * (C * A ^ p) :=
      mul_le_mul_of_nonneg_right (movingBlockCount_le A hA)
        (mul_nonneg hC (pow_nonneg (by linarith) p))
    _ = (2 / Real.log 2 + 1) * C * A ^ (p + 1) := by rw [pow_succ]; ring

/-- An eventual common fixed-degree bound for the complete signed cells implies the
existing polynomial moving-tail hypothesis. The cell estimate remains an explicit premise. -/
theorem polynomial_moving_tail_of_block_bounds (p : ℕ) (C R : ℝ)
    (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hb : ∀ A : ℝ, R ≤ A →
      ∀ j < movingBlockCount A, movingSignedBlock A j ≤ C * A ^ p) :
    PolynomialMovingTailUpperBound := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  refine ⟨p + 1, (2 / Real.log 2 + 1) * C, by positivity, R, hR, ?_⟩
  intro A hA
  exact sourceMovingTail_le_of_block_bound A p C (hR.trans hA) hC (hb A hA)

end
end EstimateMovingTailBlocks
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
