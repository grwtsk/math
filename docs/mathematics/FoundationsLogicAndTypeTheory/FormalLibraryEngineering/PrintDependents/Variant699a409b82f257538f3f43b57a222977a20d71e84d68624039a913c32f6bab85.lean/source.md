# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintDependents.Variant699a409b82f257538f3f43b57a222977a20d71e84d68624039a913c32f6bab85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b62ca0acd016f9a226dd1c232c862af8528c1fb6` · SHA-256 `d73dbceab239532d9c2492aa83fc7a0180ba861018d0ea81e25e84fd48072a80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant0433fe77595b69f2b1ab28c49f220f7899939a3feea1a60e5e84014b13ee9e00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0433fe77595b69f2b1ab28c49f220f7899939a3feea1a60e5e84014b13ee9e00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.State.Variant0433fe77595b69f2b1ab28c49f220f7899939a3feea1a60e5e84014b13ee9e00","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0433fe77595b69f2b1ab28c49f220f7899939a3feea1a60e5e84014b13ee9e00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/PrintDependents.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Util.FoldConsts


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant0433fe77595b69f2b1ab28c49f220f7899939a3feea1a60e5e84014b13ee9e00

public meta section

/-!
# `#print dependents` command

This is a variation on `#print axioms` where one instead specifies the axioms to avoid,
and it prints a list of all the theorems in the file that depend on that axiom, and the list
of all theorems directly referenced that are "to blame" for this dependency. Useful for debugging
unexpected dependencies.
-/
namespace Batteries.Tactic
open Lean Elab Command

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
import Batteries.Tactic.PrintDependents

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
  let ids ← ids.mapM fun c => return (← liftCoreM <| realizeGlobalConstNoOverloadWithInfo c, true)
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
    let mut msg := m!"{MessageData.ofConst (← mkConstWithLevelParams c)}: "
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
      for c in Std.TreeSet.ofArray consts Name.cmp do
        if state.result.find? c = some true then
          msg := msg ++ m!"{MessageData.ofConst (← mkConstWithLevelParams c)} "
    return msg
  logInfoAt tk (.joinSep msg.toList "\n")
````
