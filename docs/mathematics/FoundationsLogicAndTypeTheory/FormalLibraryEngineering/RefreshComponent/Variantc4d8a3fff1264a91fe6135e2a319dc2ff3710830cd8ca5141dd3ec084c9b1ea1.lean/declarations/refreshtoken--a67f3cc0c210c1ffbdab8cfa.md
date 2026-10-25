# RefreshToken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d585c09b9caa7e537c4a84735c9ed7e20e7138a3c53d7aed62148c41d24d5f18",
  "kind": "structure",
  "lexical_name": "RefreshToken",
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
  "slug": "refreshtoken--a67f3cc0c210c1ffbdab8cfa",
  "source": {
    "blob": "8f91c21877717379da5d6aaec126cc51bcb97da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a67f3cc0c210c1ffbdab8cfacedf16bb701b3b1f40f4779a6c76b3609f6251c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d585c09b9caa7e537c4a84735c9ed7e20e7138a3c53d7aed62148c41d24d5f18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RefreshToken where
  state : IO.Ref RefreshState
  /-- If set, the `RefreshComponent` is no longer displayed in the UI.
  The `RefreshToken` should be discarded, and any associated thread should exit. -/
  cancelTk : IO.CancelToken
  /-- The promise that `RefreshState.next` waits for.

  If we drop the `RefreshToken`, and hence this promise,
  `RefreshState.next` will resolve to `none`.
  This ensures that no `awaitRefresh` call is left hanging forever
  when all threads holding onto this `RefreshToken` have exited. -/
  private promise : IO.Ref (IO.Promise Unit)

/-- Create a `RefreshToken` with an initial HTML tree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f91c21877717379da5d6aaec126cc51bcb97da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
