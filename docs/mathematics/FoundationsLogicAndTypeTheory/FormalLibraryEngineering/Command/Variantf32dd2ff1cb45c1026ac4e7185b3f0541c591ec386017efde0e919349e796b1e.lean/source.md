# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf32dd2ff1cb45c1026ac4e7185b3f0541c591ec386017efde0e919349e796b1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09d4da8317dbfc842a335c33513c197abec95550` · SHA-256 `752c549dd34fb69dfcf264d1410d04188e9c4e1b0b50ebdf0a52dac01098dbb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalStatsReport.Variant23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalStatsReport.Variant23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Frontend/Command.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Frontend.Basic
public meta import Aesop.Stats.Report
public meta import Aesop.Frontend.Extension
public meta import Aesop.Frontend.RuleExpr
public meta import Lean.Elab.Command
import Batteries.Linter.UnreachableTactic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalStatsReport.Variant23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2

public meta section

open Lean Lean.Elab Lean.Elab.Command

namespace Aesop.Frontend.Parser

syntax (name := declareRuleSets)
  "declare_aesop_rule_sets " "[" ident,+,? "]"
  (" (" &"default" " := " Aesop.bool_lit ")")? : command

elab_rules : command
  | `(declare_aesop_rule_sets [ $ids:ident,* ]
       $[(default := $dflt?:Aesop.bool_lit)]?) => do
    let rsNames := (ids : Array Ident).map (·.getId)
    let dflt := (← dflt?.mapM (elabBoolLit ·)).getD false
    rsNames.forM checkRuleSetNotDeclared
    elabCommand $ ← `(meta initialize ($(quote rsNames).forM $ declareRuleSetUnchecked (isDefault := $(quote dflt))))
    -- TODO: record dependency on rule set at use site
    recordExtraRevUseOfCurrentModule

elab (name := addRules)
    attrKind:attrKind "add_aesop_rules " e:Aesop.rule_expr : command => do
  let attrKind :=
    match attrKind with
    | `(Lean.Parser.Term.attrKind| local) => .local
    | `(Lean.Parser.Term.attrKind| scoped) => .scoped
    | _ => .global
  let rules ← liftTermElabM do
    let e ← RuleExpr.elab e |>.run (← ElabM.Context.forAdditionalGlobalRules)
    e.buildAdditionalGlobalRules none
  for (rule, rsNames) in rules do
    for rsName in rsNames do
      liftCoreM $ addGlobalRule rsName rule attrKind (checkNotExists := true)

initialize Batteries.Linter.UnreachableTactic.addIgnoreTacticKind ``addRules

elab (name := eraseRules)
    "erase_aesop_rules " "[" es:Aesop.rule_expr,* "]" : command => do
  let filters ← Elab.Command.liftTermElabM do
    let ctx ← ElabM.Context.forGlobalErasing
    (es : Array _).mapM λ e => do
      let e ← RuleExpr.elab e |>.run ctx
      e.toGlobalRuleFilters
  for fs in filters do
    for (rsFilter, rFilter) in fs do
      liftCoreM $ eraseGlobalRules rsFilter rFilter (checkExists := true)

syntax (name := showRules)
  withPosition("#aesop_rules" (colGt ppSpace ident)*) : command

elab_rules : command
  | `(#aesop_rules $ns:ident*) => do
    liftTermElabM do
      let lt := λ (n₁, _) (n₂, _) => n₁.cmp n₂ |>.isLT
      let rss ←
        if ns.isEmpty then
          let rss ← getDeclaredGlobalRuleSets
          pure $ rss.qsort lt
        else
          ns.mapM λ n => return (n.getId, ← getGlobalRuleSet n.getId)
      TraceOption.ruleSet.withEnabled do
        for (name, rs, _) in rss do
          withConstAesopTraceNode .ruleSet (return m!"Rule set '{name}'") do
            rs.trace .ruleSet

def evalStatsReport? (name : Name) : CoreM (Option StatsReport) := do
  try
    unsafe some <$> evalConstCheck StatsReport ``StatsReport name
  catch _ =>
    return none

syntax (name := showStats) withPosition("#aesop_stats " (colGt ident)?) : command

elab_rules : command
  | `(#aesop_stats) => do
    logInfo $ StatsReport.default $ ← getStatsArray
  | `(#aesop_stats $report:ident) => do
    let openDecl := OpenDecl.simple ``Aesop.StatsReport []
    withScope (λ s => { s with openDecls := openDecl :: s.openDecls }) do
      let names ← resolveGlobalConst report
      liftTermElabM do
        for name in names do
          if let some report ← evalStatsReport? name then
            logInfo $ report $ ← getStatsArray
            break
        throwError "'{report}' is not a constant of type 'Aesop.StatsReport'"

end Aesop.Frontend.Parser
```
