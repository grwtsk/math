# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PermuteGoals.Variante454094dbacfcd484e298a71f4d8daf72d4d92ed4f5249598ccef9f9838a99dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff16f76223b029bfcdd4e3979f832a89f7b0a2fa` · SHA-256 `5c110ef47c1c9aef8c971900d0def4130cf369a2db8fe6b025f10eef305bd70f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitGoalsAndGetNth.Variant144e778295c350bddc508e697f9df4110649acddf5dc5b501225896a7254f791","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"144e778295c350bddc508e697f9df4110649acddf5dc5b501225896a7254f791","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SplitGoalsAndGetNth.Variant144e778295c350bddc508e697f9df4110649acddf5dc5b501225896a7254f791","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"144e778295c350bddc508e697f9df4110649acddf5dc5b501225896a7254f791","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/PermuteGoals.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Mario Carneiro
-/

import Lean
import Std.Data.List.Basic
import Mathlib.Init.Data.Nat.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitGoalsAndGetNth.Variant144e778295c350bddc508e697f9df4110649acddf5dc5b501225896a7254f791

namespace Mathlib.Tactic

open Lean Elab.Tactic

/--
If the current goals are `g₁ ⋯ gᵢ ⋯ gₙ`, `splitGoalsAndGetNth i` returns
`(gᵢ, [g₁, ⋯, gᵢ₋₁], [gᵢ₊₁, ⋯, gₙ])`.

If `reverse` is passed as `true`, the `i`-th goal is picked by counting backwards.
For instance, `splitGoalsAndGetNth 1 true` puts the last goal in the first component
of the returned term.
-/
def splitGoalsAndGetNth (nth : ℕ) (reverse : Bool := false) :
    TacticM (MVarId × List MVarId × List MVarId) := do
  if nth = 0 then throwError "goals are 1-indexed"
  let goals ← getGoals
  let nGoals := goals.length
  if nth > nGoals then throwError "goal index out of bounds"
  let n := if ¬reverse then nth - 1 else nGoals - nth
  let (gl, g :: gr) := goals.splitAt n | throwNoGoalsToBeSolved
  pure (g, gl, gr)

/--
`pick_goal n` will move the `n`-th goal to the front.

`pick_goal -n` will move the `n`-th goal (counting from the bottom) to the front.

See also `Tactic.rotate_goals`, which moves goals from the front to the back and vice-versa.
-/
elab "pick_goal " reverse:"-"? n:num : tactic => do
  let (g, gl, gr) ← splitGoalsAndGetNth n.1.toNat !reverse.isNone
  setGoals $ g :: (gl ++ gr)

/-- `swap` is a shortcut for `pick_goal 2`, which interchanges the 1st and 2nd goals. -/
macro "swap" : tactic => `(tactic| pick_goal 2)

/--
`on_goal n => tacSeq` creates a block scope for the `n`-th goal and tries the sequence
of tactics `tacSeq` on it.

`on_goal -n => tacSeq` does the same, but the `n`-th goal is chosen by counting from the
bottom.

The goal is not required to be solved and any resulting subgoals are inserted back into the
list of goals, replacing the chosen goal.
-/
elab "on_goal " reverse:"-"? n:num " => " seq:tacticSeq : tactic => do
  let (g, gl, gr) ← splitGoalsAndGetNth n.1.toNat !reverse.isNone
  setGoals [g]
  evalTactic seq
  setGoals $ gl ++ (← getUnsolvedGoals) ++ gr
```
