# reduceBoolPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddce15bfb6551fe2a252296414f8ea961b15d1668558524dbb0d54d232991b90",
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
  "slug": "reduceboolpred--733c3c81e4d4ef691045e193",
  "source": {
    "blob": "c0339d2645b95497f0576d044d3c0b8a9c7392d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:733c3c81e4d4ef691045e193bec5fc6a33d2707eecf1aab25f5bac4eaad97385",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddce15bfb6551fe2a252296414f8ea961b15d1668558524dbb0d54d232991b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceBoolPred (declName : Name) (arity : Nat) (op : String → String → Bool) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName arity do return .continue
  let some n ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr (op n m)

builtin_simproc [simp, seval] reduceLT  (( _ : String) < _)  := reduceBinPred ``LT.lt 4 (. < .)
builtin_simproc [simp, seval] reduceLE  (( _ : String) ≤ _)  := reduceBinPred ``LE.le 4 (. ≤ .)
builtin_simproc [simp, seval] reduceGT  (( _ : String) > _)  := reduceBinPred ``GT.gt 4 (. > .)
builtin_simproc [simp, seval] reduceGE  (( _ : String) ≥ _)  := reduceBinPred ``GE.ge 4 (. ≥ .)

builtin_simproc [simp, seval] reduceEq (( _ : String) = _) := fun e => do
  unless e.isAppOfArity ``Eq 3 do return .continue
  let some n ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← fromExpr? e.appArg! | return .continue
  evalEqPropStep e (n = m) (mkStringLitNeProof n m)

builtin_simproc [simp, seval] reduceNe (( _ : String) ≠ _) := fun e => do
  unless e.isAppOfArity ``Ne 3 do return .continue
  let some n ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← fromExpr? e.appArg! | return .continue
  evalNePropStep e (n ≠ m) (mkStringLitNeProof n m)
builtin_dsimproc [simp, seval] reduceBEq  (( _ : String) == _)  := reduceBoolPred ``BEq.beq 4 (. == .)
builtin_dsimproc [simp, seval] reduceBNe  (( _ : String) != _)  := reduceBoolPred ``bne 4 (. != .)

end String
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0339d2645b95497f0576d044d3c0b8a9c7392d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
