# ModelCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0974fc4fde943ad7e3a9cb2870e57e074d092ad5d6743a34984a341b4acad0ac",
  "kind": "class",
  "lexical_name": "ModelCategory",
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
  "slug": "modelcategory--21b7808ea6fa7c674ccd0deb",
  "source": {
    "blob": "3792ed8674c489f86c0fd0a258c6fcba368cc1a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant026ca3f5b57a6f94e3f1444f68616ee79a65baffc20256cb5c3132b6c4517d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21b7808ea6fa7c674ccd0deb92abb7e1bf3d844a0ae2e6c7d84dcdf3f29b2317",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant026ca3f5b57a6f94e3f1444f68616ee79a65baffc20256cb5c3132b6c4517d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0974fc4fde943ad7e3a9cb2870e57e074d092ad5d6743a34984a341b4acad0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ModelCategory where
  categoryWithFibrations : CategoryWithFibrations C := by infer_instance
  categoryWithCofibrations : CategoryWithCofibrations C := by infer_instance
  categoryWithWeakEquivalences : CategoryWithWeakEquivalences C := by infer_instance
  cm1a : HasFiniteLimits C := by infer_instance
  cm1b : HasFiniteColimits C := by infer_instance
  cm2 : (weakEquivalences C).HasTwoOutOfThreeProperty := by infer_instance
  cm3a : (weakEquivalences C).IsStableUnderRetracts := by infer_instance
  cm3b : (fibrations C).IsStableUnderRetracts := by infer_instance
  cm3c : (cofibrations C).IsStableUnderRetracts := by infer_instance
  cm4a {A B X Y : C} (i : A ⟶ B) (p : X ⟶ Y) [Cofibration i] [WeakEquivalence i] [Fibration p] :
      HasLiftingProperty i p := by intros; infer_instance
  cm4b {A B X Y : C} (i : A ⟶ B) (p : X ⟶ Y) [Cofibration i] [Fibration p] [WeakEquivalence p] :
      HasLiftingProperty i p := by intros; infer_instance
  cm5a : MorphismProperty.HasFactorization (trivialCofibrations C) (fibrations C) := by
    infer_instance
  cm5b : MorphismProperty.HasFactorization (cofibrations C) (trivialFibrations C) := by
    infer_instance

namespace ModelCategory

attribute [instance] categoryWithFibrations categoryWithCofibrations categoryWithWeakEquivalences
  cm1a cm1b cm2 cm3a cm3b cm3c cm4a cm4b cm5a cm5b

end ModelCategory

end HomotopicalAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant026ca3f5b57a6f94e3f1444f68616ee79a65baffc20256cb5c3132b6c4517d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant026ca3f5b57a6f94e3f1444f68616ee79a65baffc20256cb5c3132b6c4517d94.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3792ed8674c489f86c0fd0a258c6fcba368cc1a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
