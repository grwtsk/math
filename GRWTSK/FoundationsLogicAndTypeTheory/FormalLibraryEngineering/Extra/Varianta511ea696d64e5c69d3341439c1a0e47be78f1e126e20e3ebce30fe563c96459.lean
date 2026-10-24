-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeMapToJson.Variant5f3df856933923c47557e49a5844fdffc5ab0f7f4d743127d66fc136aa1f85d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f3df856933923c47557e49a5844fdffc5ab0f7f4d743127d66fc136aa1f85d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TreeMapToJson.Variant5f3df856933923c47557e49a5844fdffc5ab0f7f4d743127d66fc136aa1f85d3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5f3df856933923c47557e49a5844fdffc5ab0f7f4d743127d66fc136aa1f85d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Json/FromToJson/Extra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Gabriel Ebner, Marc Huisinga
-/
module

prelude
public import Lean.Data.Json.FromToJson.Basic
public import Std.Data.TreeMap.AdditionalOperations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeMapToJson.Variant5f3df856933923c47557e49a5844fdffc5ab0f7f4d743127d66fc136aa1f85d3

public section

/-
This module exists to cut the dependency on `Std.Data.TreeMap.AdditionalOperations` from a large
chunk of the meta framework.
-/

namespace Lean

private def TreeMap.toJson [ToJson α] (map : Std.TreeMap String α compare) : Json :=
  let json := Std.TreeMap.map (fun _ => Lean.toJson) <| map
  -- TODO(henrik): remove this after Q4
  Json.obj <| Std.TreeMap.Raw.mk <| Std.DTreeMap.Raw.mk json.inner.inner

private def TreeMap.fromJson? {cmp} [FromJson α] (j : Json) :
    Except String (Std.TreeMap String α cmp) := do
  let o ← j.getObj?
  o.foldlM (fun x k v => x.insert k <$> Lean.fromJson? v) ∅

instance [ToJson α] : ToJson (Std.TreeMap String α compare) where
  toJson := private TreeMap.toJson

instance {cmp} [FromJson α] : FromJson (Std.TreeMap String α cmp) where
  fromJson? := private TreeMap.fromJson?


end Lean
