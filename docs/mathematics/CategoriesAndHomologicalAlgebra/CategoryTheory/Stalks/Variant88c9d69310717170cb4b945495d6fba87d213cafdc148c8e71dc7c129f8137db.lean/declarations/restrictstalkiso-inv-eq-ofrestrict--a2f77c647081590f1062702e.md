# restrictStalkIso_inv_eq_ofRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a82a69bc-4b6b-8688-6a6e-dd3202167fa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41d55d05-8973-ff46-6f42-aa15580c8144",
  "kind": "theorem",
  "lexical_name": "restrictStalkIso_inv_eq_ofRestrict",
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
  "slug": "restrictstalkiso-inv-eq-ofrestrict--a2f77c647081590f1062702e",
  "source": {
    "blob": "707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f77c647081590f1062702ee7fc3a34d4d4a8c7fa8beeea6db59e25e702f0d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41d55d05-8973-ff46-6f42-aa15580c8144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictStalkIso_inv_eq_ofRestrict {U : TopCat} (X : PresheafedSpace.{_, _, v} C)
    {f : U ⟶ (X : TopCat.{v})} (h : OpenEmbedding f) (x : U) :
    (X.restrictStalkIso h x).inv = stalkMap (X.ofRestrict h) x := by
  -- We can't use `ext` here due to https://github.com/leanprover/std4/pull/159
  refine colimit.hom_ext fun V => ?_
  induction V with | h V => ?_
  let i : (h.isOpenMap.functorNhds x).obj ((OpenNhds.map f x).obj V) ⟶ V :=
    homOfLE (Set.image_preimage_subset f _)
  erw [Iso.comp_inv_eq, colimit.ι_map_assoc, colimit.ι_map_assoc, colimit.ι_pre]
  simp_rw [Category.assoc]
  erw [colimit.ι_pre ((OpenNhds.inclusion (f x)).op ⋙ X.presheaf)
      (h.isOpenMap.functorNhds x).op]
  erw [← X.presheaf.map_comp_assoc]
  exact (colimit.w ((OpenNhds.inclusion (f x)).op ⋙ X.presheaf) i.op).symm
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.restrict_stalk_iso_inv_eq_of_restrict AlgebraicGeometry.PresheafedSpace.restrictStalkIso_inv_eq_ofRestrict

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
