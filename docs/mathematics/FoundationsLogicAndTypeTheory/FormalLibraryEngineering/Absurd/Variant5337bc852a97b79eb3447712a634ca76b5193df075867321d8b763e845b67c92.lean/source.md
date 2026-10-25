# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Absurd.Variant5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b30984b9a26f496fff0a46cb7a194ec0772b49c0` · SHA-256 `5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Basic

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
example {p : Prop} (h : p → False) : 0 = 3 := by
  absurd h

/--
error: unsolved goals
p : Prop
h : p
⊢ ¬p
-/
#guard_msgs in
example {p : Prop} {h : p} : ∀ {x : True}, 0 = 0 := by
  absurd h

-- `·` should not be legal
/--
error: invalid occurrence of `·` notation, it must be surrounded by parentheses (e.g. `(· + 1)`)
---
error: unsolved goals
p : Prop
h : p
⊢ ∀ {x : True}, 0 = 0
-/
#guard_msgs in
example {p : Prop} {h : p} : ∀ {_ : True}, 0 = 0 := by
  absurd ·
```
