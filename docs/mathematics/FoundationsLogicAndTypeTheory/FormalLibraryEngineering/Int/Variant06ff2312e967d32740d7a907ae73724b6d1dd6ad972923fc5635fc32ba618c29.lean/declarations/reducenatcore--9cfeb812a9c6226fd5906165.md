# reduceNatCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6874ef32632a465bfda4cabbb6a4e111295a164949db42a11b8d9917907f7c95",
  "kind": "def",
  "lexical_name": "reduceNatCore",
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
  "slug": "reducenatcore--9cfeb812a9c6226fd5906165",
  "source": {
    "blob": "c93eb85c59effad4586d965ebcb9ab62417ffec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cfeb812a9c6226fd5906165cd2864f8bafddadf1ac47705d79f2f0d7c88eb42",
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

Occurrence: `declaration:6874ef32632a465bfda4cabbb6a4e111295a164949db42a11b8d9917907f7c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceNatCore (declName : Name) (op : Int → Nat) (e : Expr) : SimpM DStep := do
  unless e.isAppOfArity declName 1 do return .continue
  let some v ← fromExpr? e.appArg! | return .continue
  return .done <| mkNatLit (op v)

builtin_dsimproc [simp, seval] reduceAbs (natAbs _) := reduceNatCore ``natAbs natAbs
builtin_dsimproc [simp, seval] reduceToNat (Int.toNat _) := reduceNatCore ``Int.toNat Int.toNat

builtin_dsimproc [simp, seval] reduceNegSucc (Int.negSucc _) := fun e => do
  let_expr Int.negSucc a ← e | return .continue
  let some a ← getNatValue? a | return .continue
  return .done <| toExpr (-(Int.ofNat a + 1))

builtin_dsimproc [simp, seval] reduceOfNat (Int.ofNat _) := fun e => do
  let_expr Int.ofNat a ← e | return .continue
  let some a ← getNatValue? a | return .continue
  return .done <| toExpr (Int.ofNat a)

builtin_simproc [simp, seval] reduceDvd ((_ : Int) ∣ _) := fun e => do
  let_expr Dvd.dvd _ i a b ← e | return .continue
  unless ← matchesInstance i (mkConst ``instDvd) do return .continue
  let some va ← fromExpr? a | return .continue
  let some vb ← fromExpr? b | return .continue
  if vb % va == 0 then
    return .done { expr := mkConst ``True, proof? := mkApp3 (mkConst ``Int.dvd_eq_true_of_mod_eq_zero) a b eagerReflBoolTrue}
  else
    return .done { expr := mkConst ``False, proof? := mkApp3 (mkConst ``Int.dvd_eq_false_of_mod_ne_zero) a b eagerReflBoolTrue}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93eb85c59effad4586d965ebcb9ab62417ffec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
