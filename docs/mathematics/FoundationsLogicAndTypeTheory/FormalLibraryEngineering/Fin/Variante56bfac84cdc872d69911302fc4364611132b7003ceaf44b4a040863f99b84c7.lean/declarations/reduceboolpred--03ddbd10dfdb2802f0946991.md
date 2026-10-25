# reduceBoolPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f1ee4c3e2f5ab23baa788451bac4dd1b06a2ea2682015929ea0fcfda15a332a",
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
  "slug": "reduceboolpred--03ddbd10dfdb2802f0946991",
  "source": {
    "blob": "880cb780f6303793056e8f9c5f5a0af4a27dcb37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variante56bfac84cdc872d69911302fc4364611132b7003ceaf44b4a040863f99b84c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03ddbd10dfdb2802f09469911ca42519a4435ab1939322748fcf3d408077fd30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variante56bfac84cdc872d69911302fc4364611132b7003ceaf44b4a040863f99b84c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f1ee4c3e2f5ab23baa788451bac4dd1b06a2ea2682015929ea0fcfda15a332a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceBoolPred (declName : Name) (arity : Nat) (op : Nat → Nat → Bool) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName arity do return .continue
  let some v₁ ← fromExpr? e.appFn!.appArg! | return .continue
  let some v₂ ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (op v₁.value v₂.value)

/-
The following code assumes users did not override the `Fin n` instances for the arithmetic operators.
If they do, they must disable the following `simprocs`.
-/

builtin_dsimproc [simp, seval] reduceSucc (Fin.succ _) := reduceOp ``Fin.succ 2 (· + 1) Fin.succ
builtin_dsimproc [simp, seval] reduceRev (Fin.rev _) := reduceOp ``Fin.rev 2 (·) Fin.rev
builtin_dsimproc [simp, seval] reduceLast (Fin.last _) := reduceNatOp ``Fin.last 1 (· + 1) Fin.last

builtin_dsimproc [simp, seval] reduceAdd ((_ + _ : Fin _)) := reduceBin ``HAdd.hAdd 6 (· + ·)
builtin_dsimproc [simp, seval] reduceMul ((_ * _ : Fin _)) := reduceBin ``HMul.hMul 6 (· * ·)
builtin_dsimproc [simp, seval] reduceSub ((_ - _ : Fin _)) := reduceBin ``HSub.hSub 6 (· - ·)
builtin_dsimproc [simp, seval] reduceDiv ((_ / _ : Fin _)) := reduceBin ``HDiv.hDiv 6 (· / ·)
builtin_dsimproc [simp, seval] reduceMod ((_ % _ : Fin _)) := reduceBin ``HMod.hMod 6 (· % ·)

builtin_dsimproc [simp, seval] reduceAnd ((_ &&& _ : Fin _)) := reduceBin ``HAnd.hAnd 6 (· &&& ·)
builtin_dsimproc [simp, seval] reduceOr  ((_ ||| _ : Fin _)) := reduceBin ``HOr.hOr 6 (· ||| ·)
builtin_dsimproc [simp, seval] reduceXor ((_ ^^^ _ : Fin _)) := reduceBin ``HXor.hXor 6 (· ^^^ ·)

builtin_dsimproc [simp, seval] reduceShiftLeft ((_ <<< _ : Fin _))  := reduceBin ``HShiftLeft.hShiftLeft 6 (· <<< ·)
builtin_dsimproc [simp, seval] reduceShiftRight ((_ >>> _ : Fin _)) := reduceBin ``HShiftRight.hShiftRight 6 (· >>> ·)

builtin_simproc [simp, seval] reduceLT  (( _ : Fin _) < _)  := reduceBinPred ``LT.lt 4 (. < .)
builtin_simproc [simp, seval] reduceLE  (( _ : Fin _) ≤ _)  := reduceBinPred ``LE.le 4 (. ≤ .)
builtin_simproc [simp, seval] reduceGT  (( _ : Fin _) > _)  := reduceBinPred ``GT.gt 4 (. > .)
builtin_simproc [simp, seval] reduceGE  (( _ : Fin _) ≥ _)  := reduceBinPred ``GE.ge 4 (. ≥ .)
builtin_simproc [simp, seval] reduceEq  (( _ : Fin _) = _)  := reduceBinPred ``Eq 3 (. = .)
builtin_simproc [simp, seval] reduceNe  (( _ : Fin _) ≠ _)  := reduceBinPred ``Ne 3 (. ≠ .)
builtin_dsimproc [simp, seval] reduceBEq  (( _ : Fin _) == _)  := reduceBoolPred ``BEq.beq 4 (. == .)
builtin_dsimproc [simp, seval] reduceBNe  (( _ : Fin _) != _)  := reduceBoolPred ``bne 4 (. != .)

/-- Simplification procedure for ensuring `Fin n` literals are normalized. -/
builtin_dsimproc [simp, seval] isValue ((OfNat.ofNat _ : Fin _)) := fun e => do
  let_expr OfNat.ofNat _ m _ ← e | return .continue
  let some ⟨n, v⟩ ← getFinValue? e | return .continue
  let some m ← getNatValue? m | return .continue
  if m < n then
    -- Design decision: should we return `.continue` instead of `.done` when simplifying.
    -- In the symbolic evaluator, we must return `.done`, otherwise it will unfold the `OfNat.ofNat`
    return .done e
  return .done <| toExpr v

builtin_dsimproc [simp, seval] reduceFinMk (Fin.mk _ _)  := fun e => do
  let_expr Fin.mk n v _ ← e | return .continue
  let some n ← evalNat n |>.run | return .continue
  let some v ← getNatValue? v | return .continue
  if h : n ≠ 0 then
    have : NeZero n := ⟨h⟩
    return .done <| toExpr (Fin.ofNat n v)
  else
    return .continue

builtin_dsimproc [simp, seval] reduceOfNat (Fin.ofNat _ _) := fun e => do
  unless e.isAppOfArity ``Fin.ofNat 3 do return .continue
  let some (n + 1) ← getNatValue? e.appFn!.appFn!.appArg! | return .continue
  let some k ← getNatValue? e.appArg! | return .continue
  return .done <| toExpr (Fin.ofNat (n + 1) k)

builtin_dsimproc [simp, seval] reduceCastSucc (Fin.castSucc _) := fun e => do
  unless e.isAppOfArity ``Fin.castSucc 2 do return .continue
  let some k ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (castSucc k.value)

builtin_dsimproc [simp, seval] reduceCastAdd (Fin.castAdd _ _) := fun e => do
  unless e.isAppOfArity ``Fin.castAdd 3 do return .continue
  let some m ← getNatValue? e.appFn!.appArg! | return .continue
  let some k ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (castAdd m k.value)

builtin_dsimproc [simp, seval] reduceAddNat (Fin.addNat _ _) := fun e => do
  unless e.isAppOfArity ``Fin.addNat 3 do return .continue
  let some k ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← getNatValue? e.appArg! | return .continue
  return .done <| toExpr (addNat k.value m)

builtin_dsimproc [simp, seval] reduceNatAdd (Fin.natAdd _ _) := fun e => do
  unless e.isAppOfArity ``Fin.natAdd 3 do return .continue
  let some m ← getNatValue? e.appFn!.appArg! | return .continue
  let some k ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (natAdd m k.value)

builtin_dsimproc [simp, seval] reduceCastLT (Fin.castLT _ _) := fun e => do
  unless e.isAppOfArity ``Fin.castLT 4 do return .continue
  let some n ← getNatValue? e.appFn!.appFn!.appFn!.appArg! | return .continue
  let some i ← fromExpr? e.appFn!.appArg! | return .continue
  if h : i.value < n then
    return .done <| toExpr (castLT i.value h)
  else
    return .continue

builtin_dsimproc [simp, seval] reduceCastLE (Fin.castLE _ _) := fun e => do
  unless e.isAppOfArity ``Fin.castLE 4 do return .continue
  let some m ← getNatValue? e.appFn!.appFn!.appArg! | return .continue
  let some i ← fromExpr? e.appArg! | return .continue
  if h : i.n ≤ m then
    return .done <| toExpr (castLE h i.value)
  else
    return .continue

-- No simproc is needed for `Fin.cast`, as for explicit numbers `Fin.cast_refl` will apply.

builtin_dsimproc [simp, seval] reduceSubNat (Fin.subNat _ _ _) := fun e => do
  unless e.isAppOfArity ``Fin.subNat 4 do return .continue
  let some m ← getNatValue? e.appFn!.appFn!.appArg! | return .continue
  let some i ← fromExpr? e.appFn!.appArg! | return .continue
  if h : m ≤ i.value then
    return .done <| toExpr (subNat m (i.value.cast (by omega : i.n = (i.n - m) + m)) h)
  else
    return .continue

builtin_dsimproc [simp, seval] reducePred (Fin.pred _ _) := fun e => do
  unless e.isAppOfArity ``Fin.pred 3 do return .continue
  let some ⟨(_ + 1), i⟩ ← fromExpr? e.appFn!.appArg! | return .continue
  if h : i ≠ 0 then
    return .done <| toExpr (pred i h)
  else
    return .continue

end Fin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variante56bfac84cdc872d69911302fc4364611132b7003ceaf44b4a040863f99b84c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variante56bfac84cdc872d69911302fc4364611132b7003ceaf44b4a040863f99b84c7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `880cb780f6303793056e8f9c5f5a0af4a27dcb37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
