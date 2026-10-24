# invRotateIsoRotateRotateShiftFunctorNegOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bee7eae4f48197b258a404752e9b238ecf8c39b5ec68863111055078dded7ef",
  "kind": "def",
  "lexical_name": "invRotateIsoRotateRotateShiftFunctorNegOne",
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
  "slug": "invrotateisorotaterotateshiftfunctornegone--7eb59c1798ec8d89d56e4623",
  "source": {
    "blob": "d96955c04e428883705fcaa6549b88bfa9733bc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 148,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7eb59c1798ec8d89d56e462369ea5e18ca9433d09efdf6dfb1bfe466fe4735d1",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bee7eae4f48197b258a404752e9b238ecf8c39b5ec68863111055078dded7ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def invRotateIsoRotateRotateShiftFunctorNegOne :
    invRotate C ≅ rotate C ⋙ rotate C ⋙ Triangle.shiftFunctor C (-1) :=
  calc
    invRotate C ≅ invRotate C ⋙ 𝟭 _ := (Functor.rightUnitor _).symm
    _ ≅ invRotate C ⋙ Triangle.shiftFunctor C 0 :=
          Functor.isoWhiskerLeft _ (Triangle.shiftFunctorZero C).symm
    _ ≅ invRotate C ⋙ Triangle.shiftFunctor C 1 ⋙ Triangle.shiftFunctor C (-1) :=
          Functor.isoWhiskerLeft _ (Triangle.shiftFunctorAdd' C 1 (-1) 0 (add_neg_cancel 1))
    _ ≅ invRotate C ⋙ (rotate C ⋙ rotate C ⋙ rotate C) ⋙ Triangle.shiftFunctor C (-1) :=
          Functor.isoWhiskerLeft _ (Functor.isoWhiskerRight (rotateRotateRotateIso C).symm _)
    _ ≅ (invRotate C ⋙ rotate C) ⋙ rotate C ⋙ rotate C ⋙ Triangle.shiftFunctor C (-1) :=
          Functor.isoWhiskerLeft _ (Functor.associator _ _ _ ≪≫
            Functor.isoWhiskerLeft _ (Functor.associator _ _ _)) ≪≫ (Functor.associator _ _ _).symm
    _ ≅ 𝟭 _ ⋙ rotate C ⋙ rotate C ⋙ Triangle.shiftFunctor C (-1) :=
          Functor.isoWhiskerRight (triangleRotation C).counitIso _
    _ ≅ _ := Functor.leftUnitor _

namespace Triangle

set_option backward.isDefEq.respectTransparency false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96955c04e428883705fcaa6549b88bfa9733bc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
