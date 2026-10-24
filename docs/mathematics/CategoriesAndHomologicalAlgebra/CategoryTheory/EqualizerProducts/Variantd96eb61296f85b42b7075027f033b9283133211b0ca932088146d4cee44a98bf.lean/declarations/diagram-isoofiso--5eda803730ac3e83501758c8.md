# diagram.isoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c1cf9b600ea3df72b3efb8b4d8995ed6c922e33abd3ed3cfb87771872cc7518",
  "kind": "def",
  "lexical_name": "diagram.isoOfIso",
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
  "slug": "diagram-isoofiso--5eda803730ac3e83501758c8",
  "source": {
    "blob": "e0c04d40d758060b20ae3b518f85c3b3fa6705e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5eda803730ac3e83501758c8ba7a1a05aa49a116cfb3019a4d8fbe976d5f05fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c1cf9b600ea3df72b3efb8b4d8995ed6c922e33abd3ed3cfb87771872cc7518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagram.isoOfIso (α : F ≅ G) : diagram F U ≅ diagram.{v'} G U :=
  NatIso.ofComponents (by rintro ⟨⟩; exact piOpens.isoOfIso U α; exact piInters.isoOfIso U α)
    (by
      rintro ⟨⟩ ⟨⟩ ⟨⟩
      · simp
      · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
        -- See https://github.com/leanprover-community/mathlib4/issues/5229
        refine limit.hom_ext (fun _ => ?_)
        simp only [leftRes, piOpens.isoOfIso, piInters.isoOfIso, parallelPair_map_left,
          Functor.mapIso_hom, lim_map, limit.lift_map, limit.lift_π, Cones.postcompose_obj_π,
          NatTrans.comp_app, Fan.mk_π_app, Discrete.natIso_hom_app, Iso.app_hom, Category.assoc,
          NatTrans.naturality, limMap_π_assoc]
      · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
        -- See https://github.com/leanprover-community/mathlib4/issues/5229
        refine limit.hom_ext (fun _ => ?_)
        simp only [rightRes, piOpens.isoOfIso, piInters.isoOfIso, parallelPair_map_right,
          Functor.mapIso_hom, lim_map, limit.lift_map, limit.lift_π, Cones.postcompose_obj_π,
          NatTrans.comp_app, Fan.mk_π_app, Discrete.natIso_hom_app, Iso.app_hom, Category.assoc,
          NatTrans.naturality, limMap_π_assoc]
      · simp)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.diagram.iso_of_iso TopCat.Presheaf.SheafConditionEqualizerProducts.diagram.isoOfIso

/-- If `F G : presheaf C X` are isomorphic presheaves,
then the `fork F U`, the canonical cone of the sheaf condition diagram for `F`,
is isomorphic to `fork F G` postcomposed with the corresponding isomorphism between
sheaf condition diagrams.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0c04d40d758060b20ae3b518f85c3b3fa6705e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
