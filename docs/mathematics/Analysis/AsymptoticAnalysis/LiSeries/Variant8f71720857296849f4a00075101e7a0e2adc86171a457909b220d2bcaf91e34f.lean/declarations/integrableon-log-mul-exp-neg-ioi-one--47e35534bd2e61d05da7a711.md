# integrableOn_log_mul_exp_neg_Ioi_one

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
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7139cc81-ed7d-d7b6-45fb-1694baa99b97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:177a25c0-288c-ec33-c127-1a1ff16e8e79",
  "kind": "lemma",
  "lexical_name": "integrableOn_log_mul_exp_neg_Ioi_one",
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
  "slug": "integrableon-log-mul-exp-neg-ioi-one--47e35534bd2e61d05da7a711",
  "source": {
    "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 194,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e35534bd2e61d05da7a7110f5ab4fe9f3620a0d8f974a0f5d8a62b7f6b4836",
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

Occurrence: `result:177a25c0-288c-ec33-c127-1a1ff16e8e79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrableOn_log_mul_exp_neg_Ioi_one :
    IntegrableOn (fun t => log t * exp (-t)) (Set.Ioi 1) := by
  have hg : IntegrableOn (fun t => t * exp (-t)) (Set.Ioi 1) := by
    have := (GammaIntegral_convergent (s := 2) (by norm_num : (0 : ℝ) < 2)).mono_set
      (Set.Ioi_subset_Ioi zero_le_one)
    apply this.congr
    filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with t ht
    simp only [Set.mem_Ioi] at ht
    rw [show (2 : ℝ) - 1 = 1 from by norm_num, rpow_one t, mul_comm]
  rw [IntegrableOn] at hg ⊢
  exact hg.mono
    ((measurable_log.mul
        (continuous_exp.comp continuous_neg).measurable).aestronglyMeasurable.restrict)
    (by filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with t ht
        simp only [Set.mem_Ioi] at ht
        have ht0 : (0 : ℝ) < t := lt_trans zero_lt_one ht
        rw [norm_mul, norm_mul, Real.norm_eq_abs (log t), Real.norm_eq_abs t,
            abs_of_nonneg (log_nonneg ht.le), abs_of_pos ht0]
        exact mul_le_mul_of_nonneg_right (log_le_self ht0.le) (norm_nonneg _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
