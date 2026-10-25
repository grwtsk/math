# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variant58eb83b1c7de93c1fdb786d506b01cf7a2b26e2df3d97ce0912e123803e2b153

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e46ecf389b4a3c9424a5d93bb8b20fdffa13b14` · SHA-256 `58eb83b1c7de93c1fdb786d506b01cf7a2b26e2df3d97ce0912e123803e2b153`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.SeqFocus

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  constructor
  -- error: too many tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩; trivial; trivial]
  -- error: not enough tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩]
  map_tacs [trivial; exact ⟨0, rfl⟩; trivial]

example : ((True ∧ True) ∧ (∃ x : Nat, x = x)) ∧ (True ∧ (∃ x : Nat, x = x)) := by
  constructor
  constructor
  map_tacs [(constructor; trivial); exact ⟨0, rfl⟩; constructor]
  trivial
  trivial
  exact ⟨0, rfl⟩

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  -- error: not enough tactics
  fail_if_success constructor <;> [trivial]
  map_tacs [constructor <;> [trivial; exact ⟨0, rfl⟩]; constructor]
```
