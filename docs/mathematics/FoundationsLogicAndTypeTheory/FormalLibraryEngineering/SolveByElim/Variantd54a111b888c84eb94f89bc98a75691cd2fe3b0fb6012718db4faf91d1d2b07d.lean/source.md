# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variantd54a111b888c84eb94f89bc98a75691cd2fe3b0fb6012718db4faf91d1d2b07d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b651f38d4bfbe1f20856ae9de5373536363900bc` · SHA-256 `9223032db75eb695f9dac1a42709752a7bd72b9a827fd450592c90c40b31fad1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MySorry.Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MySorry.Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/solve_by_elim.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Batteries.Tactic.PermuteGoals
import BatteriesTest.Internal.DummyLabelAttr
import Lean.Meta.Tactic.Constructor
import Lean.Elab.SyntheticMVars
import Lean.Elab.Tactic.SolveByElim -- FIXME we need to make SolveByElimConfig builtin


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MySorry.Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13

set_option autoImplicit true

open Lean Elab Tactic in
/--
`fconstructor` is like `constructor`
(it calls `apply` using the first matching constructor of an inductive datatype)
except that it does not reorder goals.
-/
elab "fconstructor" : tactic => withMainContext do
  let mvarIds' ← (← getMainGoal).constructor {newGoals := .all}
  Term.synthesizeSyntheticMVarsNoPostponing
  replaceMainGoal mvarIds'

-- Test that `solve_by_elim*`, which works on multiple goals,
-- successfully uses the relevant local hypotheses for each goal.
example (f g : Nat → Prop) : (∃ k : Nat, f k) ∨ (∃ k : Nat, g k) ↔ ∃ k : Nat, f k ∨ g k := by
  fconstructor
  rintro (⟨n, fn⟩ | ⟨n, gn⟩)
  on_goal 3 => rintro ⟨n, hf | hg⟩
  solve_by_elim* (maxDepth := 13) [Or.inl, Or.inr, Exists.intro]

section «using»

/-- -/
@[dummy_label_attr] axiom foo : 1 = 2

example : 1 = 2 := by
  fail_if_success solve_by_elim
  solve_by_elim using dummy_label_attr

end «using»

section issue1581

/-- -/
axiom mySorry {α} : α

@[dummy_label_attr] theorem le_rfl [LE α] {b c : α} (_h : b = c) : b ≤ c := mySorry

example : 5 ≤ 7 := by
  apply_rules using dummy_label_attr
  guard_target = 5 = 7
  exact mySorry

example : 5 ≤ 7 := by
  apply_rules [le_rfl]
  guard_target = 5 = 7
  exact mySorry

end issue1581
```
