# JobAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4c3f4d4b66b4d13670fcb84b5486a38d6e14d8399e48dd6dd7160c1474c5355",
  "kind": "inductive",
  "lexical_name": "JobAction",
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
  "slug": "jobaction--d9ded44f6eaae3227aaf1162",
  "source": {
    "blob": "1e7f69ac2a246ac2ad49aa172096da717ede3b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant31f5a99580d326523945dbf88f1e1270dff70f4a40577c1e5e85dd51db81d322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9ded44f6eaae3227aaf1162ddaa065fbdb7e45bf5baa94d9c468bda7dcad1ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant31f5a99580d326523945dbf88f1e1270dff70f4a40577c1e5e85dd51db81d322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4c3f4d4b66b4d13670fcb84b5486a38d6e14d8399e48dd6dd7160c1474c5355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive JobAction
/-- No information about this job's action is available. -/
| unknown
/-- Tried to reuse a cached build (e.g., can be set by `replayCachedIfUpToDate`). -/
| reuse
/-- Tried to replay a completed build action (e.g., can be set by `replayIfUpToDate`). -/
| replay
/-- Tried to unpack a build from an archive (e.g., unpacking a module `ltar`). -/
| unpack
/--
Tried to fetch a build from a remote store (e.g., set when downloading an artifact
on-demand from a cache service in `buildArtifactUnlessUpToDate`).
-/
| fetch
/-- Tried to perform a build action (e.g., set by `buildAction`). -/
| build
deriving Inhabited, Repr, DecidableEq, Ord

namespace JobAction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant31f5a99580d326523945dbf88f1e1270dff70f4a40577c1e5e85dd51db81d322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant31f5a99580d326523945dbf88f1e1270dff70f4a40577c1e5e85dd51db81d322.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e7f69ac2a246ac2ad49aa172096da717ede3b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
