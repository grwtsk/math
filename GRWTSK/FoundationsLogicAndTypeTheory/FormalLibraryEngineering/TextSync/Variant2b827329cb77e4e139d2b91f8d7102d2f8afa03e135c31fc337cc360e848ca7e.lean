-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TextDocumentSyncKind.Variant958b886ad62e6b636bce99ff2e16db9114f4cc78bd3a079aee9dd2167e1d7d7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"958b886ad62e6b636bce99ff2e16db9114f4cc78bd3a079aee9dd2167e1d7d7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TextDocumentSyncKind.Variant958b886ad62e6b636bce99ff2e16db9114f4cc78bd3a079aee9dd2167e1d7d7d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"958b886ad62e6b636bce99ff2e16db9114f4cc78bd3a079aee9dd2167e1d7d7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/TextSync.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Lsp.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TextDocumentSyncKind.Variant958b886ad62e6b636bce99ff2e16db9114f4cc78bd3a079aee9dd2167e1d7d7d

public section

/-! Section "Text Document Synchronization" of the LSP spec. -/

namespace Lean
namespace Lsp

open Json

inductive TextDocumentSyncKind where
  | none
  | full
  | incremental

instance : FromJson TextDocumentSyncKind := ⟨fun j =>
  match j.getNat? with
  | Except.ok 0 => return TextDocumentSyncKind.none
  | Except.ok 1 => return TextDocumentSyncKind.full
  | Except.ok 2 => return TextDocumentSyncKind.incremental
  | _      => throw "unknown TextDocumentSyncKind"⟩

instance : ToJson TextDocumentSyncKind := ⟨fun
  | TextDocumentSyncKind.none        => 0
  | TextDocumentSyncKind.full        => 1
  | TextDocumentSyncKind.incremental => 2⟩

structure DidOpenTextDocumentParams where
  textDocument : TextDocumentItem
  deriving ToJson, FromJson

structure TextDocumentChangeRegistrationOptions where
  documentSelector? : Option DocumentSelector := none
  syncKind          : TextDocumentSyncKind
  deriving FromJson

inductive TextDocumentContentChangeEvent where
  -- omitted: deprecated rangeLength
  | rangeChange (range : Range) (text : String)
  | fullChange (text : String)

instance : FromJson TextDocumentContentChangeEvent where
  fromJson? j :=
    (do
      let range ← j.getObjValAs? Range "range"
      let text ← j.getObjValAs? String "text"
      return TextDocumentContentChangeEvent.rangeChange range text)
    <|>
    (TextDocumentContentChangeEvent.fullChange <$> j.getObjValAs? String "text")

instance TextDocumentContentChangeEvent.hasToJson : ToJson TextDocumentContentChangeEvent :=
  ⟨fun o => mkObj $ match o with
    | TextDocumentContentChangeEvent.rangeChange range text => [⟨"range", toJson range⟩, ⟨"text", toJson text⟩]
    | TextDocumentContentChangeEvent.fullChange text => [⟨"text", toJson text⟩]⟩

structure DidChangeTextDocumentParams where
  textDocument   : VersionedTextDocumentIdentifier
  contentChanges : Array TextDocumentContentChangeEvent
  deriving ToJson, FromJson

structure DidSaveTextDocumentParams where
  textDocument : TextDocumentIdentifier
  text?        : Option String
  deriving ToJson, FromJson

-- TODO: missing:
-- WillSaveTextDocumentParams, TextDocumentSaveReason,
-- TextDocumentSaveRegistrationOptions

structure SaveOptions where
  includeText : Bool
  deriving ToJson, FromJson

structure DidCloseTextDocumentParams where
  textDocument : TextDocumentIdentifier
  deriving ToJson, FromJson

-- TODO: TextDocumentSyncClientCapabilities

/-- NOTE: This is defined twice in the spec. The latter version has more fields. -/
structure TextDocumentSyncOptions where
  openClose         : Bool
  change            : TextDocumentSyncKind
  willSave          : Bool
  willSaveWaitUntil : Bool
  save?             : Option SaveOptions
  deriving ToJson, FromJson

end Lsp
end Lean
