# li2_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da5cee7f-975f-5fad-6d0b-a38c7a16dccd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23526008-5a9d-5f50-bb0d-fb5e3ea0d151",
  "kind": "theorem",
  "lexical_name": "li2_bounds",
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
  "slug": "li2-bounds--aa3aafc682d5d58bda375d42",
  "source": {
    "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1358,
    "line": 1288,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa3aafc682d5d58bda375d422b260881cfa36b956ce5e76c4681d593e006b09c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23526008-5a9d-5f50-bb0d-fb5e3ea0d151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1288–1358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_bounds : (1039:ℚ)/1000 ≤ li2 ∧ li2 ≤ (106:ℚ)/100 := by
  constructor
  · -- Lower bound: li(2) ≥ 1.039
    rw [li2_decomposition]
    -- We have lower bounds for each integral:
    have h0 := g_integral_00_lower            -- ≥ 0
    have h1 := g_integral_01_lower_numerical  -- ≥ 8/100000 = 0.00008
    have h2 := g_integral_12_lower_numerical  -- ≥ 8/10000 = 0.0008
    have h3 := g_mid_integral_lower           -- ≥ 103775/100000 = 1.03775
    have h4 := g_integral_45_lower_numerical  -- ≥ 8/10000 = 0.0008
    have h5 := g_integral_56_lower_numerical  -- ≥ 8/100000 = 0.00008
    have h6 := g_integral_67_lower            -- ≥ 0
    -- Sum: 0 + 0.00008 + 0.0008 + 1.03775 + 0.0008 + 0.00008 + 0 = 1.03951 > 1.039
    have hsum : (∫ t in (0:ℝ)..(1/100000), g t) +
                (∫ t in (1/100000:ℝ)..(1/10000), g t) +
                (∫ t in (1/10000:ℝ)..(1/1000), g t) +
                (∫ t in (1/1000:ℝ)..(999/1000), g t) +
                (∫ t in (999/1000:ℝ)..(9999/10000), g t) +
                (∫ t in (9999/10000:ℝ)..(99999/100000), g t) +
                (∫ t in (99999/100000:ℝ)..1, g t) ≥
                0 + (8:ℚ)/100000 + (8:ℚ)/10000 + (103775:ℚ)/100000 +
                (8:ℚ)/10000 + (8:ℚ)/100000 + 0 := by linarith
    have hcalc : (0:ℝ) + ((8:ℚ)/100000 : ℝ) + ((8:ℚ)/10000 : ℝ) + ((103775:ℚ)/100000 : ℝ) +
                 ((8:ℚ)/10000 : ℝ) + ((8:ℚ)/100000 : ℝ) + 0 ≥ (1039:ℚ)/1000 := by norm_num
    linarith
  · -- Upper bound: li(2) ≤ 1.06
    rw [li2_decomposition]
    -- Upper bounds using g ≤ 2:
    have h0 := g_integral_tail_upper (1/100000) (by norm_num) (by norm_num)
    have h1 := integral_upper_bound (1/100000) (1/10000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h2 := integral_upper_bound (1/10000) (1/1000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h3 := g_mid_integral_upper
    have h4 := integral_upper_bound (999/1000) (9999/10000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h5 := integral_upper_bound (9999/10000) (99999/100000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h6 := g_integral_right_tail_upper (1/100000) (by norm_num) (by norm_num)
    -- Sum upper bounds:
    -- 2/100000 + 18/100000 + 18/10000 + 104840/100000 + 18/10000 + 18/100000 + 2/100000
    -- = 0.00002 + 0.00018 + 0.0018 + 1.0484 + 0.0018 + 0.00018 + 0.00002 = 1.0524 < 1.06
    simp only [one_div] at h0 h6
    -- Transform h6 to match the interval
    have h6' : ∫ t in (99999/100000:ℝ)..1, g t ≤ 2 * (1/100000) := by
      convert h6 using 2 <;> ring
    -- The sum of integrals ≤ sum of upper bounds < 1.06
    have hsum : (∫ t in (0:ℝ)..(1/100000), g t) +
                (∫ t in (1/100000:ℝ)..(1/10000), g t) +
                (∫ t in (1/10000:ℝ)..(1/1000), g t) +
                (∫ t in (1/1000:ℝ)..(999/1000), g t) +
                (∫ t in (999/1000:ℝ)..(9999/10000), g t) +
                (∫ t in (9999/10000:ℝ)..(99999/100000), g t) +
                (∫ t in (99999/100000:ℝ)..1, g t) ≤
                2 * (1/100000) + 2 * (1/10000 - 1/100000) +
                2 * (1/1000 - 1/10000) + (104840:ℚ)/100000 +
                2 * (9999/10000 - 999/1000) + 2 * (99999/100000 - 9999/10000) +
                2 * (1/100000) := by
      linarith
    have hcalc : 2 * (1/100000 : ℝ) + 2 * (1/10000 - 1/100000) +
                 2 * (1/1000 - 1/10000) + ((104840:ℚ)/100000 : ℝ) +
                 2 * (9999/10000 - 999/1000) + 2 * (99999/100000 - 9999/10000) +
                 2 * (1/100000) ≤ (106:ℚ)/100 := by
      norm_num
    linarith

/-- Lower bound extraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean#L1288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f75406f6827c7451ea51375b6d9f2fe06fc13416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
