# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `636aa6099432bc53151ad7459dcc07028ff87c27` · SHA-256 `7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Relation.Symm
import Std.Tactic.RCases

set_option autoImplicit true
set_option linter.missingDocs false

-- testing that the attribute is recognized
@[symm] def eq_symm {α : Type} (a b : α) : a = b → b = a := Eq.symm

example (a b : Nat) : a = b → b = a := by intros; symm; assumption
example (a b : Nat) : a = b → True → b = a := by intro h _; symm at h; assumption

def sameParity : Nat → Nat → Prop
  | n, m => n % 2 = m % 2

@[symm] def sameParity_symm (n m : Nat) : sameParity n m → sameParity m n := Eq.symm

example (a b : Nat) : sameParity a b → sameParity b a := by intros; symm; assumption

def MyEq (n m : Nat) := ∃ k, n + k = m ∧ m + k = n

@[symm] theorem MyEq.symm {n m : Nat} (h : MyEq n m) : MyEq m n := by
  rcases h with ⟨k, h1, h2⟩
  exact ⟨k, h2, h1⟩

example {n m : Nat} (h : MyEq n m) : MyEq m n := by
  symm
  assumption
```
