# π_comp_opProductIsoCoproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a13a8cf-4d05-91d1-5c49-eda4e831af80",
  "kind": "lemma",
  "lexical_name": "π_comp_opProductIsoCoproduct",
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
  "slug": "comp-opproductisocoproduct--fdc86227d4f14b5aa6c784d0",
  "source": {
    "blob": "d1532ef468b67de00eb3301f5759b4bb8c93d2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 489,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc86227d4f14b5aa6c784d08927d95ef3537444e524704a193815feba06b812",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a13a8cf-4d05-91d1-5c49-eda4e831af80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma π_comp_opProductIsoCoproduct (b : α) : (Pi.π Z b).op ≫ (opProductIsoCoproduct Z).hom =
    Sigma.ι (fun a => op (Z a)) b := by
  dsimp only [opProductIsoCoproduct]
  simp only [Iso.trans_hom]
  have := IsColimit.comp_coconePointUniqueUpToIso_hom
    (isColimitConeOp _ (productIsProduct Z)) (colimit.isColimit _) (op ⟨b⟩)
  dsimp at this
  rw [← Category.assoc, this]
  simp only [colimit.cocone_x, Cofan.mk_pt, Equivalence.symm_functor, Discrete.natIsoFunctor,
    comp_obj, op_obj, Iso.symm_hom, IsColimit.coconePointsIsoOfEquivalence_inv,
    Equivalence.symm_inverse, Cocones.equivalenceOfReindexing_functor_obj, Iso.trans_inv,
    Iso.symm_inv, isoWhiskerLeft_hom, Iso.trans_hom, whiskerLeft_comp, colimit.isColimit_desc,
    colimit.ι_desc, Cocones.precompose_obj_pt, Cocone.whisker_pt, Cocones.precompose_obj_ι,
    Cocone.whisker_ι, Category.assoc, NatTrans.comp_app, unop_op, Discrete.functor_obj,
    const_obj_obj, Equivalence.invFunIdAssoc_inv_app, id_obj, op_map, Discrete.functor_map_id,
    op_id, whiskerLeft_app, Discrete.natIso_hom_app, Iso.refl_hom, Cofan.mk_ι_app,
    Discrete.opposite_functor_obj_as, Category.id_comp]
  simp only [Discrete.functor, Function.comp_apply, id_eq, Discrete.opposite, Equivalence.mk,
    id_obj, comp_obj, leftOp_obj, unop_op, Category.id_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1532ef468b67de00eb3301f5759b4bb8c93d2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
