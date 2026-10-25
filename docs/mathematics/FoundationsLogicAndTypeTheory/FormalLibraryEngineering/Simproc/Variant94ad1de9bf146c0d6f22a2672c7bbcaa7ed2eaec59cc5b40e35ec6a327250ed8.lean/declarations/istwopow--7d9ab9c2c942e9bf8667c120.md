# isTwoPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ace0c849db0224c42a9f594d4679bf039b0ee342ceb742141ff54aee41939eda",
  "kind": "def",
  "lexical_name": "isTwoPow",
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
  "slug": "istwopow--7d9ab9c2c942e9bf8667c120",
  "source": {
    "blob": "d33f429f7a7d01b1bddef28ad6146ea2e3018c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1250,
    "line": 916,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d9ab9c2c942e9bf8667c1204269befe7f8e75b54250404999c92a21cd8840b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ace0c849db0224c42a9f594d4679bf039b0ee342ceb742141ff54aee41939eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–1250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isTwoPow (x : BitVec w) : Option Nat :=
  if x == 0#w then
    none
  else
    go x 0
where
  go {w : Nat} (x : BitVec w) (counter : Nat) : Option Nat :=
    if counter < w then
      let attempt := 1#w <<< counter
      if attempt == x then
        some counter
      else
        go x (counter + 1)
    else
      none

builtin_simproc [bv_normalize] bv_twoPow_mul ((BitVec.ofNat _ _) * (_ : BitVec _)) := fun e => do
  let_expr HMul.hMul _ _ _ _ lhsExpr rhs := e | return .continue
  let some ⟨w, lhs⟩ ← getBitVecValue? lhsExpr | return .continue
  let some pow := isTwoPow lhs | return .continue
  let expr := BitVec.mkNatShiftLeft rhs (toExpr pow) (toExpr w)
  let proof := mkApp3 (mkConst ``BitVec.twoPow_mul_eq_shiftLeft) (toExpr w) rhs (toExpr pow)
  return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_mul_twoPow ((_ : BitVec _) * (BitVec.ofNat _ _)) := fun e => do
  let_expr HMul.hMul _ _ _ _ lhs rhsExpr := e | return .continue
  let some ⟨w, rhs⟩ ← getBitVecValue? rhsExpr | return .continue
  let some pow := isTwoPow rhs | return .continue
  let expr := BitVec.mkNatShiftLeft lhs (toExpr pow) (toExpr w)
  let proof := mkApp3 (mkConst ``BitVec.mul_twoPow_eq_shiftLeft) (toExpr w) lhs (toExpr pow)
  return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_ones_mul ((BitVec.ofNat _ _) * (_ : BitVec _)) := fun e => do
  let_expr HMul.hMul _ _ _ _ lhsExpr rhs := e | return .continue
  let some ⟨w, lhs⟩ ← getBitVecValue? lhsExpr | return .continue
  if -1#w != lhs then return .continue
  let expr := BitVec.mkNeg rhs (toExpr w)
  let proof := mkApp2 (mkConst ``BitVec.ones_mul) (toExpr w) rhs
  return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_mul_ones ((_ : BitVec _) * (BitVec.ofNat _ _)) := fun e => do
  let_expr HMul.hMul _ _ _ _ lhs rhsExpr := e | return .continue
  let some ⟨w, rhs⟩ ← getBitVecValue? rhsExpr | return .continue
  if -1#w != rhs then return .continue
  let expr := BitVec.mkNeg lhs (toExpr w)
  let proof := mkApp2 (mkConst ``BitVec.mul_ones) (toExpr w) lhs
  return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_elim_ushiftRight_const ((_ : BitVec _) >>> (_ : Nat)) := fun e => do
  let_expr HShiftRight.hShiftRight bvType _ _ _ lhsExpr rhsExpr := e | return .continue
  let some rhs ← getNatValue? rhsExpr | return .continue
  let_expr BitVec wExpr := bvType | return .continue
  let some w ← getNatValue? wExpr | return .continue
  if rhs < w then
    let zero := toExpr 0#rhs
    let newLen := w - rhs
    let newLenExpr := toExpr newLen
    let extract := mkApp4 (mkConst ``BitVec.extractLsb') wExpr rhsExpr newLenExpr lhsExpr
    let concat := BitVec.mkAppend zero extract (toExpr rhs) newLenExpr (toExpr (newLen + rhs))
    let expr := mkApp4 (mkConst ``BitVec.cast) wExpr wExpr (← mkEqRefl wExpr) concat
    let h := Nat.mkDecideProofLt rhsExpr wExpr
    let proof := mkApp4 (mkConst ``BitVec.ushiftRight_eq_extractLsb'_of_lt) wExpr lhsExpr rhsExpr h
    return .done { expr := expr, proof? := some proof }
  else
    let expr := toExpr 0#w
    let h := Nat.mkDecideProofLe wExpr rhsExpr
    let proof := mkApp4 (mkConst ``BitVec.ushiftRight_eq_zero) wExpr lhsExpr rhsExpr h
    return .done { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_elim_shiftLeft_const ((_ : BitVec _) <<< (_ : Nat)) := fun e => do
  let_expr HShiftLeft.hShiftLeft bvType _ _ _ lhsExpr rhsExpr := e | return .continue
  let some rhs ← getNatValue? rhsExpr | return .continue
  let_expr BitVec wExpr := bvType | return .continue
  let some w ← getNatValue? wExpr | return .continue
  if rhs < w then
    let zero := toExpr 0#rhs
    let newLen := w - rhs
    let newLenExpr := toExpr newLen
    let extract := mkApp4 (mkConst ``BitVec.extractLsb') wExpr (toExpr 0) newLenExpr lhsExpr
    let concat := BitVec.mkAppend extract zero newLenExpr (toExpr rhs) (toExpr (newLen + rhs))
    let expr := mkApp4 (mkConst ``BitVec.cast) wExpr wExpr (← mkEqRefl wExpr) concat
    let h := Nat.mkDecideProofLt rhsExpr wExpr
    let proof := mkApp4 (mkConst ``BitVec.shiftLeft_eq_concat_of_lt) wExpr lhsExpr rhsExpr h
    return .done { expr := expr, proof? := some proof }
  else
    let expr := toExpr 0#w
    let h := Nat.mkDecideProofLe wExpr rhsExpr
    let proof := mkApp4 (mkConst ``BitVec.shiftLeft_eq_zero) wExpr lhsExpr rhsExpr h
    return .done { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_concat_extract
    ((HAppend.hAppend (α := BitVec (no_index _)) (β := BitVec (no_index _)) (γ := BitVec (no_index _))
        (BitVec.extractLsb' _ _ _)
        (BitVec.extractLsb' _ _ _)))
    := fun e => do
  let_expr HAppend.hAppend _ _ _ _ lhsExpr rhsExpr := e | return .continue
  let_expr BitVec.extractLsb' wExpr lstartExpr llenExpr lhsVal := lhsExpr | return .continue
  let some lstart ← getNatValue? lstartExpr | return .continue
  let some llen ← getNatValue? llenExpr | return .continue
  let_expr BitVec.extractLsb' _ rstartExpr rlenExpr rhsVal := rhsExpr | return .continue
  let some rstart ← getNatValue? rstartExpr | return .continue
  let some rlen ← getNatValue? rlenExpr | return .continue
  if lhsVal != rhsVal then return .continue
  if lstart != rstart + rlen then return .continue
  let newLenExpr := toExpr (llen + rlen)
  let extract := mkApp4 (mkConst ``BitVec.extractLsb') wExpr rstartExpr newLenExpr lhsVal
  let expr := mkApp4 (mkConst ``BitVec.cast) newLenExpr newLenExpr (← mkEqRefl newLenExpr) extract
  let proof :=
    mkApp7
      (mkConst ``BitVec.extractLsb'_append_extractLsb'_eq_extractLsb')
      wExpr
      lstartExpr
      rstartExpr
      rlenExpr
      llenExpr
      lhsVal
      (← mkEqRefl lstartExpr)
  return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_concat_not_extract
    ((HAppend.hAppend (α := BitVec (no_index _)) (β := BitVec (no_index _)) (γ := BitVec (no_index _))
        (Complement.complement (α := BitVec (no_index _)) (BitVec.extractLsb' _ _ _))
        (Complement.complement (α := BitVec (no_index _)) (BitVec.extractLsb' _ _ _))))
    := fun e => do
  let_expr HAppend.hAppend _ _ _ _ lhsExpr rhsExpr := e | return .continue
  let_expr Complement.complement _ _ lhsExpr := lhsExpr | return .continue
  let_expr Complement.complement _ _ rhsExpr := rhsExpr | return .continue
  let_expr BitVec.extractLsb' wExpr lstartExpr llenExpr lhsVal := lhsExpr | return .continue
  let some lstart ← getNatValue? lstartExpr | return .continue
  let some llen ← getNatValue? llenExpr | return .continue
  let_expr BitVec.extractLsb' _ rstartExpr rlenExpr rhsVal := rhsExpr | return .continue
  let some rstart ← getNatValue? rstartExpr | return .continue
  let some rlen ← getNatValue? rlenExpr | return .continue
  if lhsVal != rhsVal then return .continue
  if lstart != rstart + rlen then return .continue
  let newLenExpr := toExpr (llen + rlen)
  let extract := mkApp4 (mkConst ``BitVec.extractLsb') wExpr rstartExpr newLenExpr lhsVal
  let not := BitVec.mkComplement extract newLenExpr
  let expr := mkApp4 (mkConst ``BitVec.cast) newLenExpr newLenExpr (← mkEqRefl newLenExpr) not
  let proof :=
    mkApp7
      (mkConst ``BitVec.not_extractLsb'_append_not_extractLsb'_eq_not_extractLsb')
      wExpr
      lstartExpr
      rstartExpr
      rlenExpr
      llenExpr
      lhsVal
      (← mkEqRefl lstartExpr)
  return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_elim_setWidth (BitVec.setWidth _ _) := fun e => do
  let_expr BitVec.setWidth oldWidthExpr newWidthExpr targetExpr := e | return .continue
  let some oldWidth ← getNatValue? oldWidthExpr | return .continue
  let some newWidth ← getNatValue? newWidthExpr | return .continue
  if newWidth ≤ oldWidth then
    let expr :=
      mkApp4
        (mkConst ``BitVec.extractLsb')
        oldWidthExpr
        (toExpr 0)
        newWidthExpr
        targetExpr
    let proof :=
      mkApp4
        (mkConst ``BitVec.setWidth_eq_extractLsb')
        oldWidthExpr
        targetExpr
        newWidthExpr
        (Nat.mkDecideProofLe newWidthExpr oldWidthExpr)
    return .visit { expr := expr, proof? := some proof }
  else
    let finalWidth := newWidth - oldWidth
    let lhs := toExpr 0#finalWidth
    let concat := BitVec.mkAppend
      lhs
      targetExpr
      (toExpr finalWidth)
      oldWidthExpr
      (toExpr (finalWidth + oldWidth))
    let expr :=
      mkApp4
        (mkConst ``BitVec.cast)
        newWidthExpr
        newWidthExpr
        (← mkEqRefl newWidthExpr)
        concat
    let proof :=
      mkApp4
        (mkConst ``BitVec.setWidth_eq_append)
        oldWidthExpr
        targetExpr
        newWidthExpr
        (Nat.mkDecideProofLe oldWidthExpr newWidthExpr)
    return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_elim_signExtend (BitVec.signExtend _ _) := fun e => do
  let_expr BitVec.signExtend oldWidthExpr newWidthExpr targetExpr := e | return .continue
  let some oldWidth ← getNatValue? oldWidthExpr | return .continue
  let some newWidth ← getNatValue? newWidthExpr | return .continue
  if newWidth ≤ oldWidth then
    let expr :=
      mkApp4
        (mkConst ``BitVec.extractLsb')
        oldWidthExpr
        (toExpr 0)
        newWidthExpr
        targetExpr
    let proof :=
      mkApp4
        (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.signExtend_elim')
        oldWidthExpr
        targetExpr
        newWidthExpr
        (Nat.mkDecideProofLe newWidthExpr oldWidthExpr)
    return .visit { expr := expr, proof? := some proof }
  else
    let msb := mkApp2 (mkConst ``BitVec.msb) oldWidthExpr targetExpr
    let finalWidth := newWidth - oldWidth
    let finalWidthExpr := toExpr finalWidth
    let lhs :=
      mkApp4
        (mkConst ``cond [1])
        (mkApp (mkConst ``BitVec) finalWidthExpr)
        msb
        (toExpr (-1#finalWidth))
        (toExpr (0#finalWidth))
    let concat := BitVec.mkAppend
      lhs
      targetExpr
      finalWidthExpr
      oldWidthExpr
      (toExpr (finalWidth + oldWidth))
    let expr :=
      mkApp4
        (mkConst ``BitVec.cast)
        newWidthExpr
        newWidthExpr
        (← mkEqRefl newWidthExpr)
        concat
    let proof :=
      mkApp4
        (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.signExtend_elim)
        oldWidthExpr
        targetExpr
        newWidthExpr
        (Nat.mkDecideProofLe oldWidthExpr newWidthExpr)
    return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_extract_concat
    (BitVec.extractLsb' _ _
      (HAppend.hAppend (γ := BitVec (no_index _)) (_ : BitVec _) (_ : BitVec _))) := fun e => do
  let_expr BitVec.extractLsb' _ startExpr lenExpr targetExpr := e | return .continue
  let_expr HAppend.hAppend lhsTypeExpr rhsTypeExpr _ _ lhsExpr rhsExpr := targetExpr | return .continue
  let_expr BitVec lhsWidthExpr := lhsTypeExpr | return .continue
  let_expr BitVec rhsWidthExpr := rhsTypeExpr | return .continue
  let some start ← getNatValue? startExpr | return .continue
  let some len ← getNatValue? lenExpr | return .continue
  let some rhsWidth ← getNatValue? rhsWidthExpr | return .continue
  if start + len ≤ rhsWidth then
    let expr := mkApp4 (mkConst ``BitVec.extractLsb') rhsWidthExpr startExpr lenExpr rhsExpr
    let proof :=
      mkApp7
        (mkConst ``BitVec.extractLsb'_append_eq_of_add_le)
        lhsWidthExpr
        rhsWidthExpr
        lhsExpr
        rhsExpr
        startExpr
        lenExpr
        (Nat.mkDecideProofLe (toExpr (start + len)) rhsWidthExpr)
    return .visit { expr := expr, proof? := some proof }
  else if rhsWidth ≤ start then
    let expr := mkApp4 (mkConst ``BitVec.extractLsb') lhsWidthExpr (toExpr (start - rhsWidth)) lenExpr lhsExpr
    let proof :=
      mkApp7
        (mkConst ``BitVec.extractLsb'_append_eq_of_le)
        lhsWidthExpr
        rhsWidthExpr
        lhsExpr
        rhsExpr
        startExpr
        lenExpr
        (Nat.mkDecideProofLe rhsWidthExpr startExpr)
    return .visit { expr := expr, proof? := some proof }
  else
    -- extract is not limited to side
    return .continue

builtin_simproc [bv_normalize] extract_add
    (BitVec.extractLsb' _ _ ((_ : BitVec _) + (_ : BitVec _))) := fun e => do
  let_expr BitVec.extractLsb' widthExpr startExpr lenExpr targetExpr := e | return .continue
  let_expr HAdd.hAdd _ _ _ _ lhsExpr rhsExpr := targetExpr | return .continue
  let some start ← getNatValue? startExpr | return .continue
  let some len ← getNatValue? lenExpr | return .continue
  let some width ← getNatValue? widthExpr | return .continue
  if !(start == 0 && len ≤ width) then return .continue

  let newLhsExpr := mkApp4 (mkConst ``BitVec.extractLsb') widthExpr startExpr lenExpr lhsExpr
  let newRhsExpr := mkApp4 (mkConst ``BitVec.extractLsb') widthExpr startExpr lenExpr rhsExpr
  let expr := BitVec.mkAdd newLhsExpr newRhsExpr lenExpr
  let proof :=
    mkApp5
      (mkConst ``BitVec.extractLsb'_add)
      widthExpr
      lenExpr
      lhsExpr
      rhsExpr
      (Nat.mkDecideProofLe lenExpr widthExpr)
  return .visit { expr := expr, proof? := some proof }

builtin_simproc [bv_normalize] extract_mul
    (BitVec.extractLsb' _ _ ((_ : BitVec _) * (_ : BitVec _))) := fun e => do
  let_expr BitVec.extractLsb' widthExpr startExpr lenExpr targetExpr := e | return .continue
  let_expr HMul.hMul _ _ _ _ lhsExpr rhsExpr := targetExpr | return .continue
  let some start ← getNatValue? startExpr | return .continue
  let some len ← getNatValue? lenExpr | return .continue
  let some width ← getNatValue? widthExpr | return .continue
  if !(start == 0 && len ≤ width) then return .continue

  let newLhsExpr := mkApp4 (mkConst ``BitVec.extractLsb') widthExpr startExpr lenExpr lhsExpr
  let newRhsExpr := mkApp4 (mkConst ``BitVec.extractLsb') widthExpr startExpr lenExpr rhsExpr
  let expr ← mkMul newLhsExpr newRhsExpr
  let proof :=
    mkApp5
      (mkConst ``BitVec.extractLsb'_mul)
      widthExpr
      lenExpr
      lhsExpr
      rhsExpr
      (Nat.mkDecideProofLe lenExpr widthExpr)
  return .visit { expr := expr, proof? := some proof }

end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d33f429f7a7d01b1bddef28ad6146ea2e3018c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
