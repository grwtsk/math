# fromOpenSubsetsGlue_isOpenMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "694923143d2ddbfb88963488273fd033f2782247",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 480,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f89c5bac-0f50-bab4-e76d-a4c4e5bad150",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:296aa799-6351-0cda-ef87-88f166582ff8",
  "kind": "theorem",
  "lexical_name": "fromOpenSubsetsGlue_isOpenMap",
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
  "slug": "fromopensubsetsglue-isopenmap--64414f76092c2401c3c49cfb",
  "source": {
    "blob": "694923143d2ddbfb88963488273fd033f2782247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 480,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64414f76092c2401c3c49cfb59712af0670007c6c374e352a93fe225ed50c05a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:296aa799-6351-0cda-ef87-88f166582ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromOpenSubsetsGlue_isOpenMap : IsOpenMap (fromOpenSubsetsGlue U) := by
  intro s hs
  rw [(ofOpenSubsets U).isOpen_iff] at hs
  rw [isOpen_iff_forall_mem_open]
  rintro _ ⟨x, hx, rfl⟩
  obtain ⟨i, ⟨x, hx'⟩, rfl⟩ := (ofOpenSubsets U).ι_jointly_surjective x
  use fromOpenSubsetsGlue U '' s ∩ Set.range (@Opens.inclusion (TopCat.of α) (U i))
  use Set.inter_subset_left _ _
  constructor
  · erw [← Set.image_preimage_eq_inter_range]
    apply (Opens.openEmbedding (X := TopCat.of α) (U i)).isOpenMap
    convert hs i using 1
    erw [← ι_fromOpenSubsetsGlue, coe_comp, Set.preimage_comp]
    --  porting note: `congr 1` did nothing, so I replaced it with `apply congr_arg`
    apply congr_arg
    refine' Set.preimage_image_eq _ (fromOpenSubsetsGlue_injective U)
  · refine' ⟨Set.mem_image_of_mem _ hx, _⟩
    -- porting note: another `rw ↦ erw`
    -- See above.
    erw [ι_fromOpenSubsetsGlue_apply]
    exact Set.mem_range_self _
set_option linter.uppercaseLean3 false in
#align Top.glue_data.from_open_subsets_glue_is_open_map TopCat.GlueData.fromOpenSubsetsGlue_isOpenMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694923143d2ddbfb88963488273fd033f2782247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
