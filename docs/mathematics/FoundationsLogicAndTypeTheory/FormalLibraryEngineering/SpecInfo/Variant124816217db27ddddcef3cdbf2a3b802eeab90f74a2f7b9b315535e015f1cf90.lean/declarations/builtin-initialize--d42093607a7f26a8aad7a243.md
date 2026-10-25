# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3817bd7e641177b8ccb7d9edbfe0847cd72b61d9a8f41dbd706557741e968af7",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--d42093607a7f26a8aad7a243",
  "source": {
    "blob": "2995a8dc9e7f778efa46ff91b436581595930951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d42093607a7f26a8aad7a243a29cd300d865b57413e00435b2a33167f8cd762b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3817bd7e641177b8ccb7d9edbfe0847cd72b61d9a8f41dbd706557741e968af7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize specExtension : SimplePersistentEnvExtension SpecEntry SpecState ←
  registerSimplePersistentEnvExtension {
    addEntryFn    := SpecState.addEntry
    addImportedFn := fun _ => {}
    toArrayFn     := fun s => sortEntries s.toArray
    asyncMode     := .sync
    replay?       := some <| SimplePersistentEnvExtension.replayOfFilter
      (!·.specInfo.contains ·.declName) SpecState.addEntry
  }

/--
Return `true` if `type` is a type tagged with `@[nospecialize]` or an arrow that produces this kind of type.
For example, this function returns true for `Inhabited Nat`, and `Nat → Inhabited Nat`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2995a8dc9e7f778efa46ff91b436581595930951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
