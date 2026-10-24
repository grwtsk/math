# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoolIndicator.Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d55d3638d246f7a1bff3d1247c14da9f5355051` · SHA-256 `378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Leonardo de Moura
-/
import Mathlib.Data.Set.Basic

/-!
# Indicator function valued in bool

See also `Set.indicator` and `Set.piecewise`.
-/

assert_not_exists RelIso

open Bool

namespace Set

variable {α : Type*} (s : Set α)

/-- `boolIndicator` maps `x` to `true` if `x ∈ s`, else to `false` -/
noncomputable def boolIndicator (x : α) :=
  @ite _ (x ∈ s) (Classical.propDecidable _) true false

theorem mem_iff_boolIndicator (x : α) : x ∈ s ↔ s.boolIndicator x = true := by
  unfold boolIndicator
  split_ifs with h <;> simp [h]

theorem notMem_iff_boolIndicator (x : α) : x ∉ s ↔ s.boolIndicator x = false := by
  unfold boolIndicator
  split_ifs with h <;> simp [h]

@[deprecated (since := "2025-05-23")] alias not_mem_iff_boolIndicator := notMem_iff_boolIndicator

theorem preimage_boolIndicator_true : s.boolIndicator ⁻¹' {true} = s :=
  ext fun x ↦ (s.mem_iff_boolIndicator x).symm

theorem preimage_boolIndicator_false : s.boolIndicator ⁻¹' {false} = sᶜ :=
  ext fun x ↦ (s.notMem_iff_boolIndicator x).symm

open scoped Classical in
theorem preimage_boolIndicator_eq_union (t : Set Bool) :
    s.boolIndicator ⁻¹' t = (if true ∈ t then s else ∅) ∪ if false ∈ t then sᶜ else ∅ := by
  ext x
  simp only [boolIndicator, mem_preimage]
  split_ifs <;> simp [*]

theorem preimage_boolIndicator (t : Set Bool) :
    s.boolIndicator ⁻¹' t = univ ∨
      s.boolIndicator ⁻¹' t = s ∨ s.boolIndicator ⁻¹' t = sᶜ ∨ s.boolIndicator ⁻¹' t = ∅ := by
  simp only [preimage_boolIndicator_eq_union]
  split_ifs <;> simp [s.union_compl_self]

end Set
```
