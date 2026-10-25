# reduceBoolPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa537e06e674325980dd0c4b651a11794ac91f63e8d5a28ebe0e5b091d8d477d",
  "kind": "def",
  "lexical_name": "reduceBoolPred",
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
  "slug": "reduceboolpred--027c52f59006929e6f0fd818",
  "source": {
    "blob": "d6e12ed84bf6faa52192473321fb0be9f0930c1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:027c52f59006929e6f0fd8183f2b7be073810b25d58b80fe28c90ed5172518dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa537e06e674325980dd0c4b651a11794ac91f63e8d5a28ebe0e5b091d8d477d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceBoolPred (declName : Name) (arity : Nat)
    (op : {n : Nat} → BitVec n → BitVec n → Bool) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName arity do return .continue
  let some v₁ ← fromExpr? e.appFn!.appArg! | return .continue
  let some v₂ ← fromExpr? e.appArg! | return .continue
  if h : v₁.n = v₂.n then
    let b := op v₁.value (h ▸ v₂.value)
    return .done <| toExpr b
  else
    return .continue


/-- Simplification procedure for negation of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceNeg ((- _ : BitVec _)) := reduceUnary ``Neg.neg 3 (- ·)
/-- Simplification procedure for bitwise not of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceNot ((~~~ _ : BitVec _)) :=
  reduceUnary ``Complement.complement 3 (~~~ ·)
/-- Simplification procedure for absolute value of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceAbs (BitVec.abs _) := reduceUnary ``BitVec.abs 2 BitVec.abs
/-- Simplification procedure for bitwise and of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceAnd ((_ &&& _ : BitVec _)) := reduceBin ``HAnd.hAnd 6 (· &&& ·)
/-- Simplification procedure for bitwise or of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceOr ((_ ||| _ : BitVec _)) := reduceBin ``HOr.hOr 6 (· ||| ·)
/-- Simplification procedure for bitwise xor of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceXOr ((_ ^^^ _ : BitVec _)) := reduceBin ``HXor.hXor 6 (· ^^^ ·)
/-- Simplification procedure for addition of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceAdd ((_ + _ : BitVec _)) := reduceBin ``HAdd.hAdd 6 (· + ·)
/-- Simplification procedure for multiplication of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceMul ((_ * _ : BitVec _)) := reduceBin ``HMul.hMul 6 (· * ·)
/-- Simplification procedure for subtraction of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSub ((_ - _ : BitVec _)) := reduceBin ``HSub.hSub 6 (· - ·)
/-- Simplification procedure for division of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceDiv ((_ / _ : BitVec _)) := reduceBin ``HDiv.hDiv 6 (· / ·)
/-- Simplification procedure for the modulo operation on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceMod ((_ % _ : BitVec _)) := reduceBin ``HMod.hMod 6 (· % ·)
/-- Simplification procedure for the unsigned modulo operation on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceUMod ((umod _ _ : BitVec _)) := reduceBin ``umod 3 umod
/-- Simplification procedure for unsigned division of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceUDiv ((udiv _ _ : BitVec _)) := reduceBin ``udiv 3 udiv
/-- Simplification procedure for division of `BitVec`s using the SMT-LIB conventions. -/
builtin_dsimproc [simp, seval] reduceSMTUDiv ((smtUDiv _ _ : BitVec _)) := reduceBin ``smtUDiv 3 smtUDiv
/-- Simplification procedure for the signed modulo operation on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSMod ((smod _ _ : BitVec _)) := reduceBin ``smod 3 smod
/-- Simplification procedure for signed remainder of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSRem ((srem _ _ : BitVec _)) := reduceBin ``srem 3 srem
/-- Simplification procedure for signed t-division of `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSDiv ((sdiv _ _ : BitVec _)) := reduceBin ``sdiv 3 sdiv
/-- Simplification procedure for signed division of `BitVec`s using the SMT-LIB conventions. -/
builtin_dsimproc [simp, seval] reduceSMTSDiv ((smtSDiv _ _ : BitVec _)) := reduceBin ``smtSDiv 3 smtSDiv
/-- Simplification procedure for `getLsb` (lowest significant bit) on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceGetLsb (getLsbD _ _) := reduceGetBit ``getLsbD getLsbD
/-- Simplification procedure for `getMsb` (most significant bit) on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceGetMsb (getMsbD _ _) := reduceGetBit ``getMsbD getMsbD
/-- Simplification procedure for `clz` (count leading zeros) on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceClz (clz _) := reduceUnary ``BitVec.clz 2 BitVec.clz
/-- Simplification procedure for `cpop` (population count) on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceCpop (cpop _) := reduceUnary ``BitVec.cpop 2 BitVec.cpop

/-- Simplification procedure for `getElem`  on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceGetElem ((_ : BitVec _)[_]) := fun e => do
  let_expr getElem _coll _idx _elem _valid _inst v i _h  := e | return .continue
  let some v ← fromExpr? v | return .continue
  let some i ← Nat.fromExpr? i | return .continue
  let b := v.value.getLsbD i
  return .done <| toExpr b

/-- Simplification procedure for shift left on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceShiftLeft (BitVec.shiftLeft _ _) :=
  reduceShift ``BitVec.shiftLeft 3 BitVec.shiftLeft
/-- Simplification procedure for unsigned shift right on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceUShiftRight (BitVec.ushiftRight _ _) :=
  reduceShift ``BitVec.ushiftRight 3 BitVec.ushiftRight
/-- Simplification procedure for signed shift right on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceSShiftRight (BitVec.sshiftRight _ _) :=
  reduceShift ``BitVec.sshiftRight 3 BitVec.sshiftRight
/-- Simplification procedure for shift left on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceHShiftLeft ((_ <<< _ : BitVec _)) :=
  reduceShift ``HShiftLeft.hShiftLeft 6 (· <<< ·)
/-- Simplification procedure for converting a shift with a bit-vector literal into a natural number literal. -/
builtin_dsimproc [simp, seval] reduceHShiftLeft' ((_ <<< (_ : BitVec _) : BitVec _)) :=
  reduceShiftWithBitVecLit ``HShiftLeft.hShiftLeft
/-- Simplification procedure for shift right on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceHShiftRight ((_ >>> _ : BitVec _)) :=
  reduceShift ``HShiftRight.hShiftRight 6 (· >>> ·)
/-- Simplification procedure for converting a shift with a bit-vector literal into a natural number literal. -/
builtin_dsimproc [simp, seval] reduceHShiftRight' ((_ >>> (_ : BitVec _) : BitVec _)) :=
  reduceShiftWithBitVecLit ``HShiftRight.hShiftRight
/-- Simplification procedure for rotate left on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceRotateLeft (BitVec.rotateLeft _ _) :=
  reduceShift ``BitVec.rotateLeft 3 BitVec.rotateLeft
/-- Simplification procedure for rotate right on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceRotateRight (BitVec.rotateRight _ _) :=
  reduceShift ``BitVec.rotateRight 3 BitVec.rotateRight

/-- Simplification procedure for append on `BitVec`. -/
builtin_dsimproc [simp, seval] reduceAppend ((_ ++ _ : BitVec _)) := fun e => do
  let_expr HAppend.hAppend _ _ _ _ a b ← e | return .continue
  let some v₁ ← fromExpr? a | return .continue
  let some v₂ ← fromExpr? b | return .continue
  return .done <| (← toExpr' (v₁.value ++ v₂.value))

/-- Simplification procedure for casting `BitVec`s along an equality of the size. -/
builtin_dsimproc [simp, seval] reduceCast (cast _ _) := fun e => do
  let_expr cast _ m _ v ← e | return .continue
  let some v ← fromExpr? v | return .continue
  let some m ← Nat.fromExpr? m | return .continue
  return .done <| (← toExpr' (BitVec.ofNat m v.value.toNat))

/-- Simplification procedure for `BitVec.toNat`. -/
builtin_dsimproc [simp, seval] reduceToNat (BitVec.toNat _) := fun e => do
  let_expr BitVec.toNat _ v ← e | return .continue
  let some v ← fromExpr? v | return .continue
  return .done <| mkNatLit v.value.toNat

/-- Simplification procedure for `BitVec.toInt`. -/
builtin_dsimproc [simp, seval] reduceToInt (BitVec.toInt _) := fun e => do
  let_expr BitVec.toInt _ v ← e | return .continue
  let some v ← fromExpr? v | return .continue
  return .done <| toExpr v.value.toInt

/-- Simplification procedure for `BitVec.ofInt`. -/
builtin_dsimproc [simp, seval] reduceOfInt (BitVec.ofInt _ _) := fun e => do
  let_expr BitVec.ofInt n i ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  let some i ← Int.fromExpr? i | return .continue
  return .done <| (← toExpr' (BitVec.ofInt n i))

/-- Simplification procedure for ensuring `BitVec.ofNat` literals are normalized. -/
builtin_dsimproc [simp, seval] reduceOfNat (BitVec.ofNat _ _) := fun e => do
  let_expr BitVec.ofNat n v ← e | return .continue
  let some v ← Nat.fromExpr? v | return .continue
  if let some n ← Nat.fromExpr? n then
    let bv := BitVec.ofNat n v
    -- `BitVec.ofNat` is the normal form only when `bitVecOfNat := true`; otherwise
    -- literals must be rewritten to the `OfNat.ofNat` form produced by `toExpr'`.
    if bv.toNat == v && (← Simp.getConfig).bitVecOfNat then return .continue -- already normalized
    return .done (← toExpr' (BitVec.ofNat n v))
  else if (← Simp.getConfig).bitVecOfNat then
    return .continue
  else
    /-
    **Note** If `bitVecOfNat := false`, we still want to convert terms such as `0#n` to the `OfNat.ofNat` form.
    Recall that `grind` uses `bitVecOfNat := false`, but many bit-vector theorems such as `sdiv_zero` are stated using
    terms such as `0#n`. These theorems will not be applicable to terms `x.sdiv 0#32` since `0#32` is normalized using `OfNat.ofNat`.
    -/
    return .done (← mkNumeral (mkApp (mkConst ``BitVec) n) v)

/--
Simplification procedure for ensuring `OfNat.ofNat` bitvector literals are normalized.
For example, `(17 : BitVec 4)` is reduced to `(1 : BitVec 4)` when `bitVecOfNat := false`,
and to `1#4` when `bitVecOfNat := true`.
-/
builtin_dsimproc [simp, seval] isValue ((OfNat.ofNat _ : BitVec _)) := fun e => do
  let_expr OfNat.ofNat _ m _ ← e | return .continue
  let some m ← Nat.fromExpr? m | return .continue
  let some ⟨_, v⟩ ← getBitVecValue? e | return .continue
  if v.toNat == m && !(← Simp.getConfig).bitVecOfNat then
    return .done e -- already normalized; `OfNat.ofNat` is the normal form when `bitVecOfNat := false`
  return .done (← toExpr' v)

/-- Simplification procedure for `=` on `BitVec`s. -/
builtin_simproc [simp, seval] reduceEq  (( _ : BitVec _) = _)  := reduceBinPred ``Eq 3 (. = .)
/-- Simplification procedure for `≠` on `BitVec`s. -/
builtin_simproc [simp, seval] reduceNe  (( _ : BitVec _) ≠ _)  := reduceBinPred ``Ne 3 (. ≠ .)
/-- Simplification procedure for `==` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceBEq  (( _ : BitVec _) == _)  :=
  reduceBoolPred ``BEq.beq 4 (· == ·)
/-- Simplification procedure for `!=` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceBNe  (( _ : BitVec _) != _)  :=
  reduceBoolPred ``bne 4 (· != ·)

/-- Simplification procedure for `<` on `BitVec`s. -/
builtin_simproc [simp, seval] reduceLT (( _ : BitVec _) < _)  := reduceBinPred ``LT.lt 4 (· < ·)
/-- Simplification procedure for `≤` on `BitVec`s. -/
builtin_simproc [simp, seval] reduceLE (( _ : BitVec _) ≤ _)  := reduceBinPred ``LE.le 4 (. ≤ .)
/-- Simplification procedure for `>` on `BitVec`s. -/
builtin_simproc [simp, seval] reduceGT (( _ : BitVec _) > _)  := reduceBinPred ``GT.gt 4 (. > .)
/-- Simplification procedure for `≥` on `BitVec`s. -/
builtin_simproc [simp, seval] reduceGE (( _ : BitVec _) ≥ _)  := reduceBinPred ``GE.ge 4 (. ≥ .)

/-- Simplification procedure for unsigned less than `ult` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceULT (BitVec.ult _ _) :=
  reduceBoolPred ``BitVec.ult 3 BitVec.ult
/-- Simplification procedure for unsigned less than or equal `ule` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceULE (BitVec.ule _ _) :=
  reduceBoolPred ``BitVec.ule 3 BitVec.ule
/-- Simplification procedure for signed less than `slt` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSLT (BitVec.slt _ _) :=
  reduceBoolPred ``BitVec.slt 3 BitVec.slt
/-- Simplification procedure for signed less than or equal `sle` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSLE (BitVec.sle _ _) :=
  reduceBoolPred ``BitVec.sle 3 BitVec.sle

/-- Simplification procedure for `setWidth'` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSetWidth' (setWidth' _ _) := fun e => do
  let_expr setWidth' _ w _ v ← e | return .continue
  let some v ← fromExpr? v | return .continue
  let some w ← Nat.fromExpr? w | return .continue
  if h : v.n ≤ w then
    return .done <| (← toExpr' (v.value.setWidth' h))
  else
    return .continue

/-- Simplification procedure for `shiftLeftZeroExtend` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceShiftLeftZeroExtend (shiftLeftZeroExtend _ _) := fun e => do
  let_expr shiftLeftZeroExtend _ v m ← e | return .continue
  let some v ← fromExpr? v | return .continue
  let some m ← Nat.fromExpr? m | return .continue
  return .done <| (← toExpr' (v.value.shiftLeftZeroExtend m))

/-- Simplification procedure for `extractLsb'` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceExtractLsb' (extractLsb' _ _ _) := fun e => do
  let_expr extractLsb' _ start len v ← e | return .continue
  let some v ← fromExpr? v | return .continue
  let some start ← Nat.fromExpr? start | return .continue
  let some len ← Nat.fromExpr? len | return .continue
  return .done <| (← toExpr' (v.value.extractLsb' start len))

