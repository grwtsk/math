# compact_open_separated_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55242eda1288001b9e3432de645441a894c78412",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3aab55d-fbd6-9037-646d-6ac194009f7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72e07de1-4e8a-dd7c-d48a-20e5d33878a7",
  "kind": "theorem",
  "lexical_name": "compact_open_separated_mul_right",
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
  "slug": "compact-open-separated-mul-right--a6e306e5c1676d49499aeb8d",
  "source": {
    "blob": "55242eda1288001b9e3432de645441a894c78412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 317,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e306e5c1676d49499aeb8de3ec01d3572ec35c892ba93617413251ad409c15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72e07de1-4e8a-dd7c-d48a-20e5d33878a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_open_separated_mul_right {K U : Set G} (hK : IsCompact K) (hU : IsOpen U)
    (hKU : K ⊆ U) : ∃ V ∈ 𝓝 (1 : G), K * V ⊆ U := by
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
    have := tendsto_mul (show U ∈ 𝓝 (x * 1) by simpa using hU.mem_nhds (hKU hx))
    rw [nhds_prod_eq, mem_map, mem_prod_iff] at this
    rcases this with ⟨t, ht, s, hs, h⟩
    rw [← image_subset_iff, image_mul_prod] at h
    exact ⟨t, mem_nhdsWithin_of_mem_nhds ht, s, hs, h⟩

/-- Given a compact set `K` inside an open set `U`, there is an open neighborhood `V` of `1`
  such that `V * K ⊆ U`. -/
@[to_additive
  /-- Given a compact set `K` inside an open set `U`, there is an open neighborhood `V` of
  `0` such that `V + K ⊆ U`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55242eda1288001b9e3432de645441a894c78412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
