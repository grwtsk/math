# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTrees.Variant6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f2760b4570fa7ca8cf97f4924c7b06c5cdee94a` · SHA-256 `6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Elab.Command

public section

open Lean Elab Command

namespace Lean.Elab.Tactic.InfoTrees

@[builtin_command_elab infoTreesCmd, inherit_doc guardMsgsCmd]
def elabInfoTrees : CommandElab
  | `(command| #info_trees%$tk in $cmd) => do
    if ! (← getInfoState).enabled then
      logError "Info trees are disabled, can not use `#info_trees`."
    else
      elabCommand cmd
      let infoTrees := (← getInfoState).substituteLazy.get.trees
      for t in infoTrees do
        logInfoAt tk (← t.format)
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.InfoTrees
```
