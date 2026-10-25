# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant48c1dc81b64c4dabf93ab71c03d1501ac2eb5f44eb1f7ef879d04c306285b01e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `067cf4207b01700b28ced9a6ed21969368db6b6c` · SHA-256 `48c1dc81b64c4dabf93ab71c03d1501ac2eb5f44eb1f7ef879d04c306285b01e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Basic

public section

open Lean

namespace Aesop.Script

abbrev UTactic := Syntax.Tactic

structure STactic where
  numSubgoals : Nat
  run : Array (Array Syntax.Tactic) → Syntax.Tactic

structure Tactic where
  uTactic : UTactic
  sTactic? : Option STactic

namespace Tactic

instance : ToMessageData Tactic where
  toMessageData t := toMessageData t.uTactic

def unstructured (uTactic : UTactic) : Tactic where
  uTactic := uTactic
  sTactic? := none

def structured (uTactic : UTactic) (sTactic : STactic) : Tactic where
  uTactic := uTactic
  sTactic? := some sTactic

end Tactic

abbrev TacticBuilder := MetaM Tactic

end Aesop.Script
```
