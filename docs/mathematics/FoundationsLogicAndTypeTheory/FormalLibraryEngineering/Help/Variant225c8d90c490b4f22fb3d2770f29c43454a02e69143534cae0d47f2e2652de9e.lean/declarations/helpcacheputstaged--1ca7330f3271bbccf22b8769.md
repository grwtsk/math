# helpCachePutStaged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0aebe9142158634816a40214a9070985a70e04c3895606e2d261340bac92c517",
  "kind": "def",
  "lexical_name": "helpCachePutStaged",
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
  "slug": "helpcacheputstaged--1ca7330f3271bbccf22b8769",
  "source": {
    "blob": "e50471c35411bf2c77e05eaed2a37ad36a5bcd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 564,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ca7330f3271bbccf22b87696d5d66968225258f72cf34cc0154cb7d2ecda76e",
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

Occurrence: `declaration:0aebe9142158634816a40214a9070985a70e04c3895606e2d261340bac92c517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def helpCachePutStaged :=
"Upload build outputs from a staging directory to a remote service

USAGE:
  lake cache put-staged <staging-directory>

OPTIONS:
  --scope=<remote-scope>          verbatim scope
  --repo=<github-repo>            scope with repository + toolchain & platform
  --toolchain=<name>              with --repo, sets the toolchain
  --platform=<target-triple>      with --repo, sets the platform

Works like `lake cache put` but uploads outputs from the staging directory
instead of the Lake cache. Does not configure the workspace and thus does not
execute arbitrary user code. However, because of this, the package's platform
and toolchain settings will not be automatically detected and must be
specified manually via `--platform` and `--toolchain` (if desired)."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50471c35411bf2c77e05eaed2a37ad36a5bcd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
