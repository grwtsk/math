# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reify.Variant6b94bfca581cc6a00b10a17aa91d200b620d49907f7993262528d33d0cb8efb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6fda380d2b74f4d836c9a050285c9b6bf9124cf` · SHA-256 `bc2aa1e66332c9bf19f9ff2315f19820de2115d232eb6d552e050d0ac5ec67e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAddInst.Variantebccb3d4aa750175165858f8a428fcbf854e3594448f2288cf72f135c6d5a4f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebccb3d4aa750175165858f8a428fcbf854e3594448f2288cf72f135c6d5a4f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsAddInst.Variantebccb3d4aa750175165858f8a428fcbf854e3594448f2288cf72f135c6d5a4f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ebccb3d4aa750175165858f8a428fcbf854e3594448f2288cf72f135c6d5a4f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/Reify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommRingM
public import Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommSemiringM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAddInst.Variantebccb3d4aa750175165858f8a428fcbf854e3594448f2288cf72f135c6d5a4f0

public section
namespace Lean.Meta.Grind.Arith.CommRing
open Sym.Arith (MonadCanon)

variable [MonadLiftT MetaM m] [MonadError m] [Monad m] [MonadCanon m] [MonadRing m]

def isAddInst (inst : Expr) : m Bool :=
  return isSameExpr (← getAddFn).appArg! inst
def isMulInst (inst : Expr) : m Bool :=
  return isSameExpr (← getMulFn).appArg! inst
def isSubInst (inst : Expr) : m Bool :=
  return isSameExpr (← getSubFn).appArg! inst
def isNegInst (inst : Expr) : m Bool :=
  return isSameExpr (← getNegFn).appArg! inst
def isPowInst (inst : Expr) : m Bool :=
  return isSameExpr (← getPowFn).appArg! inst
def isIntCastInst (inst : Expr) : m Bool :=
  return isSameExpr (← getIntCastFn).appArg! inst
def isNatCastInst (inst : Expr) : m Bool :=
  return isSameExpr (← getNatCastFn).appArg! inst

private def reportAppIssue (e : Expr) : GoalM Unit := do
  reportIssue! "ring term with unexpected instance{indentExpr e}"

variable [MonadLiftT GoalM m] [MonadSetTermId m]

/--
Converts a Lean expression `e` in the `CommRing` into a `CommRing.Expr` object.

If `skipVar` is `true`, then the result is `none` if `e` is not an interpreted `CommRing` term.
We use `skipVar := false` when processing inequalities, and `skipVar := true` for equalities and disequalities
-/
partial def reifyCore? (e : Expr) (skipVar : Bool) (gen : Nat) : m (Option RingExpr) := do
  let mkVar (e : Expr) : m Var := do
    if (← alreadyInternalized e) then
      mkVarCore e
    else
      internalize e gen
      mkVarCore e
  let toVar (e : Expr) : m RingExpr := do
    return .var (← mkVar e)
  let asVar (e : Expr) : m RingExpr := do
    reportAppIssue e
    return .var (← mkVar e)
  let rec go (e : Expr) : m RingExpr := do
    match_expr e with
    | HAdd.hAdd _ _ _ i a b =>
      if (← isAddInst i) then return .add (← go a) (← go b) else asVar e
    | HMul.hMul _ _ _ i a b =>
      if (← isMulInst i) then return .mul (← go a) (← go b) else asVar e
    | HSub.hSub _ _ _ i a b =>
      if (← isSubInst i) then return .sub (← go a) (← go b) else asVar e
    | HPow.hPow _ _ _ i a b =>
      let some k ← getNatValue? b | toVar e
      if (← isPowInst i) then return .pow (← go a) k else asVar e
    | Neg.neg _ i a =>
      if (← isNegInst i) then return .neg (← go a) else asVar e
    | IntCast.intCast _ i a =>
      if (← isIntCastInst i) then
        let some k ← getIntValue? a | toVar e
        return .intCast k
      else
        asVar e
    | NatCast.natCast _ i a =>
      if (← isNatCastInst i) then
        let some k ← getNatValue? a | toVar e
        return .natCast k
      else
        asVar e
    | OfNat.ofNat _ n _ =>
      let some k ← getNatValue? n | toVar e
      return .num k
    | BitVec.ofNat _ n =>
      let some k ← getNatValue? n | toVar e
      return .num k
    | _ => toVar e
  let toTopVar (e : Expr) : m (Option RingExpr) := do
    if skipVar then
      return none
    else
      return some (← toVar e)
  let asTopVar (e : Expr) : m (Option RingExpr) := do
    reportAppIssue e
    toTopVar e
  match_expr e with
  | HAdd.hAdd _ _ _ i a b =>
    if (← isAddInst i) then return some (.add (← go a) (← go b)) else asTopVar e
  | HMul.hMul _ _ _ i a b =>
    if (← isMulInst i) then return some (.mul (← go a) (← go b)) else asTopVar e
  | HSub.hSub _ _ _ i a b =>
    if (← isSubInst i) then return some (.sub (← go a) (← go b)) else asTopVar e
  | HPow.hPow _ _ _ i a b =>
    let some k ← getNatValue? b | asTopVar e
    if (← isPowInst i) then return some (.pow (← go a) k) else asTopVar e
  | Neg.neg _ i a =>
    if (← isNegInst i) then return some (.neg (← go a)) else asTopVar e
  | IntCast.intCast _ i a =>
    if (← isIntCastInst i) then
      let some k ← getIntValue? a | toTopVar e
      return some (.intCast k)
    else
      asTopVar e
  | NatCast.natCast _ i a =>
    if (← isNatCastInst i) then
      let some k ← getNatValue? a | toTopVar e
      return some (.natCast k)
    else
      asTopVar e
  | OfNat.ofNat _ n _ =>
    let some k ← getNatValue? n | asTopVar e
    return some (.num k)
  | _ => toTopVar e

