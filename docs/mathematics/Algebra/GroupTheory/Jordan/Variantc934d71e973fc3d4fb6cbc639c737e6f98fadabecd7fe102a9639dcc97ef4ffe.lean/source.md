# Complete source: GRWTSK.Algebra.GroupTheory.Jordan.Variantc934d71e973fc3d4fb6cbc639c737e6f98fadabecd7fe102a9639dcc97ef4ffe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd28145951527a3b723bf665908eec62636f15df` · SHA-256 `c934d71e973fc3d4fb6cbc639c737e6f98fadabecd7fe102a9639dcc97ef4ffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
module

public import Mathlib.GroupTheory.GroupAction.Jordan

open MulAction SubMulAction Subgroup

section Jordan

variable {G α : Type*} [Group G] [MulAction G α]

-- Wielandt claims that this is proved by the same method as
-- `normalClosure_of_stabilizer_eq_top` in `Mathlib/GroupTheory/GroupAction/Jordan.lean`.
proof_wanted IsPreprimitive.is_two_pretransitive'
    (hG : IsPreprimitive G α)
    {s : Set α} {n : ℕ} (hsn : Nat.card s = n + 1) (hsn' : n + 1 < Nat.card α)
    (hs_trans : IsPretransitive (fixingSubgroup G s) (SubMulAction.ofFixingSubgroup G s)) :
    IsMultiplyPretransitive (Subgroup.normalClosure (fixingSubgroup G s : Set G)) α 2

-- Wielandt claims that this stronger version of `MulAction.IsPreprimitive.is_two_preprimitive`
-- is proved in the same way.
proof_wanted is_two_preprimitive_strong_jordan
    (hG : IsPreprimitive G α)
    {s : Set α} {n : ℕ} (hsn : s.ncard = n + 1) (hsn' : n + 2 < Nat.card α)
    (hs_prim : IsPreprimitive (fixingSubgroup G s) (ofFixingSubgroup G s)) :
    IsMultiplyPreprimitive (Subgroup.normalClosure (fixingSubgroup G s : Set G)) α 2

end Jordan

section Subgroups

namespace Equiv.Perm

variable {α : Type*}

variable {G : Subgroup (Perm α)}

variable [Fintype α] [DecidableEq α]

/-- A primitive subgroup of `Equiv.Perm α` that contains a cycle of prime order
contains the alternating group. -/
proof_wanted alternatingGroup_le_of_isPreprimitive_of_isCycle_mem
  (hG : IsPreprimitive G α)
  {p : ℕ} (hp : p.Prime) (hp' : p + 3 ≤ Nat.card α)
  {g : Perm α} (hgc : g.IsCycle) (hgp : g.support.card = p)
  (hg : g ∈ G) : alternatingGroup α ≤ G

end Equiv.Perm

end Subgroups
```
