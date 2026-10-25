# reduceBoolPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d1d0059d93c9708170881af4b048989ec28b4d07448ad29c92b2ba5efc56a2a",
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
  "slug": "reduceboolpred--21f72583a3517ed5a2e05335",
  "source": {
    "blob": "0a2f0dd6681d350a574d3c18d4f76dbff07a6ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant90495c8acf23c04867b4efe98d39a8973ef8cae8eea19e40d06b39a3c84a6075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21f72583a3517ed5a2e05335344beb84d21915f119d1323536fd2ea4097fc6fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant90495c8acf23c04867b4efe98d39a8973ef8cae8eea19e40d06b39a3c84a6075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d1d0059d93c9708170881af4b048989ec28b4d07448ad29c92b2ba5efc56a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceBoolPred (declName : Name) (arity : Nat) (op : $typeName → $typeName → Bool) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName arity do return .continue
  let some n ← ($fromExpr e.appFn!.appArg!) | return .continue
  let some m ← ($fromExpr e.appArg!) | return .continue
  return .done <| toExpr (op n m)

builtin_dsimproc [simp, seval] reduceNeg ((- _ : $typeName)) := fun e => do
  let_expr Neg.neg _ _ arg ← e | return .continue
  if arg.isAppOfArity ``OfNat.ofNat 3 then
    -- We return .done to ensure `Neg.neg` is not unfolded even when `ground := true`.
    return .done e
  else
    let some v ← ($fromExpr arg) | return .continue
    return .done <| toExpr (- v)

builtin_dsimproc [simp, seval] $(mkIdent `reduceAdd):ident ((_ + _ : $typeName)) := reduceBin ``HAdd.hAdd 6 (· + ·)
builtin_dsimproc [simp, seval] $(mkIdent `reduceMul):ident ((_ * _ : $typeName)) := reduceBin ``HMul.hMul 6 (· * ·)
builtin_dsimproc [simp, seval] $(mkIdent `reduceSub):ident ((_ - _ : $typeName)) := reduceBin ``HSub.hSub 6 (· - ·)
builtin_dsimproc [simp, seval] $(mkIdent `reduceDiv):ident ((_ / _ : $typeName)) := reduceBin ``HDiv.hDiv 6 (· / ·)
builtin_dsimproc [simp, seval] $(mkIdent `reduceMod):ident ((_ % _ : $typeName)) := reduceBin ``HMod.hMod 6 (· % ·)

builtin_simproc [simp, seval] $(mkIdent `reduceLT):ident  (( _ : $typeName) < _)  := reduceBinPred ``LT.lt 4 (. < .)
builtin_simproc [simp, seval] $(mkIdent `reduceLE):ident  (( _ : $typeName) ≤ _)  := reduceBinPred ``LE.le 4 (. ≤ .)
builtin_simproc [simp, seval] $(mkIdent `reduceGT):ident  (( _ : $typeName) > _)  := reduceBinPred ``GT.gt 4 (. > .)
builtin_simproc [simp, seval] $(mkIdent `reduceGE):ident  (( _ : $typeName) ≥ _)  := reduceBinPred ``GE.ge 4 (. ≥ .)
builtin_simproc [simp, seval] reduceEq  (( _ : $typeName) = _)  := reduceBinPred ``Eq 3 (. = .)
builtin_simproc [simp, seval] reduceNe  (( _ : $typeName) ≠ _)  := reduceBinPred ``Ne 3 (. ≠ .)
builtin_dsimproc [simp, seval] reduceBEq  (( _ : $typeName) == _)  := reduceBoolPred ``BEq.beq 4 (. == .)
builtin_dsimproc [simp, seval] reduceBNe  (( _ : $typeName) != _)  := reduceBoolPred ``bne 4 (. != .)

builtin_dsimproc [simp, seval] $(mkIdent `reduceOfIntLE):ident ($ofIntLE _ _ _) := fun e => do
  unless e.isAppOfArity $(quote ofIntLE.getId) 3 do return .continue
  let some value ← Int.fromExpr? e.appFn!.appFn!.appArg! | return .continue
  let value := $(mkIdent ofInt) value
  return .done <| toExpr value

builtin_dsimproc [simp, seval] $(mkIdent `reduceOfNat):ident ($(mkIdent ofNat) _) := fun e => do
  unless e.isAppOfArity $(quote ofNat) 1 do return .continue
  let some value ← Nat.fromExpr? e.appArg! | return .continue
  let value := $(mkIdent ofNat) value
  return .done <| toExpr value

builtin_dsimproc [simp, seval] $(mkIdent `reduceOfInt):ident ($(mkIdent ofInt) _) := fun e => do
  unless e.isAppOfArity $(quote ofInt) 1 do return .continue
  let some value ← Int.fromExpr? e.appArg! | return .continue
  let value := $(mkIdent ofInt) value
  return .done <| toExpr value

builtin_dsimproc [simp, seval] $(mkIdent `reduceToInt):ident ($toInt _) := fun e => do
  unless e.isAppOfArity $(quote toInt.getId) 1 do return .continue
  let some v ← ($fromExpr e.appArg!) | return .continue
  let n := $toInt v
  return .done <| toExpr n

builtin_dsimproc [simp, seval] $(mkIdent `reduceToNatClampNeg):ident ($toNatClampNeg _) := fun e => do
  unless e.isAppOfArity $(quote toNatClampNeg.getId) 1 do return .continue
  let some v ← ($fromExpr e.appArg!) | return .continue
  let n := $toNatClampNeg v
  return .done <| toExpr n

/-- Return `.done` for Int values. We don't want to unfold in the symbolic evaluator. -/
builtin_dsimproc [seval] isValue ((OfNat.ofNat _ : $typeName)) := fun e => do
  unless (e.isAppOfArity ``OfNat.ofNat 3) do return .continue
  return .done e

end $typeName
)

