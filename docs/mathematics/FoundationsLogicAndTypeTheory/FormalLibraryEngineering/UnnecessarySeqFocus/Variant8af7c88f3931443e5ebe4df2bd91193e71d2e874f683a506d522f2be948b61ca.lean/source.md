# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnnecessarySeqFocus.Variant8af7c88f3931443e5ebe4df2bd91193e71d2e874f683a506d522f2be948b61ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f4d6d6df873af5bfd9d4aeb630348fe276b21b4` · SHA-256 `41175ca72781e26a5b3cbd40b6e0613b4008ed099ea88d74c83a3f1b61766724`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Entry.Variant495c7c2603f831bb042b24dce4130dcecff4c23c836a361417799a0b6ce70783","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"495c7c2603f831bb042b24dce4130dcecff4c23c836a361417799a0b6ce70783","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Entry.Variant495c7c2603f831bb042b24dce4130dcecff4c23c836a361417799a0b6ce70783","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"495c7c2603f831bb042b24dce4130dcecff4c23c836a361417799a0b6ce70783","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Extra/UnnecessarySeqFocus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski

Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Elab.Command
public import Lean.Linter.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Entry.Variant495c7c2603f831bb042b24dce4130dcecff4c23c836a361417799a0b6ce70783

public section

namespace Lean.Linter.Extra
open Elab Command

/--
Enables the 'unnecessary `<;>`' linter. This will warn whenever the `<;>` tactic combinator
is used when `;` would work.

```
example : True := by apply id <;> trivial
```
The `<;>` is unnecessary here because `apply id` only makes one subgoal.
Prefer `apply id; trivial` instead.

In some cases, the `<;>` is syntactically necessary because a single tactic is expected:
```
example : True := by
  cases () with apply id <;> apply id
  | unit => trivial
```
In this case, you should use parentheses, as in `(apply id; apply id)`:
```
example : True := by
  cases () with (apply id; apply id)
  | unit => trivial
```
-/
register_builtin_option linter.extra.unnecessarySeqFocus : Bool := {
  defValue := false
  descr := "enable the 'unnecessary <;>' linter"
}

namespace UnnecessarySeqFocus

/--
The set of tactic syntax kinds that act on multiple goals — meaning `tac` differs from
`focus tac`. Used to suppress false positives where `tac1 <;> tac2` cannot be replaced by
`(tac1; tac2)` because that would expose `tac2` to a different set of goals.

Other modules can extend this set in their own `builtin_initialize` block by calling
`addBuiltinMultigoalKinds`.
-/
builtin_initialize multigoalKindsRef : IO.Ref Lean.NameSet ← IO.mkRef {}

/-- Register `k` as a multigoal tactic syntax kind. -/
def addBuiltinMultigoalKind (k : SyntaxNodeKind) : IO Unit :=
  multigoalKindsRef.modify (·.insert k)

/-- Register `ks` as multigoal tactic syntax kinds. -/
def addBuiltinMultigoalKinds (ks : Array SyntaxNodeKind) : IO Unit :=
  multigoalKindsRef.modify fun s => ks.foldl (·.insert ·) s

builtin_initialize
  addBuiltinMultigoalKinds #[
    ``Parser.Tactic.«tacticNext_=>_»,
    ``Parser.Tactic.allGoals,
    ``Parser.Tactic.anyGoals,
    ``Parser.Tactic.case,
    ``Parser.Tactic.case',
    ``Parser.Tactic.Conv.«convNext__=>_»,
    ``Parser.Tactic.Conv.allGoals,
    ``Parser.Tactic.Conv.anyGoals,
    ``Parser.Tactic.Conv.case,
    ``Parser.Tactic.Conv.case',
    ``Parser.Tactic.rotateLeft,
    ``Parser.Tactic.rotateRight,
    ``Parser.Tactic.show,
    ``Parser.Tactic.tacticStop_
  ]

/-- Whether `k` is a multigoal tactic kind, per `multigoalKindsRef`. -/
def isMultigoalKind (k : SyntaxNodeKind) : BaseIO Bool :=
  return (← multigoalKindsRef.get).contains k

/-- The information we record for each `<;>` node appearing in the syntax. -/
structure Entry where
  /-- The `<;>` node itself. -/
  stx : Syntax
  /--
  * `true`: this `<;>` has been used unnecessarily at least once
  * `false`: it has never been executed
  * If it has been used properly at least once, the entry is removed from the table.
  -/
  used : Bool

/-- The monad for collecting used tactic syntaxes. -/
abbrev M (ω) := StateRefT (Std.HashMap Lean.Syntax.Range Entry) (ST ω)

