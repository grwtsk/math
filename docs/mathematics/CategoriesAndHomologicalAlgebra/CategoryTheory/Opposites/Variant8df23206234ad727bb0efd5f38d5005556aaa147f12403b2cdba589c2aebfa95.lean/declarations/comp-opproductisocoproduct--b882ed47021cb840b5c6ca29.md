# π_comp_opProductIsoCoproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e32cf305ee43f97db9e5bda7154085b9c25aee8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a9786c1-8da8-6937-6d2e-8a13fd680cbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdb3fc8b-18db-0140-5996-d8c7b674ee84",
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
  "slug": "comp-opproductisocoproduct--b882ed47021cb840b5c6ca29",
  "source": {
    "blob": "1e32cf305ee43f97db9e5bda7154085b9c25aee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 481,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b882ed47021cb840b5c6ca29a24e5ab3ff10f94c3f6f6f26fb0ed3cc215237c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdb3fc8b-18db-0140-5996-d8c7b674ee84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–500.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e32cf305ee43f97db9e5bda7154085b9c25aee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
