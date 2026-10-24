# exists_isPicardLindelof_const_of_contDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ae3474-b267-af77-06b5-90356c79b9f5",
  "kind": "theorem",
  "lexical_name": "exists_isPicardLindelof_const_of_contDiffAt",
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
  "slug": "exists-ispicardlindelof-const-of-contdiffat--c7ad7a75edb236b7dc1ee1cf",
  "source": {
    "blob": "e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7ad7a75edb236b7dc1ee1cf00a97afa398ae785123a02248b926b8dcdfdd2b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ae3474-b267-af77-06b5-90356c79b9f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isPicardLindelof_const_of_contDiffAt (hv : ContDiffAt ℝ 1 v x₀) :
    ∃ ε > (0 : ℝ), ∃ L R C, IsPicardLindelof (fun _ => v) (t₀ - ε) t₀ (t₀ + ε) x₀ L R C := by
  obtain ⟨L, s, hs, hlip⟩ := hv.exists_lipschitzOnWith
  obtain ⟨R₁, hR₁ : 0 < R₁, hball⟩ := Metric.mem_nhds_iff.mp hs
  obtain ⟨R₂, hR₂ : 0 < R₂, hbdd⟩ := Metric.continuousAt_iff.mp hv.continuousAt.norm 1 zero_lt_one
  have hbdd' : ∀ x ∈ Metric.ball x₀ R₂, ‖v x‖ ≤ 1 + ‖v x₀‖ := fun _ hx =>
    sub_le_iff_le_add.mp <| le_of_lt <| lt_of_abs_lt <| Real.dist_eq _ _ ▸ hbdd hx
  set ε := min R₁ R₂ / 2 / (1 + ‖v x₀‖) with hε
  have hε0 : 0 < ε := hε ▸ div_pos (half_pos <| lt_min hR₁ hR₂)
    (add_pos_of_pos_of_nonneg zero_lt_one (norm_nonneg _))
  refine ⟨ε, hε0, L, min R₁ R₂ / 2, 1 + ‖v x₀‖, ?_⟩
  exact
    { ht₀ := Real.closedBall_eq_Icc ▸ mem_closedBall_self hε0.le
      hR := by positivity
      lipschitz := fun _ _ => hlip.mono <|
        (closedBall_subset_ball <| half_lt_self <| lt_min hR₁ hR₂).trans <|
        (Metric.ball_subset_ball <| min_le_left _ _).trans hball
      cont := fun _ _ => continuousOn_const
      norm_le := fun _ _ x hx => hbdd' x <| mem_of_mem_of_subset hx <|
        (closedBall_subset_ball <| half_lt_self <| lt_min hR₁ hR₂).trans <|
        (Metric.ball_subset_ball <| min_le_right _ _).trans (subset_refl _)
      C_mul_le_R := by
        rw [add_sub_cancel_left, sub_sub_cancel, max_self, hε, mul_div_left_comm, div_self, mul_one]
        exact ne_of_gt <| add_pos_of_pos_of_nonneg zero_lt_one <| norm_nonneg _ }

variable [CompleteSpace E]

/-- A time-independent, continuously differentiable ODE admits a solution in some open interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
