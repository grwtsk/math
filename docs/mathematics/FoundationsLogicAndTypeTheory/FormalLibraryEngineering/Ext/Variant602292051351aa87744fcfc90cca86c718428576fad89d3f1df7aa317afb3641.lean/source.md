# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant602292051351aa87744fcfc90cca86c718428576fad89d3f1df7aa317afb3641

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43e77b768537b89a551fb4baf41710c545528a0e` · SHA-256 `602292051351aa87744fcfc90cca86c718428576fad89d3f1df7aa317afb3641`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute

public section

namespace Aesop.BuiltinRules

open Lean Lean.Meta

meta def extCore (goal : MVarId) : ScriptM (Option (Array MVarId)) :=
  saturate1 goal λ goal => do
    let r ← straightLineExtS goal
    if r.depth == 0 then
      return none
    else
      return r.goals.map (·.1)

@[aesop 80% tactic (index := [target _ = _]) (rule_sets := [builtin])]
meta def ext : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let (some goals, steps) ← extCore input.goal |>.run
    | throwError "found no applicable ext lemma"
  let goals ← goals.mapM (mvarIdToSubgoal (parentMVarId := input.goal) ·)
  return (goals, steps, none)

end Aesop.BuiltinRules
```
