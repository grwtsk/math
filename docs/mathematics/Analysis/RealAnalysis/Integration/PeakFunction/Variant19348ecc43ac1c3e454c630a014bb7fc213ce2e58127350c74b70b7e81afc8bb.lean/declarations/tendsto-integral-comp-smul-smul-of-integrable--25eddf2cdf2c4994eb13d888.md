# tendsto_integral_comp_smul_smul_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7da4e2eb-2900-4010-3680-d659f9d932e3",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_comp_smul_smul_of_integrable",
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
  "slug": "tendsto-integral-comp-smul-smul-of-integrable--25eddf2cdf2c4994eb13d888",
  "source": {
    "blob": "e2beb561cb08d2bfa274f61218cd4102231b2ed7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 399,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25eddf2cdf2c4994eb13d8887f4dd442afb470bd5bfb9d58ed9edb296bc65199",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7da4e2eb-2900-4010-3680-d659f9d932e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_comp_smul_smul_of_integrable
    {φ : F → ℝ} (hφ : ∀ x, 0 ≤ φ x) (h'φ : ∫ x, φ x ∂μ = 1)
    (h : Tendsto (fun x ↦ ‖x‖ ^ finrank ℝ F * φ x) (cobounded F) (𝓝 0))
    {g : F → E} (hg : Integrable g μ) (h'g : ContinuousAt g 0) :
    Tendsto (fun (c : ℝ) ↦ ∫ x, (c ^ (finrank ℝ F) * φ (c • x)) • g x ∂μ) atTop (𝓝 (g 0)) := by
  have I : Integrable φ μ := integrable_of_integral_eq_one h'φ
  apply tendsto_integral_peak_smul_of_integrable_of_tendsto (t := closedBall 0 1) (x₀ := 0)
  · exact isClosed_closedBall.measurableSet
  · exact closedBall_mem_nhds _ zero_lt_one
  · exact (isCompact_closedBall 0 1).measure_ne_top
  · filter_upwards [Ici_mem_atTop 0] with c (hc : 0 ≤ c) x using mul_nonneg (by positivity) (hφ _)
  · intro u u_open hu
    apply tendstoUniformlyOn_iff.2 (fun ε εpos ↦ ?_)
    obtain ⟨δ, δpos, h'u⟩ : ∃ δ > 0, ball 0 δ ⊆ u := Metric.isOpen_iff.1 u_open _ hu
    obtain ⟨M, Mpos, hM⟩ : ∃ M > 0, ∀ ⦃x : F⦄, x ∈ (closedBall 0 M)ᶜ →
        ‖x‖ ^ finrank ℝ F * φ x < δ ^ finrank ℝ F * ε := by
      rcases (hasBasis_cobounded_compl_closedBall (0 : F)).eventually_iff.1
        ((tendsto_order.1 h).2 (δ ^ finrank ℝ F * ε) (by positivity)) with ⟨M, -, hM⟩
      refine ⟨max M 1, zero_lt_one.trans_le (le_max_right _ _), fun x hx ↦ hM ?_⟩
      simp only [mem_compl_iff, mem_closedBall, dist_zero_right, le_max_iff, not_or, not_le] at hx
      simpa using hx.1
    filter_upwards [Ioi_mem_atTop (M / δ)] with c (hc : M / δ < c) x hx
    have cpos : 0 < c := lt_trans (by positivity) hc
    suffices c ^ finrank ℝ F * φ (c • x) < ε by simpa [abs_of_nonneg (hφ _), abs_of_nonneg cpos.le]
    have hδx : δ ≤ ‖x‖ := by
      have : x ∈ (ball 0 δ)ᶜ := fun h ↦ hx (h'u h)
      simpa only [mem_compl_iff, mem_ball, dist_zero_right, not_lt]
    suffices δ ^ finrank ℝ F * (c ^ finrank ℝ F * φ (c • x)) < δ ^ finrank ℝ F * ε by
      rwa [mul_lt_mul_iff_of_pos_left (by positivity)] at this
    calc
      δ ^ finrank ℝ F * (c ^ finrank ℝ F * φ (c • x))
      _ ≤ ‖x‖ ^ finrank ℝ F * (c ^ finrank ℝ F * φ (c • x)) := by
        gcongr; exact mul_nonneg (by positivity) (hφ _)
      _ = ‖c • x‖ ^ finrank ℝ F * φ (c • x) := by
        simp [norm_smul, abs_of_pos cpos, mul_pow]; ring
      _ < δ ^ finrank ℝ F * ε := by
        apply hM
        rw [div_lt_iff₀ δpos] at hc
        simp only [mem_compl_iff, mem_closedBall, dist_zero_right, norm_smul, Real.norm_eq_abs,
          abs_of_nonneg cpos.le, not_le, gt_iff_lt]
        exact hc.trans_le (by gcongr)
  · have : Tendsto (fun c ↦ ∫ (x : F) in closedBall 0 c, φ x ∂μ) atTop (𝓝 1) := by
      rw [← h'φ]
      exact (aecover_closedBall tendsto_id).integral_tendsto_of_countably_generated I
    apply this.congr'
    filter_upwards [Ioi_mem_atTop 0] with c (hc : 0 < c)
    rw [integral_const_mul, setIntegral_comp_smul_of_pos _ _ _ hc, smul_eq_mul, ← mul_assoc,
      mul_inv_cancel₀ (by positivity), _root_.smul_closedBall _ _ zero_le_one]
    simp [abs_of_nonneg hc.le]
  · filter_upwards [Ioi_mem_atTop 0] with c (hc : 0 < c)
    exact (I.comp_smul hc.ne').aestronglyMeasurable.const_mul _
  · exact hg
  · exact h'g

/-- Consider a nonnegative function `φ` with integral one, decaying quickly enough at infinity.
Then suitable renormalizations of `φ` form a sequence of peak functions around any point:
`∫ (c ^ d * φ (c • (x₀ - x)) • g x` converges to `g x₀` as `c → ∞` if `g` is continuous at `x₀`
and integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2beb561cb08d2bfa274f61218cd4102231b2ed7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
