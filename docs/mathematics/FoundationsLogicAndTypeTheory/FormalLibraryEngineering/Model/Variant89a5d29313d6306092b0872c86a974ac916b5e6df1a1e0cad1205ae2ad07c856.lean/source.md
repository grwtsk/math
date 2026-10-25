# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Variant89a5d29313d6306092b0872c86a974ac916b5e6df1a1e0cad1205ae2ad07c856

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `923aa1130f0b3c95c47d821124b3c21e39813838` · SHA-256 `5097612e5093b0752835fdfe52089c0ec7afc2c73c46eaf9375ab16d0b5b2c49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsIntNatENode.Variant27ab20f1fd76f64c0aed826a006110113b27f7d8c2128ecfb91e5b14796e181c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27ab20f1fd76f64c0aed826a006110113b27f7d8c2128ecfb91e5b14796e181c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsIntNatENode.Variant27ab20f1fd76f64c0aed826a006110113b27f7d8c2128ecfb91e5b14796e181c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"27ab20f1fd76f64c0aed826a006110113b27f7d8c2128ecfb91e5b14796e181c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/Model.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Cutsat.Types
import Lean.Meta.Tactic.Grind.Arith.ModelUtil

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsIntNatENode.Variant27ab20f1fd76f64c0aed826a006110113b27f7d8c2128ecfb91e5b14796e181c

public section
namespace Lean.Meta.Grind.Arith.Cutsat

private def isIntNatENode (n : ENode) : MetaM Bool :=
  withDefault do
    let type ← inferType n.self
    isDefEq type Int.mkType
    <||>
    isDefEq type Nat.mkType

private def getCutsatAssignment? (goal : Goal) (node : ENode) : IO (Option Rat) := do
  assert! isSameExpr node.self node.root
  let some e := cutsatExt.getTerm node | return none
  let s ← cutsatExt.getStateCore goal
  let some x := s.varMap.find? { expr := e } | return none
  if h : x < s.assignment.size then
    return s.assignment[x]
  else
    return none

private def natCastToInt? (e : Expr) : Option Expr :=
  match_expr e with
  | NatCast.natCast _ inst a =>
    let_expr instNatCastInt := inst | none
    some a
  | Grind.ToInt.toInt _ _ _ a => some a
  | _ => none

def getAssignment? (goal : Goal) (e : Expr) : MetaM (Option Rat) := do
  let node ← goal.getENode (← goal.getRoot e)
  if let some v ← getCutsatAssignment? goal node then
    return some v
  else if let some v ← getIntValue? node.self then
    return some v
  else if let some v ← getNatValue? node.self then
    return some (Int.ofNat v)
  else
    return none

/--
Construct a model that satisfies all constraints in the cutsat model.
It also assigns values to integer terms that have not been internalized by the
cutsat model.

Remark: it uses rational numbers because cutsat may have failed to build an
integer model.
-/
def mkModel (goal : Goal) : MetaM (Array (Expr × Rat)) := do
  let mut model := {}
  -- Assign on expressions associated with cutsat terms or interpreted terms
  for e in goal.exprs do
    let node ← goal.getENode e
    if node.isRoot then
    if (← isIntNatENode node) then
      if let some v ← getAssignment? goal node.self then
        model := assignEqc goal node.self v model
  -- Assign natCast and toInt terms
  for e in goal.exprs do
    let node ← goal.getENode e
    let i := node.self
    let some n := natCastToInt? i | pure ()
    if model[n]?.isNone then
      let some v := model[i]? | pure ()
      model := assignEqc goal n v model
  let r ← finalizeModel goal isIntNatENode model
  traceModel `grind.lia.model r
  return r

end Lean.Meta.Grind.Arith.Cutsat
```
