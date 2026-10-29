-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MGoalAssumption.Variant4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MGoalAssumption.Variant4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Assumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.Exact
import Lean.Meta.Tactic.Assumption


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MGoalAssumption.Variant4fde763a1291cadfc08707fef286e6d552304137072beff1638451926f858821

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

partial def MGoal.assumption (goal : MGoal) : OptionT MetaM Expr := do
  if let some _ := parseEmptyHyp? goal.hyps then
    failure
  if let some hyp := parseHyp? goal.hyps then
    guard (← isDefEq hyp.p goal.target)
    return mkApp2 (mkConst ``SPred.entails.refl [goal.u]) goal.σs hyp.p
  if let some (u, σs, lhs, rhs) := parseAnd? goal.hyps then
    -- NB: Need to prefer rhs over lhs, like the goal view (Lean.Elab.Tactic.Do.ProofMode.Display).
    mkApp5 (mkConst ``Assumption.right [u]) σs lhs rhs goal.target <$> assumption { goal with hyps := rhs }
    <|>
    mkApp5 (mkConst ``Assumption.left [u]) σs lhs rhs goal.target <$> assumption { goal with hyps := lhs }
  else
    panic! s!"assumption: hypothesis without proper metadata: {goal.hyps}"

def MGoal.assumptionPure (goal : MGoal) : OptionT MetaM Expr := do
  let φ := mkApp2 (mkConst ``tautological [goal.u]) goal.σs goal.target
  let fvarId ← OptionT.mk (findLocalDeclWithType? φ)
  let inst ← synthInstance? (mkApp3 (mkConst ``PropAsSPredTautology [goal.u]) φ goal.σs goal.target)
  return mkApp6 (mkConst ``Exact.from_tautology [goal.u]) goal.σs φ goal.hyps goal.target inst (.fvar fvarId)

@[builtin_tactic Lean.Parser.Tactic.massumption]
def elabMAssumption : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"

  let some proof ← liftMetaM <|
    goal.assumption <|> goal.assumptionPure
    | throwError "hypothesis not found"
  mvar.assign proof
  replaceMainGoal []
