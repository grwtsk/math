# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variant5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db4bb3a1ff148c570a6321664a59588d96b9b378` · SHA-256 `5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module
prelude
public import Lean.Meta.Tactic.BVDecide.Normalize

namespace Lean.Elab.Tactic.BVDecide
namespace Normalize

@[builtin_tactic Lean.Parser.Tactic.bvNormalize]
def evalBVNormalize : Tactic := fun
  | `(tactic| bv_normalize $cfg:optConfig) => do
    let cfg ← Meta.Tactic.BVDecide.elabBVDecideConfig cfg
    let g ← getMainGoal
    match ← Meta.Tactic.BVDecide.Normalize.bvNormalize g cfg with
    | some newGoal => replaceMainGoal [newGoal]
    | none => replaceMainGoal []
  | _ => throwUnsupportedSyntax

end Normalize
end Lean.Elab.Tactic.BVDecide
```
