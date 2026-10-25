# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assumption.Variant9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d4d8f5ca066b54065bdf5124faf12bf23f5aa56` · SHA-256 `9acc84bb2f2243a7ffb80dfb1b45e5ee7652042374ef5add6725033c035be562`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Util

public section

namespace Lean.Meta

/-- Return a local declaration whose type is definitionally equal to `type`. -/
def findLocalDeclWithType? (type : Expr) : MetaM (Option FVarId) := do
  (← getLCtx).findDeclRevM? fun localDecl => do
    if localDecl.isImplementationDetail then
      return none
    else if (← isDefEq type localDecl.type) then
      return some localDecl.fvarId
    else
      return none

/-- Return `true` if managed to close goal `mvarId` using an assumption. -/
def _root_.Lean.MVarId.assumptionCore (mvarId : MVarId) : MetaM Bool :=
  mvarId.withContext do
    mvarId.checkNotAssigned `assumption
    match (← findLocalDeclWithType? (← mvarId.getType)) with
    | none => return false
    | some fvarId => mvarId.assign (mkFVar fvarId); return true

/-- Close goal `mvarId` using an assumption. Throw error message if failed. -/
def _root_.Lean.MVarId.assumption (mvarId : MVarId) : MetaM Unit :=
  unless (← mvarId.assumptionCore) do
    throwTacticEx `assumption mvarId

end Lean.Meta
```
