# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifiedBVLogical.Variant689062c14238b0db68335727fb8c9a34d3b809777e6fb0d131118e306703420d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd4991daed8a0916a0615563fc146f82bd5ffbb4` · SHA-256 `5c9c663fb296e245c707f917e2eee68c877c7dd802ab683831ba523fdd885e2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkRefl.Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkRefl.Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Reflect/ReifiedBVLogical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Reflect.ReifiedBVPred

/-!
Provides the logic for reifying `BitVec` problems with boolean substructure.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkRefl.Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895

namespace Lean.Meta.Tactic.BVDecide

open Std.Tactic.BVDecide
open Lean.Meta

namespace ReifiedBVLogical

public def mkRefl (expr : Expr) : Expr :=
  mkApp2 (mkConst ``Eq.refl [1]) (mkConst ``Bool) expr

public def mkTrans (x y z : Expr) (hxy hyz : Expr) : Expr :=
  mkApp6 (mkConst ``Eq.trans [1]) (mkConst ``Bool) x y z hxy hyz

public def mkEvalExpr (expr : Expr) : M Expr := do
  return mkApp2 (mkConst ``BVLogicalExpr.eval) (← M.atomsAssignment) expr

/--
Construct a `ReifiedBVLogical` from `ReifiedBVPred` by wrapping it as an atom.
-/
public def ofPred (bvPred : ReifiedBVPred) : M ReifiedBVLogical := do
  let boolExpr := .literal bvPred.bvPred
  let expr := mkApp2 (mkConst ``BoolExpr.literal) (mkConst ``BVPred) bvPred.expr
  -- important: This must be the same proof as the bvPred one in order for the cache to be correct
  let proof := bvPred.evalsAtAtoms
  return ⟨boolExpr, bvPred.originalExpr, proof, expr⟩

/--
Construct an uninterpreted `Bool` atom from `t`.
-/
public def boolAtom (t : Expr) : M (Option ReifiedBVLogical) := do
  let some pred ← ReifiedBVPred.boolAtom t | return none
  ofPred pred

/--
Build a reified version of the constant `val`.
-/
public def mkBoolConst (val : Bool) : M ReifiedBVLogical := do
  let boolExpr := .const val
  let expr := mkApp2 (mkConst ``BoolExpr.const) (mkConst ``BVPred) (toExpr val)
  -- This is safe because this proof always holds definitionally.
  let proof := pure none
  return ⟨boolExpr, toExpr val, proof, expr⟩

/--
Construct the reified version of applying the gate in `gate` to `lhs` and `rhs`.
This function assumes that `lhsExpr` and `rhsExpr` are the corresponding expressions to `lhs`
and `rhs`.
-/
public def mkGate (lhs rhs : ReifiedBVLogical) (lhsExpr rhsExpr : Expr) (gate : Gate) (origExpr : Expr) :
    M ReifiedBVLogical := do
  let congrThm := congrThmOfGate gate
  let boolExpr := .gate gate lhs.bvExpr rhs.bvExpr
  let expr :=
    mkApp4
      (mkConst ``BoolExpr.gate)
      (mkConst ``BVPred)
      (toExpr gate)
      lhs.expr
      rhs.expr
  let proof := do
    let lhsEvalExpr ← ReifiedBVLogical.mkEvalExpr lhs.expr
    let rhsEvalExpr ← ReifiedBVLogical.mkEvalExpr rhs.expr
    let lhsProof? ← lhs.evalsAtAtoms
    let rhsProof? ← rhs.evalsAtAtoms
    let some (lhsProof, rhsProof) :=
      M.simplifyBinaryProof
        ReifiedBVLogical.mkRefl
        lhsEvalExpr lhsProof?
        rhsEvalExpr rhsProof? | return none
    return mkApp6
      (mkConst congrThm)
      lhsExpr rhsExpr
      lhsEvalExpr rhsEvalExpr
      lhsProof rhsProof
  return ⟨boolExpr, origExpr, proof, expr⟩
where
  congrThmOfGate (gate : Gate) : Name :=
    match gate with
    | .and => ``Std.Tactic.BVDecide.Reflect.Bool.and_congr
    | .xor => ``Std.Tactic.BVDecide.Reflect.Bool.xor_congr
    | .beq => ``Std.Tactic.BVDecide.Reflect.Bool.beq_congr
    | .or => ``Std.Tactic.BVDecide.Reflect.Bool.or_congr

/--
Construct the reified version of `Bool.not subExpr`.
This function assumes that `subExpr` is the expression corresponding to `sub`.
-/
public def mkNot (sub : ReifiedBVLogical) (subExpr : Expr) (origExpr : Expr) : M ReifiedBVLogical := do
  let boolExpr := .not sub.bvExpr
  let expr := mkApp2 (mkConst ``BoolExpr.not) (mkConst ``BVPred) sub.expr
  let proof := do
    -- This is safe as `not_congr` holds definitionally if the arguments are defeq.
    let some subProof ← sub.evalsAtAtoms | return none
    let subEvalExpr ← ReifiedBVLogical.mkEvalExpr sub.expr
    return mkApp3 (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.not_congr) subExpr subEvalExpr subProof
  return ⟨boolExpr, origExpr, proof, expr⟩

/--
Construct the reified version of `if discrExpr then lhsExpr else rhsExpr`.
This function assumes that `discrExpr`, lhsExpr` and `rhsExpr` are the corresponding expressions to
`discr`, `lhs` and `rhs`.
-/
public def mkIte (discr lhs rhs : ReifiedBVLogical) (discrExpr lhsExpr rhsExpr : Expr) (origExpr : Expr) :
    M ReifiedBVLogical := do
  let boolExpr := .ite discr.bvExpr lhs.bvExpr rhs.bvExpr
  let expr :=
    mkApp4
      (mkConst ``BoolExpr.ite)
      (mkConst ``BVPred)
      discr.expr
      lhs.expr
      rhs.expr
  let proof := do
    let discrEvalExpr ← ReifiedBVLogical.mkEvalExpr discr.expr
    let lhsEvalExpr ← ReifiedBVLogical.mkEvalExpr lhs.expr
    let rhsEvalExpr ← ReifiedBVLogical.mkEvalExpr rhs.expr
    let discrProof? ← discr.evalsAtAtoms
    let lhsProof? ← lhs.evalsAtAtoms
    let rhsProof? ← rhs.evalsAtAtoms
    let some (discrProof, lhsProof, rhsProof) :=
      M.simplifyTernaryProof
        ReifiedBVLogical.mkRefl
        discrEvalExpr discrProof?
        lhsEvalExpr lhsProof?
        rhsEvalExpr rhsProof? | return none
    return mkApp9
      (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.cond_congr)
      discrExpr lhsExpr rhsExpr
      discrEvalExpr lhsEvalExpr rhsEvalExpr
      discrProof lhsProof rhsProof
  return ⟨boolExpr, origExpr, proof, expr⟩

end ReifiedBVLogical

end Lean.Meta.Tactic.BVDecide
```