end Lean

declare_sint_simprocs Int8
declare_sint_simprocs Int16
declare_sint_simprocs Int32
declare_sint_simprocs Int64

/-
We do not use the normal simprocs for `ISize` since the result of most operations depend on an opaque value: `System.Platform.numBits`.
However, we do reduce natural literals using the fact this opaque value is at least `32`.
-/
namespace ISize

builtin_simproc [simp, seval] reduceToNatClampNeg (ISize.toNatClampNeg _) := fun e => do
  let_expr ISize.toNatClampNeg e ← e | return .continue
  if let some (n, _) ← getOfNatValue? e ``ISize then
    unless n < 2 ^ 31 do return .continue
    let e := toExpr n
    let p ← mkDecideProof (← mkLT e (mkNatLit (2 ^ 31)))
    let p := mkApp2 (mkConst ``ISize.toNatClampNeg_ofNat_of_lt) e p
    return .done { expr := e, proof? := p }

  let_expr Neg.neg _ _ a ← e | return .continue
  let some (n, _) ← getOfNatValue? a ``ISize | return .continue
  unless n ≤ 2 ^ 31 do return .continue
  let e := toExpr n
  let p ← mkDecideProof (← mkLE e (mkNatLit (2 ^ 31)))
  let p := mkApp2 (mkConst ``ISize.toNatClampNeg_neg_ofNat_of_le) e p
  return .done { expr := toExpr 0, proof? := p }

builtin_simproc [simp, seval] reduceToInt (ISize.toInt _) := fun e => do
  let_expr ISize.toInt e ← e | return .continue
  if let some (n, _) ← getOfNatValue? e ``ISize then
    unless n < 2 ^ 31 do return .continue
    let e := toExpr n
    let p ← mkDecideProof (← mkLT e (mkNatLit (2 ^ 31)))
    let p := mkApp2 (mkConst ``ISize.toInt_ofNat_of_lt) e p
    return .done { expr := toExpr (n : Int), proof? := p }

  let_expr Neg.neg _ _ a ← e | return .continue
  let some (n, _) ← getOfNatValue? a ``ISize | return .continue
  unless n ≤ 2 ^ 31 do return .continue
  let e := toExpr n
  let p ← mkDecideProof (← mkLE e (mkNatLit (2 ^ 31)))
  let p := mkApp2 (mkConst ``ISize.toInt_neg_ofNat_of_le) e p
  return .done { expr := toExpr (-n : Int), proof? := p }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant90495c8acf23c04867b4efe98d39a8973ef8cae8eea19e40d06b39a3c84a6075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant90495c8acf23c04867b4efe98d39a8973ef8cae8eea19e40d06b39a3c84a6075.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2f0dd6681d350a574d3c18d4f76dbff07a6ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
