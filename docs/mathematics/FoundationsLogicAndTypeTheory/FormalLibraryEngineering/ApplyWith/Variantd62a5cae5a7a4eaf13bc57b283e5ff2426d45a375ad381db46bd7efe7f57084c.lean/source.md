# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyWith.Variantd62a5cae5a7a4eaf13bc57b283e5ff2426d45a375ad381db46bd7efe7f57084c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58a6f7fad921da9da9a4e10f1941fd26d12116ca` · SHA-256 `d62a5cae5a7a4eaf13bc57b283e5ff2426d45a375ad381db46bd7efe7f57084c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ApplyWith

set_option autoImplicit true
example (f : ∀ x : Nat, x = x → α) : α := by
  apply (config := {}) f
  apply rfl
  apply 1

example (f : ∀ x : Nat, x = x → α) : α := by
  apply (config := { newGoals := .nonDependentOnly }) f
  apply @rfl _ 1

example (f : ∀ x : Nat, x = x → α) : α := by
  apply (config := { newGoals := .all }) f
  apply 1
  apply rfl
```
