# normalizePublishDiagnosticsParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3c4360dddcd53e17990aa3a37beaef6d6f7e6eb8050e5913c19cd93e84cb268",
  "kind": "def",
  "lexical_name": "normalizePublishDiagnosticsParams",
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
  "slug": "normalizepublishdiagnosticsparams--cf3b80319412a43ba4f9d7a6",
  "source": {
    "blob": "3e16086d5ea9dd3bc1f7479e4241c09c5ef78204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf3b80319412a43ba4f9d7a6296525be89a4584c749bf4d7b66ceb4641e40daf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3c4360dddcd53e17990aa3a37beaef6d6f7e6eb8050e5913c19cd93e84cb268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizePublishDiagnosticsParams (p : PublishDiagnosticsParams) :
    PublishDiagnosticsParams := {
  p with
  diagnostics :=
    -- Sort diagnostics by range and message to erase non-determinism in the order of diagnostics
    -- induced by parallelism. This isn't complete, but it will hopefully be plenty for all tests.
    let sorted := p.diagnostics.toList.mergeSort fun d1 d2 =>
      compare d1.fullRange d2.fullRange |>.then (compare d1.message d2.message) |>.isLE
    sorted.toArray
}

/--
Merges a new `textDocument/publishDiagnostics` notification into a previously accumulated one.

- If there is no previous notification, the new one is used as-is.
- If `isIncremental?` is `true`, the new diagnostics are appended.
- Otherwise the new notification replaces the previous one.

The returned params always have `isIncremental? := some false` since they represent the full
accumulated set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e16086d5ea9dd3bc1f7479e4241c09c5ef78204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