/-- Reify ring expression. -/
def reify? (e : Expr) (skipVar := true) (gen : Nat := 0) : RingM (Option RingExpr) := do
  reifyCore? e skipVar gen

/-- Reify non-commutative ring expression. -/
def ncreify? (e : Expr) (skipVar := true) (gen : Nat := 0) : NonCommRingM (Option RingExpr) := do
  reifyCore? e skipVar gen

private def reportSAppIssue (e : Expr) : GoalM Unit := do
  reportIssue! "semiring term with unexpected instance{indentExpr e}"

section
variable [MonadLiftT GoalM m] [MonadError m] [Monad m] [MonadCanon m] [MonadSemiring m] [MonadSetTermId m]

/--
Similar to `reify?` but for `CommSemiring`
-/
partial def sreifyCore? (e : Expr) : m (Option SemiringExpr) := do
  let mkVar (e : Expr) : m Var := do
    unless (← alreadyInternalized e) do
      internalize e 0
    mkSVarCore e
  let toVar (e : Expr) : m SemiringExpr := do
    return .var (← mkVar e)
  let asVar (e : Expr) : m SemiringExpr := do
    reportSAppIssue e
    return .var (← mkVar e)
  let rec go (e : Expr) : m SemiringExpr := do
    match_expr e with
    | HAdd.hAdd _ _ _ i a b =>
      if isSameExpr (← getAddFn').appArg! i then return .add (← go a) (← go b) else asVar e
    | HMul.hMul _ _ _ i a b =>
      if isSameExpr (← getMulFn').appArg! i then return .mul (← go a) (← go b) else asVar e
    | HPow.hPow _ _ _ i a b =>
      let some k ← getNatValue? b | toVar e
      if isSameExpr (← getPowFn').appArg! i then return .pow (← go a) k else asVar e
    | NatCast.natCast _ i a =>
      if isSameExpr (← getNatCastFn').appArg! i then
        let some k ← getNatValue? a | toVar e
        return .num k
      else
        asVar e
    | OfNat.ofNat _ n _ =>
      let some k ← getNatValue? n | toVar e
      return .num k
    | _ => toVar e
  let toTopVar (e : Expr) : m (Option SemiringExpr) := do
    return some (← toVar e)
  let asTopVar (e : Expr) : m (Option SemiringExpr) := do
    reportSAppIssue e
    toTopVar e
  match_expr e with
  | HAdd.hAdd _ _ _ i a b =>
    if isSameExpr (← getAddFn').appArg! i then return some (.add (← go a) (← go b)) else asTopVar e
  | HMul.hMul _ _ _ i a b =>
    if isSameExpr (← getMulFn').appArg! i then return some (.mul (← go a) (← go b)) else asTopVar e
  | HPow.hPow _ _ _ i a b =>
    let some k ← getNatValue? b | return none
    if isSameExpr (← getPowFn').appArg! i then return some (.pow (← go a) k) else asTopVar e
  | NatCast.natCast _ i a =>
    if isSameExpr (← getNatCastFn').appArg! i then
      let some k ← getNatValue? a | toTopVar e
      return some (.num k)
    else
      asTopVar e
  | OfNat.ofNat _ n _ =>
    let some k ← getNatValue? n | asTopVar e
    return some (.num k)
  | _ => toTopVar e

end

/-- Reify semiring expression. -/
def sreify? (e : Expr) : SemiringM (Option SemiringExpr) := do
  sreifyCore? e

/-- Reify non-commutative semiring expression. -/
def ncsreify? (e : Expr) : NonCommSemiringM (Option SemiringExpr) := do
  sreifyCore? e

end  Lean.Meta.Grind.Arith.CommRing
```
