# reduceBoolPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c95afb9455afaef9f08fa041c90a285f878fa9205b9cb1894a2264539b963b7b",
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
  "slug": "reduceboolpred--c1f3c60b7478bee70f96fe08",
  "source": {
    "blob": "db4a3d64a0475f12c5cfd308cd7698ca290919bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Char/Varianteef02e95b69b8e5f516d1b5e02a7675a5030f21102a4a2fc8eef5303e0e03175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1f3c60b7478bee70f96fe081d5ca72ce52cc97aaba652ba74b97b3bba6198a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Char/Varianteef02e95b69b8e5f516d1b5e02a7675a5030f21102a4a2fc8eef5303e0e03175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c95afb9455afaef9f08fa041c90a285f878fa9205b9cb1894a2264539b963b7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceBoolPred (declName : Name) (arity : Nat) (op : Char → Char → Bool) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName arity do return .continue
  let some n ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (op n m)

builtin_dsimproc [simp, seval] reduceToLower (Char.toLower _) := reduceUnary ``Char.toLower Char.toLower
builtin_dsimproc [simp, seval] reduceToUpper (Char.toUpper _) := reduceUnary ``Char.toUpper Char.toUpper
builtin_dsimproc [simp, seval] reduceToNat (Char.toNat _) := reduceUnary ``Char.toNat Char.toNat
builtin_dsimproc [simp, seval] reduceIsWhitespace (Char.isWhitespace _) := reduceUnary ``Char.isWhitespace Char.isWhitespace
builtin_dsimproc [simp, seval] reduceIsUpper (Char.isUpper _) := reduceUnary ``Char.isUpper Char.isUpper
builtin_dsimproc [simp, seval] reduceIsLower (Char.isLower _) := reduceUnary ``Char.isLower Char.isLower
builtin_dsimproc [simp, seval] reduceIsAlpha (Char.isAlpha _) := reduceUnary ``Char.isAlpha Char.isAlpha
builtin_dsimproc [simp, seval] reduceIsDigit (Char.isDigit _) := reduceUnary ``Char.isDigit Char.isDigit
builtin_dsimproc [simp, seval] reduceIsAlphaNum (Char.isAlphanum _) := reduceUnary ``Char.isAlphanum Char.isAlphanum
builtin_dsimproc [simp, seval] reduceToString (toString (_ : Char)) := reduceUnary ``toString toString 3
builtin_dsimproc [simp, seval] reduceVal (Char.val _) := fun e => do
  let_expr Char.val arg ← e | return .continue
  let some c ← fromExpr? arg | return .continue
  return .done <| toExpr c.val

builtin_simproc [simp, seval] reduceLT  (( _ : Char) < _)  := reduceBinPred ``LT.lt 4 (. < .)
builtin_simproc [simp, seval] reduceLE  (( _ : Char) ≤ _)  := reduceBinPred ``LE.le 4 (. ≤ .)
builtin_simproc [simp, seval] reduceGT  (( _ : Char) > _)  := reduceBinPred ``GT.gt 4 (. > .)
builtin_simproc [simp, seval] reduceGE  (( _ : Char) ≥ _)  := reduceBinPred ``GE.ge 4 (. ≥ .)
builtin_simproc [simp, seval] reduceEq  (( _ : Char) = _)  := reduceBinPred ``Eq 3 (. = .)
builtin_simproc [simp, seval] reduceNe  (( _ : Char) ≠ _)  := reduceBinPred ``Ne 3 (. ≠ .)
builtin_dsimproc [simp, seval] reduceBEq  (( _ : Char) == _)  := reduceBoolPred ``BEq.beq 4 (. == .)
builtin_dsimproc [simp, seval] reduceBNe  (( _ : Char) != _)  := reduceBoolPred ``bne 4 (. != .)

/--
Returns `.done` for Char values.

These values should not be unfolded in the symbolic evaluator.

In regular `simp`, the nested raw literal should be prevented from being converted into an
`OfNat.ofNat` application.
-/
-- TODO: cleanup
builtin_dsimproc ↓ [simp, seval] isValue (Char.ofNat _ ) := fun e => do
  unless (← fromExpr? e).isSome do return .continue
  return .done e

builtin_dsimproc [simp, seval] reduceOfNatAux (Char.ofNatAux _ _) := fun e => do
  let_expr Char.ofNatAux n _ ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  return .done <| toExpr (Char.ofNat n)

builtin_dsimproc [simp, seval] reduceDefault ((default : Char)) := fun e => do
  let_expr default _ _ ← e | return .continue
  return .done <| toExpr (default : Char)

/-- Simplifies `Nat.digitChar n = c` to `False` when `c` is a concrete character
not in the range of `digitChar` (i.e., not one of `'0'`-`'9'`, `'a'`-`'f'`, `'*'`). -/
builtin_simproc [simp, seval] Nat.reduceDigitCharEq (Nat.digitChar _ = _) := fun e => do
  unless e.isAppOfArity ``Eq 3 do return .continue
  let lhs := e.appFn!.appArg!
  let rhs := e.appArg!
  unless lhs.isAppOfArity ``Nat.digitChar 1 do return .continue
  let some c ← fromExpr? rhs | return .continue
  let digitChars : Array Char :=
    #['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', '*']
  if digitChars.contains c then return .continue
  let n := lhs.appArg!
  let neProof := mkApp3 (mkConst (Name.mkStr2 "Nat" "digitChar_ne")) n rhs eagerReflBoolTrue
  let proof := mkApp2 (mkConst ``eq_false) e neProof
  return .done { expr := mkConst ``False, proof? := proof }

/-- Simplifies `c = Nat.digitChar n` to `False` when `c` is a concrete character
not in the range of `digitChar` (i.e., not one of `'0'`-`'9'`, `'a'`-`'f'`, `'*'`). -/
builtin_simproc [simp, seval] Nat.reduceEqDigitChar (_ = Nat.digitChar _) := fun e => do
  unless e.isAppOfArity ``Eq 3 do return .continue
  let charExpr := e.appFn!.appArg!
  let digitCharExpr := e.appArg!
  unless digitCharExpr.isAppOfArity ``Nat.digitChar 1 do return .continue
  let some c ← fromExpr? charExpr | return .continue
  let digitChars : Array Char :=
    #['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', '*']
  if digitChars.contains c then return .continue
  let n := digitCharExpr.appArg!
  let neProof := mkApp3 (mkConst (Name.mkStr2 "Nat" "digitChar_ne")) n charExpr eagerReflBoolTrue
  let neSymProof := mkApp4 (mkConst ``Ne.symm [.succ .zero]) (mkConst ``Char) digitCharExpr charExpr neProof
  let proof := mkApp2 (mkConst ``eq_false) e neSymProof
  return .done { expr := mkConst ``False, proof? := proof }

end Char
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Char/Varianteef02e95b69b8e5f516d1b5e02a7675a5030f21102a4a2fc8eef5303e0e03175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Char/Varianteef02e95b69b8e5f516d1b5e02a7675a5030f21102a4a2fc8eef5303e0e03175.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4a3d64a0475f12c5cfd308cd7698ca290919bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
