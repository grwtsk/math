# edge_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b986f9e1d27b12f03120458974c03cff4d8dd46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5adfabf6-f1fc-5a5a-a3eb-b4c73ad327bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3abca8d4-033b-6e0c-d580-4ccd7c875b02",
  "kind": "theorem",
  "lexical_name": "edge_estimate",
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
  "slug": "edge-estimate--b2b4b7da41b1b265ce0fd491",
  "source": {
    "blob": "3b986f9e1d27b12f03120458974c03cff4d8dd46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2b4b7da41b1b265ce0fd49143d394947898e4ca8c1a338e202b6a017938bbe8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3abca8d4-033b-6e0c-d580-4ccd7c875b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_estimate {h p : ℝ → ℝ} {L w : ℝ} (_hL : 0 < L) (hw0 : 0 < w)
    (hwL : 2 * w ≤ L) (hh : ∀ u, |h u| ≤ 1) (hp0 : ∀ u, 0 ≤ p u) (hp1 : ∀ u, p u ≤ 1)
    (hpl : ∀ u : ℝ, |u| ≤ L/2 - w → p u = 1) (hsupp : ∀ u : ℝ, L/2 ≤ |u| → p u = 0)
    (hpc : Continuous p) (hhc : Continuous h) :
    |(∫ u, h u * p u) - ∫ u in Set.Icc (-(L/2)) (L/2), h u| ≤ 2 * w := by
  have hrestr : ∫ u, h u * p u = ∫ u in Set.Icc (-(L/2)) (L/2), h u * p u := by
    rw [MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero]
    intro x hx
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at hx
    have : L / 2 ≤ |x| := by
      rcases hx with hc | hc
      · rw [abs_of_neg (by linarith : x < 0)]; linarith
      · rw [abs_of_pos (by linarith : 0 < x)]; linarith
    rw [hsupp x this, mul_zero]
  have hIhp : MeasureTheory.IntegrableOn (fun u => h u * p u) (Set.Icc (-(L/2)) (L/2)) :=
    ((hhc.mul hpc).continuousOn).integrableOn_compact isCompact_Icc
  have hIh : MeasureTheory.IntegrableOn h (Set.Icc (-(L/2)) (L/2)) :=
    (hhc.continuousOn).integrableOn_compact isCompact_Icc
  have hsub : (∫ u, h u * p u) - ∫ u in Set.Icc (-(L/2)) (L/2), h u
      = ∫ u in Set.Icc (-(L/2)) (L/2), (h u * p u - h u) := by
    rw [hrestr, ← MeasureTheory.integral_sub hIhp hIh]
  rw [hsub]
  set maj : ℝ → ℝ := fun u => (Set.Icc (-(L/2)) (-(L/2) + w)).indicator (1 : ℝ → ℝ) u
      + (Set.Icc (L/2 - w) (L/2)).indicator (1 : ℝ → ℝ) u with hmaj
  have hImaj : Integrable maj := by
    apply Integrable.add
    · exact (MeasureTheory.integrable_indicator_iff measurableSet_Icc).mpr
        (MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top))
    · exact (MeasureTheory.integrable_indicator_iff measurableSet_Icc).mpr
        (MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top))
  have hind0 : ∀ (s : Set ℝ) (u : ℝ), 0 ≤ s.indicator (1 : ℝ → ℝ) u := fun s u =>
    Set.indicator_nonneg (fun _ _ => zero_le_one) u
  have hptw : ∀ u ∈ Set.Icc (-(L/2)) (L/2), |h u * p u - h u| ≤ maj u := by
    intro u hu
    have hmaj0 : 0 ≤ maj u := by
      rw [hmaj]
      exact add_nonneg (hind0 _ u) (hind0 _ u)
    rcases le_or_gt |u| (L/2 - w) with hpl' | hedge
    · rw [hpl u hpl', mul_one, sub_self, abs_zero]
      exact hmaj0
    · have hbound : |h u * p u - h u| ≤ 1 := by
        have e : h u * p u - h u = h u * (p u - 1) := by ring
        rw [e, abs_mul]
        calc |h u| * |p u - 1| ≤ 1 * 1 := by
              apply mul_le_mul (hh u) ?_ (abs_nonneg _) zero_le_one
              rw [abs_le]
              exact ⟨by linarith [hp0 u], by linarith [hp1 u]⟩
          _ = 1 := mul_one 1
      have hone : (1:ℝ) ≤ maj u := by
        rw [hmaj]
        show (1:ℝ) ≤ (Set.Icc (-(L/2)) (-(L/2) + w)).indicator (1 : ℝ → ℝ) u
          + (Set.Icc (L/2 - w) (L/2)).indicator (1 : ℝ → ℝ) u
        rcases le_or_gt u 0 with hneg | hpos
        · have hu1 : u ∈ Set.Icc (-(L/2)) (-(L/2) + w) := by
            refine ⟨hu.1, ?_⟩
            have habs : |u| = -u := abs_of_nonpos hneg
            rw [habs] at hedge
            linarith
          have := hind0 (Set.Icc (L/2 - w) (L/2)) u
          rw [Set.indicator_of_mem hu1, Pi.one_apply]
          linarith
        · have hu1 : u ∈ Set.Icc (L/2 - w) (L/2) := by
            refine ⟨?_, hu.2⟩
            have habs : |u| = u := abs_of_pos hpos
            rw [habs] at hedge
            linarith
          have := hind0 (Set.Icc (-(L/2)) (-(L/2) + w)) u
          rw [Set.indicator_of_mem hu1, Pi.one_apply]
          linarith
      linarith
  calc |∫ u in Set.Icc (-(L/2)) (L/2), (h u * p u - h u)|
      ≤ ∫ u in Set.Icc (-(L/2)) (L/2), |h u * p u - h u| :=
        MeasureTheory.abs_integral_le_integral_abs
    _ ≤ ∫ u in Set.Icc (-(L/2)) (L/2), maj u := by
        apply MeasureTheory.setIntegral_mono_on
          (((hhc.mul hpc).sub hhc).abs.continuousOn.integrableOn_compact isCompact_Icc)
          hImaj.integrableOn measurableSet_Icc hptw
    _ ≤ ∫ u, maj u :=
        MeasureTheory.setIntegral_le_integral hImaj
          (MeasureTheory.ae_of_all _ fun u => by
            rw [hmaj]
            apply add_nonneg <;> exact Set.indicator_nonneg (fun _ _ => zero_le_one) u)
    _ = 2 * w := by
        rw [hmaj]
        rw [MeasureTheory.integral_add
          ((MeasureTheory.integrable_indicator_iff measurableSet_Icc).mpr
            (MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)))
          ((MeasureTheory.integrable_indicator_iff measurableSet_Icc).mpr
            (MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)))]
        rw [MeasureTheory.integral_indicator_one measurableSet_Icc,
          MeasureTheory.integral_indicator_one measurableSet_Icc,
          MeasureTheory.measureReal_def, MeasureTheory.measureReal_def,
          Real.volume_Icc, Real.volume_Icc,
          ENNReal.toReal_ofReal (by linarith), ENNReal.toReal_ofReal (by linarith)]
        ring

/-- substitution: ∫_{−L/2..L/2} g(u/L) du = L · ∫_{−1/2..1/2} g. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b986f9e1d27b12f03120458974c03cff4d8dd46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
