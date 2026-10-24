# NatTrans.commShift_iso_hom_of_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53d1e8821c36615a3883df312ff869f9b26f358e7303aa3037b161e0158c2956",
  "kind": "instance",
  "lexical_name": "NatTrans.commShift_iso_hom_of_localization",
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
  "slug": "nattrans-commshift-iso-hom-of-localization--d7a25242867630f6a7aca42a",
  "source": {
    "blob": "b0162f9929b9bb912004f088fe06061f882d2e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7a25242867630f6a7aca42adf5ca1e52bf0bc99466e13f1a1908d60a5fa3d7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53d1e8821c36615a3883df312ff869f9b26f358e7303aa3037b161e0158c2956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NatTrans.commShift_iso_hom_of_localization :
    letI := Functor.commShiftOfLocalization L W A F F'
    NatTrans.CommShift (Lifting.iso L W F F').hom A := by
  let := Functor.commShiftOfLocalization L W A F F'
  constructor
  intro a
  ext X
  simp only [comp_app, Functor.whiskerRight_app, Functor.whiskerLeft_app,
    Functor.commShiftIso_comp_hom_app,
    Functor.commShiftOfLocalization_iso_hom_app,
    Category.assoc, ← Functor.map_comp, ← Functor.map_comp_assoc,
    Iso.hom_inv_id_app, Functor.map_id, Iso.inv_hom_id_app,
    Category.comp_id, Category.id_comp, Functor.comp_obj]

end

namespace LocalizerMorphism

open Localization

variable {C₁ C₂ : Type*} [Category* C₁] [Category* C₂]
  {W₁ : MorphismProperty C₁} {W₂ : MorphismProperty C₂} (Φ : LocalizerMorphism W₁ W₂)
  {M : Type*} [AddMonoid M] [HasShift C₁ M] [HasShift C₂ M]
  [Φ.functor.CommShift M]
  {D₁ D₂ : Type*} [Category* D₁] [Category* D₂]
  (L₁ : C₁ ⥤ D₁) [L₁.IsLocalization W₁] (L₂ : C₂ ⥤ D₂)
  [HasShift D₁ M] [HasShift D₂ M] [L₁.CommShift M] [L₂.CommShift M]

section

variable (G : D₁ ⥤ D₂) (e : Φ.functor ⋙ L₂ ≅ L₁ ⋙ G)

variable (M) in
/-- This is the commutation of a functor `G` to shifts by an additive monoid `M` when
`e : Φ.functor ⋙ L₂ ≅ L₁ ⋙ G` is an isomorphism, `Φ` is a localizer morphism and
`L₁` is a localization functor. We assume that all categories involved
are equipped with shifts and that `L₁`, `L₂` and `Φ.functor` commute to them. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0162f9929b9bb912004f088fe06061f882d2e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