/-- Simplification procedure for `extractLsb` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceExtractLsb (extractLsb _ _ _) := fun e => do
  let_expr extractLsb _ hi lo v ← e | return .continue
  let some v ← fromExpr? v | return .continue
  let some hi ← Nat.fromExpr? hi | return .continue
  let some lo ← Nat.fromExpr? lo | return .continue
  return .done <| (← toExpr' (v.value.extractLsb hi lo))

/-- Simplification procedure for `replicate` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceReplicate (replicate _ _) := fun e => do
  let_expr replicate _ i v ← e | return .continue
  let some v ← fromExpr? v | return .continue
  let some i ← Nat.fromExpr? i | return .continue
  return .done <| (← toExpr' (v.value.replicate i))

/-- Simplification procedure for `setWidth` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSetWidth (setWidth _ _) := reduceExtend ``setWidth setWidth

/-- Simplification procedure for `zeroExtend` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceZeroExtend (zeroExtend _ _) := reduceExtend ``zeroExtend zeroExtend

/-- Simplification procedure for `signExtend` on `BitVec`s. -/
builtin_dsimproc [simp, seval] reduceSignExtend (signExtend _ _) := reduceExtend ``signExtend signExtend

/-- Simplification procedure for `allOnes` -/
builtin_dsimproc [simp, seval] reduceAllOnes (allOnes _) := fun e => do
  let_expr allOnes n ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  return .done <| (← toExpr' (allOnes n))

builtin_dsimproc [simp, seval] reduceBitVecOfFin (BitVec.ofFin _)  := fun e => do
  let_expr BitVec.ofFin w v ← e | return .continue
  let some w ← evalNat w |>.run | return .continue
  let some ⟨_, v⟩ ← getFinValue? v | return .continue
  return .done <| (← toExpr' (BitVec.ofNat w v.val))

builtin_dsimproc [simp, seval] reduceBitVecToFin (BitVec.toFin _)  := fun e => do
  let_expr BitVec.toFin _ v ← e | return .continue
  let some ⟨_, v⟩ ← getBitVecValue? v | return .continue
  return .done <| toExpr v.toFin

/--
Helper function for reducing `(x <<< i) <<< j` (and `(x >>> i) >>> j`) where `i` and `j` are
natural number literals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6e12ed84bf6faa52192473321fb0be9f0930c1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
