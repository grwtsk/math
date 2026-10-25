# collect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b64fdb7904f5358fc0fc8e27aea1962e28969d51ade4bd12560c58d06ed2411a",
  "kind": "def",
  "lexical_name": "collect",
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
  "slug": "collect--4910aeb0471b5d37dfd955c9",
  "source": {
    "blob": "77b882933c94fd0afa77c8c0a838edc9e6ea5ec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4910aeb0471b5d37dfd955c99d81adaad88d4a32ba53468d2720ed0e88e2060f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b64fdb7904f5358fc0fc8e27aea1962e28969d51ade4bd12560c58d06ed2411a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def collect (env : Environment) (inPackage : Name → Bool) :
    Array (Name × DeferredCheck) := Id.run do
  let mut out := #[]
  for i in [0:env.header.moduleNames.size] do
    let mod := env.header.moduleNames[i]!
    if inPackage mod then
      out := out ++ (deferredCheckExt.getModuleEntries env i).map (mod, ·)
  let mod := env.mainModule
  if inPackage mod then
    out := out ++ (deferredCheckExt.getState env).map (mod, ·)
  return out

/--
Runs the deferred docstring checks owned by modules satisfying `inPackage`.

Returns the checks that failed together with the module they belong to and the error that each
produced. `#[]` indicates success.

Only checks that satisfy `shouldCheck` are run.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant60146bad62c3566f3a0187e37317774b3932110c5ed17d45aa6180dc9c555273.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77b882933c94fd0afa77c8c0a838edc9e6ea5ec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
