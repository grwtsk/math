-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticContext.Variant2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TacticContext.Variant2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/TacticContext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Attr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticContext.Variant2572ab0b37eea3f16b8c4da1763c0453970fbaa53b1c590ed06713379ec9f180

public section

/-!
This module contains the logic around writing proofs of UNSAT, using LRAT proofs, as meta code.
-/

namespace Lean.Meta.Tactic.BVDecide

open Elab.Term
open Elab.Tactic.BVDecide

/--
The context for the `bv_decide` tactic.
-/
structure TacticContext where
  exprDef : Name
  certDef : Name
  reflectionDef : Name
  solver : System.FilePath
  lratPath : System.FilePath
  config : BVDecideConfig

def TacticContext.new (lratPath : System.FilePath) (config : BVDecideConfig) :
    TermElabM TacticContext := do
  let exprDef ← Lean.Elab.Term.mkAuxName `_expr_def
  let certDef ← Lean.Elab.Term.mkAuxName `_cert_def
  let reflectionDef ← Lean.Elab.Term.mkAuxName `_reflection_def
  let solver ← determineSolver
  trace[Meta.Tactic.sat] m!"Using SAT solver at '{solver}'"
  return {
    exprDef,
    certDef,
    reflectionDef,
    solver,
    lratPath,
    config
  }
where
  determineSolver : CoreM System.FilePath := do
    let opts ← getOptions
    let option := sat.solver.get opts
    if option == "" then
      let cadicalPath := (← IO.appPath).parent.get! / "cadical" |>.withExtension System.FilePath.exeExtension
      if ← cadicalPath.pathExists then
        return cadicalPath
      else
        return "cadical"
    else
      return option

end Lean.Meta.Tactic.BVDecide
