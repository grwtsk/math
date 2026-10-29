-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetReflCmpThm.Variant16c184dc6619b2851964745f357953a2a75409990fb73fd002644b57052611a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16c184dc6619b2851964745f357953a2a75409990fb73fd002644b57052611a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetReflCmpThm.Variant16c184dc6619b2851964745f357953a2a75409990fb73fd002644b57052611a2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"16c184dc6619b2851964745f357953a2a75409990fb73fd002644b57052611a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/ReflCmp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.SynthInstance
import Lean.Meta.Tactic.Grind.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetReflCmpThm.Variant16c184dc6619b2851964745f357953a2a75409990fb73fd002644b57052611a2

public section
namespace Lean.Meta.Grind
/-!
Support for type class `ReflCmp`.
-/
/-
Note: we will have similar support for `Associative` and `Commutative`. In the future, we should have
a mechanism for letting users to install their own handlers.
-/

/--
If `op` implements `ReflCmp`, then returns the proof term for
`∀ a b, a = b → op a b = .eq`
-/
def getReflCmpThm? (op : Expr) : GrindM (Option Expr) := do
  if let some thm? := (← get).reflCmpMap.find? { expr := op } then
    return thm?
  let thm? ← go?
  modify fun s => { s with reflCmpMap := s.reflCmpMap.insert { expr := op } thm? }
  return thm?
where
  go? : MetaM (Option Expr) := do
    unless (← getEnv).contains ``Std.ReflCmp do return none
    let opType ← whnf (← inferType op)
    let .forallE _ α b _ := opType | return none
    if b.hasLooseBVars then return none
    let .forallE _ α' b _ ← whnf b | return none
    unless b.isConstOf ``Ordering do return none
    unless (← isDefEq α α') do return none
    let u ← getLevel α
    let some u ← decLevel? u | return none
    let reflCmp := mkApp2 (mkConst ``Std.ReflCmp [u]) α op
    let some reflCmpInst ← synthInstanceMeta? reflCmp | return none
    return some <| mkApp3 (mkConst ``Std.ReflCmp.cmp_eq_of_eq [u]) α op reflCmpInst

def propagateReflCmp (e : Expr) : GoalM Unit := do
  let some op := getBinOp e | return ()
  let some thm ← getReflCmpThm? op | return ()
  let a := e.appFn!.appArg!
  let b := e.appArg!
  unless (← isEqv a b) do return ()
  let oeq ← getOrderingEqExpr
  pushEq e oeq <| mkApp3 thm a b (← mkEqProof a b)

end Lean.Meta.Grind
