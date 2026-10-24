# restrictStalkIso_inv_eq_ofRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38f1747c-5a8b-3e00-c6a7-d7851d34ef60",
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
  "slug": "restrictstalkiso-inv-eq-ofrestrict--5e370e334bfe79caa9d5159a",
  "source": {
    "blob": "5e7f89ef6c7538f8d341101e0cbbd990736b14e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e370e334bfe79caa9d5159adc8f6143c4aff273f9a0a029c0a4ed864c81b690",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38f1747c-5a8b-3e00-c6a7-d7851d34ef60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–125.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e7f89ef6c7538f8d341101e0cbbd990736b14e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
