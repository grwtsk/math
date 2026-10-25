# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dbb0a7397fd182a7fb4c346163671b2c4bf67bd` · SHA-256 `8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.GetElem
import Init.PropLemmas

public section

@[expose] section

namespace Lean

/--
A `RArray` can model `Fin n → α` or `Array α`, but is optimized for a fast kernel-reducible `get`
operation.

The primary intended use case is the “denote” function of a typical proof by reflection proof, where
only the `get` operation is necessary. It is not suitable as a general-purpose data structure.

There is no well-formedness invariant attached to this data structure, to keep it concise; it's
semantics is given through `RArray.get`. In that way one can also view an `RArray` as a decision
tree implementing `Nat → α`.

See `RArray.ofFn` and `RArray.ofArray` in module `Lean.Data.RArray` for functions that construct an
`RArray`.
-/
inductive RArray (α : Type u) : Type u where
  | leaf : α → RArray α
  | branch : Nat → RArray α → RArray α → RArray α

variable {α : Type u}

/-- The crucial operation, written with very little abstractional overhead -/
noncomputable abbrev RArray.get (a : RArray α) (n : Nat) : α :=
  RArray.rec (fun x => x) (fun p _ _ l r => (Nat.ble p n).rec l r) a

private theorem RArray.get_eq_def (a : RArray α) (n : Nat) :
  a.get n = match a with
    | .leaf x => x
    | .branch p l r => (Nat.ble p n).rec (l.get n) (r.get n) := by
  conv => lhs; unfold RArray.get
  split <;> rfl

/-- `RArray.get`, implemented conventionally -/
def RArray.getImpl (a : RArray α) (n : Nat) : α :=
  match a with
  | .leaf x => x
  | .branch p l r => if n < p then l.getImpl n else r.getImpl n

@[csimp]
theorem RArray.get_eq_getImpl : @RArray.get = @RArray.getImpl := by
  funext α a n
  induction a with
  | leaf _ => rfl
  | branch p l r ihl ihr =>
    rw [RArray.getImpl, RArray.get_eq_def]
    simp only [ihl, ihr, ← Nat.not_le, ← Nat.ble_eq, ite_not]
    cases hnp : Nat.ble p n <;> rfl

instance : GetElem (RArray α) Nat α (fun _ _ => True) where
  getElem a n _ := a.get n

def RArray.size : RArray α → Nat
  | leaf _ => 1
  | branch _ l r => l.size + r.size

end Lean
```
