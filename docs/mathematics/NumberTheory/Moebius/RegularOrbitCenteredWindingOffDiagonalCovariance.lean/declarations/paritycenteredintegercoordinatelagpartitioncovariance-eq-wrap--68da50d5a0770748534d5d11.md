# parityCenteredIntegerCoordinateLagPartitionCovariance_eq_wrap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:924c3295-ef39-9059-9182-eaec417ef601",
  "kind": "theorem",
  "lexical_name": "parityCenteredIntegerCoordinateLagPartitionCovariance_eq_wrap",
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
  "slug": "paritycenteredintegercoordinatelagpartitioncovariance-eq-wrap--68da50d5a0770748534d5d11",
  "source": {
    "blob": "eb144670f6e44e124345cb33ae420b2d948377fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 265,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68da50d5a0770748534d5d1191c854cb6a65729b96d611dad3fead37a9325294",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:924c3295-ef39-9059-9182-eaec417ef601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityCenteredIntegerCoordinateLagPartitionCovariance_eq_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateLagPartitionCovariance b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  rw [← parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_lagPartition]
  exact parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap b d r H

/-- Four-family absolute off-diagonal covariance at one modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb144670f6e44e124345cb33ae420b2d948377fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
