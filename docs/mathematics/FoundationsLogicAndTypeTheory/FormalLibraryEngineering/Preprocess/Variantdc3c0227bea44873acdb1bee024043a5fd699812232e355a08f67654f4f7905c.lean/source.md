# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantdc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bddc9d2a91d88d6250af189e318b3cc7bd27d0e` · SHA-256 `dc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic
public import Aesop.Script.SpecificTactics

public section

open Lean Lean.Meta

namespace Aesop.RuleTac

/--
This `RuleTac` is applied once to the root goal, before any other rules are
tried.
-/
def preprocess : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let ((mvarId, _), steps) ← renameInaccessibleFVarsS input.goal |>.run
  let diff := {
    oldGoal := input.goal
    newGoal := mvarId
    addedFVars := ∅
    removedFVars := ∅
    targetChanged := false
  }
  return (#[{ diff }], steps, none)

end Aesop.RuleTac
```
