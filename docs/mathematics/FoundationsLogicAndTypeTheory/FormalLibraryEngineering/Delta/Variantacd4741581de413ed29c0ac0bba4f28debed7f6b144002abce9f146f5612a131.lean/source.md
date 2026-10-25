# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Variantacd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `283b7c8525f7a2365dd14227af8ffb0e04e14333` · SHA-256 `acd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Replace
import Lean.Meta.Transform
public section
namespace Lean.Meta

def delta? (e : Expr) (p : Name → Bool := fun _ => true) (allowOpaque := false) : CoreM (Option Expr) :=
  matchConst e.getAppFn (fun _ => return none) fun fInfo fLvls => do
    if p fInfo.name && fInfo.hasValue (allowOpaque := allowOpaque) && fInfo.levelParams.length == fLvls.length then
      let f ← instantiateValueLevelParams fInfo fLvls (allowOpaque := allowOpaque)
      return some (f.betaRev e.getAppRevArgs (useZeta := true))
    else
      return none

/-- Low-level delta expansion. It is used to implement equation lemmas and elimination principles for recursive definitions. -/
def deltaExpand (e : Expr) (p : Name → Bool) (allowOpaque := false) : CoreM Expr :=
  Core.transform e fun e => do
    match (← delta? e p (allowOpaque := allowOpaque)) with
    | some e' => return .visit e'
    | none    => return .continue

/--
Delta expand declarations that satisfy `p` at `mvarId` type.
-/
def _root_.Lean.MVarId.deltaTarget (mvarId : MVarId) (p : Name → Bool) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `delta
    mvarId.change (← deltaExpand (← mvarId.getType) p) (checkDefEq := false)

/--
Delta expand declarations that satisfy `p` at `fvarId` type.
-/
def _root_.Lean.MVarId.deltaLocalDecl (mvarId : MVarId) (fvarId : FVarId) (p : Name → Bool) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `delta
    mvarId.changeLocalDecl fvarId (← deltaExpand (← fvarId.getType) p) (checkDefEq := false)

end Lean.Meta
```
