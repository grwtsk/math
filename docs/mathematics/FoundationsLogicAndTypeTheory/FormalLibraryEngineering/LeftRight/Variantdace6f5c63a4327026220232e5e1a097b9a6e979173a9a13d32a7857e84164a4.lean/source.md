# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRight.Variantdace6f5c63a4327026220232e5e1a097b9a6e979173a9a13d32a7857e84164a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc7b18e4323c4fb34126e842cf8d8fb4cd9917bc` · SHA-256 `dace6f5c63a4327026220232e5e1a097b9a6e979173a9a13d32a7857e84164a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.LeftRight
import Std.Tactic.GuardMsgs

/-- Construct a natural number using `left`. -/
def zero : Nat := by
  left

example : zero = 0 := rfl

/-- Construct a natural number using `right`. -/
def two : Nat := by
  right
  exact 1

example : two = 2 := rfl

set_option linter.missingDocs false

/--
error: tactic 'constructor' failed,
left tactic works for inductive types with exactly 2 constructors
⊢ Unit
-/
#guard_msgs in
example : Unit := by
  left

inductive F
| a | b | c

/--
error: tactic 'constructor' failed,
left tactic works for inductive types with exactly 2 constructors
⊢ F
-/
#guard_msgs in
example : F := by
  left

def G := Nat

/-- Look through definitions. -/
example : G := by
  left

/--
error: tactic 'constructor' failed, target is not an inductive datatype
⊢ Type
-/
#guard_msgs in
example : Type := by
  left

example : Sum Nat (List Nat) := by
  left
  exact zero

example : Sum Nat (List Nat) := by
  right
  exact [0]

example : (1 = 1) ∨ (2 = 3) := by
  left
  rfl

example : (1 = 2) ∨ (3 = 3) := by
  right
  rfl
```
