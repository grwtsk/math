# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KVMap.Variant674a21d281fba6866c9cd70d71649dbbd031c95bbce3afc1b0efb29f9a5497ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5f89e420df48e709338aceb0b66b4969f27075c` · SHA-256 `674a21d281fba6866c9cd70d71649dbbd031c95bbce3afc1b0efb29f9a5497ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Lean.Data.KVMap

/-!
# Additional functionality for `KVMap`
-/

namespace Lean.KVMap

/-- erase pairs whose names match the second argument from a list of
`Name × DataValue` pairs-/
def eraseCore : List (Name × DataValue) → Name → List (Name × DataValue)
  | l, n => List.filter (fun a ↦ a.1 ≠ n) l

/-- erase an entry from the map -/
def erase : KVMap → Name → KVMap
  | ⟨m⟩, k => ⟨eraseCore m k⟩

/-- update a Boolean entry based on its current value. -/
def updateBool (m : KVMap) (k : Name) (f : Bool → Bool) : KVMap :=
  m.insert k <| DataValue.ofBool <| f <| m.getBool k

end Lean.KVMap
```
