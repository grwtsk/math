# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifiedBVPred.Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfa599264c42791bf0a5b4b1601744aa27aee2f3` · SHA-256 `1455be01e982533682a798535ff5787e51ae4fb08058bfc46dde92dccb990512`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolAtom.Variantc1466210fbc0db4b5980b2421933d6feb80b69c606f489698139b9cb83124080","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1466210fbc0db4b5980b2421933d6feb80b69c606f489698139b9cb83124080","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BoolAtom.Variantc1466210fbc0db4b5980b2421933d6feb80b69c606f489698139b9cb83124080","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c1466210fbc0db4b5980b2421933d6feb80b69c606f489698139b9cb83124080","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Reflect/ReifiedBVPred.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Reflect.ReifiedBVExpr

/-!
Provides the logic for reifying predicates on `BitVec`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolAtom.Variantc1466210fbc0db4b5980b2421933d6feb80b69c606f489698139b9cb83124080

namespace Lean.Meta.Tactic.BVDecide

open Std.Tactic.BVDecide

namespace ReifiedBVPred

/--
Construct an uninterpreted `Bool` atom from `origExpr`.
-/
public def boolAtom (origExpr : Expr) : M (Option ReifiedBVPred) := do
  /-
  Idea: we have t : Bool here, let's construct:
    BitVec.ofBool t : BitVec 1
  as an atom. Then construct the BVPred corresponding to
    BitVec.getLsb (BitVec.ofBool t) 0 : Bool
  We can prove that this is equivalent to `t`. This allows us to have boolean variables in BVPred.
  -/
  let ty ← inferType origExpr
  let_expr Bool := ty | return none
  let atom ← ReifiedBVExpr.mkAtom (mkApp (mkConst ``BitVec.ofBool) origExpr) 1 false
  let bvExpr : BVPred := .getLsbD atom.bvExpr 0
  let expr := mkApp3 (mkConst ``BVPred.getLsbD) (toExpr 1) atom.expr (toExpr 0)
  let proof := do
    -- ofBool_congr does not hold definitionally, if this ever becomes an issue we need to find
    -- a more clever encoding for boolean atoms
    let atomEval ← ReifiedBVExpr.mkEvalExpr atom.width atom.expr
    let atomProof := (← atom.evalsAtAtoms).getD (ReifiedBVExpr.mkBVRefl atom.width atomEval)
    return mkApp3
      (mkConst ``Std.Tactic.BVDecide.Reflect.BitVec.ofBool_congr)
      origExpr
      atomEval
      atomProof
  return some ⟨bvExpr, origExpr, proof, expr⟩

/--
Construct the reified version of applying the predicate in `pred` to `lhs` and `rhs`.
This function assumes that `lhsExpr` and `rhsExpr` are the corresponding expressions to `lhs`
and `rhs`.
-/
public def mkBinPred (lhs rhs : ReifiedBVExpr) (lhsExpr rhsExpr : Expr) (pred : BVBinPred)
    (origExpr : Expr) : M (Option ReifiedBVPred) := do
  if h : lhs.width = rhs.width then
    let congrThm := congrThmOfBinPred pred
    let bvExpr : BVPred := .bin (w := lhs.width) lhs.bvExpr pred (h ▸ rhs.bvExpr)
    let expr :=
      mkApp4
        (mkConst ``BVPred.bin)
        (toExpr lhs.width)
        lhs.expr
        (toExpr pred)
        rhs.expr
    let proof := do
      let lhsEval ← ReifiedBVExpr.mkEvalExpr lhs.width lhs.expr
      let rhsEval ← ReifiedBVExpr.mkEvalExpr rhs.width rhs.expr
      let lhsProof? ← lhs.evalsAtAtoms
      let rhsProof? ← rhs.evalsAtAtoms
      let some (lhsProof, rhsProof) :=
        M.simplifyBinaryProof
          (ReifiedBVExpr.mkBVRefl lhs.width)
          lhsEval lhsProof?
          rhsEval rhsProof? | return none
      return mkApp7
        (mkConst congrThm)
        (toExpr lhs.width)
        lhsExpr rhsExpr lhsEval rhsEval
        lhsProof
        rhsProof
    return some ⟨bvExpr, origExpr, proof, expr⟩
  else
    return none
where
  congrThmOfBinPred (pred : BVBinPred) : Name :=
    match pred with
    | .eq => ``Std.Tactic.BVDecide.Reflect.BitVec.beq_congr
    | .ult => ``Std.Tactic.BVDecide.Reflect.BitVec.ult_congr

/--
Construct the reified version of `BitVec.getLsbD subExpr idx`.
This function assumes that `subExpr` is the expression corresponding to `sub`.
-/
public def mkGetLsbD (sub : ReifiedBVExpr) (subExpr : Expr) (idx : Nat) (origExpr : Expr) :
    M ReifiedBVPred := do
  let bvExpr : BVPred := .getLsbD sub.bvExpr idx
  let idxExpr := toExpr idx
  let expr := mkApp3 (mkConst ``BVPred.getLsbD) (toExpr sub.width) sub.expr idxExpr
  let proof := do
    -- This is safe as `getLsbD_congr` holds definitionally if the arguments are defeq.
    let some subProof ← sub.evalsAtAtoms | return none
    let subEval ← ReifiedBVExpr.mkEvalExpr sub.width sub.expr
    return mkApp5
      (mkConst ``Std.Tactic.BVDecide.Reflect.BitVec.getLsbD_congr)
      idxExpr
      (toExpr sub.width)
      subExpr
      subEval
      subProof
  return ⟨bvExpr, origExpr, proof, expr⟩

end ReifiedBVPred

end Lean.Meta.Tactic.BVDecide
```
