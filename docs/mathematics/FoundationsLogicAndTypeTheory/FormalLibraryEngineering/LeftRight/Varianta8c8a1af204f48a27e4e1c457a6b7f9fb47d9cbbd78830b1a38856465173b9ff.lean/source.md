# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRight.Varianta8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb395221b19ead2029daefd29b4f0f9454f4662b` · SHA-256 `a8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.LeftRight

def zero : Nat := by
  left

#eval zero -- 0

def two : Nat := by
  right
  exact 1

#eval two -- 2

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
