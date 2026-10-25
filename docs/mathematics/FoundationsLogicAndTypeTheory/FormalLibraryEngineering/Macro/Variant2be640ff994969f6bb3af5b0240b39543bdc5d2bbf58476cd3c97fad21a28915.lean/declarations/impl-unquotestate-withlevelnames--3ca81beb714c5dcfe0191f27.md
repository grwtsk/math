# Impl.UnquoteState.withLevelNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2fc58b25c13164f04c01baff4c299bf3075eb4763e14e4f5520e865479e4632",
  "kind": "def",
  "lexical_name": "Impl.UnquoteState.withLevelNames",
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
  "slug": "impl-unquotestate-withlevelnames--3ca81beb714c5dcfe0191f27",
  "source": {
    "blob": "dbbc9abd111678018fbc2c42a41b974b582d6e8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 509,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ca81beb714c5dcfe0191f275635ec9632bf789fb81cf9bf55fb1ca856d41222",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2fc58b25c13164f04c01baff4c299bf3075eb4763e14e4f5520e865479e4632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def Impl.UnquoteState.withLevelNames (s : UnquoteState) (k : TermElabM (α × Array Name)) : TermElabM α := do
  Term.withLevelNames s.levelNames do
    let (res, refdLevels) ← try k catch e =>
      if let some n := isAutoBoundImplicitLocalException? e then
        throwError "unsupported implicit auto-bound: {n} is not a level name"
      throw e

    for newLevelName in (← getLevelNames) do
      if let some fvar ← isLevelFVar newLevelName then
        if refdLevels.contains newLevelName then
          addTermInfo' (← getRef) fvar
      else if (← read).autoBoundImplicitContext.isSome then
        throwAutoBoundImplicitLocal newLevelName
      else
        throwError "unbound level param {newLevelName}"

    return res

/-- `ql(u)` quotes the universe level `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbc9abd111678018fbc2c42a41b974b582d6e8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
