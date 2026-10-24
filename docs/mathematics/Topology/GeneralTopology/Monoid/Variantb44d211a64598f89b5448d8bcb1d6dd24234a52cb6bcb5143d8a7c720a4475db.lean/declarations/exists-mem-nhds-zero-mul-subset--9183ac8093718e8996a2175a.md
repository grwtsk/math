# exists_mem_nhds_zero_mul_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d3a2f72e89d6df1d74beea5a30ac4ed2e079201",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d7c05c5-dbee-abad-f1bc-fc8fec3027aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ba9cbb1-f8dd-7032-c4bb-ccfd25e94782",
  "kind": "theorem",
  "lexical_name": "exists_mem_nhds_zero_mul_subset",
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
  "slug": "exists-mem-nhds-zero-mul-subset--9183ac8093718e8996a2175a",
  "source": {
    "blob": "6d3a2f72e89d6df1d74beea5a30ac4ed2e079201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9183ac8093718e8996a2175a10ee91dc1bb9c11b5c4dae1fcd1ad2a6d7036d78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ba9cbb1-f8dd-7032-c4bb-ccfd25e94782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_nhds_zero_mul_subset
    {K U : Set M} (hK : IsCompact K) (hU : U ∈ 𝓝 0) : ∃ V ∈ 𝓝 0, K * V ⊆ U := by
  refine hK.induction_on ?_ ?_ ?_ ?_
  · exact ⟨univ, by simp⟩
  · rintro s t hst ⟨V, hV, hV'⟩
    exact ⟨V, hV, (mul_subset_mul_right hst).trans hV'⟩
  · rintro s t ⟨V, V_in, hV'⟩ ⟨W, W_in, hW'⟩
    use V ∩ W, inter_mem V_in W_in
    rw [union_mul]
    exact
      union_subset ((mul_subset_mul_left V.inter_subset_left).trans hV')
        ((mul_subset_mul_left V.inter_subset_right).trans hW')
  · intro x hx
    have := tendsto_mul (show U ∈ 𝓝 (x * 0) by simpa using hU)
    rw [nhds_prod_eq, mem_map, mem_prod_iff] at this
    rcases this with ⟨t, ht, s, hs, h⟩
    rw [← image_subset_iff, image_mul_prod] at h
    exact ⟨t, mem_nhdsWithin_of_mem_nhds ht, s, hs, h⟩

/-- Let `M` be a topological space with a continuous multiplication operation and a `0`.
Let `l` be a filter on `M` which is disjoint from the cocompact filter. Then, the multiplication map
`M × M → M` tends to zero on the filter product `𝓝 0 ×ˢ l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3a2f72e89d6df1d74beea5a30ac4ed2e079201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
