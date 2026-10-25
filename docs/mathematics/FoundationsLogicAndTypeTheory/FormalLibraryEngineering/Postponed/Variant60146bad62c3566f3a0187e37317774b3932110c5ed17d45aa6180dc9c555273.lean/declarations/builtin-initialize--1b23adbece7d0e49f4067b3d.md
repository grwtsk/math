# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:731f7a019baf61239b6d5032deb292d6fbb76907178aede8434387c2da32a558",
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
  "slug": "builtin-initialize--1b23adbece7d0e49f4067b3d",
  "source": {
    "blob": "77b882933c94fd0afa77c8c0a838edc9e6ea5ec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b23adbece7d0e49f4067b3d9056eff82b09f5efa0bcbd42924d01b62043906c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:731f7a019baf61239b6d5032deb292d6fbb76907178aede8434387c2da32a558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize registerBuiltinAttribute {
  name := `deferred_doc_check
  descr := "Registers a `DeferredCheckHandler` for deferred docstring checks whose data has the named type."
  applicationTime := .afterCompilation
  add := fun decl stx kind => do
    unless kind == .global do
      throwError "invalid attribute `deferred_doc_check`, must be global"
    let key ←
      if let `(attr|deferred_doc_check $x) := stx then
        realizeGlobalConstNoOverload x
      else
        throwError "invalid `deferred_doc_check` syntax"
    modifyEnv (handlerExt.addEntry · (key, decl))
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77b882933c94fd0afa77c8c0a838edc9e6ea5ec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
