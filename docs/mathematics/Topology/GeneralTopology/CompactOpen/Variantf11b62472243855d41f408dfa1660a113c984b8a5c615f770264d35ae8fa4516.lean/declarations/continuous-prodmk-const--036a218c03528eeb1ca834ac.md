# continuous_prodMk_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9be918d937c5a280589eccddca836f3ccb3fa86a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3490fc19-70df-d7c7-e0bd-cd071eb93231",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9aa5ed45-1037-19fb-e842-835ea3ee76d3",
  "kind": "lemma",
  "lexical_name": "continuous_prodMk_const",
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
  "slug": "continuous-prodmk-const--036a218c03528eeb1ca834ac",
  "source": {
    "blob": "9be918d937c5a280589eccddca836f3ccb3fa86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:036a218c03528eeb1ca834ac5993bfd23c8079c52266d91c360170a126f0d05e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aa5ed45-1037-19fb-e842-835ea3ee76d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_prodMk_const : Continuous fun p : X × C(Y, Z) ↦ prodMk (const Y p.1) p.2 := by
  simp_rw [continuous_iff_continuousAt, ContinuousAt, ContinuousMap.tendsto_nhds_compactOpen]
  rintro ⟨r, f⟩ K hK U hU H
  obtain ⟨V, W, hV, hW, hrV, hKW, hVW⟩ := generalized_tube_lemma (isCompact_singleton (x := r))
    (hK.image f.continuous) hU (by simpa [Set.subset_def, forall_comm (α := X)])
  refine Filter.eventually_of_mem (prod_mem_nhds (hV.mem_nhds (by simpa using hrV))
    (ContinuousMap.eventually_mapsTo hK hW (Set.mapsTo'.mpr hKW))) ?_
  rintro ⟨r', f'⟩ ⟨hr'V, hf'⟩ x hxK
  exact hVW (Set.mk_mem_prod hr'V (hf' hxK))

variable [LocallyCompactPair Y Z]

/-- Composition is a continuous map from `C(X, Y) × C(Y, Z)` to `C(X, Z)`,
provided that `Y` is locally compact.
This is Prop. 9 of Chap. X, §3, №. 4 of Bourbaki's *Topologie Générale*. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be918d937c5a280589eccddca836f3ccb3fa86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
