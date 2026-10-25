# JobAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:914071175504c5c059385568563e3d0083e956bb1c9434dd05f8fd969bc03cc1",
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
  "slug": "jobaction--a38fcbd32ad64001ba11002b",
  "source": {
    "blob": "db9d21fc4ba041b26d09bd11818872f1c2c3f05c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b1720c37941328dab0912f4bb216a77ae965c3e57e217dddaf614b0a4e7ea57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a38fcbd32ad64001ba11002b5ff04bca5b831baaa649644f43e645d8e5b41e32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b1720c37941328dab0912f4bb216a77ae965c3e57e217dddaf614b0a4e7ea57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:914071175504c5c059385568563e3d0083e956bb1c9434dd05f8fd969bc03cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–56.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b1720c37941328dab0912f4bb216a77ae965c3e57e217dddaf614b0a4e7ea57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b1720c37941328dab0912f4bb216a77ae965c3e57e217dddaf614b0a4e7ea57.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db9d21fc4ba041b26d09bd11818872f1c2c3f05c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
