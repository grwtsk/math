# getBitBV

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33d8178f0170312f10812ad300c73afbd40fbae94d08640126ee3917ecdc0a8b",
  "kind": "def",
  "lexical_name": "getBitBV",
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
  "slug": "getbitbv--2f2d0ee7c54ecd17fe69ec3c",
  "source": {
    "blob": "29a009eb183a4dcb6821eed77363dbe585185407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f2d0ee7c54ecd17fe69ec3c11c5cbb718ef47efe90b6c5bf015cb4cd11a790f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33d8178f0170312f10812ad300c73afbd40fbae94d08640126ee3917ecdc0a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def getBitBV (declName : Name)
    (op : {n : Nat} → BitVec n → Nat → Bool) (e : Expr) : GoalM Unit := do
  unless e.isAppOfArity declName 3 do return ()
  binOp e fun r₁ r₂ => do
    let some ⟨_, v⟩ ← getBitVecValue? r₁ | return none
    let some i ← getNatValue? r₂ | return none
    some <$> mkBoolLit (op v i)

/-! The table. -/

builtin_grind_propagator propagateBVNot ↑Complement.complement :=
  unaryBV ``Complement.complement 3 (~~~ ·)
builtin_grind_propagator propagateBVClz ↑BitVec.clz := unaryBV ``BitVec.clz 2 BitVec.clz
builtin_grind_propagator propagateBVCpop ↑BitVec.cpop := unaryBV ``BitVec.cpop 2 BitVec.cpop

builtin_grind_propagator propagateBVMsb ↑BitVec.msb := fun e => do
  unless e.isAppOfArity ``BitVec.msb 2 do return ()
  unaryOp e fun r => do
    let some ⟨_, v⟩ ← getBitVecValue? r | return none
    some <$> mkBoolLit v.msb

builtin_grind_propagator propagateBVToNat ↑BitVec.toNat := fun e => do
  unless e.isAppOfArity ``BitVec.toNat 2 do return ()
  unaryOp e fun r => do
    let some ⟨_, v⟩ ← getBitVecValue? r | return none
    some <$> shareCommon (mkNatLit v.toNat)

builtin_grind_propagator propagateBVToInt ↑BitVec.toInt := fun e => do
  unless e.isAppOfArity ``BitVec.toInt 2 do return ()
  unaryOp e fun r => do
    let some ⟨_, v⟩ ← getBitVecValue? r | return none
    some <$> shareCommon (mkIntLit v.toInt)

builtin_grind_propagator propagateBVOfNat ↑BitVec.ofNat := fun e => do
  unless e.isAppOfArity ``BitVec.ofNat 2 do return ()
  let some w ← getNatValue? (e.getArg! 0) | return ()  -- occurs in the result type
  unaryOp e fun r => do
    let some n ← getNatValue? r | return none
    some <$> mkBVLit w (BitVec.ofNat w n)

builtin_grind_propagator propagateBVOfInt ↑BitVec.ofInt := fun e => do
  unless e.isAppOfArity ``BitVec.ofInt 2 do return ()
  let some w ← getNatValue? (e.getArg! 0) | return ()  -- occurs in the result type
  unaryOp e fun r => do
    let some i ← getIntValue? r | return none
    some <$> mkBVLit w (BitVec.ofInt w i)

builtin_grind_propagator propagateBVSetWidth ↑BitVec.setWidth := extendBV ``BitVec.setWidth BitVec.setWidth
builtin_grind_propagator propagateBVSignExtend ↑BitVec.signExtend := extendBV ``BitVec.signExtend BitVec.signExtend

builtin_grind_propagator propagateBVExtractLsb' ↑BitVec.extractLsb' :=
  extractBV ``BitVec.extractLsb' fun start len v => ⟨len, v.extractLsb' start len⟩
builtin_grind_propagator propagateBVExtractLsb ↑BitVec.extractLsb :=
  extractBV ``BitVec.extractLsb fun hi lo v => ⟨hi - lo + 1, v.extractLsb hi lo⟩

builtin_grind_propagator propagateBVReplicate ↑BitVec.replicate := fun e => do
  unless e.isAppOfArity ``BitVec.replicate 3 do return ()
  let some i ← getNatValue? (e.getArg! 1) | return ()  -- occurs in the result type
  unaryOp e fun r => do
    let some ⟨n, v⟩ ← getBitVecValue? r | return none
    some <$> mkBVLit (n * i) (v.replicate i)

builtin_grind_propagator propagateBVAnd ↑HAnd.hAnd := binBV ``HAnd.hAnd 6 (· &&& ·)
builtin_grind_propagator propagateBVOr ↑HOr.hOr := binBV ``HOr.hOr 6 (· ||| ·)
builtin_grind_propagator propagateBVXor ↑HXor.hXor := binBV ``HXor.hXor 6 (· ^^^ ·)

builtin_grind_propagator propagateBVAppend ↑HAppend.hAppend := fun e => do
  unless e.isAppOfArity ``HAppend.hAppend 6 do return ()
  unless (← inferType e).isAppOf ``BitVec do return ()
  binOp e fun r₁ r₂ => do
    let some ⟨n₁, v₁⟩ ← getBitVecValue? r₁ | return none
    let some ⟨n₂, v₂⟩ ← getBitVecValue? r₂ | return none
    some <$> mkBVLit (n₁ + n₂) (v₁ ++ v₂)

builtin_grind_propagator propagateBVShiftLeft ↑BitVec.shiftLeft :=
  shiftBV ``BitVec.shiftLeft 3 BitVec.shiftLeft
builtin_grind_propagator propagateBVUShiftRight ↑BitVec.ushiftRight :=
  shiftBV ``BitVec.ushiftRight 3 BitVec.ushiftRight
builtin_grind_propagator propagateBVSShiftRight ↑BitVec.sshiftRight :=
  shiftBV ``BitVec.sshiftRight 3 BitVec.sshiftRight
builtin_grind_propagator propagateBVRotateLeft ↑BitVec.rotateLeft :=
  shiftBV ``BitVec.rotateLeft 3 BitVec.rotateLeft
builtin_grind_propagator propagateBVRotateRight ↑BitVec.rotateRight :=
  shiftBV ``BitVec.rotateRight 3 BitVec.rotateRight

/-- `x <<< i` and `x >>> i` where the shift amount is a `Nat` or a `BitVec`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcf5c67e4e15e984621d2e82f6b78ea8cda42693549663164636bec8721cf7543.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a009eb183a4dcb6821eed77363dbe585185407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
