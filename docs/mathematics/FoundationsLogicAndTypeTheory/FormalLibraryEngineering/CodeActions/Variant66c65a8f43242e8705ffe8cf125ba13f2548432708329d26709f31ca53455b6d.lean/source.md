# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CodeActions.Variant66c65a8f43242e8705ffe8cf125ba13f2548432708329d26709f31ca53455b6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c114ac6fba2477f00a556daa24af81f2b9893b5d` · SHA-256 `0875978cef318ced787dc16d38443bb857b5321af2e489f97af299cc01a5ca3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CodeActionTriggerKind.Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CodeActionTriggerKind.Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/CodeActions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 E.W.Ayers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: E.W.Ayers
-/
module

prelude
public import Lean.Data.Lsp.Diagnostics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CodeActionTriggerKind.Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13

public section

namespace Lean.Lsp

open Json

/-- The kind of a code action.

Kinds are a hierarchical list of identifiers separated by `.`,
e.g. `"refactor.extract.function"`.

The set of kinds is open and client needs to announce the kinds it supports
to the server during initialization.
You can make your own code action kinds, the ones supported by LSP are:
- `quickfix`
- `refactor`
  - `refactor.extract`
  - `refactor.inline`
  - `refactor.rewrite`
- `source` Source code actions apply to the entire file. Eg fixing all issues or organising imports.
  - `source.organizeImports`
  - `source.fixAll`
-/
abbrev CodeActionKind := String

inductive CodeActionTriggerKind
  /-- Code actions were explicitly requested by the user or by an extension. -/
  | invoked
  /-- Code actions were requested automatically.

    This typically happens when current selection in a file changes, but can
    also be triggered when file content changes. -/
  | automatic

instance : ToJson CodeActionTriggerKind := ⟨fun
  | .invoked => 1
  | .automatic => 2
⟩

instance : FromJson CodeActionTriggerKind := ⟨fun j => do
  let n ← j.getNat?
  match n with
    | 1 => return CodeActionTriggerKind.invoked
    | 2 => return CodeActionTriggerKind.automatic
    | n => throw s!"Unexpected CodeActionTriggerKind {n}"
⟩

/-- Contains additional diagnostic information about the context in which a code action is run.

[reference](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#codeActionContext) -/
structure CodeActionContext where
  /--
    An array of diagnostics known on the client side overlapping the range
    provided to the `textDocument/codeAction` request. They are provided so
    that the server knows which errors are currently presented to the user
    for the given range. There is no guarantee that these accurately reflect
    the error state of the resource. The primary parameter
    to compute code actions is the provided range.
  -/
  diagnostics : Array Diagnostic := #[]
  /-- Requested kind of actions to return.

    Actions not of this kind are filtered out by the client before being
    shown. So servers can omit computing them.
  -/
  only? : Option (Array CodeActionKind) := none
  /-- The reason why code actions were requested. -/
  triggerKind? : Option CodeActionTriggerKind := none
  deriving FromJson, ToJson

/-- Parameters for a [CodeActionRequest](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_codeAction). -/
structure CodeActionParams extends WorkDoneProgressParams, PartialResultParams where
  textDocument : TextDocumentIdentifier
  range        : Range
  context      : CodeActionContext := {}
  deriving FromJson, ToJson

/-- If the code action is disabled, this type gives the reason why. -/
structure CodeActionDisabled where
  reason : String
  deriving FromJson, ToJson

/-- Capabilities of the server for handling code actions. -/
structure CodeActionOptions extends WorkDoneProgressOptions where
  /-- CodeActionKinds that this server may return.

  The list of kinds may be generic, such as `"refactor"`, or the server may list out every specific kind they provide. -/
  codeActionKinds? : Option (Array CodeActionKind) := none
  /-- The server provides support to resolve additional information for a code action. -/
  resolveProvider? : Option Bool := none
  deriving ToJson, FromJson

/--  A code action represents a change that can be performed in code, e.g. to fix a problem or to refactor code.

A CodeAction should set either `edit` and/or a `command`.
If both are supplied, the `edit` is applied first, then the `command` is executed.
If none are supplied, the client makes a `codeAction/resolve` JSON-RPC request to compute the edit.

[reference](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#codeAction) -/
structure CodeAction extends WorkDoneProgressParams, PartialResultParams where
  /-- A short, human-readable, title for this code action. -/
  title        : String
  /-- The kind of the code action. -/
  kind?        : Option CodeActionKind := none
  /-- The diagnostics that this code action resolves. -/
  diagnostics? : Option (Array Diagnostic) := none
  /-- Marks this as a preferred action. Preferred actions are used by the `auto fix` command and can be targeted by keybindings. -/
  isPreferred? : Option Bool := none
  /-- Marks that the code action cannot currently be applied. -/
  disabled?    : Option CodeActionDisabled := none
  /-- The workspace edit this code action performs. -/
  edit?        : Option WorkspaceEdit := none
  /-- A command this code action executes.

  If a code action provides an edit and a command, first the edit is executed and then the command. -/
  command?     : Option Command := none
  /-- A data entry field that is preserved on a code action between a `textDocument/codeAction` and a `codeAction/resolve` request.
  In particular, for Lean-created commands we expect `data` to have a `uri : DocumentUri` field so that `FileSource` can be implemented.
   -/
  data?        : Option Json := none
  deriving ToJson, FromJson

structure CodeActionLiteralSupportValueSet where
  /-- The code action kind values the client supports. When this
    property exists the client also guarantees that it will
    handle values outside its set gracefully and falls back
    to a default value when unknown.
  -/
  valueSet : Array CodeActionKind
  deriving FromJson, ToJson

structure CodeActionLiteralSupport where
  /-- The code action kind is supported with the following value set. -/
  codeActionKind : CodeActionLiteralSupportValueSet
  deriving FromJson, ToJson

/-- [Reference](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#codeActionClientCapabilities) -/
structure CodeActionClientCapabilities where
  /-- Whether we can [register capabilities dynamically](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#client_registerCapability). -/
  dynamicRegistration?      : Option Bool := false
  /-- Whether the code action supports the `isPreferred` property. -/
  isPreferredSupport?       : Option Bool := false
  /-- Whether the code action supports the `disabled` property. -/
  disabledSupport?          : Option Bool := false
  /-- Weather code action supports the `data` property which is preserved between a `textDocument/codeAction` and a `codeAction/resolve` request. -/
  dataSupport?              : Option Bool := false
  /-- Whether the client honors the change annotations in
    text edits and resource operations returned via the
    `CodeAction#edit` property by for example presenting
    the workspace edit in the user interface and asking
    for confirmation. -/
  honorsChangeAnnotations?  : Option Bool := false
  /-- The client supports code action literals as a valid response of the `textDocument/codeAction` request. -/
  codeActionLiteralSupport? : Option CodeActionLiteralSupport := none
  /-- Whether the client supports resolving additional code action properties via a separate `codeAction/resolve` request. -/
  resolveSupport?           : Option ResolveSupport           := none
  deriving FromJson, ToJson


end Lean.Lsp
```
