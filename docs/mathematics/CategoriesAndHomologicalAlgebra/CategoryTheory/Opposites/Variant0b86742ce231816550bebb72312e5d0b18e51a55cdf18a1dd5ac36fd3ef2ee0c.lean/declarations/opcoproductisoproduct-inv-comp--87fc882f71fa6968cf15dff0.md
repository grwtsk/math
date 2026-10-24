# opCoproductIsoProduct_inv_comp_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94b0128b-33a9-84af-7455-3128eec6691c",
  "kind": "lemma",
  "lexical_name": "opCoproductIsoProduct_inv_comp_ι",
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
  "slug": "opcoproductisoproduct-inv-comp--87fc882f71fa6968cf15dff0",
  "source": {
    "blob": "d1532ef468b67de00eb3301f5759b4bb8c93d2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 433,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87fc882f71fa6968cf15dff04627f3bcd366092e9fe8956099c2787dfc026850",
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

Occurrence: `result:94b0128b-33a9-84af-7455-3128eec6691c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opCoproductIsoProduct_inv_comp_ι (b : α) :
    (opCoproductIsoProduct Z).inv ≫ (Sigma.ι (fun a => Z a) b).op =
    Pi.π (fun a => op (Z a)) b := by
  dsimp only [opCoproductIsoProduct]
  simp only [Iso.trans_inv]
  have := IsLimit.conePointUniqueUpToIso_inv_comp
    (isLimitCoconeOp _ (coproductIsCoproduct fun b ↦ Z b)) (limit.isLimit _) (op ⟨b⟩)
  dsimp at this
  rw [Category.assoc, this]
  simp only [limit.cone_x, Fan.mk_pt, Equivalence.symm_functor, Discrete.natIsoFunctor,
    Functor.comp_obj, Functor.op_obj, Iso.symm_inv, IsLimit.conePointsIsoOfEquivalence_hom,
    Equivalence.symm_inverse, Cones.equivalenceOfReindexing_functor, Iso.trans_hom, Iso.symm_hom,
    isoWhiskerLeft_inv, Iso.trans_inv, whiskerLeft_comp, Cones.whiskering_obj, limit.isLimit_lift,
    limit.lift_π, Cones.postcompose_obj_pt, Cone.whisker_pt, Cones.postcompose_obj_π,
    Cone.whisker_π, Category.assoc, NatTrans.comp_app, Functor.const_obj_obj, unop_op,
    Discrete.functor_obj, whiskerLeft_app, Fan.mk_π_app, Discrete.opposite_functor_obj_as,
    Discrete.natIso_inv_app, Iso.refl_inv, Equivalence.invFunIdAssoc_hom_app, Functor.id_obj,
    Functor.op_map, Discrete.functor_map_id, op_id]
  simp only [Discrete.functor, Function.comp_apply, id_eq, Discrete.opposite, Equivalence.mk,
    id_obj, comp_obj, leftOp_obj, unop_op, op_obj, Category.comp_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0b86742ce231816550bebb72312e5d0b18e51a55cdf18a1dd5ac36fd3ef2ee0c.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1532ef468b67de00eb3301f5759b4bb8c93d2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
