# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearValue.Variant2fc40dece0efdc91064d9fc9bd14b95a4881de737c9e46c07dcff923a543fc0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dad634dbe4953ddd7c64cf2bf8145d3f8e00dc83` · SHA-256 `2fc40dece0efdc91064d9fc9bd14b95a4881de737c9e46c07dcff923a543fc0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Basic

example : let x := 22; 0 ≤ x := by
  intro x
  clear_value x
  fail_if_success clear_value x
  exact Nat.zero_le _

example : let x := 22; let y : Fin x := 0; y.1 < x := by
  intro x y
  fail_if_success clear_value x
  clear_value y
  clear_value x
  fail_if_success clear_value x
  fail_if_success clear_value y
  exact y.2

example : let x := 22; let y : Fin x := 0; y.1 < x := by
  intro x y
  fail_if_success clear_value x -- 0 depends on `x = Nat.succ _`
  clear_value y x
  fail_if_success clear_value x
  fail_if_success clear_value y
  exact y.2

example : let x := 22; let y : Fin x := 0; y.1 < x := by
  intro x y
  fail_if_success clear_value x
  clear_value x y
  fail_if_success clear_value x
  fail_if_success clear_value y
  exact y.2

example : let x := 22; let y : Nat := x; let z : Fin (y + 1) := 0; z.1 < y + 1 := by
  intro x y z
  clear_value x -- `0` depends on `x` but its OK
  exact z.2

example : let x := 22; let y : Nat := x; let z : Fin (y + 1) := 0; z.1 < y + 1 := by
  intro x y z
  clear_value y -- `0` depends on `y` but its OK
  exact z.2
```
