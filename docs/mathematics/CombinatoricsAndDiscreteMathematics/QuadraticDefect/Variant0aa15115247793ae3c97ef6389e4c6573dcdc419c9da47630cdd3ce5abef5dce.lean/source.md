# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.QuadraticDefect.Variant0aa15115247793ae3c97ef6389e4c6573dcdc419c9da47630cdd3ce5abef5dce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2ff0c18ccdc89ec7fb64e950d78e67337b14656` · SHA-256 `b38b00e06e3bce4683cefaac27254644b1fd4e66a0e5146fdb85e6b6635a9c3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Value.Variant6e1cd5bcef2182b4763337f1c387bc04d0353cd844bb4ce648bf1aff6295b72f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e1cd5bcef2182b4763337f1c387bc04d0353cd844bb4ce648bf1aff6295b72f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Value.Variant6e1cd5bcef2182b4763337f1c387bc04d0353cd844bb4ce648bf1aff6295b72f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6e1cd5bcef2182b4763337f1c387bc04d0353cd844bb4ce648bf1aff6295b72f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/post-release-independent-reconstruction-215333-2/FormalResearch/PositiveAtlas/QuadraticDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.MaximalDefect
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Ring

/-!
# The exact cross-block test for quadratic-defect selection

The finite lattice is the powerset of the declared matrix index type. The
defect retains every matrix entry. Supermodularity requires the real cross
block sign proved below; Hermiticity alone does not supply that sign.

Research direction, theorem selection and evaluation: grwtsk contributors.
Construction and formalization: OpenAI Codex. This draft supplies no RH bound.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Value.Variant6e1cd5bcef2182b4763337f1c387bc04d0353cd844bb4ce648bf1aff6295b72f

namespace FormalResearch.PositiveAtlas.QuadraticDefect

open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- The complete real quadratic sum on a selected coordinate set. -/
def value (H : Matrix ι ι ℂ) (s : Finset ι) : ℝ :=
  ∑ i, ∑ j, if i ∈ s ∧ j ∈ s then (H i j).re else 0

/-- The real directed cross block, with its actual two coordinate sets. -/
def cross (H : Matrix ι ι ℂ) (s t : Finset ι) : ℝ :=
  ∑ i, ∑ j, if i ∈ s ∧ j ∈ t then (H i j).re else 0

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

end FormalResearch.PositiveAtlas.QuadraticDefect
```
