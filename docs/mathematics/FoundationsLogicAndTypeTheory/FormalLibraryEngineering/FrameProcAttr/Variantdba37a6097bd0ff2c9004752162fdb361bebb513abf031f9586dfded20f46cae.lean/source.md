# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrameProcAttr.Variantdba37a6097bd0ff2c9004752162fdb361bebb513abf031f9586dfded20f46cae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c3f579c22c7f361cb52de79b8857827823d5862` · SHA-256 `9f3d1c2c924a66a3c62e65ac12abda2d765ed926df3c4d3b318a810cc7da4c49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetFrameProcFromDeclImpl.Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetFrameProcFromDeclImpl.Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/Internal/VCGen/FrameProcAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetFrameProcFromDeclImpl.Variantc195ba4517e93247d5469fb4e63c3b92b6d8848600e8062fae88f7f4b78fc186

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
