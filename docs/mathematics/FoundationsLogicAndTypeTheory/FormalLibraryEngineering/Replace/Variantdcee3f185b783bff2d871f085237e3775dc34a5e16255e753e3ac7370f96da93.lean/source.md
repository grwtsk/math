# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variantdcee3f185b783bff2d871f085237e3775dc34a5e16255e753e3ac7370f96da93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c75d390b8de276b1290f392571b32824e13b33d5` · SHA-256 `dcee3f185b783bff2d871f085237e3775dc34a5e16255e753e3ac7370f96da93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/
import Std.Tactic.Replace

set_option linter.unusedVariables false

-- tests with an explicitly named hypothesis

example (h : Int) : Nat := by
  replace h : Nat := 0
  exact h

example (h : Nat) : Nat := by
  have h : Int := 0
  assumption -- original `h` is not absent but...

example (h : Nat) : Nat := by
  replace h : Int := 0
  fail_if_success assumption -- original `h` is absent now
  replace h : Nat := 0
  exact h

-- tests with `this`

example : Nat := by
  have : Int := 0
  replace : Nat := 0
  assumption

example : Nat := by
  have : Nat := 0
  have : Int := 0
  assumption -- original `this` is not absent but...

example : Nat := by
  have : Nat := 0
  replace : Int := 0
  fail_if_success assumption -- original `this` is absent now
  replace : Nat := 0
  assumption

-- trying to replace the type of a variable when the goal depends on it

example {a : Nat} : a = a := by
  replace a : Int := 0
  have : Nat := by assumption -- old `a` is not gone
  have : Int := by exact a    -- new `a` is of type `Int`
  simp
```
