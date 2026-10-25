# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IrreducibleDef.Variantb0ea650fbdfd0c65fd32b422e1f74655e593b7daceffc0381a7799d75a51b1a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34bdb58e7186a60c41a56fdce6cc67c976a12b7b` · SHA-256 `b0ea650fbdfd0c65fd32b422e1f74655e593b7daceffc0381a7799d75a51b1a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Util.WhatsNew

set_option autoImplicit true
/-- Add two natural numbers, but not during unification. -/
irreducible_def frobnicate (a b : Nat) :=
  a + b

example : frobnicate a 0 = a := by
  simp [frobnicate]

example : frobnicate a 0 = a :=
  frobnicate_def a 0

irreducible_def justAsArbitrary (lemma := myLemma) [Inhabited α] : α :=
  default

example : justAsArbitrary = 0 := myLemma

irreducible_def withoutType := 42

irreducible_def withEquations : Nat → Nat
  | 0 => 42
  | _n+1 => 314

irreducible_def withUniv.{u, v} := (Type v, Type u)
example : withUniv.{u, v} = (Type v, Type u) := by rw [withUniv]

namespace Foo
protected irreducible_def foo : Nat := 42
end Foo

example : Foo.foo = 42 := by rw [Foo.foo]

protected irreducible_def Bar.bar : Nat := 42

protected noncomputable irreducible_def Nat.evenMoreArbitrary : Nat :=
  Classical.choice inferInstance

private irreducible_def Real.zero := 42
example : Real.zero = 42 := Real.zero_def

irreducible_def y : Nat := let x := 42; x
example : y = 42 := @y_def
```
