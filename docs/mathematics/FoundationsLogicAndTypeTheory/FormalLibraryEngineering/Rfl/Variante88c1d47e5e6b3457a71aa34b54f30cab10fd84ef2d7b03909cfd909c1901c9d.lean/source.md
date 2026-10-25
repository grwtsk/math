# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variante88c1d47e5e6b3457a71aa34b54f30cab10fd84ef2d7b03909cfd909c1901c9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d720dfa0cb6c44ffa52a524babce231942097e2c` · SHA-256 `e88c1d47e5e6b3457a71aa34b54f30cab10fd84ef2d7b03909cfd909c1901c9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Elab.Tactic.Rfl
-- Adaptation note: we should be able to remove this import after nightly-2024-03-19

set_option linter.missingDocs false

example (a : Nat) : a = a := rfl

example (a : Nat) : a = a := by rfl

open Setoid

universe u
variable {α : Sort u} [Setoid α]

@[refl] theorem iseqv_refl (a : α) : a ≈ a :=
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
