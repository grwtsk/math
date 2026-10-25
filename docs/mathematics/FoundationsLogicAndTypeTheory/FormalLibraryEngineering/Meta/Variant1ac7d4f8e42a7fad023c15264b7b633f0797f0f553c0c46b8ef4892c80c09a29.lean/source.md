# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant1ac7d4f8e42a7fad023c15264b7b633f0797f0f553c0c46b8ef4892c80c09a29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc9873ea14e300667558777595aa8754e6a399e2` · SHA-256 `1ac7d4f8e42a7fad023c15264b7b633f0797f0f553c0c46b8ef4892c80c09a29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.SyntheticMVars

public section

namespace Lean.Elab
open Term

/-- Apply the give tactic code to `mvarId` in `MetaM`. -/
def runTactic (mvarId : MVarId) (tacticCode : Syntax) (ctx : Context := {}) (s : State := {}) : MetaM (List MVarId × State) := do
  instantiateMVarDeclMVars mvarId
  let go : TermElabM (List MVarId) :=
    withSynthesize do Tactic.run mvarId (Tactic.evalTactic tacticCode *> Tactic.pruneSolvedGoals)
  go.run ctx s

end Lean.Elab
```
