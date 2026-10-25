# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassesExtra.Variantae136aa2755f7ace8978dc2f0a8d3ccad2b53723c5d98c08bcc587db889bb3a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `168e3797e0651825fbf095d88c17997071e4c033` · SHA-256 `ae136aa2755f7ace8978dc2f0a8d3ccad2b53723c5d98c08bcc587db889bb3a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Ord.Basic

namespace Std

/--
This typeclass states that the synthesized `Ord α` instance is compatible with the `LE α`
instance. This means that according to `compare`, the following are equivalent:

* `a` is less than or equal to `b` according to `compare`.
* `b` is greater than or equal to `b` according to `compare`.
* `a ≤ b` holds.

`LawfulOrderOrd α` automatically entails that `Ord α` is oriented (see `OrientedOrd α`)
and that `LE α` is total.

`Ord α` and `LE α` mutually determine each other in the presence of `LawfulOrderOrd α`.
-/
public class LawfulOrderOrd (α : Type u) [Ord α] [LE α] where
  isLE_compare : ∀ a b : α, (compare a b).isLE ↔ a ≤ b
  isGE_compare : ∀ a b : α, (compare a b).isGE ↔ b ≤ a

public theorem LawfulOrderOrd.isLE_compare_eq_false {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] {a b : α} :
    (compare a b).isLE = false ↔ ¬ a ≤ b := by
  simp [← isLE_compare]

public theorem LawfulOrderOrd.isGE_compare_eq_false {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] {a b : α} :
    (compare a b).isGE = false ↔ ¬ b ≤ a := by
  simp [← isGE_compare]

public abbrev LawfulOrderCmp (cmp : α → α → Ordering) [LE α] := @Std.LawfulOrderOrd α ⟨cmp⟩ _

end Std
```
