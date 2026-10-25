# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrameProcAttr.Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f9e695b90637b6bbc85a6f3202bc0994a7a4639` · SHA-256 `c195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.Internal.VCGen.Context

/-!
The `@[frameproc]` attribute registers `FrameProc`s for `vcgen`.
-/

open Lean Meta Elab Sym
open Lean.Elab.Tactic.Do.Internal

public section

namespace Lean.Elab.Tactic.Do.Internal.VCGen

unsafe def getFrameProcFromDeclImpl (declName : Name) : ImportM FrameProc := do
  let ctx ← read
  match ctx.env.find? declName with
  | none => throw <| .userError s!"unknown constant '{declName}'"
  | some info =>
    unless info.type.isConstOf ``FrameProc do
      throw <| .userError s!"`{declName}` is not a `FrameProc`"
    IO.ofExcept <| ctx.env.evalConst FrameProc ctx.opts declName

/-- Recover the compiled `FrameProc` value of a `@[frameproc]`-annotated declaration. -/
@[implemented_by getFrameProcFromDeclImpl]
opaque getFrameProcFromDecl (declName : Name) : ImportM FrameProc

abbrev FrameProcExtension := ScopedEnvExtension Name (Name × FrameProc) FrameProcs

def toFrameProcEntry (declName : Name) : ImportM (Name × FrameProc) := do
  return (declName, ← getFrameProcFromDecl declName)

builtin_initialize frameProcExt : FrameProcExtension ←
  registerScopedEnvExtension {
    name         := by exact decl_name%
    mkInitial    := return {}
    ofOLeanEntry := fun _ declName => toFrameProcEntry declName
    toOLeanEntry := fun (declName, _) => declName
    addEntry     := fun s (_declName, fp) => s.insert fp
  }

/-- The frame inference procedures in scope. -/
def getFrameProcs {m : Type → Type} [Monad m] [MonadEnv m] : m FrameProcs :=
  return frameProcExt.getState (← getEnv)

def addFrameProcAttr (declName : Name) (kind : AttributeKind) : AttrM Unit := do
  ensureAttrDeclIsMeta `frameproc declName kind
  let fp ← getFrameProcFromDecl declName
  frameProcExt.add (declName, fp) kind

builtin_initialize registerBuiltinAttribute {
  ref             := by exact decl_name%
  name            := `frameproc
  descr           := "register a frame inference procedure for `vcgen`"
  applicationTime := .afterCompilation
  add             := fun declName _stx kind => addFrameProcAttr declName kind
}

end Lean.Elab.Tactic.Do.Internal.VCGen
```
