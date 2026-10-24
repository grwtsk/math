# AffineTargetMorphismProperty.diagonal_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7526b507-1b38-40a4-1ba9-66cd5ce26753",
  "kind": "theorem",
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
  "slug": "affinetargetmorphismproperty-diagonal-respectsiso--d7095451e716cd3afc3f556d",
  "source": {
    "blob": "e46573ee1ece9b543a3af061d0730edcca8f6617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 509,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7095451e716cd3afc3f556d96498f8d2c410dd241ddd351b127451fb5823b3b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7526b507-1b38-40a4-1ba9-66cd5ce26753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineTargetMorphismProperty.diagonal_respectsIso (P : AffineTargetMorphismProperty)
    (hP : P.toProperty.RespectsIso) : P.diagonal.toProperty.RespectsIso := by
  delta AffineTargetMorphismProperty.diagonal
  apply AffineTargetMorphismProperty.respectsIso_mk
  · introv H _ _
    rw [pullback.mapDesc_comp, affine_cancel_left_isIso hP, affine_cancel_right_isIso hP]
    -- Porting note : add the following two instances
    have i1 : IsOpenImmersion (f₁ ≫ e.hom) := PresheafedSpace.IsOpenImmersion.comp _ _
    have i2 : IsOpenImmersion (f₂ ≫ e.hom) := PresheafedSpace.IsOpenImmersion.comp _ _
    apply H
  · introv H _ _
    -- Porting note : add the following two instances
    have _ : IsAffine Z := isAffineOfIso e.inv
    rw [pullback.mapDesc_comp, affine_cancel_right_isIso hP]
    apply H
#align algebraic_geometry.affine_target_morphism_property.diagonal_respects_iso AlgebraicGeometry.AffineTargetMorphismProperty.diagonal_respectsIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46573ee1ece9b543a3af061d0730edcca8f6617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
