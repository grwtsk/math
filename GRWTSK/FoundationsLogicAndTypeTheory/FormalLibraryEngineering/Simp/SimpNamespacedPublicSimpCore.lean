-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCore.Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpCore.Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Lemmas
public import Lean.Meta.Tactic.Simp.Main
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Util
import Lean.Meta.Tactic.Grind.MatchDiscrOnly
import Lean.Meta.Tactic.Grind.MarkNestedSubsingletons
import Lean.Meta.Sym.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCore.Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c

public section
namespace Lean.Meta.Grind

/-- Simplifies the given expression using the `grind` simprocs and normalization theorems. -/
def simpCore (e : Expr) : GrindM Simp.Result := do profileitM Exception "grind simp" (← getOptions) do
  let simp ← modifyGet fun s => (s.simp, { s with simp := {} })
  let ctx := (← readThe Context).simp
  /-
  Remark: we used to use `skipIfInShareCommon` as an additional filter to avoid re-visiting expressions
  that have already been fully processed by `grind`. The idea was to use the `inShareCommon` test since
  the last step of the `grind` normalizer is `shareCommon`.
  However, this optimization was incorrect because there are other places in the `grind` code base that
  use `shareCommon`.
  -/
  -- let m := (← get).scState.map
  -- let skipIfInShareCommon : Simp.Simproc := fun e => if m.contains { expr := e } then return .done { expr := e } else return .continue
  let methods := (← readThe Context).simpMethods
  -- let methods := { methods with pre := skipIfInShareCommon >> methods.pre }
  let (r, simp) ← Simp.mainCore e ctx simp (methods := methods)
  modify fun s => { s with simp }
  return r

/-- Similar to `simpCore`, but uses `dsimp`. -/
def dsimpCore (e : Expr) : GrindM Expr := do profileitM Exception "grind dsimp" (← getOptions) do
  let simp ← modifyGet fun s => (s.simp, { s with simp := {} })
  let ctx := (← readThe Context).simp
  let (r, simp) ← Simp.dsimpMainCore e ctx simp (methods := (← readThe Context).simpMethods)
  modify fun s => { s with simp }
  return r

set_option compiler.ignoreBorrowAnnotation true in
/--
Preprocesses `e` using `grind` normalization theorems and simprocs,
and then applies several other preprocessing steps.
-/
@[export lean_grind_preprocess]
def preprocessImpl (e : Expr) : GoalM Simp.Result := do
  let e ← instantiateMVars e
  let r ← simpCore e
  /-
  **Note**: Some transformation performed by `simp` may introduce metavariables.
  Example: zeta-reduction. Recall that `simp` does not necessarily visit every subterm.
  In particular, it does not visit universe terms and does not instantiate them.
  -/
  let e' ← instantiateMVars r.expr
  -- Remark: `simpCore` unfolds reducible constants, but it does not consistently visit all possible subterms.
  -- So, we must use the following `unfoldReducible` step. It is non-op in most cases
  let e' ← Sym.unfoldReducible e'
  let e' ← abstractNestedProofs e'
  let e' ← markNestedSubsingletons e'
  let e' ← eraseIrrelevantMData e'
  let e' ← foldProjs e'
  let e' ← Sym.normalizeLevels e'
  let r' ← eraseSimpMatchDiscrsOnly e'
  let r ← r.mkEqTrans r'
  let e' := r'.expr
  let r' ← replacePreMatchCond e'
  let r ← r.mkEqTrans r'
  let e' := r'.expr
  let e' ← canon e'
  let e' ← shareCommon e'
  trace_goal[grind.simp] "{e}\n===>\n{e'}"
  return { r with expr := e' }

def pushNewFact' (prop : Expr) (proof : Expr) (generation : Nat := 0) : GoalM Unit := do
  let r ← preprocess prop
  let prop' := r.expr
  let proof := if let some h := r.proof? then
    mkApp4 (mkConst ``Eq.mp [Level.zero]) prop prop' h proof
  else
    proof
  trace[grind.debug.pushNewFact] "{prop} ==> {prop'}"
  modify fun s => { s with newFacts := s.newFacts.push <| .fact prop' proof generation }


/-- Infers the type of the proof, preprocess it, and adds it to todo list. -/
def pushNewFact (proof : Expr) (generation : Nat := 0) : GoalM Unit := do
  let prop ← inferType proof
  trace[grind.debug.pushNewFact] "{prop}"
  pushNewFact' prop proof generation

/--
A lighter version of `preprocess` which produces a definitionally equal term,
but ensures assumptions made by `grind` are satisfied.
-/
def preprocessLight (e : Expr) : GoalM Expr := do
  let e ← instantiateMVars e
  shareCommon (← canon (← Sym.normalizeLevels (← foldProjs (← eraseIrrelevantMData (← markNestedSubsingletons (← Sym.unfoldReducible e))))))

end Lean.Meta.Grind
