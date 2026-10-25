# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variant1215b2c69976017da474085ab1635056ef0f67f89d3092a734b33facfc99cc87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `543ff4f88cec7c3e0b967ea54df83cdc45f3b6f7` · SHA-256 `1215b2c69976017da474085ab1635056ef0f67f89d3092a734b33facfc99cc87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Relation.Rfl

example (a : Nat) : a = a := rfl

example (a : Nat) : a = a := by rfl

open Setoid

universe u
variable {α : Sort u} [Setoid α]

@[refl] def iseqv_refl (a : α) : a ≈ a :=
  iseqv.refl a

example (a : α) : a ≈ a := by rfl

example (a : Nat) : a ≤ a := by (fail_if_success rfl); apply Nat.le_refl

attribute [refl] Nat.le_refl

example (a : Nat) : a ≤ a := by rfl

structure Foo

def Foo.le (_ _ : Foo) := Unit → True
instance : LE Foo := ⟨Foo.le⟩

@[refl] theorem Foo.le_refl (a : Foo) : a ≤ a := fun _ => trivial

example (a : Foo) : a ≤ a := by apply Foo.le_refl
example (a : Foo) : a ≤ a := by rfl

example (x : Nat) : x ≤ x := by
  show _
  rfl
```
