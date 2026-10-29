-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MessageType.Variant942b4cfc20664039ff23773713b6b86a50f02255e18189318927c96b58bba6bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"942b4cfc20664039ff23773713b6b86a50f02255e18189318927c96b58bba6bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MessageType.Variant942b4cfc20664039ff23773713b6b86a50f02255e18189318927c96b58bba6bd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"942b4cfc20664039ff23773713b6b86a50f02255e18189318927c96b58bba6bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/Window.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marc Huisinga
-/
module

prelude
public import Lean.Data.Json.FromToJson.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MessageType.Variant942b4cfc20664039ff23773713b6b86a50f02255e18189318927c96b58bba6bd

public section

open Lean

namespace Lean.Lsp

inductive MessageType where
  | error
  | warning
  | info
  | log

instance : FromJson MessageType where
  fromJson?
    | (1 : Nat) => .ok .error
    | (2 : Nat) => .ok .warning
    | (3 : Nat) => .ok .info
    | (4 : Nat) => .ok .log
    | _         => .error "Unknown MessageType ID"

instance : ToJson MessageType where
  toJson
    | .error   => 1
    | .warning => 2
    | .info    => 3
    | .log     => 4

structure ShowMessageParams where
  type    : MessageType
  message : String
  deriving FromJson, ToJson

structure MessageActionItem where
  title : String
  deriving FromJson, ToJson

structure ShowMessageRequestParams where
  type     : MessageType
  message  : String
  actions? : Option (Array MessageActionItem)
  deriving FromJson, ToJson

@[expose] def ShowMessageResponse := Option MessageActionItem
  deriving FromJson, ToJson

end Lean.Lsp
