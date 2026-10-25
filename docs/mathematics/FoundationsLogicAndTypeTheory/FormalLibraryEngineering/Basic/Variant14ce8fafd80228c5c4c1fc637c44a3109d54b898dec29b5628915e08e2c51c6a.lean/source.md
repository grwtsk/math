# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant14ce8fafd80228c5c4c1fc637c44a3109d54b898dec29b5628915e08e2c51c6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea1663d2c101eff2bee70cfcfb08e654db3f25be` · SHA-256 `14ce8fafd80228c5c4c1fc637c44a3109d54b898dec29b5628915e08e2c51c6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.RewriteSearch

set_option autoImplicit true

-- You can enable tracing of the `rw_search` algorithm using
-- set_option trace.rw_search true

-- You can get timing information (very useful if tweaking the search algorithm!) using
-- set_option profiler true


/--
info: Try this: rw [List.length_append, Nat.add_comm]
-- no goals
-/
#guard_msgs in
example (xs ys : List α) : (xs ++ ys).length = ys.length + xs.length := by
  rw_search

-- This worked in previous versions, but for now doesn't.
-- There are of course better tools for AC rewriting, but it would be nice if `rw_search`
-- could do a little of it in the course of a longer rewrite.
set_option linter.style.longLine false in
/-!
-- /-
-- info: Try this: rw [← add_assoc, add_right_comm, add_assoc, add_add_add_comm, ← add_assoc, add_right_comm]
-- -/
-- #guard_msgs (drop info) in
-- example [AddCommMonoid α] {a b c d : α} : (a + b) + (c + d) = a + d + c + b := by
--   rw_search
-/

/--
info: Try this: rw [List.length_append, List.length_append, Nat.two_mul, add_rotate]
-- no goals
-/
#guard_msgs in
example (xs ys : List α) :
    (xs ++ ys ++ ys).length = 2 * ys.length + xs.length := by
  rw_search

set_option linter.style.longLine false in
/-!
info: Try this: rw [List.length_append, List.length_append, Nat.two_mul, Nat.add_assoc, Nat.add_left_comm, Nat.add_right_comm, Nat.add_assoc]
-/
#guard_msgs (drop info) in
example (xs ys : List α) :
    (xs ++ ys ++ ys).length = 2 * ys.length + xs.length := by
  rw_search [-add_rotate]

set_option linter.style.longLine false in
/-!
info: Try this: rw [Int.add_right_comm, add_right_cancel_iff, add_sub_left_comm, add_sub, Int.add_sub_cancel]
-/
#guard_msgs (drop info) in
example {a b c : Int} : a + b = c + b + (a - c) := by
  rw_search

/-! A test of the current tokenization scheme. -/
/-- info: ["(", "[", "5", ",", "3", "]", ",", "4", "+", "(", "2", "*", "1", ")", ")"] -/
#guard_msgs in
open Mathlib.Tactic.RewriteSearch in
#eval ("([5, 3], 4 + (2 * 1))".splitOn.map splitDelimiters).flatten

-- Function that always constructs `[0]`. Used in the following example.
def makeSingleton : Nat → List Nat
  | 0 => [0]
  | b + 1 => makeSingleton b

/--
info: Try this: rw [← ih]
-- no goals
-/
#guard_msgs in
set_option maxHeartbeats 1000 in
theorem foo (n : Nat) : makeSingleton n = [0] := by
  induction' n with n' ih
  · simp only [makeSingleton]
  · -- At one point, this failed with: unknown free variable '_uniq.62770'
    rw_search
```