/-- True if this is a `<;>` node in either `tactic` or `conv` classes. -/
@[inline] def isSeqFocus (k : SyntaxNodeKind) : Bool :=
  k == ``Parser.Tactic.«tactic_<;>_» || k == ``Parser.Tactic.Conv.«conv_<;>_»

/-- Accumulates the set of tactic syntaxes that should be evaluated at least once. -/
@[specialize] partial def getTactics {ω} (stx : Syntax) : M ω Unit := do
  if let .node _ k args := stx then
    if isSeqFocus k then
      if let some r := stx.getRange? true then
        modify fun m => m.insert r { stx, used := false }
    args.forM getTactics

/--
Traverse the info tree down a given path.
Each `(n, i)` means that the array must have length `n` and we will descend into the `i`'th child.
-/
def getPath : Info → PersistentArray InfoTree → List ((n : Nat) × Fin n) → Option Info
  | i, _, [] => some i
  | _, c, ⟨n, i, h⟩::ns =>
    if e : c.size = n then
      if let .node i c' := c[i]'(e ▸ h) then getPath i c' ns else none
    else none

mutual
variable (multigoals : Lean.NameSet)
/-- Search for tactic executions in the info tree and remove executed tactic syntaxes. -/
partial def markUsedTacticsList {ω} (trees : PersistentArray InfoTree) : M ω Unit :=
  trees.forM markUsedTactics

/-- Search for tactic executions in the info tree and remove executed tactic syntaxes. -/
partial def markUsedTactics {ω} : InfoTree → M ω Unit
  | .node i c => do
    if let .ofTacticInfo i := i then
      if let some r := i.stx.getRange? true then
      if let some entry := (← get)[r]? then
      if i.stx.getKind == ``Parser.Tactic.«tactic_<;>_» then
        let isBad := do
          unless i.goalsBefore.length == 1 || !multigoals.contains i.stx[0].getKind do
            none
          -- Note: this uses the exact sequence of tactic applications
          -- in the macro expansion of `<;> : tactic`
          let .ofTacticInfo i ← getPath (.ofTacticInfo i) c
            [⟨1, 0⟩, ⟨2, 1⟩, ⟨1, 0⟩, ⟨5, 0⟩] | none
          guard <| i.goalsAfter.length == 1
        modify fun s => if isBad.isSome then s.insert r { entry with used := true } else s.erase r
      else if i.stx.getKind == ``Parser.Tactic.Conv.«conv_<;>_» then
        let isBad := do
          unless i.goalsBefore.length == 1 || !multigoals.contains i.stx[0].getKind do
            none
          -- Note: this uses the exact sequence of tactic applications
          -- in the macro expansion of `<;> : conv`
          let .ofTacticInfo i ← getPath (.ofTacticInfo i) c
            [⟨1, 0⟩, ⟨1, 0⟩, ⟨1, 0⟩, ⟨1, 0⟩, ⟨1, 0⟩, ⟨2, 1⟩, ⟨1, 0⟩, ⟨5, 0⟩] | none
          guard <| i.goalsAfter.length == 1
        modify fun s => if isBad.isSome then s.insert r { entry with used := true } else s.erase r
    markUsedTacticsList c
  | .context _ t => markUsedTactics t
  | .hole _ => pure ()

end

@[inherit_doc Lean.Linter.Extra.linter.extra.unnecessarySeqFocus]
def unnecessarySeqFocusLinter : Linter where run := withSetOptionIn fun stx => do
  unless getLinterValue linter.extra.unnecessarySeqFocus (← getLinterOptions)
      && (← getInfoState).enabled do
    return
  if (← get).messages.hasErrors then
    return
  let trees ← getInfoTrees
  let multigoals ← multigoalKindsRef.get
  let go {ω} : M ω Unit := do
    getTactics stx
    markUsedTacticsList multigoals trees
  let (_, map) := runST fun _ => go.run {}
  let unused := map.fold (init := #[]) fun acc r { stx, used } =>
    if used then acc.push (stx[1].getRange?.getD r, stx[1]) else acc
  let key (r : Lean.Syntax.Range) := (r.start.byteIdx, (-r.stop.byteIdx : Int))
  let mut last : Lean.Syntax.Range := ⟨0, 0⟩
  for (r, stx) in let _ := @lexOrd; let _ := @ltOfOrd.{0}; unused.qsort (key ·.1 < key ·.1) do
    if last.start ≤ r.start && r.stop ≤ last.stop then continue
    logLintIf linter.extra.unnecessarySeqFocus stx
      "Used `tac1 <;> tac2` where `(tac1; tac2)` would suffice"
    last := r

end UnnecessarySeqFocus

builtin_initialize addLinter UnnecessarySeqFocus.unnecessarySeqFocusLinter

end Lean.Linter.Extra
````
