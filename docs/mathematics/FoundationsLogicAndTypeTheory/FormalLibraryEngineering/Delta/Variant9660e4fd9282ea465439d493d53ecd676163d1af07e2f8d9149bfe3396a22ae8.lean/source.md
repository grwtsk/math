# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Variant9660e4fd9282ea465439d493d53ecd676163d1af07e2f8d9149bfe3396a22ae8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed4b3b64a1f0b576dbfb396da3d546f9afd3b825` · SHA-256 `9660e4fd9282ea465439d493d53ecd676163d1af07e2f8d9149bfe3396a22ae8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Delta
public import Lean.Elab.Tactic.Location

public section

namespace Lean.Elab.Tactic
open Meta

def deltaLocalDecl (declNames : Array Name) (fvarId : FVarId) : TacticM Unit := do
  let mvarId ← getMainGoal
  let localDecl ← fvarId.getDecl
  let typeNew ← deltaExpand localDecl.type declNames.contains
  if typeNew == localDecl.type then
    throwTacticEx `delta mvarId m!"did not delta reduce {declNames} at {localDecl.userName}"
  replaceMainGoal [← mvarId.replaceLocalDeclDefEq fvarId typeNew]

def deltaTarget (declNames : Array Name) : TacticM Unit := do
  let mvarId ← getMainGoal
  let target ← getMainTarget
  let targetNew ← deltaExpand target declNames.contains
  if targetNew == target then
    throwTacticEx `delta mvarId m!"did not delta reduce {declNames}"
  replaceMainGoal [← mvarId.replaceTargetDefEq targetNew]

/-- "delta " ident+ (location)? -/
@[builtin_tactic Lean.Parser.Tactic.delta] def evalDelta : Tactic := fun stx => do
  let declNames ← stx[1].getArgs.mapM fun stx => realizeGlobalConstNoOverloadWithInfo stx
  let loc := expandOptLocation stx[2]
  withLocation loc (deltaLocalDecl declNames) (deltaTarget declNames)
    (throwTacticEx `delta · m!"did not delta reduce {declNames}")

end Lean.Elab.Tactic
```
