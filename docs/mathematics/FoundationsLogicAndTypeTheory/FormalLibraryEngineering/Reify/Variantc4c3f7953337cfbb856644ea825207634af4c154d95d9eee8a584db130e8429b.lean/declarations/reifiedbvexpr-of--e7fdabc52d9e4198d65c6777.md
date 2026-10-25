# ReifiedBVExpr.of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9c116eb3d11c8f569f54754cdb26f4b0f49286c65b89e1bb0a692d5c6fd66d2",
  "kind": "def",
  "lexical_name": "ReifiedBVExpr.of",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "reifiedbvexpr-of--e7fdabc52d9e4198d65c6777",
  "source": {
    "blob": "9d81319cb4871576b28efc43496bfe53de255560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7fdabc52d9e4198d65c67770d184315aec35f89f669a41b14c06db5fa692188",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9c116eb3d11c8f569f54754cdb26f4b0f49286c65b89e1bb0a692d5c6fd66d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def ReifiedBVExpr.of (origExpr : Expr) : LemmaM (Option ReifiedBVExpr) := do
  goOrAtom origExpr
where
  /--
  Reify `x`, returns `none` if the reification procedure failed.
  -/
  go (origExpr : Expr) : LemmaM (Option ReifiedBVExpr) := do
    checkSystem "bv_decide"
    match_expr origExpr with
    | BitVec.ofNat _ _ => goBvLit origExpr
    | HAnd.hAnd _ _ _ _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .and ``Std.Tactic.BVDecide.Reflect.BitVec.and_congr origExpr
    | HXor.hXor _ _ _ _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .xor ``Std.Tactic.BVDecide.Reflect.BitVec.xor_congr origExpr
    | HAdd.hAdd _ _ _ _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .add ``Std.Tactic.BVDecide.Reflect.BitVec.add_congr origExpr
    | HMul.hMul _ _ _ _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .mul ``Std.Tactic.BVDecide.Reflect.BitVec.mul_congr origExpr
    | HDiv.hDiv _ _ _ _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .udiv ``Std.Tactic.BVDecide.Reflect.BitVec.udiv_congr origExpr
    | HMod.hMod _ _ _ _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .umod ``Std.Tactic.BVDecide.Reflect.BitVec.umod_congr origExpr
    | Complement.complement _ _ innerExpr =>
      unaryReflection innerExpr .not ``Std.Tactic.BVDecide.Reflect.BitVec.not_congr origExpr
    | HShiftLeft.hShiftLeft α β _ _ innerExpr distanceExpr =>
      let distance? ← ReifiedBVExpr.getNatOrBvValue? β distanceExpr
      let_expr BitVec wExpr := α | return none
      if (← getNatValue? wExpr).isSome && distance?.isSome then
        throwError "internal error: constant shift should have been eliminated."
      let_expr BitVec _ := β | return none
      shiftReflection
        distanceExpr
        innerExpr
        .shiftLeft
        ``BVExpr.shiftLeft
        ``Std.Tactic.BVDecide.Reflect.BitVec.shiftLeft_congr
        origExpr
    | HShiftRight.hShiftRight α β _ _ innerExpr distanceExpr =>
      let distance? ← ReifiedBVExpr.getNatOrBvValue? β distanceExpr
      let_expr BitVec wExpr := α | return none
      if (← getNatValue? wExpr).isSome && distance?.isSome then
        throwError "internal error: constant shift should have been eliminated."
      let_expr BitVec _ := β | return none
      shiftReflection
        distanceExpr
        innerExpr
        .shiftRight
        ``BVExpr.shiftRight
        ``Std.Tactic.BVDecide.Reflect.BitVec.shiftRight_congr
        origExpr
    | BitVec.sshiftRight _ innerExpr distanceExpr =>
      let some distance ← getNatValue? distanceExpr | return none
      shiftConstLikeReflection
        distance
        innerExpr
        .arithShiftRightConst
        ``BVUnOp.arithShiftRightConst
        ``Std.Tactic.BVDecide.Reflect.BitVec.arithShiftRightNat_congr
        origExpr
    | BitVec.sshiftRight' _ _ innerExpr distanceExpr =>
      shiftReflection
        distanceExpr
        innerExpr
        .arithShiftRight
        ``BVExpr.arithShiftRight
        ``Std.Tactic.BVDecide.Reflect.BitVec.arithShiftRight_congr
        origExpr
    | HAppend.hAppend _ _ _ _ lhsExpr rhsExpr =>
      let some lhs ← goOrAtom lhsExpr | return none
      let some rhs ← goOrAtom rhsExpr | return none
      let bvExpr := .append lhs.bvExpr rhs.bvExpr rfl
      let wExpr := toExpr (lhs.width + rhs.width)
      let expr :=
        mkApp6 (mkConst ``BVExpr.append)
          (toExpr lhs.width)
          (toExpr rhs.width)
          wExpr
          lhs.expr
          rhs.expr
          (← mkEqRefl wExpr)
      let proof := do
        let lhsEval ← ReifiedBVExpr.mkEvalExpr lhs.width lhs.expr
        let rhsEval ← ReifiedBVExpr.mkEvalExpr rhs.width rhs.expr
        let lhsProof? ← lhs.evalsAtAtoms
        let rhsProof? ← rhs.evalsAtAtoms
        let some (lhsProof, rhsProof) :=
          M.simplifyBinaryProof'
            (ReifiedBVExpr.mkBVRefl lhs.width) lhsEval lhsProof?
            (ReifiedBVExpr.mkBVRefl rhs.width) rhsEval rhsProof? | return none
        return mkApp8 (mkConst ``Std.Tactic.BVDecide.Reflect.BitVec.append_congr)
          (toExpr lhs.width) (toExpr rhs.width)
          lhsExpr lhsEval
          rhsExpr rhsEval
          lhsProof rhsProof
      return some ⟨lhs.width + rhs.width, bvExpr, origExpr, proof, expr⟩
    | BitVec.replicate _ nExpr innerExpr =>
      let some inner ← goOrAtom innerExpr | return none
      let some n ← getNatValue? nExpr | return none
      let bvExpr := .replicate n inner.bvExpr rfl
      let newWExpr := toExpr (inner.width * n)
      let expr :=
        mkApp5 (mkConst ``BVExpr.replicate)
          (toExpr inner.width)
          newWExpr
          (toExpr n)
          inner.expr
          (← mkEqRefl newWExpr)
      let proof := do
        let innerEval ← ReifiedBVExpr.mkEvalExpr inner.width inner.expr
        -- This is safe as `replicate_congr` holds definitionally if the arguments are defeq.
        let some innerProof ← inner.evalsAtAtoms | return none
        return mkApp5 (mkConst ``Std.Tactic.BVDecide.Reflect.BitVec.replicate_congr)
          (toExpr n)
          (toExpr inner.width)
          innerExpr
          innerEval
          innerProof
      return some ⟨inner.width * n, bvExpr, origExpr, proof, expr⟩
    | BitVec.extractLsb' _ startExpr lenExpr innerExpr =>
      let some start ← getNatValue? startExpr | return none
      let some len ← getNatValue? lenExpr | return none
      let some inner ← goOrAtom innerExpr | return none
      let bvExpr := .extract start len inner.bvExpr
      let expr := mkApp4 (mkConst ``BVExpr.extract)
        (toExpr inner.width)
        startExpr
        lenExpr
        inner.expr
      let proof := do
        let innerEval ← ReifiedBVExpr.mkEvalExpr inner.width inner.expr
        -- This is safe as `extract_congr` holds definitionally if the arguments are defeq.
        let some innerProof ← inner.evalsAtAtoms | return none
        return mkApp6 (mkConst ``Std.Tactic.BVDecide.Reflect.BitVec.extract_congr)
          startExpr
          lenExpr
          (toExpr inner.width)
          innerExpr
          innerEval
          innerProof
      return some ⟨len, bvExpr, origExpr, proof, expr⟩
    | BitVec.rotateLeft _ innerExpr distanceExpr =>
      rotateReflection
        distanceExpr
        innerExpr
        .rotateLeft
        ``BVUnOp.rotateLeft
        ``Std.Tactic.BVDecide.Reflect.BitVec.rotateLeft_congr
        origExpr
    | BitVec.rotateRight _ innerExpr distanceExpr =>
      rotateReflection
        distanceExpr
        innerExpr
        .rotateRight
        ``BVUnOp.rotateRight
        ``Std.Tactic.BVDecide.Reflect.BitVec.rotateRight_congr
        origExpr
    | cond _ discrExpr lhsExpr rhsExpr =>
      let some atom ← ReifiedBVExpr.bitVecAtom origExpr true | return none
      let some discr ← ReifiedBVLogical.of discrExpr | return none
      let some lhs ← goOrAtom lhsExpr | return none
      let some rhs ← goOrAtom rhsExpr | return none
      addCondLemmas discr atom lhs rhs discrExpr origExpr lhsExpr rhsExpr
      return some atom
    | BitVec.reverse _ innerExpr =>
      unaryReflection innerExpr .reverse ``Std.Tactic.BVDecide.Reflect.BitVec.reverse_congr origExpr
    | BitVec.clz _ innerExpr =>
      unaryReflection innerExpr .clz ``Std.Tactic.BVDecide.Reflect.BitVec.clz_congr origExpr
    | BitVec.cpop _ innerExpr =>
      unaryReflection innerExpr .cpop ``Std.Tactic.BVDecide.Reflect.BitVec.cpop_congr origExpr
    | _ => return none

  /--
  Reify `origExpr` or abstract it as an atom.
  Unless this function is called on something that is not a fixed-width `BitVec` it is always going
  to return `some`.
  -/
  goOrAtom (origExpr : Expr) : LemmaM (Option ReifiedBVExpr) := do
    LemmaM.withBVExprCache origExpr fun origExpr => do
      let res ← go origExpr
      match res with
      | some exp => return some exp
      | none => ReifiedBVExpr.bitVecAtom origExpr false

  shiftConstLikeReflection (distance : Nat) (innerExpr : Expr) (shiftOp : Nat → BVUnOp)
      (shiftOpName : Name) (congrThm : Name) (origExpr : Expr) :
      LemmaM (Option ReifiedBVExpr) := do
    let some inner ← goOrAtom innerExpr | return none
    let bvExpr : BVExpr inner.width := .un (shiftOp distance) inner.bvExpr
    let expr :=
      mkApp3
        (mkConst ``BVExpr.un)
        (toExpr inner.width)
        (mkApp (mkConst shiftOpName) (toExpr distance))
        inner.expr
    let congrProof :=
      mkApp
        (mkConst congrThm)
        (toExpr distance)
    let proof := unaryCongrProof inner innerExpr congrProof
    return some ⟨inner.width, bvExpr, origExpr, proof, expr⟩

  rotateReflection (distanceExpr : Expr) (innerExpr : Expr) (rotateOp : Nat → BVUnOp)
      (rotateOpName : Name) (congrThm : Name) (origExpr : Expr) :
      LemmaM (Option ReifiedBVExpr) := do
    let some distance ← getNatValue? distanceExpr | return none
    shiftConstLikeReflection distance innerExpr rotateOp rotateOpName congrThm origExpr

  shiftReflection (distanceExpr : Expr) (innerExpr : Expr)
      (shiftOp : {m n : Nat} → BVExpr m → BVExpr n → BVExpr m) (shiftOpName : Name)
      (congrThm : Name) (origExpr : Expr) :
      LemmaM (Option ReifiedBVExpr) := do
    let some inner ← goOrAtom innerExpr | return none
    let some distance ← goOrAtom distanceExpr | return none
    let bvExpr : BVExpr inner.width := shiftOp inner.bvExpr distance.bvExpr
    let expr :=
      mkApp4
        (mkConst shiftOpName)
        (toExpr inner.width)
        (toExpr distance.width)
        inner.expr
        distance.expr
    let congrProof :=
      mkApp2
        (mkConst congrThm)
        (toExpr inner.width)
        (toExpr distance.width)
    let proof := binaryCongrProof inner distance innerExpr distanceExpr congrProof
    return some ⟨inner.width, bvExpr, origExpr, proof, expr⟩

  binaryReflection (lhsExpr rhsExpr : Expr) (op : BVBinOp) (congrThm : Name) (origExpr : Expr) :
      LemmaM (Option ReifiedBVExpr) := do
    let some lhs ← goOrAtom lhsExpr | return none
    let some rhs ← goOrAtom rhsExpr | return none
    if h : rhs.width = lhs.width then
      let bvExpr : BVExpr lhs.width := .bin lhs.bvExpr op (h ▸ rhs.bvExpr)
      let expr := mkApp4 (mkConst ``BVExpr.bin) (toExpr lhs.width) lhs.expr (toExpr op) rhs.expr
      let congrThm := mkApp (mkConst congrThm) (toExpr lhs.width)
      let proof := binaryCongrProof lhs rhs lhsExpr rhsExpr congrThm
      return some ⟨lhs.width, bvExpr, origExpr, proof, expr⟩
    else
      return none

  binaryCongrProof (lhs rhs : ReifiedBVExpr) (lhsExpr rhsExpr : Expr) (congrThm : Expr) :
      M (Option Expr) := do
    let lhsEval ← ReifiedBVExpr.mkEvalExpr lhs.width lhs.expr
    let rhsEval ← ReifiedBVExpr.mkEvalExpr rhs.width rhs.expr
    let lhsProof? ← lhs.evalsAtAtoms
    let rhsProof? ← rhs.evalsAtAtoms
    let some (lhsProof, rhsProof) :=
      M.simplifyBinaryProof
        (ReifiedBVExpr.mkBVRefl lhs.width)
        lhsEval lhsProof?
        rhsEval rhsProof? | return none
    return mkApp6 congrThm lhsExpr rhsExpr lhsEval rhsEval lhsProof rhsProof

  unaryReflection (innerExpr : Expr) (op : BVUnOp) (congrThm : Name) (origExpr : Expr) :
      LemmaM (Option ReifiedBVExpr) := do
    let some inner ← goOrAtom innerExpr | return none
    let bvExpr := .un op inner.bvExpr
    let expr := mkApp3 (mkConst ``BVExpr.un) (toExpr inner.width) (toExpr op) inner.expr
    let proof := unaryCongrProof inner innerExpr (mkConst congrThm)
    return some ⟨inner.width, bvExpr, origExpr, proof, expr⟩

  unaryCongrProof (inner : ReifiedBVExpr) (innerExpr : Expr) (congrProof : Expr) : M (Option Expr) := do
    let innerEval ← ReifiedBVExpr.mkEvalExpr inner.width inner.expr
    let some innerProof ← inner.evalsAtAtoms | return none
    return mkApp4 congrProof (toExpr inner.width) innerExpr innerEval innerProof

  goBvLit (x : Expr) : M (Option ReifiedBVExpr) := do
    let some ⟨_, bvVal⟩ ← getBitVecValue? x | return ← ReifiedBVExpr.bitVecAtom x false
    ReifiedBVExpr.mkBVConst bvVal

/--
Reify an `Expr` that is a predicate about `BitVec`.
Unless this function is called on something that is not a `Bool` it is always going to return `some`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d81319cb4871576b28efc43496bfe53de255560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
