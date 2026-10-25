# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant1dcc1fcfff276a1d00cdc32cf2767d93ee6cd088247c6ab8c69c31c653160a33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d16cd2c12cf893e3668370916c4286478dcc9df` · SHA-256 `1dcc1fcfff276a1d00cdc32cf2767d93ee6cd088247c6ab8c69c31c653160a33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Search.Main
public meta import Aesop.Frontend.Tactic
public meta import Aesop.Stats.Extension
public meta import Aesop.Stats.File

public section

open Lean
open Lean.Elab.Tactic

namespace Aesop

@[tactic Frontend.Parser.aesopTactic, tactic Frontend.Parser.aesopTactic?]
meta def evalAesop : Tactic := λ stx => do
  profileitM Exception "aesop" (← getOptions) do
  let goal ← getMainGoal
  goal.withContext do
    let (solved, stats) ← go stx goal |>.run ∅
    stats.trace .stats
    recordStatsForCurrentFileIfEnabled stx stats
    appendStatsToStatsFileIfEnabled stx stats solved
where
  go (stx : Syntax) (goal : MVarId) : StateRefT Stats TacticM Bool :=
    profiling (λ s _ t => { s with total := t }) do
      let config ← profiling (λ s _ t => { s with configParsing := t }) do
        Frontend.TacticConfig.parse stx goal
      let ruleSet ←
        profiling (λ s _ t => { s with ruleSetConstruction := t }) do
          config.getRuleSet goal
      withConstAesopTraceNode .ruleSet (return "Rule set") do
        ruleSet.trace .ruleSet
      profiling (λ s _ t => { s with search := t }) do
        let (goals, stats) ←
          search goal ruleSet config.options config.simpConfig
            config.simpConfigSyntax? (← getStats)
        let solved := goals.isEmpty
        replaceMainGoal goals.toList
        modifyStats λ _ => stats
        return solved

end Aesop
```
