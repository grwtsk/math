# carrierMultiplicity_eq_two_pow_codimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa0de0bc-849c-0d41-4c7e-9b95897ddf14",
  "kind": "theorem",
  "lexical_name": "carrierMultiplicity_eq_two_pow_codimension",
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
  "slug": "carriermultiplicity-eq-two-pow-codimension--d45209d464774f121f26c8f3",
  "source": {
    "blob": "10b920a549643b63e17288f645b1aa0806a49201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 142,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d45209d464774f121f26c8f3a736a3ce73be2e1d4f4cb351a2697c1702576ad0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa0de0bc-849c-0d41-4c7e-9b95897ddf14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carrierMultiplicity_eq_two_pow_codimension
    {size : Nat} {point : NormalizedPoint}
    (stratum : InteriorGridStratum size point) :
    carrierMultiplicity size point = 2 ^ stratum.codimension := by
  unfold carrierMultiplicity InteriorGridStratum.codimension
  cases stratum with
  | mk x y =>
    cases x with
    | cell xIndex xLower xUpper =>
      rw [axisCarriers_eq_singleton_of_cell xIndex xLower xUpper]
      cases y with
      | cell yIndex yLower yUpper =>
        rw [axisCarriers_eq_singleton_of_cell yIndex yLower yUpper]
        simp [InteriorAxisStratum.codimension]
      | internalBoundary yLeft yRight yAdjacent yEquation =>
        rw [axisCarriers_eq_pair_of_internalBoundary
          yLeft yRight yAdjacent yEquation]
        have unequal : yLeft ≠ yRight := by
          intro equality
          have values := congrArg Fin.val equality
          omega
        simp [InteriorAxisStratum.codimension, unequal]
    | internalBoundary xLeft xRight xAdjacent xEquation =>
      rw [axisCarriers_eq_pair_of_internalBoundary
        xLeft xRight xAdjacent xEquation]
      have xUnequal : xLeft ≠ xRight := by
        intro equality
        have values := congrArg Fin.val equality
        omega
      cases y with
      | cell yIndex yLower yUpper =>
        rw [axisCarriers_eq_singleton_of_cell yIndex yLower yUpper]
        simp [InteriorAxisStratum.codimension, xUnequal]
      | internalBoundary yLeft yRight yAdjacent yEquation =>
        rw [axisCarriers_eq_pair_of_internalBoundary
          yLeft yRight yAdjacent yEquation]
        have yUnequal : yLeft ≠ yRight := by
          intro equality
          have values := congrArg Fin.val equality
          omega
        simp [InteriorAxisStratum.codimension, xUnequal, yUnequal]


end BitMatrix.Geometry.CarrierGrid

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10b920a549643b63e17288f645b1aa0806a49201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
