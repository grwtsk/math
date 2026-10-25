# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantb1ad4debd3473c6c2db5b9f81cb184e773a6f8df1e9be55f948fdbb6eb3ac390

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89d87eaa6ba1711d8d49b95ee557f745e8609d89` · SHA-256 `0cf17aab5d27b490a2af37d317b6941c4b2d1377c2d6c863d0e51b6bd153e970`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommandCodeActionEntry.Variantd88e3ed577c9caa67422b9374e8afa2576cadb6d4c8e36b10fa030fc75ce489c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d88e3ed577c9caa67422b9374e8afa2576cadb6d4c8e36b10fa030fc75ce489c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CommandCodeActionEntry.Variantd88e3ed577c9caa67422b9374e8afa2576cadb6d4c8e36b10fa030fc75ce489c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d88e3ed577c9caa67422b9374e8afa2576cadb6d4c8e36b10fa030fc75ce489c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/CodeActions/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Server.CodeActions.Basic
import Lean.Compiler.IR.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommandCodeActionEntry.Variantd88e3ed577c9caa67422b9374e8afa2576cadb6d4c8e36b10fa030fc75ce489c

public section

/-!
# Initial setup for code action attributes

* Attribute `@[hole_code_action]` collects code actions which will be called
  on each occurrence of a hole (`_`, `?_` or `sorry`).

* Attribute `@[command_code_action]` collects code actions which will be called
  on each occurrence of a command.
-/
namespace Lean.CodeAction

open Lean Elab Server Lsp RequestM Snapshots

/-- A hole code action extension. -/
abbrev HoleCodeAction :=
  CodeActionParams → Snapshot →
  (ctx : ContextInfo) → (hole : TermInfo) → RequestM (Array LazyCodeAction)

/-- Read a hole code action from a declaration of the right type. -/
def mkHoleCodeAction (n : Name) : ImportM HoleCodeAction := do
  let { env, opts, .. } ← read
  IO.ofExcept <| unsafe env.evalConstCheck HoleCodeAction opts ``HoleCodeAction n

/-- An extension which collects all the hole code actions. -/
builtin_initialize holeCodeActionExt :
    PersistentEnvExtension Name (Name × HoleCodeAction) (Array Name × Array HoleCodeAction) ←
  registerPersistentEnvExtension {
    mkInitial := pure (#[], #[])
    addImportedFn := fun as => return (#[], ← as.foldlM (init := #[]) fun m as =>
      as.foldlM (init := m) fun m a => return m.push (← mkHoleCodeAction a))
    addEntryFn := fun (s₁, s₂) (n₁, n₂) => (s₁.push n₁, s₂.push n₂)
    exportEntriesFn := (·.1)
  }

builtin_initialize
  registerBuiltinAttribute {
    name := `hole_code_action
    descr := "Declare a new hole code action, to appear in the code actions on ?_ and _"
    applicationTime := .afterCompilation
    add := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do
        throwAttrMustBeGlobal `hole_code_action kind
      ensureAttrDeclIsMeta `hole_code_action decl kind
      if (IR.getSorryDep (← getEnv) decl).isSome then return -- ignore in progress definitions
      modifyEnv (holeCodeActionExt.addEntry · (decl, ← mkHoleCodeAction decl))
  }

/-- A command code action extension. -/
abbrev CommandCodeAction :=
  CodeActionParams → Snapshot → (ctx : ContextInfo) → (node : InfoTree) →
  RequestM (Array LazyCodeAction)

/-- Read a command code action from a declaration of the right type. -/
def mkCommandCodeAction (n : Name) : ImportM CommandCodeAction := do
  let { env, opts, .. } ← read
  IO.ofExcept <| unsafe env.evalConstCheck CommandCodeAction opts ``CommandCodeAction n

/-- An entry in the command code actions extension, containing the attribute arguments. -/
structure CommandCodeActionEntry where
  /-- The declaration to tag -/
  declName : Name
  /-- The command kinds that this extension supports.
  If empty it is called on all command kinds. -/
  cmdKinds : Array Name
  deriving Inhabited

