# AnalyticOn_divRemovable_zero_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad73571b-88b3-7950-6668-d60e4b30a168",
  "kind": "lemma",
  "lexical_name": "AnalyticOn_divRemovable_zero_closedBall",
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
  "slug": "analyticon-divremovable-zero-closedball--882f022ede8b205c13233a1b",
  "source": {
    "blob": "af5af9c63f28c935725a77402f969c98766e02e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 129,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:882f022ede8b205c13233a1bac21b2c5770b65eb1bc6ccfc0f65f794afff0d72",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad73571b-88b3-7950-6668-d60e4b30a168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticOn_divRemovable_zero_closedBall {f : ℂ → ℂ}
    {R : ℝ} (Rpos : 0 < R)
    (analytic : AnalyticOn ℂ f (Metric.closedBall 0 R))
    (zero : f 0 = 0) :
    AnalyticOn ℂ (divRemovable_zero f)
      (Metric.closedBall 0 R) := by
  apply analyticOn_of_locally_analyticOn
  intro x x_hyp
  by_cases h : ‖x‖ = R
  · use Metric.ball x (R / 2)
    refine ⟨Metric.isOpen_ball, ?_, ?_⟩
    · simp only [Metric.mem_ball, dist_self, Nat.ofNat_pos, div_pos_iff_of_pos_right]
      positivity
    · have Z :
          ∀ w ∈ Metric.closedBall 0 R ∩ Metric.ball x (R / 2),
          divRemovable_zero f w = f w / w := by
        intro x₂ hyp_x₂
        apply divRemovable_zero_of_ne_zero
        rw [ball_eq, Set.mem_inter_iff, Metric.mem_closedBall, dist_zero_right,
          Set.mem_setOf_eq] at hyp_x₂
        rw [← norm_pos_iff]
        calc 0
          _ < R - ‖x₂ - x‖ := by
            obtain ⟨u, v⟩ := hyp_x₂
            linarith
          _ = ‖x‖ - ‖x - x₂‖ := by
            rw [h]
            simp only [sub_right_inj]
            exact norm_sub_rev ..
          _ ≤ ‖x - (x - x₂)‖ := norm_sub_norm_le ..
          _ ≤ ‖x₂‖ := by
            simp only [sub_sub_cancel, le_refl]
      apply AnalyticOn.congr
      · apply AnalyticOn.div
          (AnalyticOn.mono analytic Set.inter_subset_left)
          analyticOn_id
        intro x₁ hyp_x₁
        rw [ball_eq, Set.mem_inter_iff, Metric.mem_closedBall, dist_zero_right,
          Set.mem_setOf_eq] at hyp_x₁
        rw [← norm_pos_iff]
        calc 0
          _ < R - ‖x₁ - x‖ := by
            obtain ⟨u, v⟩ := hyp_x₁
            linarith
          _ = ‖x‖ - ‖-(x₁ - x)‖ := by
            rw [h, neg_sub, sub_right_inj]
            exact norm_sub_rev ..
          _ ≤ ‖x - (-(x₁ - x))‖ := norm_sub_norm_le ..
          _ = ‖x₁‖ := by rw [neg_sub, sub_sub_cancel]
      · simp only [Set.EqOn.eq_1, Set.mem_inter_iff, Metric.mem_closedBall,
          dist_zero_right, Metric.mem_ball, and_imp]
        intro x₃ hyp_x₃ dist_hyp
        have : x₃ ∈
            Metric.closedBall 0 R ∩ Metric.ball x (R / 2) :=
          Set.mem_inter
            (Metric.mem_closedBall.mpr
              (dist_zero_right x₃ ▸ hyp_x₃))
            (Metric.mem_ball.mpr dist_hyp)
        exact Z x₃ this
  · use Metric.ball 0 R
    refine ⟨Metric.isOpen_ball, ?_, ?_⟩
    · simp only [ball_eq, sub_zero, Set.mem_setOf_eq]
      simp only [Metric.mem_closedBall, dist_zero_right] at x_hyp
      exact lt_of_le_of_ne x_hyp h
    · have si : Metric.closedBall (0 : ℂ) R ∩ Metric.ball (0 : ℂ) R =
        Metric.ball (0 : ℂ) R := by
        apply Set.inter_eq_self_of_subset_right
        exact Metric.ball_subset_closedBall
      rw [si]
      exact AnalyticOn_divRemovable_zero
        (Metric.ball_mem_nhds 0 (by positivity))
        zero Metric.isOpen_ball
        (AnalyticOn.mono analytic
          Metric.ball_subset_closedBall)

@[blueprint "schwartzQuotient"
  (title := "schwartzQuotient")
  (statement := /--
    Given a complex function $f$ and a real number $M$, we define
    the function
    $$f_{M}(z):=\frac{g(z)}{2M - f(z)},$$
    where $g$ is defined as in Definition~\ref{divRemovable_zero}.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5af9c63f28c935725a77402f969c98766e02e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
