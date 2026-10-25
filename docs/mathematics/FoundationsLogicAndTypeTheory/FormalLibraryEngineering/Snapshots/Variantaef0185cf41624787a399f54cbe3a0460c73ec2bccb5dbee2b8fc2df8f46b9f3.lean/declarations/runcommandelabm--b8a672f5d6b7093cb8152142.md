# runCommandElabM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b7bdc6ba62a1a156d3e0da33dfbed42d910089633f87134de0f1d3a4b0c7f9d",
  "kind": "def",
  "lexical_name": "runCommandElabM",
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
  "slug": "runcommandelabm--b8a672f5d6b7093cb8152142",
  "source": {
    "blob": "3d7e2b804b64f841b93ff9e12c0e6ad106d7a551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshots/Variantaef0185cf41624787a399f54cbe3a0460c73ec2bccb5dbee2b8fc2df8f46b9f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8a672f5d6b7093cb81521425d58ce6f2e22e1552c92abbc2acad3c358346526",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshots/Variantaef0185cf41624787a399f54cbe3a0460c73ec2bccb5dbee2b8fc2df8f46b9f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b7bdc6ba62a1a156d3e0da33dfbed42d910089633f87134de0f1d3a4b0c7f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runCommandElabM (snap : Snapshot) (doc : DocumentMeta) (c : CommandElabM α) : EIO Exception α := do
  let ctx : Command.Context := {
    cmdPos := snap.stx.getPos? |>.getD 0,
    fileName := doc.uri,
    fileMap := doc.text,
    snap? := none
    cancelTk? := none
  }
  c.run ctx |>.run' snap.cmdState

/-- Run a `CoreM` computation using the data in the given snapshot.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshots/Variantaef0185cf41624787a399f54cbe3a0460c73ec2bccb5dbee2b8fc2df8f46b9f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshots/Variantaef0185cf41624787a399f54cbe3a0460c73ec2bccb5dbee2b8fc2df8f46b9f3.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7e2b804b64f841b93ff9e12c0e6ad106d7a551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
