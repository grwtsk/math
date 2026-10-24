-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToRatValue.Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToRatValue.Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/MBTC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.MBTC
import Lean.Meta.Tactic.Grind.Arith.ModelUtil
import Lean.Meta.Tactic.Grind.Arith.Linear.Model
import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToRatValue.Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e

public section
namespace Lean.Meta.Grind.Arith.Linear

private partial def toRatValue? (a : Expr) : Option Rat :=
  if a.isAppOfArity ``Zero.zero 2 then
    some 0
  else if a.isAppOfArity ``One.one 2 then
    some 1
  else if a.isAppOfArity ``OfNat.ofNat 3 then
    toRatValue? (a.getArg! 1)
  else if a.isAppOfArity ``Neg.neg 3 then
    (- ·) <$> toRatValue? a.appArg!
  else if a.isAppOfArity ``HDiv.hDiv 6 then
    (· / ·) <$> toRatValue? a.appFn!.appArg! <*> toRatValue? a.appArg!
  else if let .lit (.natVal n) := a then
    some (mkRat n 1)
  else
    none

private def getAssignmentExt? (s : Struct) (a : Expr) : Option Rat := do
  if let some v := getAssignment? s a then
    some v
  else
    toRatValue? a

private def hasTheoryVar (e : Expr) : GoalM Bool := do
  return (← linearExt.hasTermAtRoot e) || (toRatValue? e).isSome

private def isInterpreted (e : Expr) : GoalM Bool := do
  if isInterpretedTerm e then return true
  let f := e.getAppFn
  return f.isConstOf ``LE.le || f.isConstOf ``LT.lt || f.isConstOf ``Dvd.dvd

private def eqAssignment (a b : Expr) : GoalM Bool := do
  let structId₁? := (← get').exprToStructId.find? { expr := a }
  let structId₂? := (← get').exprToStructId.find? { expr := b }
  let some structId := structId₁? <|> structId₂? | return false
  let s := (← get').structs[structId]!
  -- It is pointless to generate case-splits unless we have support for disequality.
  unless s.isLinearInst?.isSome do return false
  let some v₁ := getAssignmentExt? s a | return false
  let some v₂ := getAssignmentExt? s b | return false
  return v₁ == v₂

def mbtc : GoalM Bool := do
  Grind.mbtc {
    hasTheoryVar := hasTheoryVar
    isInterpreted := isInterpreted
    eqAssignment := eqAssignment
  }

end Lean.Meta.Grind.Arith.Linear
