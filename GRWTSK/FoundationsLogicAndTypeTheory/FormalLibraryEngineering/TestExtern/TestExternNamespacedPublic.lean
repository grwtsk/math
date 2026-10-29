-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Unfold.Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/TestExtern.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public meta import Lean.Meta.Tactic.Unfold
public meta import Lean.Meta.Eval
public meta import Lean.Compiler.ImplementedByAttr
public meta import Lean.Elab.Command
public import Init.Notation
import Lean.Exception
public meta import Lean.Compiler.ExternAttr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a

public section

namespace Lean

open Lean Elab Meta Command Term Compiler

syntax (name := testExternCmd) "test_extern " term : command

@[command_elab testExternCmd] meta unsafe def elabTestExtern : CommandElab
  | `(test_extern $t:term) => liftTermElabM do
    let t ← elabTermAndSynthesize t none
    match t.getAppFn with
    | .const f _ =>
      let env ← getEnv
      if isExtern env f || (getImplementedBy? env f).isSome then
        let t' := (← unfold t f).expr
        let r := mkApp (.const ``reduceBool []) (← mkDecide (← mkEq t t'))
        if ! (← evalExpr Bool (.const ``Bool []) r) then
          throwError
            ("native implementation did not agree with reference implementation!\n" ++
            m!"Compare the outputs of:\n#eval {t}\n and\n#eval {t'}")
      else
        throwError "test_extern: {f} does not have an @[extern] attribute or @[implemented_by] attribute"
    | _ => throwError "test_extern: expects a function application"
  | _ => throwUnsupportedSyntax

end Lean
