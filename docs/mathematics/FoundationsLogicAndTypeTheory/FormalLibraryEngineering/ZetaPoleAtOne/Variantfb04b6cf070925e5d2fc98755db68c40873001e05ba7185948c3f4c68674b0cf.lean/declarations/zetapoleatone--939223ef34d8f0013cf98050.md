# ZetaPoleAtOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e78f206d842b8e37882d596a3cb63ed28d522975674f74b3ff3849c7829af20",
  "kind": "structure",
  "lexical_name": "ZetaPoleAtOne",
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
  "slug": "zetapoleatone--939223ef34d8f0013cf98050",
  "source": {
    "blob": "b7304dc33ed6a548bb892d2c84fb56fbfd23b00c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:939223ef34d8f0013cf9805019b6b6e526227c93b5f72f406418a6c2239f91e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e78f206d842b8e37882d596a3cb63ed28d522975674f74b3ff3849c7829af20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZetaPoleAtOne (Object Point : Type u) where
  boundary : ReciprocalBoundary Object Point
  zeta : Object
  reciprocalZeta : Object
  one : Point
  reciprocalZeta_eq : reciprocalZeta = boundary.reciprocal zeta
  poleAtOne : boundary.poleAt zeta one

/-- The pole-at-one witness contains the pole predicate directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7304dc33ed6a548bb892d2c84fb56fbfd23b00c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
