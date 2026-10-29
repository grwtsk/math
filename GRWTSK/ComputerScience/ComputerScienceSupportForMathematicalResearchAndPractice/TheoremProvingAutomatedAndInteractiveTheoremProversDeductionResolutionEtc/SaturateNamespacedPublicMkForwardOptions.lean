-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootAesopElabMRunForwardElab.Variant1977fcff92fbf3a7927ac3d0618c0d60fe85dcff9a87911fcd74cef864e23d68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1977fcff92fbf3a7927ac3d0618c0d60fe85dcff9a87911fcd74cef864e23d68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootAesopElabMRunForwardElab.Variant1977fcff92fbf3a7927ac3d0618c0d60fe85dcff9a87911fcd74cef864e23d68","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1977fcff92fbf3a7927ac3d0618c0d60fe85dcff9a87911fcd74cef864e23d68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Frontend/Saturate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Saturate
public meta import Aesop.Frontend.Extension
public meta import Aesop.Builder.Forward
public meta import Aesop.Stats.File


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootAesopElabMRunForwardElab.Variant1977fcff92fbf3a7927ac3d0618c0d60fe85dcff9a87911fcd74cef864e23d68

public meta section

open Lean Lean.Meta Lean.Elab Lean.Elab.Term Lean.PrettyPrinter

namespace Aesop.Frontend.Parser

syntax usingRuleSets := "using " ident+
syntax additionalRule := "*" <|> term
syntax additionalRules := "[" additionalRule,* "]"

end Parser

open Parser

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootAesopElabMRunForwardElab.Variant1977fcff92fbf3a7927ac3d0618c0d60fe85dcff9a87911fcd74cef864e23d68.Aesop.ElabM.runForwardElab (goal : MVarId) (x : ElabM α) :
    TermElabM α :=
  x |>.run { parsePriorities := true, goal }

def mkForwardOptions (maxDepth? : Option Nat) (traceScript : Bool) :
    CoreM Options' :=
  ({ traceScript } : Aesop.Options).toOptions' maxDepth?

def elabGlobalRuleSets (rsNames : Array Ident) :
    CoreM (Array (GlobalRuleSet × Name × Name)) := do
  getGlobalRuleSets $
    (← getDefaultRuleSetNames).toArray ++ rsNames.map (·.getId)

def elabForwardRule (term : Term) : ElabM LocalRuleSetMember := do
  let builderInput := {
    options := ∅
    phase := .safe { penalty := 1, safety := .safe }
    term
  }
  let ctx := { parsePriorities := true, goal := (← read).goal }
  RuleBuilder.forward (isDestruct := false) builderInput |>.run ctx

def mkHypForwardRule (fvarId : FVarId) : ElabM LocalRuleSetMember := do
  elabForwardRule (← delab $ .fvar fvarId)

-- TODO mv
def isImplication (e : Expr) : MetaM Bool :=
  forallBoundedTelescope e (some 1) λ args body =>
    pure (! args.isEmpty) <&&> isProp body

def mkHypImplicationRule? (fvarId : FVarId) :
    ElabM (Option LocalRuleSetMember) := do
  let goal := (← read).goal
  goal.withContext do
  withTransparency .reducible do
    if ← isImplication (← fvarId.getType) then
        mkHypForwardRule fvarId
    else
        return none

def addLocalImplications (rs : LocalRuleSet) : ElabM LocalRuleSet := do
  let goal := (← read).goal
  let mut rs := rs
  for ldecl in (← goal.getDecl).lctx do
    if ldecl.isImplementationDetail then
      continue
    if let some rsMember ← mkHypImplicationRule? ldecl.fvarId then
      rs := rs.add rsMember
  return rs

def elabAdditionalForwardRules (rs : LocalRuleSet) (rules : Array (TSyntax ``additionalRule)) : ElabM LocalRuleSet := do
  let mut rs := rs
  let mut addImplications := false
  for rule in rules do
    match rule with
    | `(additionalRule| *) => addImplications := true
    | `(additionalRule| $t:term) => do
      rs := rs.add (← elabForwardRule t)
    | _ => throwUnsupportedSyntax
  if addImplications then
    rs ← addLocalImplications rs
  return rs

def elabForwardRuleSetCore (rsNames : Array Ident)
    (additionalRules : Array (TSyntax ``additionalRule))
    (options : Options') : ElabM LocalRuleSet := do
  let rss ← elabGlobalRuleSets rsNames
  let rs ← mkLocalRuleSet rss options
  elabAdditionalForwardRules rs additionalRules

def elabForwardRuleSet (rsNames? : Option (TSyntax ``usingRuleSets))
    (additionalRules? : Option (TSyntax ``additionalRules)) (options : Options') :
    ElabM LocalRuleSet := do
  let rsNames? ← rsNames?.mapM λ
    | `(usingRuleSets| using $rs:ident*) => pure rs
    | _ => throwUnsupportedSyntax
  let additionalRules? ← additionalRules?.mapM λ
    | `(additionalRules| [$rs:additionalRule,*]) => pure (rs : Array _)
    | _ => throwUnsupportedSyntax
  elabForwardRuleSetCore (rsNames?.getD #[]) (additionalRules?.getD #[]) options

open Lean.Elab.Tactic

def evalSaturateCore (stx : Syntax) (depth? : Option (TSyntax `num))
    (rules? : Option (TSyntax ``additionalRules))
    (rs? : Option (TSyntax ``usingRuleSets)) (traceScript : Bool) :
    TacticM Unit := do
  let depth? := depth?.map (·.getNat)
  let options ← mkForwardOptions depth? traceScript
  let rs ← elabForwardRuleSet rs? rules? options
    |>.runForwardElab (← getMainGoal)
  let stats ← liftMetaTacticAux fun mvarId => do
    let (mvarId, stats) ← saturate rs mvarId options
    return (stats, [mvarId])
  appendStatsToStatsFileIfEnabled stx stats (allGoalsSolved := false)

syntax (name := saturate)
  "saturate" (ppSpace num)? (ppSpace additionalRules)? (ppSpace usingRuleSets)? : tactic
syntax (name := saturate?)
  "saturate?" (ppSpace num)? (ppSpace additionalRules)? (ppSpace usingRuleSets)? : tactic

@[tactic saturate]
def evalSaturate : Tactic
  | stx@`(tactic| saturate $[$depth?]? $[$rules?]? $[$usingRuleSets?]?) =>
    evalSaturateCore stx depth? rules? usingRuleSets? (traceScript := false)
  | _ => throwUnsupportedSyntax

@[tactic saturate?]
def evalSaturate? : Tactic
  | stx@`(tactic| saturate? $[$depth?]? $[$rules?]? $[$usingRuleSets?]?) =>
    evalSaturateCore stx depth? rules? usingRuleSets? (traceScript := true)
  | _ => throwUnsupportedSyntax

macro "forward" rules?:(ppSpace additionalRules)? rs?:(ppSpace usingRuleSets)? : tactic =>
  `(tactic| saturate 1 $[$rules?]? $[$rs?]?)

macro "forward?" rules?:(ppSpace additionalRules)? rs?:(ppSpace usingRuleSets)? : tactic =>
  `(tactic| saturate? 1 $[$rules?]? $[$rs?]?)

end Aesop.Frontend
