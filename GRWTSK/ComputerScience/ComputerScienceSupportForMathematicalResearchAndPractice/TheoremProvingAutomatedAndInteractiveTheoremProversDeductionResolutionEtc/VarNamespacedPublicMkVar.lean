-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkVar.Variant9abedbcc058f24776fd930bc381875ab9970d9b98c6cc427c989171c4deda17b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9abedbcc058f24776fd930bc381875ab9970d9b98c6cc427c989171c4deda17b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkVar.Variant9abedbcc058f24776fd930bc381875ab9970d9b98c6cc427c989171c4deda17b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9abedbcc058f24776fd930bc381875ab9970d9b98c6cc427c989171c4deda17b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/Var.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM
import Lean.Meta.Tactic.Grind.Arith.Linear.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkVar.Variant9abedbcc058f24776fd930bc381875ab9970d9b98c6cc427c989171c4deda17b

public section
namespace Lean.Meta.Grind.Arith.Linear

def mkVar (e : Expr) (mark := true) : LinearM Var := do
  let s ← getStruct
  if let some var := s.varMap.find? { expr := e } then
    return var
  let var : Var := s.vars.size
  modifyStruct fun s => { s with
    vars       := s.vars.push e
    varMap     := s.varMap.insert { expr := e } var
    lowers     := s.lowers.push {}
    uppers     := s.uppers.push {}
    diseqs     := s.diseqs.push {}
    occurs     := s.occurs.push {}
    elimEqs    := s.elimEqs.push none
  }
  setTermStructId e
  if mark then
    linearExt.markTerm e
  return var

end Lean.Meta.Grind.Arith.Linear
