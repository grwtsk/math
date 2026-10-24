# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AtLocation.Variant9f4c238230b7c05a9f8f8b32ebdb786dc13e8225e011da7730e2635ab3d1e9a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d6aeae6083d8abc43af89949c9fdbeb19eb8eec` · SHA-256 `d8b4d7ebbf2770391f1a995d36b360a4ef362e8dde85ee071846c4e7d5f54899`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AtLocation.Variant2e9e2f116b79b56afb70b163ccc40a946ebfe8194d6cf5e78389ffb429fe8ad5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e9e2f116b79b56afb70b163ccc40a946ebfe8194d6cf5e78389ffb429fe8ad5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AtLocation.Variant2e9e2f116b79b56afb70b163ccc40a946ebfe8194d6cf5e78389ffb429fe8ad5","mathematical_subject":"Computation.DataStructures","original_sha256":"2e9e2f116b79b56afb70b163ccc40a946ebfe8194d6cf5e78389ffb429fe8ad5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/AtLocation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Paul Cadman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Cadman
-/
import Mathlib.Util.AtLocation

/-! # Tests for `Location` traversal in `Mathlib.Util.AtLocation` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AtLocation.Variant2e9e2f116b79b56afb70b163ccc40a946ebfe8194d6cf5e78389ffb429fe8ad5

open Lean Elab Tactic Meta Mathlib.Tactic Parser.Tactic

-- the probe tactics deliberately change no goal state
set_option linter.unusedTactic false

/-- Run `withNondepPropLocation` and record which locations were visited. -/
elab "visit_nondep_prop" loc:(location)? : tactic => do
  let loc := (loc.map expandLocation).getD (.targets #[] true)
  let visited ← IO.mkRef (#[] : Array Name)
  withNondepPropLocation loc
    (fun fvarId => do visited.modify (·.push (← fvarId.getUserName)))
    (visited.modify (·.push `goal))
    (fun _ => throwError "no location visited")
  logInfo m!"visited: {(← visited.get)}"

/-- Fail at every location visited by `withNondepPropLocation`. -/
elab "visit_none" : tactic => do
  withNondepPropLocation .wildcard
    (fun _ => throwError "hyp refused")
    (throwError "target refused")
    (fun _ => throwError "no location visited")

-- wildcard visits the target first, and selected hypotheses in newest-first ordering. -/
/-- info: visited: [goal, _h, _f] -/
#guard_msgs in
example (_b : Bool) (_f : _b = true) (_g : Bool → Bool) (_h : _b = _b) : True := by
  visit_nondep_prop at *
  trivial

-- the wildcard skips `h1` Prop` hypothesis with a forward dependency -/
/-- info: visited: [goal, _h2] -/
#guard_msgs in
example (n m : Nat) (h1 : n = m) (v : Fin n) (P : Fin m → Prop) (_h2 : P (h1 ▸ v)) : True := by
  visit_nondep_prop at *
  trivial

-- explicitly listed hypotheses are not filtered
/-- info: visited: [_v] -/
#guard_msgs in
example (_v : Bool) : True := by
  visit_nondep_prop at _v
  trivial

-- explicit lists run the hypotheses first and the goal last
/-- info: visited: [_h, goal] -/
#guard_msgs in
example (b : Bool) (_h : b = b) : True := by
  visit_nondep_prop at _h ⊢
  trivial

-- failures of the real `atLocal`/`atTarget` are ignored under `*`, and when no location succeeds
-- `failed` is called
/-- error: no location visited -/
#guard_msgs in
example (h : True) : True := by
  visit_none

/-- Collect the types at each location visited by `mapNondepPropLocation`. -/
elab "collect_nondep_prop" loc:(location)? : tactic => do
  let loc := expandOptLocation (mkOptionalNode loc)
  let tys ← mapNondepPropLocation loc (fun fvarId => fvarId.getType) getMainTarget
  logInfo m!"collected: {tys}"

/-- info: collected: [True, _b = true] -/
#guard_msgs in
example (_b : Bool) (_f : _b = true) : True := by
  collect_nondep_prop at *
  trivial

/-- info: collected: [Bool, _b = true, True] -/
#guard_msgs in
example (_b : Bool) (_f : _b = true) : True := by
  collect_nondep_prop at _b _f ⊢
  trivial
```
