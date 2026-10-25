# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variant22d25e3259fc848aa2e141db54bb510804f5d943e03a528548e5a21c2f0afbf6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9190c33ff1639e187e0d8bc47c1cefcc24bf089` · SHA-256 `22d25e3259fc848aa2e141db54bb510804f5d943e03a528548e5a21c2f0afbf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.SqueezeScope

-- undo changes to simp set after test was written
attribute [-simp] Nat.add_left_cancel_iff Nat.add_right_cancel_iff

set_option linter.missingDocs false

/--
info: Try this:
  [apply] simp only [Nat.add_comm]
-/
#guard_msgs in
example : x + 1 = 1 + x := by simp? [Nat.add_comm, Nat.mul_comm]
/--
info: Try this:
  [apply] dsimp only [Nat.reduceAdd]
-/
#guard_msgs in
example : 1 + 1 = 2 := by dsimp?

-- Helper definitions for squeeze_scope tests
@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

@[simp] def qux : Bool → Nat → Nat
  | true, z => bar z
  | false, z => baz z

def myId (x : Nat) := x
def myId2 (x : Nat) := x

def myPair : Bool → Nat → Nat
  | true, x => myId x
  | false, x => myId2 x

-- Without squeeze_scope: multiple printouts
/--
info: Try this:
  [apply] simp only [foo, bar]
---
info: Try this:
  [apply] simp only [foo, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

-- With squeeze_scope: single aggregated printout
/--
info: Try this:
  [apply] simp only [foo, bar, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"

-- squeeze_scope works with simp?
/--
info: Try this:
  [apply] simp only [foo, bar, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp?

-- squeeze_scope works with simp_all?
/--
info: Try this:
  [apply] simp_all only [qux, baz, bar]
-/
#guard_msgs in
example : qux b y = 1 + y := by
  squeeze_scope
    cases b <;> simp_all?

-- squeeze_scope works with dsimp?
/--
info: Try this:
  [apply] dsimp only [myPair, myId2, myId]
-/
#guard_msgs in
example : myPair b x = x := by
  squeeze_scope
    cases b <;> dsimp? [myPair, myId, myId2]
```
