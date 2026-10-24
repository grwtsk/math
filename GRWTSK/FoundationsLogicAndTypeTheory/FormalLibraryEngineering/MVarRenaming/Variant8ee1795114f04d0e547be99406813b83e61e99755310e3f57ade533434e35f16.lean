-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MVarRenaming.Variant9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MVarRenaming.Variant9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Match/MVarRenaming.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.ReplaceExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MVarRenaming.Variant9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205

public section

namespace Lean.Meta

/-- A mapping from MVarId to MVarId -/
structure MVarRenaming where
  map : MVarIdMap MVarId := {}

def MVarRenaming.isEmpty (s : MVarRenaming) : Bool :=
  s.map.isEmpty

def MVarRenaming.find? (s : MVarRenaming) (mvarId : MVarId) : Option MVarId :=
  s.map.get? mvarId

def MVarRenaming.find! (s : MVarRenaming) (mvarId : MVarId) : MVarId :=
  (s.find? mvarId).get!

def MVarRenaming.insert (s : MVarRenaming) (mvarId mvarId' : MVarId) : MVarRenaming :=
  { s with map := s.map.insert mvarId mvarId' }

def MVarRenaming.apply (s : MVarRenaming) (e : Expr) : Expr :=
  if !e.hasMVar then e
  else if s.map.isEmpty then e
  else e.replace fun e => match e with
    | Expr.mvar mvarId => match s.map.get? mvarId with
      | none           => e
      | some newMVarId => mkMVar newMVarId
    | _ => none

end Lean.Meta
