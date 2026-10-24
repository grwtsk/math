# Complete source: GRWTSK.Algebra.DenoteExpr.Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `295e8866aaa002d0793ca60dfc4fd6ce1667833d` · SHA-256 `b960436f04c2e2ab9ab90f3874a3dfb5d53389c563fe9f28e0167de576a6b890`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"d218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/DenoteExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Functions

namespace GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28

public section
namespace Lean.Meta.Grind.Arith.CommRing
open Sym.Arith
/-!
Helper functions for converting reified terms back into their denotations.
-/

variable [Monad M] [MonadError M] [MonadLiftT MetaM M] [MonadCanon M] [MonadRing M]

def denoteNum (k : Int) : M Expr := do
  let ring ← getRing
  let n := mkRawNatLit k.natAbs
  let ofNatInst ← if let some inst ← synthInstance? (mkApp2 (mkConst ``OfNat [ring.u]) ring.type n) then
    pure inst
  else
    pure <| mkApp3 (mkConst ``Grind.Semiring.ofNat [ring.u]) ring.type ring.semiringInst n
  let n := mkApp3 (mkConst ``OfNat.ofNat [ring.u]) ring.type n ofNatInst
  if k < 0 then
    return mkApp (← getNegFn) n
  else
    return n

def _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Power.denoteExpr (pw : Power) : M Expr := do
  let x := (← getRing).vars[pw.x]!
  if pw.k == 1 then
    return x
  else
    return mkApp2 (← getPowFn) x (toExpr pw.k)

def _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Mon.denoteExpr (m : Mon) : M Expr := do
  match m with
  | .unit => denoteNum 1
  | .mult pw m => go m (← pw.denoteExpr)
where
  go (m : Mon) (acc : Expr) : M Expr := do
    match m with
    | .unit => return acc
    | .mult pw m => go m (mkApp2 (← getMulFn) acc (← pw.denoteExpr))

def _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Poly.denoteExpr (p : Poly) : M Expr := do
  match p with
  | .num k => denoteNum k
  | .add k m p => go p (← denoteTerm k m)
where
  denoteTerm (k : Int) (m : Mon) : M Expr := do
    if k == 1 then
      m.denoteExpr
    else
      return mkApp2 (← getMulFn) (← denoteNum k) (← m.denoteExpr)

  go (p : Poly) (acc : Expr) : M Expr := do
    match p with
    | .num 0 => return acc
    | .num k => return mkApp2 (← getAddFn) acc (← denoteNum k)
    | .add k m p => go p (mkApp2 (← getAddFn) acc (← denoteTerm k m))

@[specialize]
private def denoteExprCore (getVar : Nat → Expr) (e : RingExpr) : M Expr := do
  go e
where
  go : RingExpr → M Expr
  | .num k => denoteNum k
  | .natCast k => return mkApp (← getNatCastFn) (mkNatLit k)
  | .intCast k => return mkApp (← getIntCastFn) (mkIntLit k)
  | .var x => return getVar x
  | .add a b => return mkApp2 (← getAddFn) (← go a) (← go b)
  | .sub a b => return mkApp2 (← getSubFn) (← go a) (← go b)
  | .mul a b => return mkApp2 (← getMulFn) (← go a) (← go b)
  | .pow a k => return mkApp2 (← getPowFn) (← go a) (toExpr k)
  | .neg a => return mkApp (← getNegFn) (← go a)

def _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Expr.denoteExpr (e : RingExpr) : M Expr := do
  let ring ← getRing
  denoteExprCore (fun x => ring.vars[x]!) e

def _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Expr.denoteExpr' (vars : Array Expr) (e : RingExpr) : M Expr := do
  denoteExprCore (fun x => vars[x]!) e

private def mkEq (a b : Expr) : M Expr := do
  let r ← getRing
  return mkApp3 (mkConst ``Eq [r.u.succ]) r.type a b

def EqCnstr.denoteExpr (c : EqCnstr) : M Expr := do
  mkEq (← c.p.denoteExpr) (← denoteNum 0)

def PolyDerivation.denoteExpr (d : PolyDerivation) : M Expr := do
  d.p.denoteExpr

def DiseqCnstr.denoteExpr (c : DiseqCnstr) : M Expr := do
  return mkNot (← mkEq (← c.d.denoteExpr) (← denoteNum 0))

end Lean.Meta.Grind.Arith.CommRing
```
