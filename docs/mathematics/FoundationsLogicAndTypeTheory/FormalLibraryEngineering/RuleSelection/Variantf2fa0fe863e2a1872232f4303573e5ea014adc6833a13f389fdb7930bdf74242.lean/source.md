# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleSelection.Variantf2fa0fe863e2a1872232f4303573e5ea014adc6833a13f389fdb7930bdf74242

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `464b09e8fb89f01fbb621fdf4b6c5bfc53b88fa8` · SHA-256 `f2fa0fe863e2a1872232f4303573e5ea014adc6833a13f389fdb7930bdf74242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.RunMetaM
public import Aesop.Search.SearchM

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
```
