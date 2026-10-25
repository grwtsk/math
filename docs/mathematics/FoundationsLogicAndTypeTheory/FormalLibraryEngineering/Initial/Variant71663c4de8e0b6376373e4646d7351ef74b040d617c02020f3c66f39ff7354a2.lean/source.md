# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Initial.Variant71663c4de8e0b6376373e4646d7351ef74b040d617c02020f3c66f39ff7354a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4708a97a28dcb1dac4fb453da9e176fb5bf2465f` · SHA-256 `71663c4de8e0b6376373e4646d7351ef74b040d617c02020f3c66f39ff7354a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.State
public import Aesop.RuleSet

public section

open Lean Lean.Meta

namespace Aesop.LocalRuleSet

def mkInitialForwardState (goal : MVarId) (rs : LocalRuleSet) :
    BaseM (ForwardState × Array ForwardRuleMatch) :=
  profilingForwardState do
  goal.withContext do
    if ! aesop.dev.statefulForward.get (← getOptions) then
      return (∅, #[])
    let mut fs : ForwardState := ∅
    for ldecl in ← show MetaM _ from getLCtx do
      if ldecl.isImplementationDetail then
        continue
      let rules ← rs.applicableForwardRules ldecl.type
      let patInsts ← rs.forwardRulePatternSubstsInLocalDecl ldecl
      fs := fs.enqueueHypWithPatSubsts ldecl.fvarId rules patInsts
    let patInsts ← rs.forwardRulePatternSubstsInExpr (← goal.getType)
    fs := fs.enqueueTargetPatSubsts patInsts
    let ruleMatches := rs.constForwardRuleMatches
    aesop_trace[forward] do
      for m in ruleMatches do
        aesop_trace![forward] "match for constant rule {m.rule.name}"
    return (fs, ruleMatches)

end Aesop.LocalRuleSet
```
