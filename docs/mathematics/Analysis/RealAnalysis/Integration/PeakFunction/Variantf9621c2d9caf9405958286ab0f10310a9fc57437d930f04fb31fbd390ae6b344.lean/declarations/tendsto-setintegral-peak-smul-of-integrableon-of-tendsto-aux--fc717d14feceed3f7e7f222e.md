# tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67f813a3-cc90-8d09-ec0a-98f16b42c23b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a095af3d-c3f6-5916-9995-a2865cce93a0",
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
  "slug": "tendsto-setintegral-peak-smul-of-integrableon-of-tendsto-aux--fc717d14feceed3f7e7f222e",
  "source": {
    "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc717d14feceed3f7e7f222e492d5ee68f50041e1cf40fd139ef2bd424885d7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a095af3d-c3f6-5916-9995-a2865cce93a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–179.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8982e7216adf6847d69ac4237916b9c28b1efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
