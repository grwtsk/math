# g_integral_right_tail_upper

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
      "line": 528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a671e30d-48f8-7a36-f909-c950ffc9fc68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:646716dc-01de-440d-55b8-53b53ad7b01d",
  "kind": "theorem",
  "lexical_name": "g_integral_right_tail_upper",
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
  "slug": "g-integral-right-tail-upper--b2614c27f9c28e83d2fc1022",
  "source": {
    "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 528,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2614c27f9c28e83d2fc1022920827427f8a6a1e9370d9755df67172f0abfde6",
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

Occurrence: `result:646716dc-01de-440d-55b8-53b53ad7b01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_integral_right_tail_upper (ε : ℝ) (hε_pos : 0 < ε) (hε_lt : ε < 1) :
    ∫ t in (1 - ε:ℝ)..1, g t ≤ 2 * ε := by
  have h1mε_pos : 0 < 1 - ε := by linarith
  have h1mε_lt1 : 1 - ε < 1 := by linarith
  have hInt : IntervalIntegrable g volume (1 - ε:ℝ) 1 := by
    have hmeas : Measurable g := by
      have hlog1p : Measurable fun t : ℝ => Real.log (1 + t) :=
        Real.measurable_log.comp (measurable_const.add measurable_id)
      have hlog1m : Measurable fun t : ℝ => Real.log (1 - t) :=
        Real.measurable_log.comp (measurable_const.sub measurable_id)
      have hlog1p_inv : Measurable fun t : ℝ => (Real.log (1 + t))⁻¹ := hlog1p.inv
      have hlog1m_inv : Measurable fun t : ℝ => (Real.log (1 - t))⁻¹ := hlog1m.inv
      unfold g symmetricLogCombination
      simpa [one_div] using hlog1p_inv.add hlog1m_inv
    have hInt_Ioo : IntegrableOn g (Set.Ioo (1 - ε:ℝ) 1) volume := by
      apply Measure.integrableOn_of_bounded
      · exact measure_Ioo_lt_top.ne
      · exact hmeas.aestronglyMeasurable
      · refine (ae_restrict_iff' measurableSet_Ioo).2 ?_
        exact ae_of_all _ (fun t ht => by
          have ht_pos : 0 < t := by linarith [ht.1, h1mε_pos]
          have hpos := g_pos t ht_pos ht.2
          have hle := g_le_two t ht_pos ht.2
          have habs : |g t| = g t := abs_of_pos hpos
          simpa [Real.norm_eq_abs, habs] using hle)
    have hab : (1 - ε : ℝ) ≤ 1 := by linarith
    exact (intervalIntegrable_iff_integrableOn_Ioo_of_le hab).2 hInt_Ioo
  have hInt_const : IntervalIntegrable (fun _ : ℝ => (2:ℝ)) volume (1 - ε:ℝ) 1 :=
    intervalIntegrable_const
  have hmono : ∀ t ∈ Set.Ioo (1 - ε:ℝ) 1, g t ≤ (2:ℝ) := by
    intro t ht
    have ht_pos : 0 < t := by linarith [ht.1, h1mε_pos]
    exact g_le_two t ht_pos ht.2
  have hab : (1 - ε : ℝ) ≤ 1 := by linarith
  have hle :=
    intervalIntegral.integral_mono_on_of_le_Ioo (μ:=volume)
      (hab := hab) (hf := hInt) (hg := hInt_const) hmono
  have hconst : ∫ t in (1 - ε:ℝ)..1, (2:ℝ) = 2 * ε := by
    simp [intervalIntegral.integral_const]; ring
  linarith

/-! ### Verified Log Bounds via LeanCert

We use LeanCert's interval arithmetic to establish verified bounds on logarithms. -/

open LeanCert.Core.IntervalRat in
/-- log(2) < 72/100 = 0.72.
    Verified via interval arithmetic: logPointComputable 2 20 has upper bound < 0.72 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f75406f6827c7451ea51375b6d9f2fe06fc13416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
