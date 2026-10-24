# ibp_Ioi_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47e49d5a-7dee-e1d8-6e0f-8b8f42d7f300",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:147b3012-b271-ec08-28c5-66b1b2b83d23",
  "kind": "lemma",
  "lexical_name": "ibp_Ioi_one",
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
  "slug": "ibp-ioi-one--0fe16b6e0e55388a62a76a4a",
  "source": {
    "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 234,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fe16b6e0e55388a62a76a4af428c77c96f49f0a18f9c96dd5819eb2e2f5ec72",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:147b3012-b271-ec08-28c5-66b1b2b83d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ibp_Ioi_one :
    ∫ t in Set.Ioi (1 : ℝ), log t * exp (-t) =
      ∫ t in Set.Ioi (1 : ℝ), exp (-t) / t := by
  have hlog_deriv : ∀ t ∈ Set.Ioi (1 : ℝ), HasDerivAt log (t⁻¹) t :=
    fun t ht => Real.hasDerivAt_log (ne_of_gt (lt_trans one_pos ht))
  have hv_deriv : ∀ t ∈ Set.Ioi (1 : ℝ), HasDerivAt (fun t => -exp (-t)) (exp (-t)) t := by
    intro t _; have h := (hasDerivAt_neg t).exp.neg; convert h using 1; simp [mul_comm]
  have h_uv'_int : IntegrableOn (log * fun t => exp (-t)) (Set.Ioi 1) :=
    integrableOn_log_mul_exp_neg_Ioi_one
  have h_u'v_int : IntegrableOn ((fun t => t⁻¹) * fun t => -exp (-t)) (Set.Ioi 1) := by
    have := integrableOn_exp_neg_div_Ioi_one.neg
    refine this.congr ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t _
    simp [Pi.mul_apply, div_eq_mul_inv]; ring
  have h_lim_1 : Tendsto (log * fun t => -exp (-t)) (𝓝[>] (1 : ℝ))
      (𝓝 (log 1 * -exp (-(1 : ℝ)))) := by
    apply Filter.Tendsto.mul
    · exact (Real.continuousAt_log (by norm_num : (1 : ℝ) ≠ 0)).tendsto.mono_left
        nhdsWithin_le_nhds
    · exact ((continuous_exp.comp continuous_neg).neg.continuousAt).tendsto.mono_left
        nhdsWithin_le_nhds
  have h_lim_inf : Tendsto (log * fun t => -exp (-t)) atTop (𝓝 0) := by
    have h1 : Tendsto (fun t : ℝ => t * exp (-t)) atTop (𝓝 0) := by
      simpa using tendsto_pow_mul_exp_neg_atTop_nhds_zero 1
    have h2 : Tendsto (fun t : ℝ => log t * exp (-t)) atTop (𝓝 0) := by
      apply squeeze_zero_norm' _ h1
      filter_upwards [Filter.eventually_ge_atTop (1 : ℝ)] with t ht
      rw [norm_mul, Real.norm_of_nonneg (Real.log_nonneg ht),
          Real.norm_of_nonneg (exp_pos _).le]
      exact mul_le_mul_of_nonneg_right (Real.log_le_self (by linarith)) (exp_pos _).le
    show Tendsto (fun t : ℝ => log t * (-exp (-t))) atTop (𝓝 0)
    have h3 := (neg_zero (G := ℝ)) ▸ h2.neg
    exact Filter.Tendsto.congr (fun t => by ring) h3
  rw [integral_Ioi_mul_deriv_eq_deriv_mul hlog_deriv hv_deriv h_uv'_int h_u'v_int
      h_lim_1 h_lim_inf]
  simp only [log_one, zero_mul, sub_zero, zero_sub]
  rw [neg_eq_iff_eq_neg, ← integral_neg]
  exact setIntegral_congr_fun measurableSet_Ioi (fun t ht => by
    simp only [Set.mem_Ioi] at ht; simp [div_eq_mul_inv]; ring)

/-! ## The `(0, 1]` part -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
