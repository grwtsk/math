# reduceBoolPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d3565ad1c3c429a51a7eb5e7de182c6736a47d718a1665e1f68ee4db0739df6",
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
  "slug": "reduceboolpred--461fa57facac2ced0a5c138c",
  "source": {
    "blob": "c93eb85c59effad4586d965ebcb9ab62417ffec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:461fa57facac2ced0a5c138ca04b0b51fd95e931b677c2eb920ac4543e0da59f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d3565ad1c3c429a51a7eb5e7de182c6736a47d718a1665e1f68ee4db0739df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceBoolPred (declName : Name) (arity : Nat) (op : Int → Int → Bool) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName arity do return .continue
  let some n ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (op n m)

/-
The following code assumes users did not override the `Int` instances for the arithmetic operators.
If they do, they must disable the following `simprocs`.
-/

builtin_dsimproc [simp, seval] reduceNeg ((- _ : Int)) := fun e => do
  let_expr Neg.neg _ _ arg ← e | return .continue
  if arg.isAppOfArity ``OfNat.ofNat 3 then
    -- We return .done to ensure `Neg.neg` is not unfolded even when `ground := true`.
    return .done e
  else
    let some v ← fromExpr? arg | return .continue
    return .done <| toExpr (- v)

/-- Return `.done` for positive Int values. We don't want to unfold in the symbolic evaluator. -/
builtin_dsimproc [seval] isPosValue ((OfNat.ofNat _ : Int)) := fun e => do
  let_expr OfNat.ofNat _ _ _ ← e | return .continue
  return .done e

builtin_dsimproc [simp, seval] reduceAdd ((_ + _ : Int)) := reduceBin ``HAdd.hAdd 6 (· + ·)
builtin_dsimproc [simp, seval] reduceMul ((_ * _ : Int)) := reduceBin ``HMul.hMul 6 (· * ·)
builtin_dsimproc [simp, seval] reduceSub ((_ - _ : Int)) := reduceBin ``HSub.hSub 6 (· - ·)
builtin_dsimproc [simp, seval] reduceDiv ((_ / _ : Int)) := reduceBin ``HDiv.hDiv 6 (· / ·)
builtin_dsimproc [simp, seval] reduceMod ((_ % _ : Int)) := reduceBin ``HMod.hMod 6 (· % ·)
builtin_dsimproc [simp, seval] reduceTDiv (tdiv  _ _) := reduceBin ``Int.tdiv 2 Int.tdiv
builtin_dsimproc [simp, seval] reduceTMod (tmod  _ _) := reduceBin ``Int.tmod 2 Int.tmod
builtin_dsimproc [simp, seval] reduceFDiv (fdiv _ _) := reduceBin ``Int.fdiv 2 Int.fdiv
builtin_dsimproc [simp, seval] reduceFMod (fmod _ _) := reduceBin ``Int.fmod 2 Int.fmod
builtin_dsimproc [simp, seval] reduceBdiv (bdiv _ _) := reduceBinIntNatOp ``bdiv bdiv
builtin_dsimproc [simp, seval] reduceBmod (bmod _ _) := reduceBinIntNatOp ``bmod bmod

builtin_dsimproc [simp, seval] reducePow ((_ : Int) ^ (_ : Nat)) := fun e => do
  let_expr HPow.hPow _ _ _ _ a b ← e | return .continue
  let some v₁ ← fromExpr? a | return .continue
  let some v₂ ← Nat.fromExpr? b | return .continue
  let warning := (← Simp.getConfig).warnExponents
  unless (← checkExponent v₂ (warning := warning)) do return .continue
  return .done <| toExpr (v₁ ^ v₂)

builtin_simproc [simp, seval] reduceLT  (( _ : Int) < _)  := reduceBinPred ``LT.lt 4 (. < .)
builtin_simproc [simp, seval] reduceLE  (( _ : Int) ≤ _)  := reduceBinPred ``LE.le 4 (. ≤ .)
builtin_simproc [simp, seval] reduceGT  (( _ : Int) > _)  := reduceBinPred ``GT.gt 4 (. > .)
builtin_simproc [simp, seval] reduceGE  (( _ : Int) ≥ _)  := reduceBinPred ``GE.ge 4 (. ≥ .)
builtin_simproc [simp, seval] reduceEq  (( _ : Int) = _)  := reduceBinPred ``Eq 3 (. = .)
builtin_simproc [simp, seval] reduceNe  (( _ : Int) ≠ _)  := reduceBinPred ``Ne 3 (. ≠ .)
builtin_dsimproc [simp, seval] reduceBEq  (( _ : Int) == _)  := reduceBoolPred ``BEq.beq 4 (. == .)
builtin_dsimproc [simp, seval] reduceBNe  (( _ : Int) != _)  := reduceBoolPred ``bne 4 (. != .)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93eb85c59effad4586d965ebcb9ab62417ffec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
