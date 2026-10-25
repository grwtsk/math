# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `934530d4156821d2a47b06606e21691934dc4345` · SHA-256 `5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Rewrite
public import Lean.Elab.Tactic.Conv.Basic

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.rewrite] def evalRewrite : Tactic := fun stx => do
  let config ← Tactic.elabRewriteConfig stx[1]
  withRWRulesSeq stx[0] stx[2] fun symm term => withMainContext do
    let r ← Term.withSynthesize do
      elabRewrite (← getMainGoal) (← getLhs) term symm (config := config)
    let r ← finishElabRewrite r
    updateLhs r.eNew r.eqProof
    replaceMainGoal ((← getMainGoal) :: r.mvarIds)

end Lean.Elab.Tactic.Conv
```
