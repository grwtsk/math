# equilateralTriangleExactSeed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbb9066ef109507d8e64c04f3e8262f84b98c8567bc52e709c9526b7e69f5ffd",
  "kind": "def",
  "lexical_name": "equilateralTriangleExactSeed",
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
  "slug": "equilateraltriangleexactseed--c544c97d2e9268d3e6e8ad86",
  "source": {
    "blob": "7fc6165536bedea73d04753474c9b2b9e4bfc3b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c544c97d2e9268d3e6e8ad8680d9e5571d78f905f61b5a57a07f3c95f1d4b495",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbb9066ef109507d8e64c04f3e8262f84b98c8567bc52e709c9526b7e69f5ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equilateralTriangleExactSeed :
    EuclideanSeed EquilateralTriangleExactStatement where
  proposal := equilateralTriangleExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      1
      (by decide)
      "Book I, proposition 1"
      "Conditional exactness consequence; compass intersection existence is not claimed."
  ]
  dependencies := [
    equilateralCongruenceDependency,
    equilateralConstructionDependency
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc6165536bedea73d04753474c9b2b9e4bfc3b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
