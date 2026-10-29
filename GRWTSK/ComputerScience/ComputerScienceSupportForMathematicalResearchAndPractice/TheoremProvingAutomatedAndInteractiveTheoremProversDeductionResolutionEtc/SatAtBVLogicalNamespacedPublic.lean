-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Of.Variantb2d40abbd6e7e76522417950459e44e09a5fd48031a8294933016bbeb00e0495","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2d40abbd6e7e76522417950459e44e09a5fd48031a8294933016bbeb00e0495","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Of.Variantb2d40abbd6e7e76522417950459e44e09a5fd48031a8294933016bbeb00e0495","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b2d40abbd6e7e76522417950459e44e09a5fd48031a8294933016bbeb00e0495","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Reflect/SatAtBVLogical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Reflect.Reify

/-!
This module is the main entry point for reifying `BitVec` problems with boolean substructure.
Given some proof `h : exp = true` where `exp` is a `BitVec` problem with boolean substructure, it
returns a `SatAtBVLogical`, containing the reified version as well as a proof that the reified
version must be equal to true.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Of.Variantb2d40abbd6e7e76522417950459e44e09a5fd48031a8294933016bbeb00e0495

namespace Lean.Meta.Tactic.BVDecide

open Std.Tactic.BVDecide

namespace SatAtBVLogical

/--
Reify an `Expr` that is a proof of some boolean structure on top of predicates about `BitVec`s.
-/
public partial def of (h : Expr) : LemmaM (Option SatAtBVLogical) := do
  let t ← instantiateMVars (← whnfR (← inferType h))
  match_expr t with
  | Eq α lhsExpr rhsExpr =>
    let_expr Bool := α | return none
    let_expr Bool.true := rhsExpr | return none
    -- We now know that `h : lhsExpr = true`
    -- We attempt to reify lhsExpr into a BVLogicalExpr, then prove that evaluating
    -- this BVLogicalExpr must eval to true due to `h`
    let some bvLogical ← ReifiedBVLogical.of lhsExpr | return none
    let proof := do
      let evalLogic ← ReifiedBVLogical.mkEvalExpr bvLogical.expr
      -- this is evalLogic = lhsExpr
      let evalProof := (← bvLogical.evalsAtAtoms).getD (ReifiedBVLogical.mkRefl evalLogic)
      -- h is lhsExpr = true
      -- we prove evalLogic = true by evalLogic = lhsExpr = true
      return ReifiedBVLogical.mkTrans evalLogic lhsExpr (mkConst ``Bool.true) evalProof h
    return some ⟨bvLogical.bvExpr, proof, bvLogical.expr⟩
  | _ => return none

/--
Logical conjunction of two `ReifiedBVLogical`.
-/
public def and (x y : SatAtBVLogical) : SatAtBVLogical where
  bvExpr := .gate .and x.bvExpr y.bvExpr
  expr := mkApp4 (mkConst ``BoolExpr.gate) (mkConst ``BVPred) (mkConst ``Gate.and) x.expr y.expr
  satAtAtoms :=
    return mkApp5
      (mkConst ``BVLogicalExpr.sat_and)
      x.expr
      y.expr
      (← M.atomsAssignment)
      (← x.satAtAtoms)
      (← y.satAtAtoms)

/-- Given a proof that `x.expr.Unsat`, produce a proof of `False`. -/
public def proveFalse (x : SatAtBVLogical) (h : Expr) : M Expr := do
  if (← get).atoms.isEmpty then
    throwError "Unable to identify any relevant atoms."
  else
    let atomsList ← M.atomsAssignment
    let evalExpr := mkApp2 (mkConst ``BVLogicalExpr.eval) atomsList x.expr
    return mkApp3
      (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.false_of_eq_true_of_eq_false)
      evalExpr
      (← x.satAtAtoms)
      (.app h atomsList)


end SatAtBVLogical

end Lean.Meta.Tactic.BVDecide
