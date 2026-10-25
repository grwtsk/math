# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintDependents.Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc31f342054fd3b8513458184af160475b1d55fc` · SHA-256 `1cf5cb9f6d348dc013e8acebbae9320b4a90370c96fa3eecaa0c168c30cc462f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.State.Variant565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/PrintDependents.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Command
import Lean.Util.FoldConsts
import Std.Lean.Delaborator

/-!
# `#print dependents` command

This is a variation on `#print axioms` where one instead specifies the axioms to avoid,
and it prints a list of all the theorems in the file that depend on that axiom, and the list
of all theorems directly referenced that are "to blame" for this dependency. Useful for debugging
unexpected dependencies.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02

namespace Std.Tactic
open Lean Elab

namespace CollectDependents

/-- Collects the result of a `CollectDependents` query. -/
structure State where
  /-- If true, an axiom not in the initial list will be considered as marked. -/
  otherAxiom : Bool := true
  /-- The cached results on visited constants. -/
  result : NameMap Bool := {}

/-- The monad used by `CollectDependents`. -/
abbrev M := ReaderT Environment $ StateM State

/--
Constructs the initial state, marking the constants in `cs`. The result of `collect` will say
whether a given declaration depends transitively on one of these constants.

If `otherAxiom` is true, any axiom not specified in `cs` will also be tracked.
-/
def mkState (cs : Array (Name × Bool)) (otherAxiom := true) : State :=
  { otherAxiom, result := cs.foldl (fun r (c, b) => r.insert c b) {} }

/-- Collect the results for a given constant. -/
partial def collect (c : Name) : M Bool := do
  let collectExpr (e : Expr) : M Bool := e.getUsedConstants.anyM collect
  let s ← get
  if let some b := s.result.find? c then return b
  modify fun s => { s with result := s.result.insert c false }
  let env ← read
  let r ← match env.find? c with
    | some (ConstantInfo.axiomInfo _)  => pure s.otherAxiom
    | some (ConstantInfo.defnInfo v)   => collectExpr v.type <||> collectExpr v.value
    | some (ConstantInfo.thmInfo v)    => collectExpr v.type <||> collectExpr v.value
    | some (ConstantInfo.opaqueInfo v) => collectExpr v.type <||> collectExpr v.value
    | some (ConstantInfo.quotInfo _)   => pure false
    | some (ConstantInfo.ctorInfo v)   => collectExpr v.type
    | some (ConstantInfo.recInfo v)    => collectExpr v.type
    | some (ConstantInfo.inductInfo v) => collectExpr v.type <||> v.ctors.anyM collect
    | none                             => pure false
  modify fun s => { s with result := s.result.insert c r }
  pure r

end CollectDependents

/--
The command `#print dependents X Y` prints a list of all the declarations in the file that
transitively depend on `X` or `Y`. After each declaration, it shows the list of all declarations
referred to directly in the body which also depend on `X` or `Y`.

For example, `#print axioms bar'` below shows that `bar'` depends on `Classical.choice`, but not
why. `#print dependents Classical.choice` says that `bar'` depends on `Classical.choice` because
it uses `foo` and `foo` uses `Classical.em`. `bar` is not listed because it is proved without using
`Classical.choice`.
```
import Std.Tactic.PrintDependents

theorem foo : x = y ∨ x ≠ y := Classical.em _
theorem bar : 1 = 1 ∨ 1 ≠ 1 := by simp
theorem bar' : 1 = 1 ∨ 1 ≠ 1 := foo

#print axioms bar'
-- 'bar'' depends on axioms: [Classical.choice, Quot.sound, propext]

#print dependents Classical.choice
-- foo: Classical.em
-- bar': foo
```

-/
elab tk:"#print" &"dependents" ids:(ppSpace colGt ident)* : command => do
  let env ← getEnv
  let ids ← ids.mapM fun c => return (← resolveGlobalConstNoOverloadWithInfo c, true)
  let init := CollectDependents.mkState ids false
  let mut state := init
  let mut out := #[]
  for (c, _) in env.constants.map₂ do
    let (b, state') := CollectDependents.collect c |>.run env |>.run state
    state := state'
    if b then
      if let some ranges ← findDeclarationRanges? c then
        out := out.push (c, ranges.range.pos.1)
  let msg ← out.qsort (·.2 < ·.2) |>.mapM fun (c, _) => do
    let mut msg := m!"{ppConst (← mkConstWithLevelParams c)}: "
    if init.result.contains c then
      msg := msg ++ m!"<specified>"
    else
      let consts := match env.find? c with
      | some (ConstantInfo.defnInfo v)   => v.type.getUsedConstants ++ v.value.getUsedConstants
      | some (ConstantInfo.thmInfo v)    => v.type.getUsedConstants ++ v.value.getUsedConstants
      | some (ConstantInfo.opaqueInfo v) => v.type.getUsedConstants ++ v.value.getUsedConstants
      | some (ConstantInfo.ctorInfo v)   => v.type.getUsedConstants
      | some (ConstantInfo.recInfo v)    => v.type.getUsedConstants
      | some (ConstantInfo.inductInfo v) => v.type.getUsedConstants ++ v.ctors
      | _                                => #[]
      for c in RBTree.fromArray consts Name.cmp do
        if state.result.find? c = some true then
          msg := msg ++ m!"{ppConst (← mkConstWithLevelParams c)} "
    return msg
  logInfoAt tk (.joinSep msg.toList "\n")
````
