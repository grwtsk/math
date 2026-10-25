# helpCacheServices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6e2e46f718f274e817f8dacf079972f7727d803b8082c95f8b659e1ec801777",
  "kind": "def",
  "lexical_name": "helpCacheServices",
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
  "slug": "helpcacheservices--cef67edb3b146c40df842c02",
  "source": {
    "blob": "0771b93d8ef6684289739644590faee450775272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 584,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cef67edb3b146c40df842c020180cdc85407b4f0701d95c7280c069f1518c4e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6e2e46f718f274e817f8dacf079972f7727d803b8082c95f8b659e1ec801777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def helpCacheServices :=
"Print configured remote cache services

USAGE:
  lake cache services

Prints the name of each configured remote cache services (one per line).
Additional services can be added by modifying the system Lake configuration.
The exact location of the this configuration file is system dependent and can
be set by `LAKE_CONFIG`, but it is usually located at `~/.lake/config.toml`.

The configuration of the system cache could look something like the following:

  cache.defaultService = \"my-s3\"
  cache.defaultUploadService = \"my-s3\"

  [[cache.service]]
  name = \"my-s3\"
  kind = \"s3\"
  artifactEndpoint = \"https://my-s3.com/a0\"
  revisionEndpoint = \"https://my-s3.com/r0\"

If no `cache.defaultService` is configured, Lake will use Reservoir by default."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0771b93d8ef6684289739644590faee450775272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
