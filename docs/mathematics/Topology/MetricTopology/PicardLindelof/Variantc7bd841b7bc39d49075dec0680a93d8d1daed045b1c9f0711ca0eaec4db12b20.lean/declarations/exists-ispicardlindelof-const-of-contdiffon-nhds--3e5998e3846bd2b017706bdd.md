# exists_isPicardLindelof_const_of_contDiffOn_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd88fadc-3870-77f2-9a0a-e58cc4549c47",
  "kind": "theorem",
  "lexical_name": "exists_isPicardLindelof_const_of_contDiffOn_nhds",
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
  "slug": "exists-ispicardlindelof-const-of-contdiffon-nhds--3e5998e3846bd2b017706bdd",
  "source": {
    "blob": "453afc79087439710666327a609f0f22e9a6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 406,
    "path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e5998e3846bd2b017706bdd774738373670e6b3f465189a8a20e19f5511ab90",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd88fadc-3870-77f2-9a0a-e58cc4549c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isPicardLindelof_const_of_contDiffOn_nhds {s : Set E} (hv : ContDiffOn ℝ 1 v s)
    (hs : s ∈ 𝓝 x₀) :
    ∃ ε > (0 : ℝ), ∃ L R C, IsPicardLindelof (fun _ => v) (t₀ - ε) t₀ (t₀ + ε) x₀ L R C := by
  -- extract Lipschitz constant
  obtain ⟨L, s', hs', hlip⟩ :=
    ContDiffAt.exists_lipschitzOnWith ((hv.contDiffWithinAt (mem_of_mem_nhds hs)).contDiffAt hs)
  -- radius of closed ball in which v is bounded
  obtain ⟨r, hr : 0 < r, hball⟩ := Metric.mem_nhds_iff.mp (inter_sets (𝓝 x₀) hs hs')
  have hr' := (half_pos hr).le
  -- uses [ProperSpace E] for `isCompact_closedBall`
  obtain ⟨C, hC⟩ := (isCompact_closedBall x₀ (r / 2)).bddAbove_image <| hv.continuousOn.norm.mono
    (subset_inter_iff.mp ((closedBall_subset_ball (half_lt_self hr)).trans hball)).left
  have hC' : 0 ≤ C := by
    apply (norm_nonneg (v x₀)).trans
    apply hC
    exact ⟨x₀, ⟨mem_closedBall_self hr', rfl⟩⟩
  set ε := if C = 0 then 1 else r / 2 / C with hε
  have hε0 : 0 < ε := by
    rw [hε]
    split_ifs with h
    · exact zero_lt_one
    · exact div_pos (half_pos hr) (lt_of_le_of_ne hC' (Ne.symm h))
  refine' ⟨ε, hε0, L, r / 2, C, _⟩
  exact
    { ht₀ := by rw [← Real.closedBall_eq_Icc]; exact mem_closedBall_self hε0.le
      hR := (half_pos hr).le
      lipschitz := fun t _ => hlip.mono
        (subset_inter_iff.mp (Subset.trans (closedBall_subset_ball (half_lt_self hr)) hball)).2
      cont := fun x _ => continuousOn_const
      norm_le := fun t _ x hx => hC ⟨x, hx, rfl⟩
      C_mul_le_R := by
        rw [add_sub_cancel', sub_sub_cancel, max_self, mul_ite, mul_one]
        split_ifs with h
        · rwa [← h] at hr'
        · exact (mul_div_cancel' (r / 2) h).le }
#align exists_is_picard_lindelof_const_of_cont_diff_on_nhds exists_isPicardLindelof_const_of_contDiffOn_nhds

/-- A time-independent, locally continuously differentiable ODE admits a solution in some open
interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453afc79087439710666327a609f0f22e9a6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
