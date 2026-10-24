# angle_lt_pi_of_not_collinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20169fe2-bc19-12e5-25b9-337b4a84ca00",
  "kind": "theorem",
  "lexical_name": "angle_lt_pi_of_not_collinear",
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
  "slug": "angle-lt-pi-of-not-collinear--d60978c83fd8a8bfec1428a7",
  "source": {
    "blob": "6c6c1789da60121d028146cf736c1fa8f3482873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 483,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d60978c83fd8a8bfec1428a70346431bbfd9f4be072abab09156106dc116772e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20169fe2-bc19-12e5-25b9-337b4a84ca00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_lt_pi_of_not_collinear {p₁ p₂ p₃ : P} (h : ¬Collinear ℝ ({p₁, p₂, p₃} : Set P)) :
    ∠ p₁ p₂ p₃ < π :=
  (angle_le_pi _ _ _).lt_of_ne <| angle_ne_pi_of_not_collinear h

/-- The cosine of the angle between three points is 1 if and only if the angle is 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6c1789da60121d028146cf736c1fa8f3482873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
