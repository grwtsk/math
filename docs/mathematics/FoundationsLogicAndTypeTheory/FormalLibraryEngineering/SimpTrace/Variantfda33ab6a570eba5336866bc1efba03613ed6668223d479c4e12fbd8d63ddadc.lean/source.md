# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variantfda33ab6a570eba5336866bc1efba03613ed6668223d479c4e12fbd8d63ddadc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11ad3326a9944a3cc358b5e6f597192300daefb8` · SHA-256 `fda33ab6a570eba5336866bc1efba03613ed6668223d479c4e12fbd8d63ddadc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.SqueezeScope

-- undo changes to simp set after test was written
attribute [-simp] Nat.add_left_cancel_iff Nat.add_right_cancel_iff

set_option linter.missingDocs false

/-- info: Try this: simp only [Nat.add_comm] -/
#guard_msgs in
example : x + 1 = 1 + x := by simp? [Nat.add_comm, Nat.mul_comm]
/-- info: Try this: dsimp only [Nat.reduceAdd] -/
#guard_msgs in
example : 1 + 1 = 2 := by dsimp?

@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

/--
info: Try this: simp only [foo, bar]
---
info: Try this: simp only [foo, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

/-- info: Try this: simp only [foo, bar, baz] -/
#guard_msgs in
example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"
```
