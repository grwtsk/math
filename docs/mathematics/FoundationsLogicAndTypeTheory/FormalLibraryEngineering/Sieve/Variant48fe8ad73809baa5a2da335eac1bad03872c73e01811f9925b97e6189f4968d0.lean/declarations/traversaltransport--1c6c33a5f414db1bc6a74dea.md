# TraversalTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5436a1f3e38951e386eb1f75ab0eef63cfd3c0d8f3ea5b0e410561272943ae71",
  "kind": "structure",
  "lexical_name": "TraversalTransport",
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
  "slug": "traversaltransport--1c6c33a5f414db1bc6a74dea",
  "source": {
    "blob": "747203adad52fdda83b4246f3ee73b2bde9aab9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c6c33a5f414db1bc6a74dea4d29118ab7d3dad1dc5fe17fd33f0d45ae65a698",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5436a1f3e38951e386eb1f75ab0eef63cfd3c0d8f3ea5b0e410561272943ae71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TraversalTransport
    (Edge : Type uEdge) (FixedEdge : Type vEdge)
    (Factorization : Type uFactor) (FixedFactorization : Type vFactor) where
  mapEdge : Edge → FixedEdge
  mapFactorization : Factorization → FixedFactorization

/--
A typed transport between factoring sieves and their occurrence relations.

Acceptance and occurrence correspond along the displayed maps.  The witness
does not claim that either map is surjective, so it does not rule out target
factorizations or occurrences outside the image.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747203adad52fdda83b4246f3ee73b2bde9aab9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
