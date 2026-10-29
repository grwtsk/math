-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectNormRules.Variantf2fa0fe863e2a1872232f4303573e5ea014adc6833a13f389fdb7930bdf74242","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2fa0fe863e2a1872232f4303573e5ea014adc6833a13f389fdb7930bdf74242","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SelectNormRules.Variantf2fa0fe863e2a1872232f4303573e5ea014adc6833a13f389fdb7930bdf74242","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f2fa0fe863e2a1872232f4303573e5ea014adc6833a13f389fdb7930bdf74242","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/RuleSelection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.RunMetaM
public import Aesop.Search.SearchM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectNormRules.Variantf2fa0fe863e2a1872232f4303573e5ea014adc6833a13f389fdb7930bdf74242

public section

open Lean

namespace Aesop

variable [Aesop.Queue Q]

def selectNormRules (rs : LocalRuleSet) (fms : ForwardRuleMatches)
    (goal : MVarId) : BaseM (Array (IndexMatchResult NormRule)) :=
  profilingRuleSelection do rs.applicableNormalizationRules fms goal

def preprocessRule : SafeRule where
  name := {
    name := `Aesop.BuiltinRule.preprocess
    builder := .tactic
    phase := .safe
    scope := .global
  }
  indexingMode := .unindexed
  pattern? := none
  extra := { penalty := 0, safety := .safe }
  tac := .preprocess

def selectSafeRules (g : Goal) :
    SearchM Q (Array (IndexMatchResult SafeRule)) := do
  profilingRuleSelection do
    if ← g.isRoot then
      return #[{
        rule := preprocessRule
        locations := ∅
        patternSubsts? := none
      }]
    let ruleSet := (← read).ruleSet
    g.runMetaMInPostNormState' λ postNormGoal =>
      ruleSet.applicableSafeRules g.forwardRuleMatches postNormGoal

def selectUnsafeRules (postponedSafeRules : Array PostponedSafeRule)
    (gref : GoalRef) : SearchM Q UnsafeQueue := do
  profilingRuleSelection do
    let g ← gref.get
    match g.unsafeQueue? with
    | some rules => return rules
    | none => do
      let ruleSet := (← read).ruleSet
      let unsafeRules ←
        g.runMetaMInPostNormState' λ postNormGoal =>
          ruleSet.applicableUnsafeRules g.forwardRuleMatches postNormGoal
      let unsafeQueue := UnsafeQueue.initial postponedSafeRules unsafeRules
      gref.set $ g.setUnsafeRulesSelected true |>.setUnsafeQueue unsafeQueue
      return unsafeQueue

end Aesop
