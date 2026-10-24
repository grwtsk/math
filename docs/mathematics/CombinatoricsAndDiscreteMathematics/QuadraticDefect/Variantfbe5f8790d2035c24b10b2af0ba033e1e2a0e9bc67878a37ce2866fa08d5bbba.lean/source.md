# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.QuadraticDefect.Variantfbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9ffac11e84cb22c9c26614dbd2cc329c2e77e8d` · SHA-256 `fbe5f8790d2035c24b10b2af0ba033e1e2a0e9bc67878a37ce2866fa08d5bbba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
