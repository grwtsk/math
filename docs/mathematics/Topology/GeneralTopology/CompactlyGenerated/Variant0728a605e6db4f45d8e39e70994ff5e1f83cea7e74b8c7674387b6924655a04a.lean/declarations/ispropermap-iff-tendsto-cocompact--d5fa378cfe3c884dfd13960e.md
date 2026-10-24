# isProperMap_iff_tendsto_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6213ed0602433d989d1c3f1243b763ab3a2d1a15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0000b2b1-ad8f-6856-4802-5400ae3630b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdf3a9ba-ae0b-24dc-92af-bb629379f585",
  "kind": "lemma",
  "lexical_name": "isProperMap_iff_tendsto_cocompact",
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
  "slug": "ispropermap-iff-tendsto-cocompact--d5fa378cfe3c884dfd13960e",
  "source": {
    "blob": "6213ed0602433d989d1c3f1243b763ab3a2d1a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5fa378cfe3c884dfd13960e64a40319030205b41e437d4fc4dc2554cb9afc3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdf3a9ba-ae0b-24dc-92af-bb629379f585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isProperMap_iff_tendsto_cocompact :
    IsProperMap f ↔ Continuous f ∧ Tendsto f (cocompact X) (cocompact Y) := by
  simp_rw [isProperMap_iff_isCompact_preimage,
    hasBasis_cocompact.tendsto_right_iff, ← mem_preimage, eventually_mem_set, preimage_compl]
  refine and_congr_right fun f_cont ↦
    ⟨fun H K hK ↦ (H hK).compl_mem_cocompact, fun H K hK ↦ ?_⟩
  rcases mem_cocompact.mp (H K hK) with ⟨K', hK', hK'y⟩
  exact hK'.of_isClosed_subset (hK.isClosed.preimage f_cont)
    (compl_le_compl_iff_le.mp hK'y)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6213ed0602433d989d1c3f1243b763ab3a2d1a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
