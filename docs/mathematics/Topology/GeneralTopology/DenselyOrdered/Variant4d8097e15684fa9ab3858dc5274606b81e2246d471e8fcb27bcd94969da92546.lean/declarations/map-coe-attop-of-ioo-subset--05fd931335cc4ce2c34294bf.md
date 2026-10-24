# map_coe_atTop_of_Ioo_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38c3e22d1ac41c38fa67e148255859fe54a5c0d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be99d467-1489-dc33-888f-4f0a8a286a7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1084d021-5b31-9577-d2e8-59b30b172576",
  "kind": "theorem",
  "lexical_name": "map_coe_atTop_of_Ioo_subset",
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
  "slug": "map-coe-attop-of-ioo-subset--05fd931335cc4ce2c34294bf",
  "source": {
    "blob": "38c3e22d1ac41c38fa67e148255859fe54a5c0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05fd931335cc4ce2c34294bfdb5d161232369f7b6097d2ea8a0ce85069863c99",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1084d021-5b31-9577-d2e8-59b30b172576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_coe_atTop_of_Ioo_subset (hb : s ⊆ Iio b) (hs : ∀ a' < b, ∃ a < b, Ioo a b ⊆ s) :
    map ((↑) : s → α) atTop = 𝓝[<] b := by
  rcases eq_empty_or_nonempty (Iio b) with (hb' | ⟨a, ha⟩)
  · have : IsEmpty s := ⟨fun x => hb'.subset (hb x.2)⟩
    rw [filter_eq_bot_of_isEmpty atTop, Filter.map_bot, hb', nhdsWithin_empty]
  · rw [← comap_coe_nhdsLT_of_Ioo_subset hb fun _ => hs a ha, map_comap_of_mem]
    rw [Subtype.range_val]
    exact (mem_nhdsLT_iff_exists_Ioo_subset' ha).2 (hs a ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c3e22d1ac41c38fa67e148255859fe54a5c0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
