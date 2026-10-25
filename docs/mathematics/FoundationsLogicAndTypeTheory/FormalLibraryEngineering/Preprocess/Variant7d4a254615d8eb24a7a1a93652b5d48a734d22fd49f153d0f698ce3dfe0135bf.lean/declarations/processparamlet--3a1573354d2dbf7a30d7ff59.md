# processParamLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e05354f608fe8fd5a7e5087574d20f4911bb2db38c8c0d2c7ec25d8b99206192",
  "kind": "def",
  "lexical_name": "processParamLet",
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
  "slug": "processparamlet--3a1573354d2dbf7a30d7ff59",
  "source": {
    "blob": "9df79abfb9f4c93b70a2fb2c3397a81998c8a62e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a1573354d2dbf7a30d7ff592679b8f02840db84f7795da9986662e9cb161f3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e05354f608fe8fd5a7e5087574d20f4911bb2db38c8c0d2c7ec25d8b99206192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def processParamLet (e : Expr) : MetaM Expr := do
  if let .letE _ t v b _ := e then
    if let some v' := isWfParam? v then
      if ← Meta.isProp t then
        processParamLet <| e.updateLetE! t v' b
      else
        let u ← getLevel t
        let b' := b.instantiate1 <| mkApp2 (.const ``wfParam [u]) t (.bvar 0)
        processParamLet <| e.updateLetE! t v' b'
    else
      let num := numLetsWithValueNotIsWfParam e
      assert! num > 0
      letBoundedTelescope e num fun xs b => do
        let b' ← processParamLet b
        mkLetFVars (usedLetOnly := false) (generalizeNondepLet := false) xs b'
  else
    return e

/--
`let x : T := (wfParam e); body[x] ==> let x : T := e; body[wfParam y]` if `T` is not a proposition,
otherwise `... ==> let x : T := e; body[x]`. (Applies to `have`s too.)

Note: simprocs are provided the head of a let telescope, but not intermediate lets.
-/
builtin_dsimproc paramLet (_) := fun e => do
  unless e.isLet || anyLetValueIsWfParam e do return .continue
  return .continue (← processParamLet e)

/--
Transforms non-Prop `have`s to `let`s, so that the values can be used in GuessLex and decreasing-by proofs.
These `have`s may have been introduced by `simp`, which converts `let`s to `have`s.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df79abfb9f4c93b70a2fb2c3397a81998c8a62e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
