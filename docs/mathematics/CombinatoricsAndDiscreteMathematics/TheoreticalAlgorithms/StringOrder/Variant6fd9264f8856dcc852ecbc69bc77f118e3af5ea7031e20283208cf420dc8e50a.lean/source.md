# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StringOrder.Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed4a42ee5a0c19b7d98c05bcb7065fd635eb049a` · SHA-256 `6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Basic
public import Init.Data.Order.Classes
import Init.Data.List.Lex
import Init.Data.Char.Lemmas
import Init.Data.Char.Order
import Init.Data.Order.Factories
import Init.Data.Order.Lemmas

public section

open Std

namespace String

@[simp] protected theorem not_le {a b : String} : ¬ a ≤ b ↔ b < a := Decidable.not_not
@[simp] protected theorem not_lt {a b : String} : ¬ a < b ↔ b ≤ a := Iff.rfl
@[simp] protected theorem le_refl (a : String) : a ≤ a := List.le_refl _
@[simp] protected theorem lt_irrefl (a : String) : ¬ a < a := List.lt_irrefl _

attribute [local instance] Char.notLTTrans Char.ltTrichotomous Char.ltAsymm

protected theorem le_trans {a b c : String} : a ≤ b → b ≤ c → a ≤ c := List.le_trans
protected theorem lt_trans {a b c : String} : a < b → b < c → a < c := List.lt_trans
protected theorem le_total (a b : String) : a ≤ b ∨ b ≤ a := List.le_total _ _
protected theorem le_antisymm {a b : String} : a ≤ b → b ≤ a → a = b := fun h₁ h₂ => String.ext (List.le_antisymm (as := a.toList) (bs := b.toList) h₁ h₂)
protected theorem lt_asymm {a b : String} (h : a < b) : ¬ b < a := List.lt_asymm h
protected theorem ne_of_lt {a b : String} (h : a < b) : a ≠ b := by
  have := String.lt_irrefl a
  intro h; subst h; contradiction

instance instIsLinearOrder : IsLinearOrder String := by
  apply IsLinearOrder.of_le
  case le_antisymm => constructor; apply String.le_antisymm
  case le_trans => constructor; apply String.le_trans
  case le_total => constructor; apply String.le_total

instance : LawfulOrderLT String where
  lt_iff a b := by
    simp [← String.not_le, Decidable.imp_iff_not_or, Std.Total.total]

end String
```
