# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SymmDiff.Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83dd10819ab10b36ccf879a5327e7972aaf494b4` · SHA-256 `f524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura
-/
import Mathlib.Data.Set.Operations
import Mathlib.Order.Basic
import Mathlib.Order.BooleanAlgebra
import Mathlib.Logic.Equiv.Basic
import Mathlib.Tactic.Tauto
import Mathlib.Tactic.ByContra
import Mathlib.Util.Delaborators
import Mathlib.Order.SymmDiff
import Mathlib.Data.Set.Basic

/-! # Symmetric differences of sets -/

assert_not_exists RelIso

namespace Set

universe u
variable {α : Type u} {a : α} {s t u : Set α}

open scoped symmDiff

theorem mem_symmDiff : a ∈ s ∆ t ↔ a ∈ s ∧ a ∉ t ∨ a ∈ t ∧ a ∉ s :=
  Iff.rfl

protected theorem symmDiff_def (s t : Set α) : s ∆ t = s \ t ∪ t \ s :=
  rfl

theorem symmDiff_subset_union : s ∆ t ⊆ s ∪ t :=
  @symmDiff_le_sup (Set α) _ _ _

@[simp]
theorem symmDiff_eq_empty : s ∆ t = ∅ ↔ s = t :=
  symmDiff_eq_bot

@[simp]
theorem symmDiff_nonempty : (s ∆ t).Nonempty ↔ s ≠ t :=
  nonempty_iff_ne_empty.trans symmDiff_eq_empty.not

theorem inter_symmDiff_distrib_left (s t u : Set α) : s ∩ t ∆ u = (s ∩ t) ∆ (s ∩ u) :=
  inf_symmDiff_distrib_left _ _ _

theorem inter_symmDiff_distrib_right (s t u : Set α) : s ∆ t ∩ u = (s ∩ u) ∆ (t ∩ u) :=
  inf_symmDiff_distrib_right _ _ _

theorem subset_symmDiff_union_symmDiff_left (h : Disjoint s t) : u ⊆ s ∆ u ∪ t ∆ u :=
  h.le_symmDiff_sup_symmDiff_left

theorem subset_symmDiff_union_symmDiff_right (h : Disjoint t u) : s ⊆ s ∆ t ∪ s ∆ u :=
  h.le_symmDiff_sup_symmDiff_right

end Set
```
