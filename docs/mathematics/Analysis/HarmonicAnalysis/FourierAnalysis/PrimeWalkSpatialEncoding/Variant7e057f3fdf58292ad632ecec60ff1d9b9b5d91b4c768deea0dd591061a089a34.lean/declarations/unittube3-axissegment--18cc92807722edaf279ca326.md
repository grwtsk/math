# UnitTube3.axisSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b46f9d82048b8bedd544dc658c3e030cb5572f80c759541dfddf3ec85c9f133f",
  "kind": "def",
  "lexical_name": "UnitTube3.axisSegment",
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
  "slug": "unittube3-axissegment--18cc92807722edaf279ca326",
  "source": {
    "blob": "9d1c4ad28bb26b4e9c16fba5dd9227b888e7e15e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18cc92807722edaf279ca326c3f3c38aa197ff2367eb10b567c1215ef067bfb5",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b46f9d82048b8bedd544dc658c3e030cb5572f80c759541dfddf3ec85c9f133f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UnitTube3.axisSegment (tube : UnitTube3) : Set SpatialPoint :=
  segment ℝ tube.base (tube.base + tube.direction)

/-- The closed `δ`-neighbourhood of the tube's unit segment.

The diameter of a cross-section is `2δ`; this is the standard harmless
constant-factor convention for a `δ`-tube. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d1c4ad28bb26b4e9c16fba5dd9227b888e7e15e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
