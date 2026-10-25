# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Absurd.Variant198ee8197b3bfc9ee3c7629d34172f457c3e14e150c29051cdfa7630b25548a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd0d4af4f885a4a23f11bae3593c8da7a35f48a9` · SHA-256 `198ee8197b3bfc9ee3c7629d34172f457c3e14e150c29051cdfa7630b25548a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Basic
import Std.Tactic.GuardMsgs

/-! Tests for `absurd` tactic -/

-- Basic example
/--
error: unsolved goals
p : Prop
h : p
⊢ ¬p
-/
#guard_msgs in
example {p : Prop} (h : p) : 0 = 0 := by
  absurd h

-- Negative example
/--
error: unsolved goals
p : Prop
h : ¬p
⊢ p
-/
#guard_msgs in
example {p : Prop} (h : ¬p) : 0 = 1 := by
  absurd h

-- Inequality example
/--
error: unsolved goals
n : Nat
h : n ≠ 0
⊢ n = 0
-/
#guard_msgs in
example (h : n ≠ 0) : 0 = 2 := by
  absurd h

-- Example with implies false
/--
error: unsolved goals
p : Prop
h : p → False
⊢ p
-/
#guard_msgs in
example (h : p → False) : 0 = 3 := by
  absurd h
```
