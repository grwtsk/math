# equivEssImageOfReflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b149879ec332106b339dd04021bef0fe99350594e2884ac0bee321633c7501e5",
  "kind": "def",
  "lexical_name": "equivEssImageOfReflective",
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
  "slug": "equivessimageofreflective--52bca69b4ae6a84cbcc70bc3",
  "source": {
    "blob": "4bc80d7abab82d205ac62bc9ad4534c619461378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52bca69b4ae6a84cbcc70bc3693896027ab78009bbbc67795a86545e4291a815",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b149879ec332106b339dd04021bef0fe99350594e2884ac0bee321633c7501e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivEssImageOfReflective [Reflective i] : D ≌ i.EssImageSubcategory
    where
  functor := i.toEssImage
  inverse := i.essImageInclusion ⋙ (leftAdjoint i : _)
  unitIso :=
    NatIso.ofComponents (fun X => (asIso <| (ofRightAdjoint i).counit.app X).symm)
      (by
        intro X Y f
        dsimp
        rw [IsIso.comp_inv_eq, Category.assoc, IsIso.eq_inv_comp]
        exact ((ofRightAdjoint i).counit.naturality f).symm)
  counitIso :=
    NatIso.ofComponents equivEssImageOfReflective_counitIso_app
      (by
        intro X Y f
        apply (Functor.essImageInclusion i).map_injective
        have h := ((ofRightAdjoint i).unit.naturality f).symm
        rw [Functor.id_map] at h
        erw [Functor.map_comp, Functor.map_comp,
          equivEssImageOfReflective_map_counitIso_app_hom,
          equivEssImageOfReflective_map_counitIso_app_hom,
          IsIso.comp_inv_eq, assoc, ← h, IsIso.inv_hom_id_assoc, Functor.comp_map])
  functor_unitIso_comp := fun X => by
    -- porting note: this proof was automatically handled by the automation in mathlib
    apply (Functor.essImageInclusion i).map_injective
    erw [Functor.map_comp, equivEssImageOfReflective_map_counitIso_app_hom]
    aesop_cat
#align category_theory.equiv_ess_image_of_reflective CategoryTheory.equivEssImageOfReflective

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc80d7abab82d205ac62bc9ad4534c619461378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
