-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpLambda.Variantf99a7d3437675322cfc5d7dcdee6aaa1a6d059106326c6b3b19baf5e02861d6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f99a7d3437675322cfc5d7dcdee6aaa1a6d059106326c6b3b19baf5e02861d6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DsimpLambda.Variantf99a7d3437675322cfc5d7dcdee6aaa1a6d059106326c6b3b19baf5e02861d6a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f99a7d3437675322cfc5d7dcdee6aaa1a6d059106326c6b3b19baf5e02861d6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/DSimp/Lambda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.Meta.Sym.AbstractS
import Lean.Meta.Sym.InstantiateS

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpLambda.Variantf99a7d3437675322cfc5d7dcdee6aaa1a6d059106326c6b3b19baf5e02861d6a

namespace Lean.Meta.Sym.DSimp

/--
Definitionally simplifies a lambda expression.

Unlike `Sym.Simp.simpLambda`, it descends into the binder type as well as the
body.
-/
public partial def dsimpLambda : DSimproc := fun e =>
  go e #[] false
where
  go (e : Expr) (fvars : Array Expr) (modified : Bool) : DSimpM Result := do
    match e with
    | .lam n d b c =>
      -- Instantiate the binder domain against the already-introduced `fvars` *before* creating
      -- the local declaration, otherwise the decl retains loose bound variables referring to
      -- earlier binders in this telescope.
      let d ← instantiateRevBetaS d fvars
      match (← dsimp d) with
      | .rfl _ => withLocalDecl n c d fun x => go b (fvars.push x) modified
      | .step d' _ => withLocalDecl n c d' fun x => go b (fvars.push x) true
    | _ =>
      let r ← dsimp (← instantiateRevBetaS e fvars)
      match r with
      | .rfl _ =>
        if modified then
          return .step (← mkLambdaFVarsS fvars e)
        else
          return .rfl
      | .step e' _ =>
        return .step (← mkLambdaFVarsS fvars e')

end Lean.Meta.Sym.DSimp
