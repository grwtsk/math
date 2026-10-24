# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.QuadraticDefect.Variantc79a4a007a0624d8d0e191a9f647c559039bc8353c85b221a9af621820ff599d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b2e709ce6a313129fd94632849ce3a2222af227` · SHA-256 `7dc825a9f92ba9efc35d52c5036ccb06d052b6d965bae7d8df428c25f0770ddd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Value.Variant05c911ae7b29ae0bb49abec8ac0792ca9ef29eb84b44b0a5d4c9cf943889b77a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05c911ae7b29ae0bb49abec8ac0792ca9ef29eb84b44b0a5d4c9cf943889b77a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Value.Variant05c911ae7b29ae0bb49abec8ac0792ca9ef29eb84b44b0a5d4c9cf943889b77a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"05c911ae7b29ae0bb49abec8ac0792ca9ef29eb84b44b0a5d4c9cf943889b77a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/PositiveAtlas/QuadraticDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.MaximalDefect
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.Data.Complex.BigOperators
import Mathlib.Tactic.Ring

/-!
# The exact cross-block test for quadratic-defect selection

The finite lattice is the powerset of the declared matrix index type. The
defect retains every matrix entry. Supermodularity requires the real cross
block sign proved below; Hermiticity alone does not supply that sign.

Research direction, theorem selection and evaluation: grwtsk contributors.
Construction and formalization: OpenAI Codex. This draft supplies no RH bound.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Value.Variant05c911ae7b29ae0bb49abec8ac0792ca9ef29eb84b44b0a5d4c9cf943889b77a

namespace FormalResearch.PositiveAtlas.QuadraticDefect

open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- The complete real quadratic sum on a selected coordinate set. -/
def value (H : Matrix ι ι ℂ) (s : Finset ι) : ℝ :=
  ∑ i, ∑ j, if i ∈ s ∧ j ∈ s then (H i j).re else 0

/-- The real directed cross block, with its actual two coordinate sets. -/
def cross (H : Matrix ι ι ℂ) (s t : Finset ι) : ℝ :=
  ∑ i, ∑ j, if i ∈ s ∧ j ∈ t then (H i j).re else 0

/-- This is the literal double sum over the two selected coordinate sets. -/
theorem cross_eq_sum (H : Matrix ι ι ℂ) (s t : Finset ι) :
    cross H s t = ∑ i ∈ s, ∑ j ∈ t, (H i j).re := by
  unfold cross
  simp only [ite_and]
  simp

/-- The defect is the real part of the complete complex quadratic sum. -/
theorem value_eq_sum (H : Matrix ι ι ℂ) (s : Finset ι) :
    value H s = (∑ i ∈ s, ∑ j ∈ s, H i j).re := by
  change cross H s s = _
  rw [cross_eq_sum]
  simp only [Complex.re_sum]

/-- A singleton cross block is the actual matrix entry. -/
theorem cross_singletons (H : Matrix ι ι ℂ) (i j : ι) :
    cross H {i} {j} = (H i j).re := by
  rw [cross_eq_sum]
  simp

/-- The union/intersection defect is exactly the two disjoint cross blocks. -/
theorem union_inter_defect (H : Matrix ι ι ℂ) (s t : Finset ι) :
    value H (s ∪ t) + value H (s ∩ t) - value H s - value H t =
      cross H (s \ t) (t \ s) + cross H (t \ s) (s \ t) := by
  unfold value cross
  simp only [← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  by_cases his : i ∈ s <;> by_cases hit : i ∈ t <;>
    by_cases hjs : j ∈ s <;> by_cases hjt : j ∈ t <;>
    simp [his, hit, hjs, hjt]

omit [Fintype ι] [DecidableEq ι] in
/-- Hermitian matrices have equal real values on transposed entries. -/
theorem real_entry_symm {H : Matrix ι ι ℂ} (hH : H.IsHermitian) (i j : ι) :
    (H i j).re = (H j i).re := by
  have h := congrArg Complex.re (hH.apply i j)
  simpa using h.symm

/-- Taking a Hermitian real cross block commutes with exchanging its sets. -/
theorem cross_symm {H : Matrix ι ι ℂ} (hH : H.IsHermitian) (s t : Finset ι) :
    cross H s t = cross H t s := by
  unfold cross
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  rw [real_entry_symm hH]
  simp only [and_comm]

/-- The exact Hermitian cross-block identity required by maximal selection. -/
theorem hermitian_union_inter_defect {H : Matrix ι ι ℂ} (hH : H.IsHermitian)
    (s t : Finset ι) :
    value H (s ∪ t) + value H (s ∩ t) - value H s - value H t =
      2 * cross H (s \ t) (t \ s) := by
  rw [union_inter_defect, cross_symm hH (t \ s) (s \ t)]
  ring

/-- This tests the exact sign needed; it does not assert a source sign. -/
theorem supermodular_iff_cross_nonneg {H : Matrix ι ι ℂ} (hH : H.IsHermitian) :
    MaximalDefect.Supermodular (value H) ↔
      ∀ s t, 0 ≤ cross H (s \ t) (t \ s) := by
  constructor
  · intro h s t
    have hd := hermitian_union_inter_defect hH s t
    have hs := h s t
    change value H s + value H t ≤ value H (s ∩ t) + value H (s ∪ t) at hs
    linarith
  · intro h s t
    have hd := hermitian_union_inter_defect hH s t
    have hs := h s t
    change value H s + value H t ≤ value H (s ∩ t) + value H (s ∪ t)
    linarith

/-- A negative actual cross block excludes unrestricted selection. -/
theorem not_supermodular_of_negative_cross {H : Matrix ι ι ℂ}
    (hH : H.IsHermitian) (s t : Finset ι)
    (hneg : cross H (s \ t) (t \ s) < 0) :
    ¬ MaximalDefect.Supermodular (value H) := by
  intro h
  exact (not_le_of_gt hneg) ((supermodular_iff_cross_nonneg hH).mp h s t)

/-- One negative unequal-index entry obstructs selection on the full powerset. -/
theorem not_supermodular_of_negative_entry {H : Matrix ι ι ℂ}
    (hH : H.IsHermitian) {i j : ι} (hne : i ≠ j) (hneg : (H i j).re < 0) :
    ¬ MaximalDefect.Supermodular (value H) := by
  apply not_supermodular_of_negative_cross hH {i} {j}
  simpa [Finset.sdiff_singleton_eq_erase, hne, hne.symm, cross_singletons] using hneg

end FormalResearch.PositiveAtlas.QuadraticDefect
```
