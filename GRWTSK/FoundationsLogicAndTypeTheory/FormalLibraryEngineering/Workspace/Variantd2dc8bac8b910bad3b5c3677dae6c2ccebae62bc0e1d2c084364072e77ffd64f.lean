-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WorkspaceFolder.Variantfe8ba4de8dcbf7d8498adb2a805de369d42aab253dcbaa2008c3e4cf6d9bf61b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe8ba4de8dcbf7d8498adb2a805de369d42aab253dcbaa2008c3e4cf6d9bf61b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WorkspaceFolder.Variantfe8ba4de8dcbf7d8498adb2a805de369d42aab253dcbaa2008c3e4cf6d9bf61b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fe8ba4de8dcbf7d8498adb2a805de369d42aab253dcbaa2008c3e4cf6d9bf61b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/Workspace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Wojciech Nawrocki. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Lsp.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WorkspaceFolder.Variantfe8ba4de8dcbf7d8498adb2a805de369d42aab253dcbaa2008c3e4cf6d9bf61b

public section

namespace Lean
namespace Lsp

open Json

structure WorkspaceFolder where
  uri : DocumentUri
  name : String
  deriving ToJson, FromJson

-- TODO(WN):
-- WorkspaceFoldersServerCapabilities,
-- DidChangeWorkspaceFoldersParams,
-- WorkspaceFoldersChangeEvent

structure FileSystemWatcher where
  globPattern : String
  kind? : Option Nat := none
  deriving FromJson, ToJson

namespace FileSystemWatcher

-- Bit flags for `FileSystemWatcher.kind`
def create := 1
def change := 2
def delete := 4

end FileSystemWatcher

structure DidChangeWatchedFilesRegistrationOptions where
  watchers : Array FileSystemWatcher
  deriving FromJson, ToJson

inductive FileChangeType
  | Created
  | Changed
  | Deleted

instance : FromJson FileChangeType where
  fromJson? j := do
    match (← fromJson? j : Nat) with
      | 1 => return FileChangeType.Created
      | 2 => return FileChangeType.Changed
      | 3 => return FileChangeType.Deleted
      | _ => throw s!"expected 1, 2, or 3, got {j}"

instance : ToJson FileChangeType where
  toJson
    | FileChangeType.Created => toJson 1
    | FileChangeType.Changed => toJson 2
    | FileChangeType.Deleted => toJson 3

structure FileEvent where
  uri : DocumentUri
  type : FileChangeType
  deriving FromJson, ToJson

structure DidChangeWatchedFilesParams where
  changes : Array FileEvent
  deriving FromJson, ToJson

end Lsp
end Lean
