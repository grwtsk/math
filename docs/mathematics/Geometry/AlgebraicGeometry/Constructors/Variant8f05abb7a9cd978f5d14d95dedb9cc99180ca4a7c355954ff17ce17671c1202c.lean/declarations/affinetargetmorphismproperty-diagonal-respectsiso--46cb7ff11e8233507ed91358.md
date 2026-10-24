# AffineTargetMorphismProperty.diagonal_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3ca2e9da59e28d6e8ca8702f0f92cc07ea68c06d6e7a6d6cdd480d2c3c0b493",
  "kind": "instance",
  "lexical_name": "AffineTargetMorphismProperty.diagonal_respectsIso",
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
  "slug": "affinetargetmorphismproperty-diagonal-respectsiso--46cb7ff11e8233507ed91358",
  "source": {
    "blob": "4a81aaf4b4e62285368bce04e7e98775eb744ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46cb7ff11e8233507ed9135827137cf55f1c1f623976f2246adb2b178bfce3eb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3ca2e9da59e28d6e8ca8702f0f92cc07ea68c06d6e7a6d6cdd480d2c3c0b493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AffineTargetMorphismProperty.diagonal_respectsIso (P : AffineTargetMorphismProperty)
    [P.toProperty.RespectsIso] : P.diagonal.toProperty.RespectsIso := by
  delta AffineTargetMorphismProperty.diagonal
  apply AffineTargetMorphismProperty.respectsIso_mk
  · introv H _ _
    rw [pullback.mapDesc_comp, P.cancel_left_of_respectsIso, P.cancel_right_of_respectsIso]
    apply H
  · introv H _ _
    rw [pullback.mapDesc_comp, P.cancel_right_of_respectsIso]
    apply H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a81aaf4b4e62285368bce04e7e98775eb744ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
