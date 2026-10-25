# getMatchingConstants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:174c38168c7912b8bf93a5d83b582c11dd2edc516babdbfef4143b638d0d7daa",
  "kind": "def",
  "lexical_name": "getMatchingConstants",
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
  "slug": "getmatchingconstants--536214087a638d1e303022d9",
  "source": {
    "blob": "dc6accd958ce4d493fa3d063aab9368d458b17dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvSearch/Variant6609e5283caad2b016ccb6ee5bd06936b47bd5bc9aaeeb5e851665d14966e738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:536214087a638d1e303022d9083fae5f52c29fa9be3ca8853ef932a63e52b938",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvSearch/Variant6609e5283caad2b016ccb6ee5bd06936b47bd5bc9aaeeb5e851665d14966e738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:174c38168c7912b8bf93a5d83b582c11dd2edc516babdbfef4143b638d0d7daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMatchingConstants {m} [Monad m] [MonadEnv m]
    (p : ConstantInfo → m Bool)
    (includeImports := true)
    : m (Array ConstantInfo) := do
  let matches_ ←
    if includeImports then
      (← getEnv).constants.map₁.foldM (init := #[]) check
    else
      pure #[]
  (← getEnv).constants.map₂.foldlM (init := matches_) check
where
  /-- Check constant should be returned -/
  @[nolint unusedArguments]
  check matches_ (_name : Name) cinfo := do
    let include ← p cinfo
    if include then
      pure $ matches_.push cinfo
    else
      pure matches_
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvSearch/Variant6609e5283caad2b016ccb6ee5bd06936b47bd5bc9aaeeb5e851665d14966e738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvSearch/Variant6609e5283caad2b016ccb6ee5bd06936b47bd5bc9aaeeb5e851665d14966e738.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc6accd958ce4d493fa3d063aab9368d458b17dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
