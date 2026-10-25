-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CaseArraySizesSubgoal.Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CaseArraySizesSubgoal.Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Match/CaseArraySizes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic
public import Lean.Meta.Tactic.FVarSubst
import Lean.Meta.Match.CaseValues
import Lean.Meta.Tactic.Subst


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CaseArraySizesSubgoal.Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3

namespace Lean.Meta

public structure CaseArraySizesSubgoal where
  mvarId : MVarId
  elems  : Array FVarId := #[]
  diseqs : Array FVarId := #[]
  subst  : FVarSubst := {}
  deriving Inhabited

public def getArrayArgType (a : Expr) : MetaM Expr := do
  let aType ← inferType a
  let aType ← whnfD aType
  unless aType.isAppOfArity ``Array 1 do
    throwError "array expected{indentExpr a}"
  pure aType.appArg!

def mkArrayGetLit (a : Expr) (i : Nat) (n : Nat) (h : Expr) : MetaM Expr := do
  let lt    ← mkLt (mkRawNatLit i) (mkRawNatLit n)
  let ltPrf ← mkDecideProof lt
  mkAppM `Array.getLit #[a, mkRawNatLit i, h, ltPrf]

partial def introArrayLit (mvarId : MVarId) (a : Expr) (n : Nat) (xNamePrefix : Name) (aSizeEqN : Expr) : MetaM MVarId := do
  let α ← getArrayArgType a
  let rec loop (i : Nat) (xs : Array Expr) (args : Array Expr) := do
    if i < n then
      withLocalDeclD (xNamePrefix.appendIndexAfter (i+1)) α fun xi => do
        let xs := xs.push xi
        let ai ← mkArrayGetLit a i n aSizeEqN
        let args := args.push ai
        loop (i+1) xs args
    else
      let xsLit     ← mkArrayLit α xs.toList
      let aEqXsLit  ← mkEq a xsLit
      let aEqLitPrf ← mkAppM ``Array.toArrayLit_eq #[a, mkRawNatLit n, aSizeEqN]
      withLocalDeclD `hEqALit aEqXsLit fun heq => do
        let target    ← mvarId.getType
        let newTarget ← mkForallFVars (xs.push heq) target
        pure (newTarget, args.push aEqLitPrf)
  let (newTarget, args) ← loop 0 #[] #[]
  let tag ← mvarId.getTag
  let newMVar   ← mkFreshExprSyntheticOpaqueMVar newTarget tag
  mvarId.assign (mkAppN newMVar args)
  pure newMVar.mvarId!

/--
  Split goal `... |- C a` into sizes.size + 1 subgoals
  1) `..., x_1 ... x_{sizes[0]} |- C #[x_1, ... x_{sizes[0]}]`
  ...
  n) `..., x_1 ... x_{sizes[n-1]}  |- C #[x_1, ..., x_{sizes[n-1]}]`
  n+1) `..., (h_1 : a.size != sizes[0]), ..., (h_n : a.size != sizes[n-1]) |- C a`
  where `n = sizes.size` -/
public def caseArraySizes (mvarId : MVarId) (fvarId : FVarId) (sizes : Array Nat) (xNamePrefix := `x) (hNamePrefix := `h) : MetaM (Array CaseArraySizesSubgoal) :=
  mvarId.withContext do
    let a := mkFVar fvarId
    let aSize ← mkAppM `Array.size #[a]
    let mvarId ← mvarId.assertExt `aSize (mkConst `Nat) aSize
    let (aSizeFVarId, mvarId) ← mvarId.intro1
    let (hEq, mvarId) ← mvarId.intro1
    let subgoals ← caseValues mvarId aSizeFVarId (sizes.map mkRawNatLit) hNamePrefix
    subgoals.mapIdxM fun i subgoal => do
      let subst  := subgoal.subst
      let mvarId := subgoal.mvarId
      if h : i < sizes.size then
        let hEqSz  := (subst.get hEq).fvarId!
        let n := sizes[i]
        mvarId.withContext do
          let hEqSzSymm ← mkEqSymm (mkFVar hEqSz)
          let mvarId ← introArrayLit mvarId a n xNamePrefix hEqSzSymm
          let (xs, mvarId)  ← mvarId.introN n
          let (hEqLit, mvarId) ← mvarId.intro1
          let mvarId ← mvarId.clear hEqSz
          let (subst, mvarId) ← substCore mvarId hEqLit (symm := false) subst
          pure { mvarId := mvarId, elems := xs, subst := subst }
      else
        let (subst, mvarId) ← substCore mvarId hEq (symm := false) subst
        let diseqs := subgoal.newHs.map fun fvarId => (subst.get fvarId).fvarId!
        pure { mvarId := mvarId, diseqs := diseqs, subst := subst }

end Lean.Meta
