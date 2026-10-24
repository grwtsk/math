-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLawfulBEqInstanceCmds.Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkLawfulBEqInstanceCmds.Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Deriving/LawfulBEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util
import Init.LawfulBEqTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLawfulBEqInstanceCmds.Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1

namespace Lean.Elab.Deriving.LawfulBEq
open Lean.Parser.Term
open Meta

open TSyntax.Compat in
open Parser.Tactic in
def mkLawfulBEqInstanceCmds (declName : Name) : TermElabM (Array Syntax) := do
  let indVal ← getConstInfoInduct declName
  if indVal.all.length > 1 then
    throwError "Deriving `LawfulBEq` for mutual inductives is not supported"
  if indVal.isNested then
    throwError "Deriving `LawfulBEq` for nested inductives is not supported"

  let argNames     ← mkInductArgNames indVal
  let binders      ← mkImplicitBinders argNames
  let binders      := binders ++ (← mkInstImplicitBinders ``BEq indVal argNames)
  let binders      := binders ++ (← mkInstImplicitBinders ``LawfulBEq indVal argNames)
  let indType      ← mkInductiveApp indVal argNames
  let type         ← `($(mkCIdent ``LawfulBEq) $indType)
  let instCmd ← `(
    instance $binders:implicitBinder* : $type := LawfulBEq.mk (by deriving_LawfulEq_tactic)
  )
  let cmds := #[instCmd]
  trace[Elab.Deriving.lawfulBEq] "\n{cmds}"
  return cmds

open Command

def mkLawfulBEqInstance (declName : Name) : CommandElabM Unit := do
  withoutExposeFromCtors declName do
    let cmds ← liftTermElabM <| mkLawfulBEqInstanceCmds declName
    cmds.forM elabCommand

def mkLawfulBEqInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      mkLawfulBEqInstance declName
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler ``LawfulBEq mkLawfulBEqInstanceHandler
  registerTraceClass `Elab.Deriving.lawfulBEq

end Lean.Elab.Deriving.LawfulBEq
