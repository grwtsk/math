# InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:486f0977-8271-fe0a-0a98-45b305ca6f69",
  "kind": "lemma",
  "lexical_name": "InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_inv_naturality",
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
  "slug": "injectiveresolution-isorightderivedtohomotopycategoryobj-inv-naturality--8100babd2573f8db3333404c",
  "source": {
    "blob": "185db28b4b6b93e2764550d6717ad79ef090a771",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8100babd2573f8db3333404c6e6dd2158a20476522b2e4da599ad08e8ef104ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:486f0977-8271-fe0a-0a98-45b305ca6f69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_inv_naturality
    {X Y : C} (f : X ⟶ Y) (I : InjectiveResolution X) (J : InjectiveResolution Y)
    (φ : I.cocomplex ⟶ J.cocomplex) (comm : I.ι.f 0 ≫ φ.f 0 = f ≫ J.ι.f 0)
    (F : C ⥤ D) [F.Additive] :
    (I.isoRightDerivedToHomotopyCategoryObj F).inv ≫ F.rightDerivedToHomotopyCategory.map f =
      (F.mapHomologicalComplex _ ⋙ HomotopyCategory.quotient _ _).map φ ≫
        (J.isoRightDerivedToHomotopyCategoryObj F).inv := by
    rw [← cancel_epi (I.isoRightDerivedToHomotopyCategoryObj F).hom, Iso.hom_inv_id_assoc]
    dsimp
    rw [← isoRightDerivedToHomotopyCategoryObj_hom_naturality_assoc f I J φ comm F,
      Iso.hom_inv_id, comp_id]

/-- The right derived functors of an additive functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `185db28b4b6b93e2764550d6717ad79ef090a771` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
