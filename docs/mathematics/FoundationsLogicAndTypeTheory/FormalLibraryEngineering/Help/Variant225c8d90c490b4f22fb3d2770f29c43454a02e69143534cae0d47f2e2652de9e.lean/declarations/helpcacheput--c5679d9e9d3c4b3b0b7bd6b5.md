# helpCachePut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a056d28ae43bda141227e668d1253118e52a6747b4269651e42254c79cd6b0b",
  "kind": "def",
  "lexical_name": "helpCachePut",
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
  "slug": "helpcacheput--c5679d9e9d3c4b3b0b7bd6b5",
  "source": {
    "blob": "e50471c35411bf2c77e05eaed2a37ad36a5bcd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 473,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5679d9e9d3c4b3b0b7bd6b522c4539383b8beb88429f646b204b831ad28e814",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a056d28ae43bda141227e668d1253118e52a6747b4269651e42254c79cd6b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def helpCachePut :=
"Upload build outputs from the Lake cache to a remote service

USAGE:
  lake cache put <mappings> <scope-option>

Uploads the input-to-output mappings contained in the specified file along
with the corresponding output artifacts to a remote cache. The cache service
used can be specified via the `--service` option. If not specified, Lake will use
the system default, or error if none is configured. See the help page of
`lake cache services` for more information on how to configure services.

Files are uploaded using the AWS Signature Version 4 authentication protocol
via `curl`. Thus, the service should generally be an S3-compatible bucket. The
authentication key is set via the `LAKE_CACHE_KEY` environment variable.

Since Lake does not currently use cryptographically secure hashes for
artifacts and outputs, uploads to the cache are prefixed with a scope to avoid
clashes. This scope is configured with the following options:

  --scope=<remote-scope>          sets a fixed scope
  --repo=<github-repo>            uses the repository + toolchain & platform
  --toolchain=<name>              with --repo, sets the toolchain
  --platform=<target-triple>      with --repo, sets the platform

At least one of `--scope` or `--repo` must be set. If `--repo` is used, Lake
will produce a scope by augmenting the repository with toolchain and platform
information as it deems necessary. If `--scope` is set, Lake will use the
specified scope verbatim.

Artifacts are uploaded to the artifact endpoint with a file name derived
from their Lake content hash (and prefixed by the repository or scope).
The mappings file is uploaded to the revision endpoint with a file name
derived from the package's current Git revision (and prefixed by the
full scope). As such, the command will warn if the work tree currently
has changes."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50471c35411bf2c77e05eaed2a37ad36a5bcd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
