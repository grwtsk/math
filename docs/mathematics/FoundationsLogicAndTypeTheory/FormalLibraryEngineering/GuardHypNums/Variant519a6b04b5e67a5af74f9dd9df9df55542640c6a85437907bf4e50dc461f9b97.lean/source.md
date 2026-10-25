# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardHypNums.Variant519a6b04b5e67a5af74f9dd9df9df55542640c6a85437907bf4e50dc461f9b97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad3202937bbcabfa2aeb12dd51a55f00c1b1fa7d` · SHA-256 `519a6b04b5e67a5af74f9dd9df9df55542640c6a85437907bf4e50dc461f9b97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic

/-!
A tactic stub file for the `guard_hyp_nums` tactic.
-/

open Lean Meta Elab Tactic

/--
`guard_hyp_nums n` succeeds if there are exactly `n` hypotheses and fails otherwise.

Note that, depending on what options are set, some hypotheses in the local context might
not be printed in the goal view. This tactic computes the total number of hypotheses,
not the number of visible hypotheses.
-/
elab (name := guardHypNums) "guard_hyp_nums " n:num : tactic => do
  let numHyps := (← getLCtx).size
  guard (numHyps = n.getNat) <|>
    throwError "expected {n.getNat} hypotheses but found {numHyps}"
```
