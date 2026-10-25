# ExceptT.finally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:695f0329a30f785b56542d8328aa2d49ec72c84bfc548bdcd836689d25c56a7f",
  "kind": "instance",
  "lexical_name": "ExceptT.finally",
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
  "slug": "exceptt-finally--0f8904dd0fbe72d1115dcb2f",
  "source": {
    "blob": "66d3d92b3b53ce79eb5a838cb718e648f2bc28a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variant1506bec5f4a0bfeffa47917e61055eb10a7576dfb63bb5a6de9fb9561032102f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f8904dd0fbe72d1115dcb2fef1b1eb90bd4c5d7361cdd938772a4267110d03f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variant1506bec5f4a0bfeffa47917e61055eb10a7576dfb63bb5a6de9fb9561032102f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:695f0329a30f785b56542d8328aa2d49ec72c84bfc548bdcd836689d25c56a7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ExceptT.finally {m : Type u → Type v} {ε : Type u} [MonadFinally m] [Monad m] : MonadFinally (ExceptT ε m) where
  tryFinally' := fun x h => ExceptT.mk do
    let r ← tryFinally' x fun e? => match e? with
        | some (.ok a) => h (some a)
        | _            => h none
    match r with
    | (.ok a,    .ok b)    => pure (.ok (a, b))
    | (_,        .error e) => pure (.error e)  -- second error has precedence
    | (.error e, _)        => pure (.error e)

set_option linter.checkUnivs false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variant1506bec5f4a0bfeffa47917e61055eb10a7576dfb63bb5a6de9fb9561032102f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variant1506bec5f4a0bfeffa47917e61055eb10a7576dfb63bb5a6de9fb9561032102f.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d3d92b3b53ce79eb5a838cb718e648f2bc28a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
