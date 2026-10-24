# not_isPathConnected_T

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:774ac56b-e815-9afc-9f16-3db0b6809343",
  "kind": "theorem",
  "lexical_name": "not_isPathConnected_T",
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
  "slug": "not-ispathconnected-t--c70e5aaf8b5b72bf313ec302",
  "source": {
    "blob": "d13892315ec353b6ee5db6e218b5be4da9141ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c70e5aaf8b5b72bf313ec3025d7b98b2e785b42eaafc3b1c1c4b0bbfc972e1c5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:774ac56b-e815-9afc-9f16-3db0b6809343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isPathConnected_T : ¬ IsPathConnected T := by
  -- **Step 1**:
  -- Assume for contradiction we have a path from `z = (0, 0)` to `w = (1, sin 1)`.
  -- Let t₀ be the last time the path is on the y-axis. By continuity of the path, we
  -- can find a `δ > 0` such that for all `t ∈ [t₀, t₀ + δ]`, we have `‖p(t) - p(t₀)‖ < 1`.
  intro h_pathConn
  replace h_pathConn := h_pathConn.joinedIn (0, 0) zero_mem_T w w_mem_T
  let p := h_pathConn.somePath
  have xcoord_pathContinuous : Continuous fun t ↦ (p t).1 := continuous_fst.comp p.continuous
  let t₀ : unitInterval := sSup {t | (p t).1 = 0}
  have h_pt₀_x : (p t₀).1 = 0 :=
    (isClosed_singleton.preimage xcoord_pathContinuous).sSup_mem ⟨0, by aesop⟩
  obtain ⟨δ, hδ, ht⟩ : ∃ δ, 0 < δ ∧ ∀ t, dist t t₀ < δ → dist (p t) (p t₀) < 1 :=
    Metric.eventually_nhds_iff.mp <| Metric.tendsto_nhds.mp (p.continuousAt t₀) _ one_pos
  -- **Step 2**:
  -- Choose a time t₁ in (t₀, t₀ + δ) and let `a = x(p(t₁))`. Using the fact that every
  -- connected subset of `ℝ` is an interval, we have `[0, a] ⊂ x(p([t0, t1]))`.
  obtain ⟨t₁, ht₁⟩ : ∃ t₁, t₀ < t₁ ∧ dist t₀ t₁ < δ := by
    refine exists_unitInterval_gt (lt_of_le_of_ne (unitInterval.le_one t₀) fun ht₀' ↦ ?_) hδ
    have w_x_path : (p 1).1 = 1 := by rw [Path.target p, w]
    have x_eq_zero : (p 1).1 = 0 := by rwa [ht₀'] at h_pt₀_x
    linarith
  let a := (p t₁).1
  have ha : 0 < a := by
    obtain ⟨x, hxI, hx_eq⟩ : p t₁ ∈ S := by
      refine (h_pathConn.somePath_mem t₁).elim id fun ⟨y, hy⟩ ↦ ?_
      have : (p t₁).1 = 0 := by simp only [p, ← hy.2]
      exact ((show t₁ ≤ t₀ from le_sSup this).not_gt ht₁.1).elim
    simpa only [a, ← hx_eq] using! hxI
  have intervalAZeroSubOfT₀T₁Xcoord : Icc 0 a ⊆ (fun t ↦ (p t).1) '' Icc t₀ t₁ :=
    (isPreconnected_Icc.image _ <| xcoord_pathContinuous.continuousOn).Icc_subset
      (show 0 ∈ (fun t ↦ (p t).1) '' Icc t₀ t₁ from ⟨t₀, ⟨le_rfl, ht₁.1.le⟩, ‹_›⟩)
      (show a ∈ (fun t ↦ (p t).1) '' Icc t₀ t₁ from ⟨t₁, ⟨ht₁.1.le, le_rfl⟩, rfl⟩)
  -- **Step 3**: For every `y ∈ [-1, 1]`, there exists a `t` with `p t = y` and `dist t₀ t < δ`.
  have exists_close {y : ℝ} (hy : y ∈ Icc (-1) 1) : ∃ t, dist t t₀ < δ ∧ (p t).2 = y := by
    -- first find a `t ∈ [t₀, t₁]` with this property
    obtain ⟨x, hx, hx'⟩ := exists_mem_Ioc_of_y hy ha
    obtain ⟨t, ht⟩ : ∃ t ∈ Icc t₀ t₁, (p t).1 = x := intervalAZeroSubOfT₀T₁Xcoord ⟨hx.1.le, hx.2⟩
    have hp : (p t).2 = sin (p t).1⁻¹ := mem_S_of_x_pos (ht.2 ▸ hx.1) (h_pathConn.somePath_mem t)
    refine ⟨t, ?_, by rw [← hx', hp, ht.2]⟩
    calc -- now show `t ∈ Icc t₀ t₁` implies `dist t t₀ < δ`
    dist t t₀ ≤ dist t₁ t₀ := dist_right_le_of_mem_uIcc (Icc_subset_uIcc' ht.1)
    _ = dist t₀ t₁ := by rw [dist_comm]
    _ < δ := ht₁.2
  -- **Step 4**:
  -- Now the final contradiction: there are times within `δ` of `t₀` with `p t = 1`, and with
  -- `p t = -1`; but both must have distance `< 1` from `p t₀`, contradicting the triangle
  -- inequality.
  obtain ⟨x₁, hx₁, h_pathx₁⟩ : ∃ x₁, dist x₁ t₀ < δ ∧ (p x₁).2 = 1 := exists_close (by simp)
  obtain ⟨x₂, hx₂, h_pathx₂⟩ : ∃ x₂, dist x₂ t₀ < δ ∧ (p x₂).2 = -1 := exists_close (by simp)
  have : dist (p x₁) (p x₂) < 2 := by
    refine (dist_triangle_right _ _ (p t₀)).trans_lt ?_
    exact (add_lt_add (ht _ hx₁) (ht _ hx₂)).trans_eq (by norm_num)
  have := norm_ge_abs_snd.trans_lt this
  rw [h_pathx₁, h_pathx₂, abs_of_nonneg (by norm_num)] at this
  linarith

end TopologistsSineCurve
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d13892315ec353b6ee5db6e218b5be4da9141ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
