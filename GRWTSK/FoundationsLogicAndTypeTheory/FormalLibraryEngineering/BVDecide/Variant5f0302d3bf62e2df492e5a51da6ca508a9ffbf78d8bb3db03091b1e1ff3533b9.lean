-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalBvDecide.Variant9dcf7b9ec677fb593f765781a6ee4f0d941703787a6f4cd6e27dde8d21b2d7db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9dcf7b9ec677fb593f765781a6ee4f0d941703787a6f4cd6e27dde8d21b2d7db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalBvDecide.Variant9dcf7b9ec677fb593f765781a6ee4f0d941703787a6f4cd6e27dde8d21b2d7db","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9dcf7b9ec677fb593f765781a6ee4f0d941703787a6f4cd6e27dde8d21b2d7db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/BVDecide/BVDecide.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Main


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalBvDecide.Variant9dcf7b9ec677fb593f765781a6ee4f0d941703787a6f4cd6e27dde8d21b2d7db

public section

/-!
This module provides the implementation of the `bv_decide` frontend itself.
-/

namespace Lean.Elab.Tactic.BVDecide

open Meta.Tactic.BVDecide

@[builtin_tactic Lean.Parser.Tactic.bvDecide]
def evalBvDecide : Tactic := fun
  | `(tactic| bv_decide $cfg:optConfig) => do
    let cfg ← elabBVDecideConfig cfg
    IO.FS.withTempFile fun _ lratFile => do
      let cfg ← TacticContext.new lratFile cfg
      liftMetaFinishingTactic fun g => do
        discard <| bvDecide g cfg
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.BVDecide
