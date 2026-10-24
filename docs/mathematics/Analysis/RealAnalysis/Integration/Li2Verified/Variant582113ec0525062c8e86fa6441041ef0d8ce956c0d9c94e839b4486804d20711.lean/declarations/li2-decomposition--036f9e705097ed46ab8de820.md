# li2_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:411b7a6a-6d3a-0465-4576-33b9085b49ee",
  "kind": "theorem",
  "lexical_name": "li2_decomposition",
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
  "slug": "li2-decomposition--036f9e705097ed46ab8de820",
  "source": {
    "blob": "c9106be74b741fa31457f5a3764c19c97fe53c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 771,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:036f9e705097ed46ab8de8207772bd1ce3644ea825f31a15016337f53ef98eed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:411b7a6a-6d3a-0465-4576-33b9085b49ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_decomposition :
    li2 = (∫ t in (0:ℝ)..(1/100000), g t)
        + (∫ t in (1/100000:ℝ)..(1/10000), g t)
        + (∫ t in (1/10000:ℝ)..(1/1000), g t)
        + (∫ t in (1/1000:ℝ)..(999/1000), g t)
        + (∫ t in (999/1000:ℝ)..(9999/10000), g t)
        + (∫ t in (9999/10000:ℝ)..(99999/100000), g t)
        + (∫ t in (99999/100000:ℝ)..1, g t) := by
  unfold li2
  -- g is IntervalIntegrable on [0, 1] (proven in li2_upper_crude)
  have hInt : IntervalIntegrable g volume (0:ℝ) 1 := by
    have hmeas : Measurable g := by
      have hlog1p : Measurable fun t : ℝ => Real.log (1 + t) :=
        Real.measurable_log.comp (measurable_const.add measurable_id)
      have hlog1m : Measurable fun t : ℝ => Real.log (1 - t) :=
        Real.measurable_log.comp (measurable_const.sub measurable_id)
      have hlog1p_inv : Measurable fun t : ℝ => (Real.log (1 + t))⁻¹ := hlog1p.inv
      have hlog1m_inv : Measurable fun t : ℝ => (Real.log (1 - t))⁻¹ := hlog1m.inv
      unfold g symmetricLogCombination
      simpa [one_div] using hlog1p_inv.add hlog1m_inv
    have hInt_Ioo : IntegrableOn g (Set.Ioo (0:ℝ) 1) volume := by
      apply Measure.integrableOn_of_bounded
      · exact measure_Ioo_lt_top.ne
      · exact hmeas.aestronglyMeasurable
      · refine (ae_restrict_iff' measurableSet_Ioo).2 ?_
        exact ae_of_all _ (fun t ht => by
          have hpos := g_pos t ht.1 ht.2
          have hle := g_le_two t ht.1 ht.2
          have habs : |g t| = g t := abs_of_pos hpos
          simpa [Real.norm_eq_abs, habs] using hle)
    exact (intervalIntegrable_iff_integrableOn_Ioo_of_le (by norm_num : (0:ℝ) ≤ 1)).2 hInt_Ioo
  -- Split repeatedly using integral_add_adjacent_intervals
  -- Helper to prove Icc subset from boundary conditions
  have hIcc_sub : ∀ a b : ℝ, 0 ≤ a → b ≤ 1 → Set.Icc a b ⊆ Set.Icc (0:ℝ) 1 := by
    intro a b ha hb
    exact Set.Icc_subset_Icc ha hb
  have h1 : ∫ t in (0:ℝ)..1, g t =
      (∫ t in (0:ℝ)..(99999/100000), g t) + (∫ t in (99999/100000:ℝ)..1, g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 99999/100000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (99999:ℝ)/100000 ≤ 1),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h2 : ∫ t in (0:ℝ)..(99999/100000), g t =
      (∫ t in (0:ℝ)..(9999/10000), g t) + (∫ t in (9999/10000:ℝ)..(99999/100000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 9999/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (9999:ℝ)/10000 ≤ 99999/100000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h3 : ∫ t in (0:ℝ)..(9999/10000), g t =
      (∫ t in (0:ℝ)..(999/1000), g t) + (∫ t in (999/1000:ℝ)..(9999/10000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 999/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (999:ℝ)/1000 ≤ 9999/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h4 : ∫ t in (0:ℝ)..(999/1000), g t =
      (∫ t in (0:ℝ)..(1/1000), g t) + (∫ t in (1/1000:ℝ)..(999/1000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (1:ℝ)/1000 ≤ 999/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h5 : ∫ t in (0:ℝ)..(1/1000), g t =
      (∫ t in (0:ℝ)..(1/10000), g t) + (∫ t in (1/10000:ℝ)..(1/1000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (1:ℝ)/10000 ≤ 1/1000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  have h6 : ∫ t in (0:ℝ)..(1/10000), g t =
      (∫ t in (0:ℝ)..(1/100000), g t) + (∫ t in (1/100000:ℝ)..(1/10000), g t) := by
    symm
    exact intervalIntegral.integral_add_adjacent_intervals
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1/100000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
      (hInt.mono_set (by simp only [Set.uIcc_of_le (by norm_num : (1:ℝ)/100000 ≤ 1/10000),
                                    Set.uIcc_of_le (by norm_num : (0:ℝ) ≤ 1)]; exact hIcc_sub _ _ (by norm_num) (by norm_num)))
  -- Combine all the splits
  rw [h1, h2, h3, h4, h5, h6]

/-- Lower bound on integral over an interval given pointwise lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9106be74b741fa31457f5a3764c19c97fe53c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
