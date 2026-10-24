# tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84efc054-b427-6d30-d515-988d1b927a2a",
  "kind": "theorem",
  "lexical_name": "tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto_aux",
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
  "slug": "tendsto-setintegral-peak-smul-of-integrableon-of-tendsto-aux--5f38128c5cb1b8b7d64ac539",
  "source": {
    "blob": "e2beb561cb08d2bfa274f61218cd4102231b2ed7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f38128c5cb1b8b7d64ac539b7603c47d85125b5e72ca11b2e06e66c23c14c9f",
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

Occurrence: `result:84efc054-b427-6d30-d515-988d1b927a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto_aux
    (hs : MeasurableSet s) (ht : MeasurableSet t) (hts : t ⊆ s) (h'ts : t ∈ 𝓝[s] x₀)
    (hnφ : ∀ᶠ i in l, ∀ x ∈ s, 0 ≤ φ i x)
    (hlφ : ∀ u : Set α, IsOpen u → x₀ ∈ u → TendstoUniformlyOn φ 0 l (s \ u))
    (hiφ : Tendsto (fun i ↦ ∫ x in t, φ i x ∂μ) l (𝓝 1))
    (h'iφ : ∀ᶠ i in l, AEStronglyMeasurable (φ i) (μ.restrict s))
    (hmg : IntegrableOn g s μ) (hcg : Tendsto g (𝓝[s] x₀) (𝓝 0)) :
    Tendsto (fun i : ι => ∫ x in s, φ i x • g x ∂μ) l (𝓝 0) := by
  refine Metric.tendsto_nhds.2 fun ε εpos => ?_
  obtain ⟨δ, hδ, δpos, δone⟩ : ∃ δ, (δ * ∫ x in s, ‖g x‖ ∂μ) + 2 * δ < ε ∧ 0 < δ ∧ δ < 1 := by
    have A :
      Tendsto (fun δ => (δ * ∫ x in s, ‖g x‖ ∂μ) + 2 * δ) (𝓝[>] 0)
        (𝓝 ((0 * ∫ x in s, ‖g x‖ ∂μ) + 2 * 0)) := by
      apply Tendsto.mono_left _ nhdsWithin_le_nhds
      exact (tendsto_id.mul tendsto_const_nhds).add (tendsto_id.const_mul _)
    rw [zero_mul, zero_add, mul_zero] at A
    have : Ioo (0 : ℝ) 1 ∈ 𝓝[>] 0 := Ioo_mem_nhdsGT zero_lt_one
    rcases (((tendsto_order.1 A).2 ε εpos).and this).exists with ⟨δ, hδ, h'δ⟩
    exact ⟨δ, hδ, h'δ.1, h'δ.2⟩
  suffices ∀ᶠ i in l, ‖∫ x in s, φ i x • g x ∂μ‖ ≤ (δ * ∫ x in s, ‖g x‖ ∂μ) + 2 * δ by
    filter_upwards [this] with i hi
    simp only [dist_zero_right]
    exact hi.trans_lt hδ
  obtain ⟨u, u_open, x₀u, ut, hu⟩ :
      ∃ u, IsOpen u ∧ x₀ ∈ u ∧ s ∩ u ⊆ t ∧ ∀ x ∈ u ∩ s, g x ∈ ball 0 δ := by
    rcases mem_nhdsWithin.1 (Filter.inter_mem h'ts (hcg (ball_mem_nhds _ δpos)))
      with ⟨u, u_open, x₀u, hu⟩
    refine ⟨u, u_open, x₀u, ?_, hu.trans inter_subset_right⟩
    rw [inter_comm]
    exact hu.trans inter_subset_left
  filter_upwards [tendstoUniformlyOn_iff.1 (hlφ u u_open x₀u) δ δpos,
    (tendsto_order.1 (tendsto_iff_norm_sub_tendsto_zero.1 hiφ)).2 δ δpos, hnφ,
    integrableOn_peak_smul_of_integrableOn_of_tendsto hs h'ts hlφ hiφ h'iφ hmg hcg]
    with i hi h'i hφpos h''i
  have I : IntegrableOn (φ i) t μ := by
    apply Integrable.of_integral_ne_zero (fun h ↦ ?_)
    simp [h] at h'i
    linarith
  have B : ‖∫ x in s ∩ u, φ i x • g x ∂μ‖ ≤ 2 * δ :=
    calc
      ‖∫ x in s ∩ u, φ i x • g x ∂μ‖ ≤ ∫ x in s ∩ u, ‖φ i x • g x‖ ∂μ :=
        norm_integral_le_integral_norm _
      _ ≤ ∫ x in s ∩ u, ‖φ i x‖ * δ ∂μ := by
        refine setIntegral_mono_on ?_ ?_ (hs.inter u_open.measurableSet) fun x hx => ?_
        · exact IntegrableOn.mono_set h''i.norm inter_subset_left
        · exact IntegrableOn.mono_set (I.norm.mul_const _) ut
        rw [norm_smul]
        apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
        rw [inter_comm] at hu
        exact (mem_ball_zero_iff.1 (hu x hx)).le
      _ ≤ ∫ x in t, ‖φ i x‖ * δ ∂μ := by
        apply setIntegral_mono_set
        · exact I.norm.mul_const _
        · exact Eventually.of_forall fun x => mul_nonneg (norm_nonneg _) δpos.le
        · exact Eventually.of_forall ut
      _ = ∫ x in t, φ i x * δ ∂μ := by
        apply setIntegral_congr_fun ht fun x hx => ?_
        rw [Real.norm_of_nonneg (hφpos _ (hts hx))]
      _ = (∫ x in t, φ i x ∂μ) * δ := by rw [integral_mul_const]
      _ ≤ 2 * δ := by gcongr; linarith [(le_abs_self _).trans h'i.le]
  have C : ‖∫ x in s \ u, φ i x • g x ∂μ‖ ≤ δ * ∫ x in s, ‖g x‖ ∂μ :=
    calc
      ‖∫ x in s \ u, φ i x • g x ∂μ‖ ≤ ∫ x in s \ u, ‖φ i x • g x‖ ∂μ :=
        norm_integral_le_integral_norm _
      _ ≤ ∫ x in s \ u, δ * ‖g x‖ ∂μ := by
        refine setIntegral_mono_on ?_ ?_ (hs.diff u_open.measurableSet) fun x hx => ?_
        · exact IntegrableOn.mono_set h''i.norm diff_subset
        · exact IntegrableOn.mono_set (hmg.norm.const_mul _) diff_subset
        rw [norm_smul]
        apply mul_le_mul_of_nonneg_right _ (norm_nonneg _)
        simpa only [Pi.zero_apply, dist_zero_left] using (hi x hx).le
      _ ≤ δ * ∫ x in s, ‖g x‖ ∂μ := by
        rw [integral_const_mul]
        apply mul_le_mul_of_nonneg_left (setIntegral_mono_set hmg.norm _ _) δpos.le
        · filter_upwards with x using norm_nonneg _
        · filter_upwards using diff_subset (s := s) (t := u)
  calc
    ‖∫ x in s, φ i x • g x ∂μ‖ =
      ‖(∫ x in s \ u, φ i x • g x ∂μ) + ∫ x in s ∩ u, φ i x • g x ∂μ‖ := by
      conv_lhs => rw [← diff_union_inter s u]
      rw [setIntegral_union disjoint_sdiff_inter (hs.inter u_open.measurableSet)
          (h''i.mono_set diff_subset) (h''i.mono_set inter_subset_left)]
    _ ≤ ‖∫ x in s \ u, φ i x • g x ∂μ‖ + ‖∫ x in s ∩ u, φ i x • g x ∂μ‖ := norm_add_le _ _
    _ ≤ (δ * ∫ x in s, ‖g x‖ ∂μ) + 2 * δ := add_le_add C B

variable [CompleteSpace E]

/-- If a sequence of peak functions `φᵢ` converges uniformly to zero away from a point `x₀` and its
integral on some finite-measure neighborhood of `x₀` converges to `1`, and `g` is integrable and
has a limit `a` at `x₀`, then `∫ φᵢ • g` converges to `a`. Version localized to a subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2beb561cb08d2bfa274f61218cd4102231b2ed7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
