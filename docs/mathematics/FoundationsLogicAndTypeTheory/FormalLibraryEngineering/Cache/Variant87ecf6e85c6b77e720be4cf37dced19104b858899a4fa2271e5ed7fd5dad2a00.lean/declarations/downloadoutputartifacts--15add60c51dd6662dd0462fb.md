# downloadOutputArtifacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb89254c6e9a5d6379d7b31c8a51059c7dd8e4ca061e6d4c00ab85cd0ead337d",
  "kind": "def",
  "lexical_name": "downloadOutputArtifacts",
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
  "slug": "downloadoutputartifacts--15add60c51dd6662dd0462fb",
  "source": {
    "blob": "aed4ec582f23b3087e1ddaebb49715f2c9cef2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 993,
    "line": 986,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15add60c51dd6662dd0462fb1ae484862e26a9d650360381974153e0bb564b8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb89254c6e9a5d6379d7b31c8a51059c7dd8e4ca061e6d4c00ab85cd0ead337d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 986–993.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def downloadOutputArtifacts
  (map : CacheMap) (cache : Cache) (service : CacheService)
  (localScope : String) (remoteScope : CacheServiceScope) (force := false)
: LoggerIO Unit := do
  cache.writeMap localScope map service.name? remoteScope
  let descrs ← map.collectOutputDescrs
  service.downloadArtifacts descrs cache remoteScope force

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean#L986).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aed4ec582f23b3087e1ddaebb49715f2c9cef2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
