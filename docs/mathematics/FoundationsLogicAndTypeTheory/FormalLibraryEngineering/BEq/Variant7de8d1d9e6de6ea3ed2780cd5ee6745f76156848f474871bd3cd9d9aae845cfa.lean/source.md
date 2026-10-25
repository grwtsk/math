# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BEq.Variant7de8d1d9e6de6ea3ed2780cd5ee6745f76156848f474871bd3cd9d9aae845cfa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c27aa35d0ee8de80ebd11689f60a8571b475d1b3` · SHA-256 `7de8d1d9e6de6ea3ed2780cd5ee6745f76156848f474871bd3cd9d9aae845cfa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

/-! ## Boolean equality -/

/-- `PartialEquivBEq α` says that the `BEq` implementation is a
partial equivalence relation, that is:
* it is symmetric: `a == b → b == a`
* it is transitive: `a == b → b == c → a == c`.
-/
class PartialEquivBEq (α) [BEq α] : Prop where
  /-- Symmetry for `BEq`. If `a == b` then `b == a`. -/
  symm : (a : α) == b → b == a
  /-- Transitivity for `BEq`. If `a == b` and `b == c` then `a == c`. -/
  trans : (a : α) == b → b == c → a == c

@[simp] theorem beq_eq_false_iff_ne [BEq α] [LawfulBEq α]
    (a b : α) : (a == b) = false ↔ a ≠ b := by
  rw [ne_eq, ← beq_iff_eq a b]
  cases a == b <;> decide
```
