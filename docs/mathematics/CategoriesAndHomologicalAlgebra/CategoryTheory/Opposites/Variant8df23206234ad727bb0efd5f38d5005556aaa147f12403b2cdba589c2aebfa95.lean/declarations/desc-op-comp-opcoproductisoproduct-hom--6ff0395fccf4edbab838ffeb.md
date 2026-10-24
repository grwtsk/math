# desc_op_comp_opCoproductIsoProduct_hom

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
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:781343f3-c736-d838-c946-e8af7e21d541",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d92d4017-cba2-8f6c-9125-0ca71415ad08",
  "kind": "lemma",
  "lexical_name": "desc_op_comp_opCoproductIsoProduct_hom",
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
  "slug": "desc-op-comp-opcoproductisoproduct-hom--6ff0395fccf4edbab838ffeb",
  "source": {
    "blob": "1e32cf305ee43f97db9e5bda7154085b9c25aee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 446,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff0395fccf4edbab838ffebf2ed38dadfa19a6cd6645b1a6a9b8e1aad56fdf6",
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

Occurrence: `result:d92d4017-cba2-8f6c-9125-0ca71415ad08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma desc_op_comp_opCoproductIsoProduct_hom {X : C} (π : (a : α) → Z a ⟶ X) :
    (Sigma.desc π).op ≫ (opCoproductIsoProduct Z).hom = Pi.lift (fun a => Quiver.Hom.op (π a)) := by
  rw [← Iso.eq_comp_inv (opCoproductIsoProduct Z)]
  congr
  refine' Sigma.hom_ext (f := Z) _ _ (fun a => _)
  rw [← Category.assoc, colimit.ι_desc, ← Quiver.Hom.unop_op (Sigma.ι Z a), ← unop_comp,
    opCoproductIsoProduct_inv_comp_ι, ← unop_comp]
  simp only [Cofan.mk_pt, Cofan.mk_ι_app, Pi.lift, Pi.π, limit.lift_π, Fan.mk_pt, Fan.mk_π_app,
    Quiver.Hom.unop_op]

end OppositeCoproducts

section OppositeProducts

variable {α : Type*} (Z : α → C) [HasProduct Z]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e32cf305ee43f97db9e5bda7154085b9c25aee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
