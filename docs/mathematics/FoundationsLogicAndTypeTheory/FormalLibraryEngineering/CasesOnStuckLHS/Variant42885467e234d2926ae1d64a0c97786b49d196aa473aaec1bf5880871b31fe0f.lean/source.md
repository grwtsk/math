# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesOnStuckLHS.Variant42885467e234d2926ae1d64a0c97786b49d196aa473aaec1bf5880871b31fe0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d13d762bfe5374e2ec74fcbf09a4f1f3bb9097f` · SHA-256 `42885467e234d2926ae1d64a0c97786b49d196aa473aaec1bf5880871b31fe0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
import Lean.ProjFns
import Lean.Meta.Tactic.Cases
namespace Lean.Meta

/-!
This module provides the `casesOnStuckLHS` tactic, used by
* match equation compilation
* equation compilation for recursive functions
-/

/--
  Helper method for `proveCondEqThm`. Given a goal of the form `C.rec ... xMajor = rhs`,
  apply `cases xMajor`. -/
public partial def casesOnStuckLHS (mvarId : MVarId) : MetaM (Array MVarId) := do
  let target ← mvarId.getType
  if let some (_, lhs) ← matchEqHEqLHS? target then
    if let some fvarId ← findFVar? lhs then
      return (←  mvarId.cases fvarId).map fun s => s.mvarId
  throwError "'casesOnStuckLHS' failed"
where
  findFVar? (e : Expr) : MetaM (Option FVarId) := do
    match e.getAppFn with
    | Expr.proj _ _ e => findFVar? e
    | f =>
      if !f.isConst then
        return none
      else
        let declName := f.constName!
        let args := e.getAppArgs
        match (← getProjectionFnInfo? declName) with
        | some projInfo =>
          if projInfo.numParams < args.size then
            findFVar? args[projInfo.numParams]!
          else
            return none
        | none =>
          matchConstRec f (fun _ => return none) fun recVal _ => do
            if recVal.getMajorIdx >= args.size then
              return none
            let major := args[recVal.getMajorIdx]!.consumeMData
            if major.isFVar then
              return some major.fvarId!
            else
              return none

public def casesOnStuckLHS? (mvarId : MVarId) : MetaM (Option (Array MVarId)) := do
  try casesOnStuckLHS mvarId catch _ => return none
```
