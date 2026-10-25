# helpCacheGet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37b72a0b2637993f9ff5ea5d94674b164e184c9454dbfaa8557bb5a1dcf92fc5",
  "kind": "def",
  "lexical_name": "helpCacheGet",
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
  "slug": "helpcacheget--a5e85725ff29844064fb05f0",
  "source": {
    "blob": "0771b93d8ef6684289739644590faee450775272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5e85725ff29844064fb05f0de53dcd775267ca7c71c5e2c7f5dea29f6f87a1e",
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

Occurrence: `declaration:37b72a0b2637993f9ff5ea5d94674b164e184c9454dbfaa8557bb5a1dcf92fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def helpCacheGet :=
"Download build outputs from a remote service into the Lake cache

USAGE:
  lake cache get [<mappings>]

OPTIONS:
  --max-revs=<n>                  backtrack up to n revisions (default: 100)
  --rev=<commit-hash>             uses this exact revision to lookup artifacts
  --service=<name>                cache service to fetch from
  --repo=<github-repo>            GitHub repository of the package or a fork
  --platform=<target-triple>      with Reservoir or --repo, sets the platform
  --toolchain=<name>              with Reservoir or --repo, sets the toolchain
  --scope=<remote-scope>          scope for a custom endpoint
  --mappings-only                 only download mappings, delay artifacts
  --force-download                redownload existing files

Downloads build outputs for packages in the workspace from a remote cache
service. The cache service used can be specified via the `--service` option.
Otherwise, Lake will the system default, or, if none is configured, Reservoir.
See `lake cache services` for more information on how to configure services.

If an input-to-outputs mappings file, `--scope`, or `--repo` is provided,
Lake will download build outputs for the root package. Otherwise, it will use
Reservoir to download outputs for each dependency in the workspace (in order).
Non-Reservoir dependencies will be skipped.

To determine what to download, Lake searches for input-to-output mappings for
a given build of the package via the cache service. This mapping is identified
by a Git revision and prefixed with a scope derived from the package's name,
GitHub repository, Lean toolchain, and current platform. The exact configuration
can be customized using options.

For Reservoir, setting `--repo` will cause Lake to lookup outputs for the root
package by a repository name, rather than the package's. This can be used to
download outputs for a fork of the Reservoir package (if such artifacts are
available). The `--platform` and `--toolchain` options can be used to download
artifacts for a different platform/toolchain configuration than Lake detects.
For a custom endpoint, the full prefix Lake uses can be set via  `--scope`.

If `--rev` is not set, Lake uses the package's current revision to lookup
artifacts. If no mappings are found, Lake will backtrack the Git history up to
`--max-revs`, looking for a revision with mappings. If `--max-revs` is 0, Lake
will search the repository's entire history (or as far as Git will allow).

By default, Lake will download both the input-to-output mappings and the
output artifacts for a package. By using `--mappings-only`, Lake will only
download the mappings and delay downloading artifacts until they are needed.

If a download for an artifact fails or the download process for a whole
package fails, Lake will report this and continue on to the next. Once done,
if any download failed, Lake will exit with a nonzero status code."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0771b93d8ef6684289739644590faee450775272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
