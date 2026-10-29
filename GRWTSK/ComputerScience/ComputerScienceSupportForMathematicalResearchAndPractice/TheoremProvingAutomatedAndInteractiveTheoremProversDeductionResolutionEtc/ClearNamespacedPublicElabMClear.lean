-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMClear.Variant5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabMClear.Variant5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Clear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.Syntax
public import Lean.Elab.Tactic.Do.ProofMode.Focus


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabMClear.Variant5874c73117e14c13c031fa3a37e652f46ea7e249f4050e0a361e4a1837bf99a5

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

@[builtin_tactic Lean.Parser.Tactic.mclear]
def elabMClear : Tactic
  | `(tactic| mclear $hyp:ident) => do
    let mvar ← getMainGoal
    mvar.withContext do
    let g ← instantiateMVars <| ← mvar.getType
    let some goal := parseMGoal? g | throwError "not in proof mode"
    let res ← goal.focusHypWithInfo hyp
    let m ← mkFreshExprSyntheticOpaqueMVar (res.restGoal goal).toExpr

    mvar.assign (mkApp7 (mkConst ``Clear.clear [goal.u]) goal.σs goal.hyps
      res.restHyps res.focusHyp goal.target res.proof m)
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax
