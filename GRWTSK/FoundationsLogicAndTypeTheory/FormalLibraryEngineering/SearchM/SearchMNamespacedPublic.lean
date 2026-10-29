-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Case.Variant8c0a899a3f4bc9066fc04dfe0ccd23b6babe78c1f4188ec84ef19102f1f9bc2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c0a899a3f4bc9066fc04dfe0ccd23b6babe78c1f4188ec84ef19102f1f9bc2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Case.Variant8c0a899a3f4bc9066fc04dfe0ccd23b6babe78c1f4188ec84ef19102f1f9bc2b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8c0a899a3f4bc9066fc04dfe0ccd23b6babe78c1f4188ec84ef19102f1f9bc2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/SearchM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Case.Variant8c0a899a3f4bc9066fc04dfe0ccd23b6babe78c1f4188ec84ef19102f1f9bc2b

public section
namespace Lean.Meta.Grind.Arith.Linear

structure Case where
  c : DiseqCnstr
  /--
  Decision variable used to represent the case-split.
  For example, suppose we are splitting on `p ≠ 0`. Then,
  we create a decision variable `h : p < 0`
  -/
  fvarId : FVarId
  /--
  Snapshot of the state for backtracking purposes.
  We do not use a trail stack.
  -/
  saved  : Struct
  deriving Inhabited

/--
State of the model search procedure.
-/
structure Search.State where
  /-- Decision stack (aka case-split stack) -/
  cases   : PArray Case := {}
  /-- Set of decision variables in `cases`. -/
  decVars : FVarIdSet := {}

abbrev SearchM := StateRefT Search.State LinearM

def mkCase (c : DiseqCnstr) : SearchM FVarId := do
  let fvarId ← mkFreshFVarId
  let saved ← getStruct
  modify fun s => { s with
    cases   := s.cases.push { saved, fvarId, c }
    decVars := s.decVars.insert fvarId
  }
  modifyStruct fun s => { s with caseSplits := true }
  return fvarId

end Lean.Meta.Grind.Arith.Linear
