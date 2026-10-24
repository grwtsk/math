# tendsto_tsum_one_div_linear_sub_succ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e56090a42fb6e179274502d8d715e9b30513fc2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d5d85d7-496a-3ceb-1539-4755f5ce7ce8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d31c604d-55c9-d6f4-a4b6-b612ba8b509b",
  "kind": "lemma",
  "lexical_name": "tendsto_tsum_one_div_linear_sub_succ_eq",
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
  "slug": "tendsto-tsum-one-div-linear-sub-succ-eq--798dfa2afc2e4380f88aebc4",
  "source": {
    "blob": "e56090a42fb6e179274502d8d715e9b30513fc2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 269,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:798dfa2afc2e4380f88aebc454bf55b09bf21b752cb242174e8e658381be8256",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d31c604d-55c9-d6f4-a4b6-b612ba8b509b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_tsum_one_div_linear_sub_succ_eq :
    Tendsto (fun N : ℕ+ ↦ ∑ n ∈ Ico (-N : ℤ) N,
    ∑' m : ℤ, (1 / ((m : ℂ) * z + n) - 1 / (m * z + n + 1))) atTop (𝓝 (-2 * π * I / z)) := by
  have (N : ℕ+) :
      ∑ n ∈ Ico (-N : ℤ) N, ∑' m : ℤ, (1 / ((m : ℂ) * z + n) - 1 / (m * z + n + 1))
      = ∑' m : ℤ, ∑ n ∈ Ico (-N : ℤ) N, (1 / ((m : ℂ) * z + n) - 1 / (m * z + n + 1)) := by
    rw [Summable.tsum_finsetSum (fun i hi ↦ ?_)]
    apply (summable_left_one_div_linear_sub_one_div_linear z i (i + 1)).congr
    grind
  simp only [telescope_aux, aux_tsum_identity_1] at this
  rw [funext this, show -2 * π * I / z = 0 + -2 * π * I / z by ring]
  apply Tendsto.add
  · simpa [← PNat.tendsto_comp_val_iff] using!
      (tendsto_inv_atTop_nhds_zero_nat (𝕜 := ℂ)).const_mul (-2)
  · simpa only [aux_tsum_identity_2, ← PNat.tendsto_comp_val_iff] using! aux_tendsto_tsum z

/- These are the two key lemmas, which show that swapping the order of summation gives
results differing by the term `-2 * π * I / z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e56090a42fb6e179274502d8d715e9b30513fc2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
