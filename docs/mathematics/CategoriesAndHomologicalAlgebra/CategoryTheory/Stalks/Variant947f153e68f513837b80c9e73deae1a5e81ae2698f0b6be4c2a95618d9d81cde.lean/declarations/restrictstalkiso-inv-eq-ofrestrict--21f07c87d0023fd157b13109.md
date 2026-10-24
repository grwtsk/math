# restrictStalkIso_inv_eq_ofRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d463861180d35e98e6fa296364ceba8ddd98fedb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2752f829-4767-1311-78a6-e343e6790a1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4187de76-52dc-96a5-137c-33d36e798e4c",
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
  "slug": "restrictstalkiso-inv-eq-ofrestrict--21f07c87d0023fd157b13109",
  "source": {
    "blob": "d463861180d35e98e6fa296364ceba8ddd98fedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f07c87d0023fd157b13109c8619d4f9e04692a3e7973feec46176980d9d1e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4187de76-52dc-96a5-137c-33d36e798e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictStalkIso_inv_eq_ofRestrict {U : TopCat} (X : PresheafedSpace.{_, _, v} C)
    {f : U ⟶ (X : TopCat.{v})} (h : IsOpenEmbedding f) (x : U) :
    (X.restrictStalkIso h x).inv = (X.ofRestrict h).stalkMap x := by
  -- We can't use `ext` here due to https://github.com/leanprover/std4/pull/159
  refine colimit.hom_ext fun V => ?_
  induction V with | op V => ?_
  let i : (h.isOpenMap.functorNhds x).obj ((OpenNhds.map f x).obj V) ⟶ V :=
    homOfLE (Set.image_preimage_subset f _)
  erw [Iso.comp_inv_eq, colimit.ι_map_assoc, colimit.ι_map_assoc, colimit.ι_pre]
  simp_rw [Category.assoc]
  erw [colimit.ι_pre ((OpenNhds.inclusion (f x)).op ⋙ X.presheaf)
      (h.isOpenMap.functorNhds x).op]
  erw [← X.presheaf.map_comp_assoc]
  exact (colimit.w ((OpenNhds.inclusion (f x)).op ⋙ X.presheaf) i.op).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d463861180d35e98e6fa296364ceba8ddd98fedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