/-- The state of the command code actions extension. -/
structure CommandCodeActions where
  /-- The list of command code actions to apply on any command. -/
  onAnyCmd : Array CommandCodeAction := {}
  /-- The list of command code actions to apply when a particular command kind is highlighted. -/
  onCmd : NameMap (Array CommandCodeAction) := {}
  deriving Inhabited

/-- Insert a command code action entry into the `CommandCodeActions` structure. -/
def CommandCodeActions.insert (self : CommandCodeActions)
    (tacticKinds : Array Name) (action : CommandCodeAction) : CommandCodeActions :=
  if tacticKinds.isEmpty then
    { self with onAnyCmd := self.onAnyCmd.push action }
  else
    { self with onCmd := tacticKinds.foldl (init := self.onCmd) fun m a =>
        m.insert a ((m.getD a #[]).push action) }

builtin_initialize builtinCmdCodeActions : IO.Ref CommandCodeActions ← IO.mkRef {}

def insertBuiltin (args : Array Name) (proc : CommandCodeAction) : IO Unit := do
  builtinCmdCodeActions.modify fun self => self.insert args proc

/-- An extension which collects all the command code actions. -/
builtin_initialize cmdCodeActionExt :
    PersistentEnvExtension CommandCodeActionEntry (CommandCodeActionEntry × CommandCodeAction)
      (Array CommandCodeActionEntry × CommandCodeActions) ←
  registerPersistentEnvExtension {
    mkInitial := return (#[], ← builtinCmdCodeActions.get)
    addImportedFn := fun as => do
      let init ← builtinCmdCodeActions.get
      return (#[], ← as.foldlM (init := init) fun m as =>
      as.foldlM (init := m) fun m ⟨name, kinds⟩ =>
        return m.insert kinds (← mkCommandCodeAction name))
    addEntryFn := fun (s₁, s₂) (e, n₂) => (s₁.push e, s₂.insert e.cmdKinds n₂)
    exportEntriesFn := (·.1)
  }

builtin_initialize
  registerBuiltinAttribute {
    name := `command_code_action
    descr := "Declare a new command code action, to appear in the code actions on commands"
    applicationTime := .afterCompilation
    add := fun decl stx kind => do
      unless kind == AttributeKind.global do
        throwAttrMustBeGlobal `command_code_action kind
      ensureAttrDeclIsMeta `command_code_action decl kind
      let `(attr| command_code_action $args*) := stx | return
      let args ← args.mapM realizeGlobalConstNoOverloadWithInfo
      if (IR.getSorryDep (← getEnv) decl).isSome then return -- ignore in progress definitions
      args.forM (recordExtraModUseFromDecl (isMeta := false))
      modifyEnv (cmdCodeActionExt.addEntry · (⟨decl, args⟩, ← mkCommandCodeAction decl))
  }

private def addBuiltin (declName : Name) (args : Array Name) : AttrM Unit := do
  let go : MetaM Unit := do
    let val := mkAppN (mkConst ``insertBuiltin) #[toExpr args, mkConst declName]
    let initDeclName ← mkFreshUserName (declName ++ `declare)
    declareBuiltin initDeclName val
  go.run' {}

builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `builtin_command_code_action
    descr           := "Declare a new builtin command code action, to appear in the code actions on commands"
    applicationTime := .afterCompilation
    add             := fun decl stx kind => do
      unless kind == AttributeKind.global do
        throwAttrMustBeGlobal `command_code_action kind
      let `(attr| builtin_command_code_action $args*) := stx |
        throwError "Unexpected `command_code_action` attribute syntax"
      let args ← args.mapM realizeGlobalConstNoOverloadWithInfo
      if (IR.getSorryDep (← getEnv) decl).isSome then return -- ignore in progress definitions
      addBuiltin decl args
  }
```
