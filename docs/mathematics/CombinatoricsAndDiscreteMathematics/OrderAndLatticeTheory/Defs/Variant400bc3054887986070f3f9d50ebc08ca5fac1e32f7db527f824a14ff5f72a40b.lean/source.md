# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5848ca876d2b0d322daa6fd60ad97a9432b0d7c` · SHA-256 `400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Yury Kudryashov
-/

import Mathlib.Data.Nat.Notation
import Mathlib.Order.TypeTags

/-! # Definition and notation for extended natural numbers -/

/-- Extended natural numbers `ℕ∞ = WithTop ℕ`. -/
def ENat : Type := WithTop ℕ deriving Top, Inhabited

@[inherit_doc] notation "ℕ∞" => ENat

namespace ENat

instance instNatCast : NatCast ℕ∞ := ⟨WithTop.some⟩

/-- Recursor for `ENat` using the preferred forms `⊤` and `↑a`. -/
@[elab_as_elim, induction_eliminator, cases_eliminator]
def recTopCoe {C : ℕ∞ → Sort*} (top : C ⊤) (coe : ∀ a : ℕ, C a) : ∀ n : ℕ∞, C n
  | none => top
  | Option.some a => coe a

@[simp]
theorem recTopCoe_top {C : ℕ∞ → Sort*} (d : C ⊤) (f : ∀ a : ℕ, C a) :
    @recTopCoe C d f ⊤ = d :=
  rfl

@[simp]
theorem recTopCoe_coe {C : ℕ∞ → Sort*} (d : C ⊤) (f : ∀ a : ℕ, C a) (x : ℕ) :
    @recTopCoe C d f ↑x = f x :=
  rfl

end ENat
```
