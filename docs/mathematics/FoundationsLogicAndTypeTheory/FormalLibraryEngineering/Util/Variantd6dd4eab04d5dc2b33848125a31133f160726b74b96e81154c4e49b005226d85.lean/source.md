# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45ba97aeb5b8bd82d3d78f6d0d6b1dcad24aa0d0` · SHA-256 `c8b30ea22d71b37a93b52d9885cd8eba4ade7c4c3ed29fd59028476214b54dfc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ACMContext.Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ACMContext.Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.AC.Types
public import Lean.Meta.Tactic.Grind.ProveEq
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingId
import Lean.Meta.Tactic.Grind.Simp

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ACMContext.Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a

public section
namespace Lean.Meta.Grind.AC
open Lean.Grind

def get' : GoalM State := do
  acExt.getState

@[inline] def modify' (f : State → State) : GoalM Unit := do
  acExt.modifyState f

def checkMaxSteps : GoalM Bool := do
  return (← get').steps >= (← getConfig).acSteps

def incSteps : GoalM Unit := do
  modify' fun s => { s with steps := s.steps + 1 }

structure ACM.Context where
  opId : Nat

class MonadGetStruct (m : Type → Type) where
  getStruct : m Struct

export MonadGetStruct (getStruct)

@[always_inline]
instance (m n) [MonadLift m n] [MonadGetStruct m] : MonadGetStruct n where
  getStruct    := liftM (getStruct : m Struct)

abbrev ACM := ReaderT ACM.Context GoalM

abbrev ACM.run (opId : Nat) (x : ACM α) : GoalM α :=
  x { opId }

abbrev getOpId : ACM Nat :=
  return (← read).opId

protected def ACM.getStruct : ACM Struct := do
  let s ← get'
  let opId ← getOpId
  if h : opId < s.structs.size then
    return s.structs[opId]
  else
    throwError "`grind` internal error, invalid structure id"

instance : MonadGetStruct ACM where
  getStruct := ACM.getStruct

def modifyStruct (f : Struct → Struct) : ACM Unit := do
  let opId ← getOpId
  modify' fun s => { s with structs := s.structs.modify opId f }

def getOp : ACM Expr :=
  return (← getStruct).op

private def notAssoc : Std.HashSet Name :=
  Std.HashSet.ofList [``Eq, ``And, ``Or, ``Iff, ``getElem, ``OfNat.ofNat, ``ite, ``dite, ``cond, ``LT.lt, ``LE.le]

/--
Returns `true` if `op` is an arithmetic operator supported in other modules.
Remark: `f == op.getAppFn!`
-/
private def isArithOpInOtherModules (op : Expr) (f : Expr) : GoalM Bool := do
  unless (← getConfig).ring do return false
  -- Remark: if `ring` is disabled we could check whether `cutsat` is enabled and discard `+` and `-`, but this is just a filter.
  let .const declName _ := f | return false
  if declName == ``HAdd.hAdd || declName == ``HMul.hMul || declName == ``HSub.hSub || declName == ``HDiv.hDiv || declName == ``HPow.hPow then
    if op.getAppNumArgs == 4 then
      let α := op.appFn!.appFn!.appArg!
      if (← Arith.CommRing.getCommRingId? α).isSome then return true
      if (← Arith.CommRing.getCommSemiringId? α).isSome then return true
  return false

def getTermOpIds (e : Expr) : GoalM (List Nat) := do
  return (← get').exprToOpIds.find? { expr := e } |>.getD []

private def insertOpId (m : PHashMap ExprPtr (List Nat)) (e : Expr) (opId : Nat) : PHashMap ExprPtr (List Nat) :=
  let ids := if let some ids := m.find? { expr := e } then
    go ids
  else
    [opId]
  m.insert { expr := e } ids
where
  go : List Nat → List Nat
  | [] => [opId]
  | id::ids => if opId < id then
    opId :: id :: ids
  else if opId == id then
    opId :: ids
  else
    id :: go ids

def addTermOpId (e : Expr) : ACM Unit := do
  let opId ← getOpId
  modify' fun s => { s with exprToOpIds := insertOpId s.exprToOpIds e opId }

def mkVar (e : Expr) : ACM AC.Var := do
  let s ← getStruct
  if let some var := s.varMap.find? { expr := e } then
    return var
  let var : AC.Var := s.vars.size
  modifyStruct fun s => { s with
    vars       := s.vars.push e
    varMap     := s.varMap.insert { expr := e } var
  }
  addTermOpId e
  acExt.markTerm e
  return var

def getOpId? (op : Expr) : GoalM (Option Nat) := do
  if let some id? := (← get').opIdOf.find? { expr := op } then
    return id?
  let id? ← go
  modify' fun s => { s with opIdOf := s.opIdOf.insert { expr := op } id? }
  return id?
where
  go : GoalM (Option Nat) := do
    let f := op.getAppFn
    if let .const declName _ := f then
      if notAssoc.contains declName then return none
    let .forallE _ α b _ ← whnf (← inferType op) | return none
    if b.hasLooseBVars then return none
    let .forallE _ α₂ α₃ _ ← whnf b | return none
    if α₃.hasLooseBVars then return none
    unless (← isDefEq α α₂) do return none
    unless (← isDefEq α α₃) do return none
    if (← isArithOpInOtherModules op f) then return none
    let u ← getLevel α
    let assocType := mkApp2 (mkConst ``Std.Associative [u]) α op
    let some assocInst ← synthInstance? assocType | return none
    let commType := mkApp2 (mkConst ``Std.Commutative [u]) α op
    let commInst? ← synthInstance? commType
    let idempotentType := mkApp2 (mkConst ``Std.IdempotentOp [u]) α op
    let idempotentInst? ← synthInstance? idempotentType
    let (neutralInst?, neutral?) ← do
      let neutral ← mkFreshExprMVar α
      let identityType := mkApp3 (mkConst ``Std.LawfulIdentity [u]) α op neutral
      if let some identityInst ← synthInstance? identityType then
        let neutral ← instantiateExprMVars neutral
        /-
        **Note**: `Std.LawfulIdentity` instances may spell the identity element in a form
        that is not in `grind` normal form. Example: the `BitVec` instances use `0#n`
        (i.e., `BitVec.ofNat n 0`), but the `grind` normalizer represents bit-vector literals
        using `OfNat.ofNat`. Internalizing a non-canonical literal violates the invariant that
        interpreted nodes are canonical: `grind` assumes distinct interpreted nodes denote
        distinct values (see `valueInconsistency` at `addEqStep`). We cannot `simp`-normalize
        `neutral` here: the result would be only propositionally equal to the identity element
        fixed by `identityInst`, and we need a definitionally equal term.
        We hardcode the bit-vector case for now. **TODO**: fix this properly in a separate commit.
        -/
        let neutral ← if let some ⟨w, v⟩ ← getBitVecValue? neutral then
          mkNumeral (mkApp (mkConst ``BitVec) (mkNatLit w)) v.toNat
        else
          pure neutral
        let neutral ← preprocessLight neutral
        internalize neutral (← getGeneration op)
        pure (some identityInst, some neutral)
      else
        pure (none, none)
    let id := (← get').structs.size
    modify' fun s => { s with
      structs := s.structs.push {
        id, type := α, u, op, neutral?, assocInst, commInst?,
        idempotentInst?, neutralInst?
    }}
    trace[grind.debug.ac.op] "{op}, comm: {commInst?.isSome}, idempotent: {idempotentInst?.isSome}, neutral?: {neutral?}"
    if let some neutral := neutral? then ACM.run id do
      -- Create neutral variable to ensure it is variable 0
      discard <| mkVar neutral
    return some id

def isOp? (e : Expr) : ACM (Option (Expr × Expr)) := do
  unless e.isApp && e.appFn!.isApp do return none
  unless isSameExpr e.appFn!.appFn! (← getOp) do return none
  return some (e.appFn!.appArg!, e.appArg!)

def isCommutative : ACM Bool :=
  return (← getStruct).commInst?.isSome

def hasNeutral : ACM Bool :=
  return (← getStruct).neutralInst?.isSome

def isIdempotent : ACM Bool :=
  return (← getStruct).idempotentInst?.isSome

end Lean.Meta.Grind.AC
```
