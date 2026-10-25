# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModelUtil.Variant9115c9620b34b88307832b37d0b74ab0d454e5a14324b30a90662429e58e277e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36612c14e648d6e0f29562c63ebdd957bf2eaca2` · SHA-256 `c7ff85335ada085f1cde011f43fe745692301710eefa6f3ba6685e06824e942f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SatisfyDiseqs.Variant56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SatisfyDiseqs.Variant56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/ModelUtil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Arith.Util
import Init.Grind.Module.Envelope

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SatisfyDiseqs.Variant56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9

public section

namespace Lean.Meta.Grind.Arith

/-!
Helper functions for constructing counterexamples in the `linarith` and `cutsat` modules
-/

/--
Returns `true` if adding the assignment `e := v` to `a` will falsify any asserted disequality in core.
-/
private partial def satisfyDiseqs (goal : Goal) (a : Std.HashMap Expr Rat) (e : Expr) (v : Int) : Bool := Id.run do
  let some parents := goal.parents.find? { expr := e } | return true
  for parent in parents.elems do
    let_expr Eq _ lhs rhs := parent | continue
    let some root := goal.getRoot? parent | continue
    if root.isConstOf ``False then
      let some lhsRoot := goal.getRoot? lhs | continue
      let some rhsRoot := goal.getRoot? rhs | continue
      if lhsRoot == e && !checkDiseq rhsRoot then return false
      if rhsRoot == e && !checkDiseq lhsRoot then return false
  return true
where
  checkDiseq (other : Expr) : Bool :=
    if let some v' := a[other]? then
      v' != v
    else
      true

/--
Returns an integer value `i` for assigning to `e` s.t. adding `e := i` to `a` will not falsify any disequality
and `i` is not in `alreadyUsed`.
-/
partial def pickUnusedValue (goal : Goal) (a : Std.HashMap Expr Rat) (e : Expr) (next : Int) (alreadyUsed : Std.HashSet Int) : Int :=
  go next
where
  go (next : Int) : Int :=
    if alreadyUsed.contains next then
      go (next+1)
    else if satisfyDiseqs goal a e next then
      next
    else
      go (next + 1)

/--
Returns `true` if `e` should be treated as an interpreted value by the arithmetic modules.
-/
def isInterpretedTerm (e : Expr) : Bool :=
  isNatNum e || isIntNum e || e.isAppOf ``HAdd.hAdd || e.isAppOf ``HMul.hMul || e.isAppOf ``HSub.hSub || e.isAppOf ``HSMul.hSMul
  || e.isAppOf ``Neg.neg || e.isAppOf ``HDiv.hDiv || e.isAppOf ``HMod.hMod || e.isAppOf ``One.one || e.isAppOf ``Zero.zero
  || e.isAppOf ``Inv.inv || e.isAppOf ``NatCast.natCast || e.isIte || e.isDIte || e.isAppOf ``OfNat.ofNat || e.isAppOf ``Grind.ToInt.toInt
  || e.isAppOf ``Fin.val || e.isAppOf ``Grind.IntModule.OfNatModule.toQ || e matches .lit (.natVal _)

/--
Adds the assignments `e' := v` to `a` for each `e'` in the equivalence class os `e`.
-/
def assignEqc (goal : Goal) (e : Expr) (v : Rat) (a : Std.HashMap Expr Rat) : Std.HashMap Expr Rat := Id.run do
  let mut a := a
  for e in goal.getEqc e do
    a := a.insert e v
  return a

/--
Assigns terms in the goal that satisfy `isTarget`.
Recall that not all terms are communicated to `linarith` and `cutsat` modules if they do not appear in relevant constraints.
The idea is to assign unused integer values that have not been used in the model and do not falsify equalities and disequalities
in core.
-/
private def assignUnassigned (goal : Goal) (isTarget : ENode → MetaM Bool) (model : Std.HashMap Expr Rat) : MetaM (Std.HashMap Expr Rat) := do
  let mut nextVal : Int := 0
  -- Collect used values
  let mut used : Std.HashSet Int := {}
  for (_, v) in model do
    if v.den == 1 then
      used := used.insert v.num
  let mut model := model
  -- Assign the remaining ones with values not used by cutsat
  for e in goal.exprs do
    let node ← goal.getENode e
    if node.isRoot then
    if (← isTarget node) then
    if model[node.self]?.isNone then
      let v := pickUnusedValue goal model node.self nextVal used
      model := assignEqc goal node.self v model
      used := used.insert v
      nextVal := v + 1
  return model

/-- Sorts assignment first by expression generation and then `Expr.lt` -/
private def sortModel (goal : Goal) (m : Array (Expr × Rat)) : Array (Expr × Rat) :=
  m.qsort fun (e₁, _) (e₂, _) =>
    let g₁ := goal.getGeneration e₁
    let g₂ := goal.getGeneration e₂
    if g₁ != g₂ then g₁ < g₂ else e₁.lt e₂

/--
Converts the given model into a sorted array of pairs `(e, v)` representing assignments `e := v`.
`isTarget` is a predicate used to detect terms that must be in the model but have not been assigned a value (see: `assignUnassigned`)
The pairs are sorted using `e`s generation and then `Expr.lt`.
Only terms s.t. `isInterpretedTerm e = false` are included into the resulting array.
-/
def finalizeModel (goal : Goal) (isTarget : ENode → MetaM Bool) (model : Std.HashMap Expr Rat) : MetaM (Array (Expr × Rat)) := do
  let model ← assignUnassigned goal isTarget model
  let mut r := #[]
  for (e, v) in model do
    unless isInterpretedTerm e do
      r := r.push (e, v)
  return sortModel goal r

/-- If the given trace class is enabled, trace the model using the class. -/
def traceModel (traceClass : Name) (model : Array (Expr × Rat)) : MetaM Unit := do
  if (← isTracingEnabledFor traceClass) then
    for (x, v) in model do
      addTrace traceClass m!"{quoteIfArithTerm x} := {v}"

end Lean.Meta.Grind.Arith
```
