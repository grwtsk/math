# range_pullback_fst_of_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66cb4afeae676271592ffb515e0707f44280a402",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 566,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d50dd0d-e1cc-1cf8-ad80-30ae966c9503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52570461-0f4e-2f94-ee1f-01215f2fb1d4",
  "kind": "theorem",
  "lexical_name": "range_pullback_fst_of_right",
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
  "slug": "range-pullback-fst-of-right--b4ed25b1ea764041b589ccd6",
  "source": {
    "blob": "66cb4afeae676271592ffb515e0707f44280a402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 566,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ed25b1ea764041b589ccd63985411e68ecfffa341c8e597134bae2aea8c623",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52570461-0f4e-2f94-ee1f-01215f2fb1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_pullback_fst_of_right :
    Set.range (pullback.fst : pullback g f ⟶ Y).1.base =
      ((Opens.map g.1.base).obj ⟨Set.range f.1.base, H.base_open.open_range⟩).1 := by
  rw [←
    show _ = (pullback.fst : pullback g f ⟶ _).1.base from
      PreservesPullback.iso_hom_fst Scheme.forgetToTop g f]
  -- Porting note : was `rw`
  erw [coe_comp]
  rw [Set.range_comp, Set.range_iff_surjective.mpr, ←
    @Set.preimage_univ _ _ (pullback.snd : pullback g.1.base f.1.base ⟶ _)]
  -- Porting note : was `rw`
  erw [TopCat.pullback_fst_image_snd_preimage]
  rw [Set.image_univ]
  rfl
  rw [← TopCat.epi_iff_surjective]
  infer_instance
#align algebraic_geometry.IsOpenImmersion.range_pullback_fst_of_right AlgebraicGeometry.IsOpenImmersion.range_pullback_fst_of_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cb4afeae676271592ffb515e0707f44280a402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
