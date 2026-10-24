# tendsto_sum_pi_div_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "685aee9289e8f2c2146bdf1b0ec75785781bfe80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cac79b1f80233624aa3d79efbad6b0ce505b18210fced2585f1fd145b9a262a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad203b04-8f5b-f83a-e03a-b46f2bee3d4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c0b3486-8be0-c112-862e-07d0e4165be3",
  "kind": "theorem",
  "lexical_name": "tendsto_sum_pi_div_four",
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
  "slug": "tendsto-sum-pi-div-four--1c0864597720d4d0a4dcc6a9",
  "source": {
    "blob": "685aee9289e8f2c2146bdf1b0ec75785781bfe80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Leibniz/Variantcac79b1f80233624aa3d79efbad6b0ce505b18210fced2585f1fd145b9a262a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c0864597720d4d0a4dcc6a946c25ec7ce240257c4f62da4e35ae939d1fe8628",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Leibniz/Variantcac79b1f80233624aa3d79efbad6b0ce505b18210fced2585f1fd145b9a262a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c0b3486-8be0-c112-862e-07d0e4165be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sum_pi_div_four :
    Tendsto (fun k => ∑ i ∈ range k, (-1 : ℝ) ^ i / (2 * i + 1)) atTop (𝓝 (π / 4)) := by
  -- The series is alternating with terms of decreasing magnitude, so it converges to some limit
  obtain ⟨l, h⟩ :
      ∃ l, Tendsto (fun n ↦ ∑ i ∈ range n, (-1 : ℝ) ^ i / (2 * i + 1)) atTop (𝓝 l) := by
    apply Antitone.tendsto_alternating_series_of_tendsto_zero
    · exact antitone_iff_forall_lt.mpr fun _ _ _ ↦ by gcongr
    · apply Tendsto.inv_tendsto_atTop; apply tendsto_atTop_add_const_right
      exact tendsto_natCast_atTop_atTop.const_mul_atTop zero_lt_two
  -- Abel's limit theorem states that the corresponding power series has the same limit as `x → 1⁻`
  have abel := tendsto_tsum_powerSeries_nhdsWithin_lt h
  -- Massage the expression to get `x ^ (2 * n + 1)` in the tsum rather than `x ^ n`...
  have m : 𝓝[<] (1 : ℝ) ≤ 𝓝 1 := tendsto_nhdsWithin_of_tendsto_nhds fun _ a ↦ a
  have q : Tendsto (fun x : ℝ ↦ x ^ 2) (𝓝[<] 1) (𝓝[<] 1) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · nth_rw 3 [← one_pow 2]
      exact Tendsto.pow ‹_› _
    · rw [eventually_iff_exists_mem]
      use Set.Ioo (-1) 1
      exact ⟨Ioo_mem_nhdsLT <| by simp,
        fun _ _ ↦ by rwa [Set.mem_Iio, sq_lt_one_iff_abs_lt_one, abs_lt, ← Set.mem_Ioo]⟩
  replace abel := (abel.comp q).mul m
  rw [mul_one] at abel
  -- ...so that we can replace the tsum with the real arctangent function
  replace abel : Tendsto arctan (𝓝[<] 1) (𝓝 l) := by
    apply abel.congr'
    rw [eventuallyEq_nhdsWithin_iff, Metric.eventually_nhds_iff]
    use 1, zero_lt_one
    intro y hy1 hy2
    rw [dist_eq, abs_sub_lt_iff] at hy1
    rw [Set.mem_Iio] at hy2
    have ny : ‖y‖ < 1 := by rw [norm_eq_abs, abs_lt]; constructor <;> linarith
    rw [← (hasSum_arctan ny).tsum_eq, Function.comp_apply, ← tsum_mul_right]
    simp_rw [mul_assoc, ← pow_mul, ← pow_succ, div_mul_eq_mul_div]
    norm_cast
  -- But `arctan` is continuous everywhere, so the limit is `arctan 1 = π / 4`
  rwa [tendsto_nhds_unique abel ((continuous_arctan.tendsto 1).mono_left m), arctan_one] at h

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Leibniz/Variantcac79b1f80233624aa3d79efbad6b0ce505b18210fced2585f1fd145b9a262a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Leibniz/Variantcac79b1f80233624aa3d79efbad6b0ce505b18210fced2585f1fd145b9a262a9.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `685aee9289e8f2c2146bdf1b0ec75785781bfe80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
