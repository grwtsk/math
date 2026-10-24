-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymSimprocElab.Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SymSimprocElab.Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/SimprocDSL.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Meta.Sym.Simp.Discharger
import Init.Sym.Simp.SimprocDSL

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymSimprocElab.Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0

public section
namespace Lean.Elab.Tactic.Grind
open Meta Sym.Simp

/-- Elaboration function for `sym_simproc` syntax. -/
abbrev SymSimprocElab := Syntax → GrindTacticM Simproc

/-- Elaboration function for `sym_discharger` syntax. -/
abbrev SymDischargerElab := Syntax → GrindTacticM Discharger

unsafe builtin_initialize symSimprocElabAttribute : KeyedDeclsAttribute SymSimprocElab ←
  mkElabAttribute SymSimprocElab `builtin_sym_simproc `sym_simproc
    `Lean.Parser.Sym.Simp `Lean.Elab.Tactic.Grind.SymSimprocElab "sym_simproc"

unsafe builtin_initialize symDischargerElabAttribute : KeyedDeclsAttribute SymDischargerElab ←
  mkElabAttribute SymDischargerElab `builtin_sym_discharger `sym_discharger
    `Lean.Parser.Sym.Simp `Lean.Elab.Tactic.Grind.SymDischargerElab "sym_discharger"

/-- Elaborate a `sym_simproc` syntax node into a `Simproc`. -/
partial def elabSymSimproc (stx : Syntax) : GrindTacticM Simproc := do
  let elabFns := symSimprocElabAttribute.getEntries (← getEnv) stx.getKind
  for elabFn in elabFns do
    try
      return (← elabFn.value stx)
    catch ex =>
      match ex with
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then continue
        else throw ex
      | _ => throw ex
  throwErrorAt stx "unsupported sym_simproc syntax `{stx.getKind}`"

/-- Elaborate a `sym_discharger` syntax node into a `Discharger`. -/
def elabSymDischarger (stx : Syntax) : GrindTacticM Discharger := do
  let elabFns := symDischargerElabAttribute.getEntries (← getEnv) stx.getKind
  for elabFn in elabFns do
    try
      return (← elabFn.value stx)
    catch ex =>
      match ex with
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then continue
        else throw ex
      | _ => throw ex
  throwErrorAt stx "unsupported sym_discharger syntax `{stx.getKind}`"

end Lean.Elab.Tactic.Grind
