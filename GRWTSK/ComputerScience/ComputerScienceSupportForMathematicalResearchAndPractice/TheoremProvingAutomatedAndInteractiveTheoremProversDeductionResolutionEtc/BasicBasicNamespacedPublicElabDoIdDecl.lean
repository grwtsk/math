-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabDoIdDecl.Variant996ec8a8a115d131ccd71728a15815e6fa29b0105bebea78423f8390353501db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"996ec8a8a115d131ccd71728a15815e6fa29b0105bebea78423f8390353501db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabDoIdDecl.Variant996ec8a8a115d131ccd71728a15815e6fa29b0105bebea78423f8390353501db","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"996ec8a8a115d131ccd71728a15815e6fa29b0105bebea78423f8390353501db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/BuiltinDo/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Do.Basic
meta import Lean.Parser.Do


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabDoIdDecl.Variant996ec8a8a115d131ccd71728a15815e6fa29b0105bebea78423f8390353501db

public section

namespace Lean.Elab.Do

open Lean.Parser.Term
open Lean.Meta

def elabDoIdDecl (x : Ident) (xType? : Option Term) (rhs : DoElem) (k : DoElabM Expr)
    (kind : DoElemContKind := .nonDuplicable) : DoElabM Expr := do
  let xType ← Term.elabType (xType?.getD (mkHole x))
  let lctx ← getLCtx
  let ctx ← read
  let ref ← getRef -- store the surrounding reference for error messages in `k`
  elabDoElem rhs <| .mk (kind := kind) x.getId xType do withRef ref do
    withLCtxKeepingMutVarDefs lctx ctx x.getId do
      Term.addLocalVarInfo x (← getFVarFromUserName x.getId)
      k
