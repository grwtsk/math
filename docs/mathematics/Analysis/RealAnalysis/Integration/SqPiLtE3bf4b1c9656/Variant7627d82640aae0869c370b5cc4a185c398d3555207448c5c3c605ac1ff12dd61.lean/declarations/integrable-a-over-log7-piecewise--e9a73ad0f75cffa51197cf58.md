# integrable_a_over_log7_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1002,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7beabfb1-2652-cf23-b379-d9dc4b82d61f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00fb4b90-b87b-d535-8757-9c2822b2b1b0",
  "kind": "lemma",
  "lexical_name": "integrable_a_over_log7_piecewise",
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
  "slug": "integrable-a-over-log7-piecewise--e9a73ad0f75cffa51197cf58",
  "source": {
    "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1163,
    "line": 1002,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a73ad0f75cffa51197cf58f602679e9244e9dbfbc7910ebbb9364a2b30254b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00fb4b90-b87b-d535-8757-9c2822b2b1b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1002–1163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integrable_a_over_log7_piecewise (x : ℝ) (_hx2 : 2 ≤ x) :
    IntegrableOn (fun t ↦ a t / log t ^ 7) (Set.Icc 2 x) volume := by
  let I : Set ℝ := Set.Icc 2 x
  let A1 : Set ℝ := Set.Ico 2 599
  let A2 : Set ℝ := Set.Ico 599 (exp 58)
  let A3 : Set ℝ := Set.Ico (exp 58) (exp 1169)
  let A4 : Set ℝ := Set.Ico (exp 1169) (exp 2000)
  let A5 : Set ℝ := Set.Ico (exp 2000) (exp 3000)

  let S1 : Set ℝ := I ∩ A1
  let S2 : Set ℝ := I ∩ A1ᶜ ∩ A2
  let S3 : Set ℝ := I ∩ A1ᶜ ∩ A2ᶜ ∩ A3
  let S4 : Set ℝ := I ∩ A1ᶜ ∩ A2ᶜ ∩ A3ᶜ ∩ A4
  let S5 : Set ℝ := I ∩ A1ᶜ ∩ A2ᶜ ∩ A3ᶜ ∩ A4ᶜ ∩ A5
  let S6 : Set ℝ := I ∩ A1ᶜ ∩ A2ᶜ ∩ A3ᶜ ∩ A4ᶜ ∩ A5ᶜ

  let f : ℝ → ℝ := fun t ↦ a t / log t ^ 7

  let g1 : ℝ → ℝ := fun t ↦ (log t) ^ 5 * (1 - log 2 / 3) / log t ^ 7
  let g2 : ℝ → ℝ := fun t ↦ (log t) ^ 5 * (log t ^ 2 / (8 * π * sqrt t)) / log t ^ 7
  let g3 : ℝ → ℝ := fun t ↦ (log t) ^ 5 *
    (sqrt (8 / (17 * π)) * (log t / 6.455) ^ (1 / 4 : ℝ) * exp (-sqrt (log t / 6.455))) / log t ^ 7
  let g4 : ℝ → ℝ := fun t ↦ (log t) ^ 5 *
    (462.0 * (log t / 5.573412) ^ (1.52 : ℝ) * exp (-1.89 * sqrt (log t / 5.573412))) / log t ^ 7
  let g5 : ℝ → ℝ := fun t ↦ (log t) ^ 5 *
    (411.5 * (log t / 5.573412) ^ (1.52 : ℝ) * exp (-1.89 * sqrt (log t / 5.573412))) / log t ^ 7
  let g6 : ℝ → ℝ := fun t ↦ (log t) ^ 5 *
    (379.7 * (log t / 5.573412) ^ (1.52 : ℝ) * exp (-1.89 * sqrt (log t / 5.573412))) / log t ^ 7

  have hI_log_cont : ContinuousOn (fun t ↦ log t ^ 7) I := by
    dsimp [I]
    exact (continuousOn_log.mono (by intro t ht; exact ne_of_gt (by linarith [ht.1]))).pow 7
  have hI_log_ne : ∀ t ∈ I, log t ^ 7 ≠ 0 := by
    intro t ht
    exact pow_ne_zero _ (ne_of_gt (log_pos (by linarith [ht.1])))

  have hg1_cont : ContinuousOn g1 I := by
    dsimp [g1]
    refine (ContinuousOn.mul ((continuousOn_log.mono (by intro t ht; exact ne_of_gt (by linarith [ht.1]))).pow 5) continuousOn_const).div hI_log_cont ?_
    intro t ht
    exact hI_log_ne t ht

  have hg2_cont : ContinuousOn g2 I := by
    refine continuousOn_of_forall_continuousAt fun t ht => ?_
    fun_prop (disch := first | exact hI_log_ne t ht | exact ne_of_gt (show (0:ℝ) < t by linarith [ht.1]) | exact mul_ne_zero (by positivity) (sqrt_pos.mpr (show (0:ℝ) < t by linarith [ht.1])).ne' | (right; positivity) | (left; positivity) | positivity)

  have hg3_cont : ContinuousOn g3 I := by
    refine continuousOn_of_forall_continuousAt fun t ht => ?_
    fun_prop (disch := first | exact hI_log_ne t ht | exact ne_of_gt (show (0:ℝ) < t by linarith [ht.1]) | exact mul_ne_zero (by positivity) (sqrt_pos.mpr (show (0:ℝ) < t by linarith [ht.1])).ne' | (right; positivity) | (left; positivity) | positivity)

  have hcont46 : ∀ c : ℝ, ContinuousOn (fun t ↦ (log t) ^ 5 *
      (c * (log t / 5.573412) ^ (1.52 : ℝ) * exp (-1.89 * sqrt (log t / 5.573412))) / log t ^ 7) I := by
    intro c
    refine continuousOn_of_forall_continuousAt fun t ht ↦ ?_
    fun_prop (disch := first
      | exact hI_log_ne t ht | exact ne_of_gt (show (0:ℝ) < t by linarith [ht.1])
      | exact mul_ne_zero (by positivity) (sqrt_pos.mpr (show (0:ℝ) < t by linarith [ht.1])).ne'
      | (right; positivity) | (left; positivity) | positivity)

  have hg4_cont : ContinuousOn g4 I := by
    simpa [g4] using hcont46 462.0
  have hg5_cont : ContinuousOn g5 I := by
    simpa [g5] using hcont46 411.5
  have hg6_cont : ContinuousOn g6 I := by
    simpa [g6] using hcont46 379.7

  have hg1_int_I : IntegrableOn g1 I volume := ContinuousOn.integrableOn_Icc hg1_cont
  have hg2_int_I : IntegrableOn g2 I volume := ContinuousOn.integrableOn_Icc hg2_cont
  have hg3_int_I : IntegrableOn g3 I volume := ContinuousOn.integrableOn_Icc hg3_cont
  have hg4_int_I : IntegrableOn g4 I volume := ContinuousOn.integrableOn_Icc hg4_cont
  have hg5_int_I : IntegrableOn g5 I volume := ContinuousOn.integrableOn_Icc hg5_cont
  have hg6_int_I : IntegrableOn g6 I volume := ContinuousOn.integrableOn_Icc hg6_cont

  have hS1_meas : MeasurableSet S1 := by
    dsimp [S1, I, A1]; exact measurableSet_Icc.inter measurableSet_Ico
  have hS2_meas : MeasurableSet S2 := by
    dsimp [S2, I, A1, A2]; exact (measurableSet_Icc.inter measurableSet_Ico.compl).inter measurableSet_Ico
  have hS3_meas : MeasurableSet S3 := by
    dsimp [S3, I, A1, A2, A3]
    exact ((measurableSet_Icc.inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico
  have hS4_meas : MeasurableSet S4 := by
    dsimp [S4, I, A1, A2, A3, A4]
    exact (((measurableSet_Icc.inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico
  have hS5_meas : MeasurableSet S5 := by
    dsimp [S5, I, A1, A2, A3, A4, A5]
    exact ((((measurableSet_Icc.inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico
  have hS6_meas : MeasurableSet S6 := by
    dsimp [S6, I, A1, A2, A3, A4, A5]
    exact ((((measurableSet_Icc.inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico.compl).inter measurableSet_Ico.compl

  have hg1_int_S1 : IntegrableOn g1 S1 volume := hg1_int_I.mono_set (by intro t ht; exact ht.1)
  have hg2_int_S2 : IntegrableOn g2 S2 volume := hg2_int_I.mono_set (by intro t ht; exact ht.1.1)
  have hg3_int_S3 : IntegrableOn g3 S3 volume := hg3_int_I.mono_set (by intro t ht; exact ht.1.1.1)
  have hg4_int_S4 : IntegrableOn g4 S4 volume := hg4_int_I.mono_set (by intro t ht; exact ht.1.1.1.1)
  have hg5_int_S5 : IntegrableOn g5 S5 volume := hg5_int_I.mono_set (by intro t ht; exact ht.1.1.1.1.1)
  have hg6_int_S6 : IntegrableOn g6 S6 volume := hg6_int_I.mono_set (by intro t ht; exact ht.1.1.1.1.1)

  have hEq1 : EqOn f g1 S1 := by
    intro t ht
    have h1 : t ∈ Set.Ico 2 599 := by simpa [A1] using ht.2
    dsimp only [f, g1]; unfold a; simp [h1]

  have hEq2 : EqOn f g2 S2 := by
    intro t ht
    have h1 : t ∉ Set.Ico 2 599 := by simpa [A1] using ht.1.2
    have h2 : t ∈ Set.Ico 599 (exp 58) := by simpa [A2] using ht.2
    dsimp only [f, g2]; unfold a; simp [h1, h2]

  have hEq3 : EqOn f g3 S3 := by
    intro t ht
    have h1 : t ∉ Set.Ico 2 599 := by simpa [A1] using ht.1.1.2
    have h2 : t ∉ Set.Ico 599 (exp 58) := by simpa [A2] using ht.1.2
    have h3 : t ∈ Set.Ico (exp 58) (exp 1169) := by simpa [A3] using ht.2
    dsimp only [f, g3]; unfold a; simp [h1, h2, h3]

  have hEq4 : EqOn f g4 S4 := by
    intro t ht
    have h1 : t ∉ Set.Ico 2 599 := by simpa [A1] using ht.1.1.1.2
    have h2 : t ∉ Set.Ico 599 (exp 58) := by simpa [A2] using ht.1.1.2
    have h3 : t ∉ Set.Ico (exp 58) (exp 1169) := by simpa [A3] using ht.1.2
    have h4 : t ∈ Set.Ico (exp 1169) (exp 2000) := by simpa [A4] using ht.2
    dsimp only [f, g4]; unfold a; simp [h1, h2, h3, h4]

  have hEq5 : EqOn f g5 S5 := by
    intro t ht
    have h1 : t ∉ Set.Ico 2 599 := by simpa [A1] using ht.1.1.1.1.2
    have h2 : t ∉ Set.Ico 599 (exp 58) := by simpa [A2] using ht.1.1.1.2
    have h3 : t ∉ Set.Ico (exp 58) (exp 1169) := by simpa [A3] using ht.1.1.2
    have h4 : t ∉ Set.Ico (exp 1169) (exp 2000) := by simpa [A4] using ht.1.2
    have h5 : t ∈ Set.Ico (exp 2000) (exp 3000) := by simpa [A5] using ht.2
    dsimp only [f, g5]; unfold a; simp [h1, h2, h3, h4, h5]

  have hEq6 : EqOn f g6 S6 := by
    intro t ht
    have h1 : t ∉ Set.Ico 2 599 := by simpa [A1] using ht.1.1.1.1.2
    have h2 : t ∉ Set.Ico 599 (exp 58) := by simpa [A2] using ht.1.1.1.2
    have h3 : t ∉ Set.Ico (exp 58) (exp 1169) := by simpa [A3] using ht.1.1.2
    have h4 : t ∉ Set.Ico (exp 1169) (exp 2000) := by simpa [A4] using ht.1.2
    have h5 : t ∉ Set.Ico (exp 2000) (exp 3000) := by simpa [A5] using ht.2
    dsimp only [f, g6]; unfold a; simp [h1, h2, h3, h4, h5]

  have hf_int_S1 : IntegrableOn f S1 volume := (integrableOn_congr_fun hEq1 hS1_meas).2 hg1_int_S1
  have hf_int_S2 : IntegrableOn f S2 volume := (integrableOn_congr_fun hEq2 hS2_meas).2 hg2_int_S2
  have hf_int_S3 : IntegrableOn f S3 volume := (integrableOn_congr_fun hEq3 hS3_meas).2 hg3_int_S3
  have hf_int_S4 : IntegrableOn f S4 volume := (integrableOn_congr_fun hEq4 hS4_meas).2 hg4_int_S4
  have hf_int_S5 : IntegrableOn f S5 volume := (integrableOn_congr_fun hEq5 hS5_meas).2 hg5_int_S5
  have hf_int_S6 : IntegrableOn f S6 volume := (integrableOn_congr_fun hEq6 hS6_meas).2 hg6_int_S6

  let U : Set ℝ := S1 ∪ (S2 ∪ (S3 ∪ (S4 ∪ (S5 ∪ S6))))

  have hU_int : IntegrableOn f U volume := by
    dsimp [U]
    exact hf_int_S1.union (hf_int_S2.union (hf_int_S3.union (hf_int_S4.union (hf_int_S5.union hf_int_S6))))

  have hU_eq_I : U = I := by
    ext t
    dsimp only [U, S1, S2, S3, S4, S5, S6]
    simp only [Set.mem_union, Set.mem_inter_iff, Set.mem_compl_iff]
    tauto

  simpa [f, I, hU_eq_I] using hU_int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean#L1002).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06b8815a68e0bc3decd472336d6373f75f0d0ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
