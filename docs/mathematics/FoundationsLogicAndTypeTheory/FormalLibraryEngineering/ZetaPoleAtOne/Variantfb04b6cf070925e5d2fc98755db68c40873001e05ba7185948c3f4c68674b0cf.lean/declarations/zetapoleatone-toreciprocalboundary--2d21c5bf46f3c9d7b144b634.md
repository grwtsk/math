# ZetaPoleAtOne.toReciprocalBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:733eea2ca2b6d3c2285a860b94215824ad8569156be9cb9a1c92d39374c51992",
  "kind": "def",
  "lexical_name": "ZetaPoleAtOne.toReciprocalBoundary",
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
  "slug": "zetapoleatone-toreciprocalboundary--2d21c5bf46f3c9d7b144b634",
  "source": {
    "blob": "b7304dc33ed6a548bb892d2c84fb56fbfd23b00c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d21c5bf46f3c9d7b144b6346aca41c712b32168cd0ed5b982cbf8d3eebe5dbf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:733eea2ca2b6d3c2285a860b94215824ad8569156be9cb9a1c92d39374c51992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ZetaPoleAtOne.toReciprocalBoundary
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    ZetaReciprocalBoundary Object Point :=
  { boundary := Z.boundary
    zeta := Z.zeta
    reciprocalZeta := Z.reciprocalZeta
    one := Z.one
    reciprocalZeta_eq := Z.reciprocalZeta_eq }

/-- The conversion preserves the reciprocal-zero consequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZetaPoleAtOne/Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7304dc33ed6a548bb892d2c84fb56fbfd23b00c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
