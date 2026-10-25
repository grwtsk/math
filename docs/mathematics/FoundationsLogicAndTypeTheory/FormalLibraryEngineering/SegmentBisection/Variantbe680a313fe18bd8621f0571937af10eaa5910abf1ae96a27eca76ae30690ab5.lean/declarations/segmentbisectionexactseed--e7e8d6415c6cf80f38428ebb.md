# segmentBisectionExactSeed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a8a1b1f2b4be39355f100fddca3ffd9758cac914838323d81bba9583b00b9c0",
  "kind": "def",
  "lexical_name": "segmentBisectionExactSeed",
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
  "slug": "segmentbisectionexactseed--e7e8d6415c6cf80f38428ebb",
  "source": {
    "blob": "28a3d74e6bcd497389fcf39aa8dec59d2a84baee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variantbe680a313fe18bd8621f0571937af10eaa5910abf1ae96a27eca76ae30690ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7e8d6415c6cf80f38428ebbcae552de23020844d3b4b71e36619992517ef992",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variantbe680a313fe18bd8621f0571937af10eaa5910abf1ae96a27eca76ae30690ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a8a1b1f2b4be39355f100fddca3ffd9758cac914838323d81bba9583b00b9c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def segmentBisectionExactSeed :
    EuclideanSeed SegmentBisectionExactStatement where
  proposal := segmentBisectionExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      10
      (by decide)
      "Book I, proposition 10"
      "Conditional exactness consequence; construction existence is not claimed."
  ]
  dependencies := [
    bisectionOrderDependency,
    bisectionCongruenceDependency,
    bisectionConstructionDependency
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variantbe680a313fe18bd8621f0571937af10eaa5910abf1ae96a27eca76ae30690ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variantbe680a313fe18bd8621f0571937af10eaa5910abf1ae96a27eca76ae30690ab5.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a3d74e6bcd497389fcf39aa8dec59d2a84baee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
