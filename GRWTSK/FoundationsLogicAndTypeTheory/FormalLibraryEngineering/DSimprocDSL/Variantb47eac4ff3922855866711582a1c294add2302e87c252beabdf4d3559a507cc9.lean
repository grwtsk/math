-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymDSimprocElab.Variantce73c8b4e117719aa18adf59fb3098323c6041dae270aa9f9c7d70a6cbf4c735","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce73c8b4e117719aa18adf59fb3098323c6041dae270aa9f9c7d70a6cbf4c735","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SymDSimprocElab.Variantce73c8b4e117719aa18adf59fb3098323c6041dae270aa9f9c7d70a6cbf4c735","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ce73c8b4e117719aa18adf59fb3098323c6041dae270aa9f9c7d70a6cbf4c735","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/DSimprocDSL.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Meta.Sym.DSimp
import Init.Sym.DSimp.DSimprocDSL

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymDSimprocElab.Variantce73c8b4e117719aa18adf59fb3098323c6041dae270aa9f9c7d70a6cbf4c735

public section
namespace Lean.Elab.Tactic.Grind
open Meta Sym.DSimp

/-- Elaboration function for `sym_dsimproc` syntax. -/
abbrev SymDSimprocElab := Syntax → GrindTacticM DSimproc

unsafe builtin_initialize symDSimprocElabAttribute : KeyedDeclsAttribute SymDSimprocElab ←
  mkElabAttribute SymDSimprocElab `builtin_sym_dsimproc `sym_dsimproc
    `Lean.Parser.Sym.DSimp `Lean.Elab.Tactic.Grind.SymDSimprocElab "sym_dsimproc"

/-- Elaborate a `sym_dsimproc` syntax node into a `DSimproc`. -/
partial def elabSymDSimproc (stx : Syntax) : GrindTacticM DSimproc := do
  let elabFns := symDSimprocElabAttribute.getEntries (← getEnv) stx.getKind
  for elabFn in elabFns do
    try
      return (← elabFn.value stx)
    catch ex =>
      match ex with
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then continue
        else throw ex
      | _ => throw ex
  throwErrorAt stx "unsupported sym_dsimproc syntax `{stx.getKind}`"

end Lean.Elab.Tactic.Grind
