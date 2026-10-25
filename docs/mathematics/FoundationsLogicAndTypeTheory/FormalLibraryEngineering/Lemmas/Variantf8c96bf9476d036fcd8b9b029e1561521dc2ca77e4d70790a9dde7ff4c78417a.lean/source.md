# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantf8c96bf9476d036fcd8b9b029e1561521dc2ca77e4d70790a9dde7ff4c78417a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f627feb7fdddcb38440faee7d025888f66b710b6` · SHA-256 `f8c96bf9476d036fcd8b9b029e1561521dc2ca77e4d70790a9dde7ff4c78417a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Batteries.Data.BinomialHeap.Basic

@[expose] public section

namespace Batteries.BinomialHeap
namespace Imp

theorem Heap.findMin_val : ((s : Heap α).findMin le k res).val = s.headD le res.val :=
  match s with
  | .nil => rfl
  | .cons r a c s => by rw [findMin, headD]; split <;> apply findMin_val

theorem Heap.deleteMin_fst : ((s : Heap α).deleteMin le).map (·.1) = s.head? le :=
  match s with
  | .nil => rfl
  | .cons r a c s => by simp only [deleteMin, findMin_val, Option.map, head?]

theorem HeapNode.WF.realSize_eq :
    ∀ {n} {s : HeapNode α}, s.WF le a n → s.realSize + 1 = 2 ^ n
  | _, .nil, rfl => rfl
  | _, .node .., ⟨_, rfl, _, c, s⟩ => by
    rw [realSize, realSize_eq c, Nat.pow_succ, Nat.mul_succ]
    simp [Nat.add_assoc, realSize_eq s]

theorem Heap.WF.size_eq :
    ∀ {s : Heap α}, s.WF le n → s.size = s.realSize
  | .nil, _ => rfl
  | .cons .., ⟨_, h₁, h₂⟩ => by
    simp [size, size_eq h₂]
    simp [Nat.one_shiftLeft, h₁.realSize_eq]

end Imp
```
