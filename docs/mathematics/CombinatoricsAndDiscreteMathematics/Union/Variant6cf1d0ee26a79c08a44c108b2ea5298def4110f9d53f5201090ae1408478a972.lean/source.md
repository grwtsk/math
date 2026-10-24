# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Union.Variant6cf1d0ee26a79c08a44c108b2ea5298def4110f9d53f5201090ae1408478a972

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecc7cdd1ee6390491c2ebf2cae40f7abf32580fc` · SHA-256 `6cf1d0ee26a79c08a44c108b2ea5298def4110f9d53f5201090ae1408478a972`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Lattice.Fold
public import Mathlib.Data.Finset.Union

/-!
# Relating `Finset.biUnion` with lattice operations

This file shows `Finset.biUnion` could alternatively be defined in terms of `Finset.sup`.

## TODO

Remove `Finset.biUnion` in favour of `Finset.sup`.
-/

public section

open OrderDual

variable {F α β γ ι κ : Type*}
variable {s s₁ s₂ : Finset β} {f g : β → α} {a : α}

namespace Finset

section Sup

variable [SemilatticeSup α] [OrderBot α]

@[simp, grind =]
theorem sup_biUnion [DecidableEq β] (s : Finset γ) (t : γ → Finset β) :
    (s.biUnion t).sup f = s.sup fun x => (t x).sup f :=
  eq_of_forall_ge_iff fun c => by simp [@forall_comm _ β]

end Sup

section Inf

variable [SemilatticeInf α] [OrderTop α]

@[simp, grind =] theorem inf_biUnion [DecidableEq β] (s : Finset γ) (t : γ → Finset β) :
    (s.biUnion t).inf f = s.inf fun x => (t x).inf f :=
  @sup_biUnion αᵒᵈ _ _ _ _ _ _ _ _

end Inf

section Sup'

variable [SemilatticeSup α]

variable {s : Finset β} (H : s.Nonempty) (f : β → α)

theorem sup'_biUnion [DecidableEq β] {s : Finset γ} (Hs : s.Nonempty) {t : γ → Finset β}
    (Ht : ∀ b, (t b).Nonempty) :
    (s.biUnion t).sup' (Hs.biUnion fun b _ => Ht b) f = s.sup' Hs (fun b => (t b).sup' (Ht b) f) :=
  eq_of_forall_ge_iff fun c => by simp [@forall_comm _ β]

end Sup'

section Inf'

variable [SemilatticeInf α]

variable {s : Finset β} (H : s.Nonempty) (f : β → α)

theorem inf'_biUnion [DecidableEq β] {s : Finset γ} (Hs : s.Nonempty) {t : γ → Finset β}
    (Ht : ∀ b, (t b).Nonempty) :
    (s.biUnion t).inf' (Hs.biUnion fun b _ => Ht b) f = s.inf' Hs (fun b => (t b).inf' (Ht b) f) :=
  sup'_biUnion (α := αᵒᵈ) _ Hs Ht

end Inf'

variable [DecidableEq α] {s : Finset ι} {f : ι → Finset α} {a : α}

theorem sup_eq_biUnion {α β} [DecidableEq β] (s : Finset α) (t : α → Finset β) :
    s.sup t = s.biUnion t := by
  ext
  rw [mem_sup, mem_biUnion]

end Finset
```
