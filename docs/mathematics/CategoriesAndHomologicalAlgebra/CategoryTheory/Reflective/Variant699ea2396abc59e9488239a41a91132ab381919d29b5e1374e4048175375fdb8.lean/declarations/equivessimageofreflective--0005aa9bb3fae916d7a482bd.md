# equivEssImageOfReflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75544086595b531ce792d2393745f6cf0af180d0122b81e6ceaec1a672bd279b",
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
  "slug": "equivessimageofreflective--0005aa9bb3fae916d7a482bd",
  "source": {
    "blob": "682687af8c2cc6a1106ea8203767c160eea4a10e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0005aa9bb3fae916d7a482bd5d91c0c82fee6118c1b80456e41c4510a2bf9761",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75544086595b531ce792d2393745f6cf0af180d0122b81e6ceaec1a672bd279b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–220.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682687af8c2cc6a1106ea8203767c160eea4a10e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
