# RefreshToken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9ed3445024a44cc4d63040c0f26a05cc4e208086f587ffd2d20aa89fea47225",
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
  "slug": "refreshtoken--edcb659ccf900edeeb22c179",
  "source": {
    "blob": "6634285cd81a1761c5ffef883b5f3e534b1d4750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edcb659ccf900edeeb22c1798ea8aa9cd5acfc1deca4f168ac803f506f1d3a0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9ed3445024a44cc4d63040c0f26a05cc4e208086f587ffd2d20aa89fea47225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–176.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6634285cd81a1761c5ffef883b5f3e534b1d4750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
