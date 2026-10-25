# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant54b45ff452fe4233dd5501145121db8b393ae088091f232010760d3053b83b15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1319a6ebfcb86d0ff1380307eaa55fbadf7308f` · SHA-256 `54b45ff452fe4233dd5501145121db8b393ae088091f232010760d3053b83b15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.TypeCheck

/-- A term where `inferType` returns `Prop`, but which does not type check. -/
elab "wrong" : term =>
  return Lean.mkApp2 (.const ``id [.zero]) (.sort .zero) (.app (.sort .zero) (.sort .zero))

example : True := by
  type_check Nat -- Type
  type_check Bool.true -- Bool
  type_check nat_lit 1 -- Nat
  type_check (1 : Nat) -- Nat
  type_check (True : _) -- Prop
  type_check ∀ x y : Nat, x = y -- Prop
  type_check fun x : Nat => 2 * x + 1 -- Nat -> Nat
  fail_if_success type_check wrong
  trivial
```
