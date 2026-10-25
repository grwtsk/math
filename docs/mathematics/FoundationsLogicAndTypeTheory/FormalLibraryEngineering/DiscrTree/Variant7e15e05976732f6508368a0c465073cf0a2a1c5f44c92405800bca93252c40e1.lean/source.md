# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTree.Variant7e15e05976732f6508368a0c465073cf0a2a1c5f44c92405800bca93252c40e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc6465844b4fe7bb466b0ac6fbebb5c7805e1722` · SHA-256 `7e15e05976732f6508368a0c465073cf0a2a1c5f44c92405800bca93252c40e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Kim Morrison
-/
module

public import Lean.Meta.DiscrTree
public import Batteries.Data.Array.Merge
public import Batteries.Lean.Meta.Expr
public import Batteries.Lean.PersistentHashMap

@[expose] public section

namespace Lean.Meta.DiscrTree

namespace Key

/--
Compare two `Key`s. The ordering is total but otherwise arbitrary. (It uses
`Name.quickCmp` internally.)
-/
protected def cmp : Key → Key → Ordering
  | .lit v₁,        .lit v₂        => compare v₁ v₂
  | .fvar n₁ a₁,    .fvar n₂ a₂    => n₁.name.quickCmp n₂.name |>.then <| compare a₁ a₂
  | .const n₁ a₁,   .const n₂ a₂   => n₁.quickCmp n₂ |>.then <| compare a₁ a₂
  | .proj s₁ i₁ a₁, .proj s₂ i₂ a₂ =>
    s₁.quickCmp s₂ |>.then <| compare i₁ i₂ |>.then <| compare a₁ a₂
  | k₁,             k₂             => compare k₁.ctorIdx k₂.ctorIdx

instance : Ord Key := ⟨Key.cmp⟩

end Key


namespace Trie

/--
Merge two `Trie`s. Duplicate values are preserved.
-/
partial def mergePreservingDuplicates : Trie α → Trie α → Trie α
  | node vs₁ cs₁, node vs₂ cs₂ =>
    node (vs₁ ++ vs₂) (mergeChildren cs₁ cs₂)
where
  /-- Auxiliary definition for `mergePreservingDuplicates`. -/
  mergeChildren (cs₁ cs₂ : Array (Key × Trie α)) :
      Array (Key × Trie α) :=
    Array.mergeDedupWith
      (ord := ⟨compareOn (·.fst)⟩) cs₁ cs₂
      (fun (k₁, t₁) (_, t₂) => (k₁, mergePreservingDuplicates t₁ t₂))

end Trie

/--
Merge two `DiscrTree`s. Duplicate values are preserved.
-/
@[inline]
def mergePreservingDuplicates (t u : DiscrTree α) : DiscrTree α :=
  ⟨t.root.mergeWith u.root fun _ trie₁ trie₂ =>
    trie₁.mergePreservingDuplicates trie₂⟩
```
