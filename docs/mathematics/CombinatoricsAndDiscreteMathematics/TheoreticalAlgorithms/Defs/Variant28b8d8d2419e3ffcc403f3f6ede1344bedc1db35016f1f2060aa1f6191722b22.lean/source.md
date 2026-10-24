# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant28b8d8d2419e3ffcc403f3f6ede1344bedc1db35016f1f2060aa1f6191722b22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d662f43d440090e029aa3adb04a0c0bf8710173` · SHA-256 `28b8d8d2419e3ffcc403f3f6ede1344bedc1db35016f1f2060aa1f6191722b22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.BinderPredicates
public import Init.NotationExtra

public section

/-!
This is an internal implementation file of the hash map. Users of the hash map should not rely on
the contents of this file.

File contents: definitions on lists needed to state the well-formedness predicate
-/

set_option linter.missingDocs true
set_option autoImplicit false

universe u v w

variable {α : Type u} {β : α → Type v} {γ : α → Type w}

open List (Pairwise)

namespace Std.Internal.List

/-- Internal implementation detail of the hash map -/
def keys : List ((a : α) × β a) → List α
  | [] => []
  | ⟨k, _⟩ :: l => k :: keys l

/-- Internal implementation detail of the hash map -/
structure DistinctKeys [BEq α] (l : List ((a : α) × β a)) : Prop where
  /-- Internal implementation detail of the hash map -/
  distinct : Pairwise (fun a b => (a == b) = false) (keys l)

/-- Internal implementation detail of the hash map -/
def values {β : Type v} : List ((_ : α) × β) → List β
  | [] => []
  | ⟨_, v⟩ :: l => v :: values l

end Std.Internal.List
```
