# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variant312b9167d64314540b13da100ff2f18907a3b53fc0dd9e69b82f31f8a7c90fc2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ae1b0e458600310d8ad09b97911633d6c146334` · SHA-256 `312b9167d64314540b13da100ff2f18907a3b53fc0dd9e69b82f31f8a7c90fc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute

public section

open Lean
open Lean.Meta

namespace Aesop.BuiltinRules

@[aesop (rule_sets := [builtin]) safe 100]
meta def splitTarget : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let (some goals, steps) ← splitTargetS? input.goal |>.run | throwError
    "nothing to split in target"
  let goals ← goals.mapM (mvarIdToSubgoal input.goal ·)
  return (goals, steps, none)

meta partial def splitHypothesesCore (goal : MVarId) :
    ScriptM (Option (Array MVarId)) :=
  withIncRecDepth do
  let some goals ← splitFirstHypothesisS? goal
    | return none
  let mut subgoals := #[]
  for g in goals do
    if let some subgoals' ← splitHypothesesCore g then
      subgoals := subgoals ++ subgoals'
    else
      subgoals := subgoals.push g
  return subgoals

@[aesop (rule_sets := [builtin]) safe 1000]
meta def splitHypotheses : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let (some goals, steps) ← splitHypothesesCore input.goal |>.run
    | throwError "no splittable hypothesis found"
  let goals ← goals.mapM (mvarIdToSubgoal input.goal ·)
  return (goals, steps, none)

end Aesop.BuiltinRules
```
