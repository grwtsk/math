# reduceBoolPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b801f4191cb96c134c6d7e0986d74511f7f04c03df694cd763bbbc42f12f858",
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
  "slug": "reduceboolpred--bc9c97500ff7f73791978348",
  "source": {
    "blob": "9c9695e696fb7d4e787c68ff5bd5c03107c21eec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc9c97500ff7f7379197834872f7acef544188b9580ad6db75c1133ce50cf598",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b801f4191cb96c134c6d7e0986d74511f7f04c03df694cd763bbbc42f12f858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceBoolPred (declName : Name) (arity : Nat) (op : Nat → Nat → Bool) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName arity do return .continue
  let some n ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (op n m)

builtin_dsimproc [simp, seval] reduceSucc (Nat.succ _) := reduceUnary ``Nat.succ 1 (· + 1)

/-
The following code assumes users did not override the `Nat` instances for the arithmetic operators.
If they do, they must disable the following `simprocs`.
-/

builtin_dsimproc [simp, seval] reduceAdd ((_ + _ : Nat)) := reduceBin ``HAdd.hAdd 6 (· + ·)
builtin_dsimproc [simp, seval] reduceMul ((_ * _ : Nat)) := reduceBin ``HMul.hMul 6 (· * ·)
builtin_dsimproc [simp, seval] reduceSub ((_ - _ : Nat)) := reduceBin ``HSub.hSub 6 (· - ·)
builtin_dsimproc [simp, seval] reduceDiv ((_ / _ : Nat)) := reduceBin ``HDiv.hDiv 6 (· / ·)
builtin_dsimproc [simp, seval] reduceMod ((_ % _ : Nat)) := reduceBin ``HMod.hMod 6 (· % ·)

builtin_dsimproc [simp, seval] reducePow ((_ ^ _ : Nat)) := fun e => do
  let_expr HPow.hPow _ _ _ _ n m := e | return .continue
  let some n ← fromExpr? n | return .continue
  let some m ← fromExpr? m | return .continue
  let warning := (← Simp.getConfig).warnExponents
  unless (← checkExponent m (warning := warning)) do return .continue
  return .done <| toExpr (n ^ m)

builtin_dsimproc [simp, seval] reduceAnd ((_ &&& _ : Nat)) := reduceBin ``HAnd.hAnd 6 (· &&& ·)
builtin_dsimproc [simp, seval] reduceXor ((_ ^^^ _ : Nat)) := reduceBin ``HXor.hXor 6 (· ^^^ ·)
builtin_dsimproc [simp, seval] reduceOr ((_ ||| _ : Nat)) := reduceBin ``HOr.hOr 6 (· ||| ·)

builtin_dsimproc [simp, seval] reduceShiftLeft ((_ <<< _ : Nat)) :=
  reduceBin ``HShiftLeft.hShiftLeft 6 (· <<< ·)

builtin_dsimproc [simp, seval] reduceShiftRight ((_ >>> _ : Nat)) :=
  reduceBin ``HShiftRight.hShiftRight 6 (· >>> ·)

builtin_dsimproc [simp, seval] reduceGcd (gcd _ _)       := reduceBin ``gcd 2 gcd

builtin_simproc [simp, seval] reduceLT  (( _ : Nat) < _)  := reduceBinPred ``LT.lt 4 (. < .)
builtin_simproc [simp, seval] reduceGT  (( _ : Nat) > _)  := reduceBinPred ``GT.gt 4 (. > .)
builtin_dsimproc [simp, seval] reduceBEq  (( _ : Nat) == _)  := reduceBoolPred ``BEq.beq 4 (. == .)
builtin_dsimproc [simp, seval] reduceBNe  (( _ : Nat) != _)  := reduceBoolPred ``bne 4 (. != .)

/-- Return `.done` for Nat values. We don't want to unfold in the symbolic evaluator. -/
builtin_dsimproc [seval] isValue ((OfNat.ofNat _ : Nat)) := fun e => do
  let_expr OfNat.ofNat _ _ _ ← e | return .continue
  return .done e

/-- A literal natural number or a base + offset expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c9695e696fb7d4e787c68ff5bd5c03107c21eec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
