-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FocusResult.Variant9fe7907f41d9f8a2916c680a268f821b6bcd863942fb8828e094eabb084b2926","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fe7907f41d9f8a2916c680a268f821b6bcd863942fb8828e094eabb084b2926","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FocusResult.Variant9fe7907f41d9f8a2916c680a268f821b6bcd863942fb8828e094eabb084b2926","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9fe7907f41d9f8a2916c680a268f821b6bcd863942fb8828e094eabb084b2926","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Focus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.MGoal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FocusResult.Variant9fe7907f41d9f8a2916c680a268f821b6bcd863942fb8828e094eabb084b2926

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic ProofMode
open Lean Elab.Tactic Meta

/-- The result of focusing the context of a goal `goal : MGoal` on a particular hypothesis.
The focused hypothesis is returned as `focusHyp : Expr`, along with the
residual `restHyps : Expr` and a `proof : Expr` for the property
`goal.hyps ⊣⊢ₛ restHyps ∧ focusHyp`. -/
structure FocusResult where
  focusHyp : Expr
  restHyps : Expr
  proof : Expr
  deriving Inhabited

partial def focusHyp (u : Level) (σs : Expr) (e : Expr) (name : Name) : Option FocusResult := do
  if let some hyp := parseHyp? e then
    if hyp.name = name then
      return ⟨e, emptyHyp u σs, mkApp2 (mkConst ``Focus.this [u]) σs e⟩
    else
      none
  else if let some (u, σs, lhs, rhs) := parseAnd? e then
    try
      -- NB: Need to prefer rhs over lhs, like the goal view (Lean.Elab.Tactic.Do.ProofMode.Delab).
      let ⟨focus, rhs', h₁⟩ ← focusHyp u σs rhs name
      let ⟨C, h₂⟩ := SPred.mkAnd u σs lhs rhs'
      return ⟨focus, C, mkApp8 (mkConst ``Focus.right [u]) σs lhs rhs rhs' C focus h₁ h₂⟩
    catch _ =>
      let ⟨focus, lhs', h₁⟩ ← focusHyp u σs lhs name
      let ⟨C, h₂⟩ := SPred.mkAnd u σs lhs' rhs
      return ⟨focus, C, mkApp8 (mkConst ``Focus.left [u]) σs lhs lhs' rhs C focus h₁ h₂⟩
  else if let some _ := parseEmptyHyp? e then
    none
  else
    panic! s!"focusHyp: hypothesis without proper metadata: {e}"

def MGoal.focusHyp (goal : MGoal) (name : Name) : Option FocusResult :=
  Lean.Elab.Tactic.Do.ProofMode.focusHyp goal.u goal.σs goal.hyps name

def FocusResult.refl (u : Level) (σs : Expr) (restHyps : Expr) (focusHyp : Expr) : FocusResult :=
  let proof := mkApp2 (mkConst ``SPred.bientails.refl [u]) σs (SPred.mkAnd! u σs restHyps focusHyp)
  { restHyps, focusHyp, proof }

def FocusResult.restGoal (res : FocusResult) (goal : MGoal) : MGoal :=
  { goal with hyps := res.restHyps }

def FocusResult.recombineGoal (res : FocusResult) (goal : MGoal) : MGoal :=
  { goal with hyps := SPred.mkAnd! goal.u goal.σs res.restHyps res.focusHyp }

/-- Turn a proof for `(res.recombineGoal goal).toExpr` into one for `goal.toExpr`. -/
def FocusResult.rewriteHyps (res : FocusResult) (goal : MGoal) : Expr → Expr :=
  mkApp6 (mkConst ``Focus.rewrite_hyps [goal.u]) goal.σs goal.hyps (SPred.mkAnd! goal.u goal.σs res.restHyps res.focusHyp) goal.target res.proof

def MGoal.focusHypWithInfo (goal : MGoal) (name : Ident) : MetaM FocusResult := do
  let some res := goal.focusHyp name.getId | throwError "unknown hypothesis `{name}`"
  let some hyp := parseHyp? res.focusHyp | throwError "impossible; res.focusHyp not a hypothesis"
  addHypInfo name goal.σs hyp
  pure res
