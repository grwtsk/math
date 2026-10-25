# CancellationToken.State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:160f42c0d30bbeb23042e96913dd2e3be58f66b7df2a3b90d0ab8a0002a98381",
  "kind": "structure",
  "lexical_name": "CancellationToken.State",
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
  "slug": "cancellationtoken-state--b810f36ce706b7fb78705e9b",
  "source": {
    "blob": "5d37997ffa834fc738a57d880093be0edae4c4fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b810f36ce706b7fb78705e9bcb882414c9f918c957940df0e522af5c5a9463e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:160f42c0d30bbeb23042e96913dd2e3be58f66b7df2a3b90d0ab8a0002a98381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CancellationToken.State where
  /--
  The cancellation reason if cancelled, none otherwise.
  -/
  reason : Option CancellationReason

  /--
  Consumers that are blocked waiting for cancellation.
  --/
  consumers : Std.Queue (CancellationToken.Consumer)

/--
A cancellation token is a synchronization primitive that allows multiple consumers to wait
until cancellation is requested.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d37997ffa834fc738a57d880093be0edae4c4fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
