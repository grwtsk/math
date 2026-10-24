-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompletionItemCapabilities.Variant0c991c524e2c86276bf84187e257f1c7e4457768c9b19183e130374dffc811ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c991c524e2c86276bf84187e257f1c7e4457768c9b19183e130374dffc811ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CompletionItemCapabilities.Variant0c991c524e2c86276bf84187e257f1c7e4457768c9b19183e130374dffc811ab","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0c991c524e2c86276bf84187e257f1c7e4457768c9b19183e130374dffc811ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/Capabilities.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.JsonRpc
public import Lean.Data.Lsp.LanguageFeatures
public import Lean.Data.Lsp.CodeActions
public import Lean.Data.Lsp.Extra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompletionItemCapabilities.Variant0c991c524e2c86276bf84187e257f1c7e4457768c9b19183e130374dffc811ab

public section

/-! Minimal LSP servers/clients do not have to implement a lot
of functionality. Most useful additional behavior is instead
opted into via capabilities. -/

namespace Lean
namespace Lsp

open Json

structure CompletionItemCapabilities where
  insertReplaceSupport? : Option Bool := none
  deriving ToJson, FromJson

structure CompletionClientCapabilities where
  completionItem? : Option CompletionItemCapabilities := none
  deriving ToJson, FromJson

structure TextDocumentClientCapabilities where
  completion? : Option CompletionClientCapabilities := none
  codeAction? : Option CodeActionClientCapabilities := none
  inlayHint?  : Option InlayHintClientCapabilities  := none
  deriving ToJson, FromJson

structure ShowDocumentClientCapabilities where
  support : Bool
  deriving ToJson, FromJson

structure WindowClientCapabilities where
  showDocument? : Option ShowDocumentClientCapabilities := none
  deriving ToJson, FromJson

structure ChangeAnnotationSupport where
  groupsOnLabel? : Option Bool := none
  deriving ToJson, FromJson

structure WorkspaceEditClientCapabilities where
  /-- The client supports versioned document changes in `WorkspaceEdit`s. -/
  documentChanges?         : Option Bool := none
  /--  Whether the client in general supports change annotations on text edits. -/
  changeAnnotationSupport? : Option ChangeAnnotationSupport := none
  /-- The resource operations the client supports. Clients should at least support 'create', 'rename' and 'delete' files and folders. -/
  resourceOperations?      : Option (Array String) := none
  deriving ToJson, FromJson

structure WorkspaceClientCapabilities where
  applyEdit? : Option Bool := none
  workspaceEdit? : Option WorkspaceEditClientCapabilities := none
  deriving ToJson, FromJson

structure LeanClientCapabilities where
  /--
  Whether the client supports incremental `textDocument/publishDiagnostics` updates.
  If `none` or `false`, the server will never set `PublishDiagnosticsParams.isIncremental?`
  and always report full diagnostic updates that replace the previous one.
  -/
  incrementalDiagnosticSupport? : Option Bool := none
  /--
  Whether the client supports `DiagnosticWith.isSilent = true`.
  If `none` or `false`, silent diagnostics will not be served to the client.
  -/
  silentDiagnosticSupport? : Option Bool := none
  /--
  The latest RPC wire format supported by the client.
  Defaults to `v0` when `none`.
  -/
  rpcWireFormat? : Option RpcWireFormat := none
  deriving ToJson, FromJson

structure ClientCapabilities where
  textDocument? : Option TextDocumentClientCapabilities := none
  window?       : Option WindowClientCapabilities       := none
  workspace?    : Option WorkspaceClientCapabilities    := none
  /-- Capabilities for Lean language server extensions. -/
  lean?         : Option LeanClientCapabilities         := none
  deriving ToJson, FromJson

def ClientCapabilities.incrementalDiagnosticSupport (c : ClientCapabilities) : Bool := Id.run do
  let some lean := c.lean?
    | return false
  let some incrementalDiagnosticSupport := lean.incrementalDiagnosticSupport?
    | return false
  return incrementalDiagnosticSupport

def ClientCapabilities.silentDiagnosticSupport (c : ClientCapabilities) : Bool := Id.run do
  let some lean := c.lean?
    | return false
  let some silentDiagnosticSupport := lean.silentDiagnosticSupport?
    | return false
  return silentDiagnosticSupport

def ClientCapabilities.rpcWireFormat (c : ClientCapabilities) : RpcWireFormat := Id.run do
  let some lean := c.lean?
    | return .v0
  let some v := lean.rpcWireFormat?
    | return .v0
  return v

structure LeanServerCapabilities where
  moduleHierarchyProvider? : Option ModuleHierarchyOptions
  rpcProvider? : Option RpcOptions
  deriving FromJson, ToJson

-- TODO largely unimplemented
structure ServerCapabilities where
  textDocumentSync?         : Option TextDocumentSyncOptions := none
  completionProvider?       : Option CompletionOptions       := none
  hoverProvider             : Bool                           := false
  documentHighlightProvider : Bool                           := false
  documentSymbolProvider    : Bool                           := false
  definitionProvider        : Bool                           := false
  declarationProvider       : Bool                           := false
  typeDefinitionProvider    : Bool                           := false
  referencesProvider        : Bool                           := false
  callHierarchyProvider     : Bool                           := false
  renameProvider?           : Option RenameOptions           := none
  workspaceSymbolProvider   : Bool                           := false
  foldingRangeProvider      : Bool                           := false
  semanticTokensProvider?   : Option SemanticTokensOptions   := none
  codeActionProvider?       : Option CodeActionOptions       := none
  inlayHintProvider?        : Option InlayHintOptions        := none
  signatureHelpProvider?    : Option SignatureHelpOptions    := none
  colorProvider?            : Option DocumentColorOptions    := none
  experimental?             : Option LeanServerCapabilities  := none
  deriving ToJson, FromJson

end Lsp
end Lean
