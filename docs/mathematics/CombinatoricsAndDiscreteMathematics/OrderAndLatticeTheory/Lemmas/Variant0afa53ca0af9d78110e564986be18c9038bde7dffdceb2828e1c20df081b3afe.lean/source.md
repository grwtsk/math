# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lemmas.Variant0afa53ca0af9d78110e564986be18c9038bde7dffdceb2828e1c20df081b3afe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5027ef17ad7cd33b373ff28e4739b293e6c78c3` · SHA-256 `0afa53ca0af9d78110e564986be18c9038bde7dffdceb2828e1c20df081b3afe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
import Mathlib.Data.Ordering.Basic
import Mathlib.Order.Defs.Unbundled

/-!
# Some `Ordering` lemmas
-/

universe u

namespace Ordering

@[simp]
theorem ite_eq_lt_distrib (c : Prop) [Decidable c] (a b : Ordering) :
    ((if c then a else b) = Ordering.lt) = if c then a = Ordering.lt else b = Ordering.lt := by
  by_cases c <;> simp [*]

@[simp]
theorem ite_eq_eq_distrib (c : Prop) [Decidable c] (a b : Ordering) :
    ((if c then a else b) = Ordering.eq) = if c then a = Ordering.eq else b = Ordering.eq := by
  by_cases c <;> simp [*]

@[simp]
theorem ite_eq_gt_distrib (c : Prop) [Decidable c] (a b : Ordering) :
    ((if c then a else b) = Ordering.gt) = if c then a = Ordering.gt else b = Ordering.gt := by
  by_cases c <;> simp [*]

@[simp]
lemma dthen_eq_then (o₁ o₂ : Ordering) : o₁.dthen (fun _ => o₂) = o₁.then o₂ := by
  cases o₁ <;> rfl

end Ordering

section

variable {α : Type u} {lt : α → α → Prop} [DecidableRel lt]

attribute [local simp] cmpUsing

@[simp]
theorem cmpUsing_eq_lt (a b : α) : (cmpUsing lt a b = Ordering.lt) = lt a b := by
  simp only [cmpUsing, Ordering.ite_eq_lt_distrib, ite_self, if_false_right, and_true, reduceCtorEq]

@[simp]
theorem cmpUsing_eq_gt [IsStrictOrder α lt] (a b : α) : cmpUsing lt a b = Ordering.gt ↔ lt b a := by
  simp only [cmpUsing, Ordering.ite_eq_gt_distrib, if_false_right, and_true, if_false_left,
    and_iff_right_iff_imp, reduceCtorEq]
  exact fun hba hab ↦ (irrefl a) (_root_.trans hab hba)

@[simp]
theorem cmpUsing_eq_eq (a b : α) : cmpUsing lt a b = Ordering.eq ↔ ¬lt a b ∧ ¬lt b a := by simp

end
```
