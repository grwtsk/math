# DefViewElabHeader

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:666c3199cdcae7a96bc15616f1540c4e106b01731da3a51a6ddf4ff61a99aece",
  "kind": "structure",
  "lexical_name": "DefViewElabHeader",
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
  "slug": "defviewelabheader--677d524b3d8c5b6681ec4005",
  "source": {
    "blob": "81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:677d524b3d8c5b6681ec40059159febf013126c8684acedfc43a06c7150b3eed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:666c3199cdcae7a96bc15616f1540c4e106b01731da3a51a6ddf4ff61a99aece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DefViewElabHeader extends DefView, DefViewElabHeaderData where
  /--
  Snapshot for incremental processing of top-level tactic block, if any.

  Invariant: if the bundle's `old?` is set, then the state *up to the start* of the tactic block is
  unchanged, i.e. reuse is possible.
  -/
  tacSnap? : Option (Language.SnapshotBundle Tactic.TacticParsedSnapshot)
  /--
  Snapshot for incremental processing of definition body.

  Invariant: if the bundle's `old?` is set, then elaboration of the body is guaranteed to result in
  the same elaboration result and state, i.e. reuse is possible.
  -/
  bodySnap? : Option (Language.SnapshotBundle (Option BodyProcessedSnapshot))
  deriving Inhabited

namespace Term
open Meta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
