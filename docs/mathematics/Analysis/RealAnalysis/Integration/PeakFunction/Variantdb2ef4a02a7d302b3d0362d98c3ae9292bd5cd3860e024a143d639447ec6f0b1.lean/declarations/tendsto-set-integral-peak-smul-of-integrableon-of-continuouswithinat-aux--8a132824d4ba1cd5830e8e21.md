# tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0440d9a6-b603-f537-673c-1bd53394c239",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82d43852-e316-d4a3-9a13-788a2ebf1c5f",
  "kind": "theorem",
  "lexical_name": "tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt_aux",
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
  "slug": "tendsto-set-integral-peak-smul-of-integrableon-of-continuouswithinat-aux--8a132824d4ba1cd5830e8e21",
  "source": {
    "blob": "8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a132824d4ba1cd5830e8e21c3fd5f223af8210e2100295357a8c192c7f22874",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d43852-e316-d4a3-9a13-788a2ebf1c5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt_aux
    (hs : MeasurableSet s) (hnφ : ∀ᶠ i in l, ∀ x ∈ s, 0 ≤ φ i x)
    (hlφ : ∀ u : Set α, IsOpen u → x₀ ∈ u → TendstoUniformlyOn φ 0 l (s \ u))
    (hiφ : ∀ᶠ i in l, ∫ x in s, φ i x ∂μ = 1) (hmg : IntegrableOn g s μ) (h'g : g x₀ = 0)
    (hcg : ContinuousWithinAt g s x₀) :
    Tendsto (fun i : ι => ∫ x in s, φ i x • g x ∂μ) l (𝓝 0) := by
  refine' Metric.tendsto_nhds.2 fun ε εpos => _
  obtain ⟨δ, hδ, δpos⟩ : ∃ δ, (δ * ∫ x in s, ‖g x‖ ∂μ) + δ < ε ∧ 0 < δ := by
    have A :
      Tendsto (fun δ => (δ * ∫ x in s, ‖g x‖ ∂μ) + δ) (𝓝[>] 0)
        (𝓝 ((0 * ∫ x in s, ‖g x‖ ∂μ) + 0)) := by
      apply Tendsto.mono_left _ nhdsWithin_le_nhds
      exact (tendsto_id.mul tendsto_const_nhds).add tendsto_id
    rw [zero_mul, zero_add] at A
    exact (((tendsto_order.1 A).2 ε εpos).and self_mem_nhdsWithin).exists
  suffices ∀ᶠ i in l, ‖∫ x in s, φ i x • g x ∂μ‖ ≤ (δ * ∫ x in s, ‖g x‖ ∂μ) + δ by
    filter_upwards [this] with i hi
    simp only [dist_zero_right]
    exact hi.trans_lt hδ
  obtain ⟨u, u_open, x₀u, hu⟩ : ∃ u, IsOpen u ∧ x₀ ∈ u ∧ ∀ x ∈ u ∩ s, g x ∈ ball (g x₀) δ
  exact mem_nhdsWithin.1 (hcg (ball_mem_nhds _ δpos))
  filter_upwards [tendstoUniformlyOn_iff.1 (hlφ u u_open x₀u) δ δpos, hiφ, hnφ,
    integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt hs hlφ hiφ hmg hcg] with i hi h'i
    hφpos h''i
  have B : ‖∫ x in s ∩ u, φ i x • g x ∂μ‖ ≤ δ :=
    calc
      ‖∫ x in s ∩ u, φ i x • g x ∂μ‖ ≤ ∫ x in s ∩ u, ‖φ i x • g x‖ ∂μ :=
        norm_integral_le_integral_norm _
      _ ≤ ∫ x in s ∩ u, ‖φ i x‖ * δ ∂μ := by
        refine' set_integral_mono_on _ _ (hs.inter u_open.measurableSet) fun x hx => _
        · exact IntegrableOn.mono_set h''i.norm (inter_subset_left _ _)
        · exact
            IntegrableOn.mono_set ((integrable_of_integral_eq_one h'i).norm.mul_const _)
              (inter_subset_left _ _)
        rw [norm_smul]
        apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
        rw [inter_comm, h'g] at hu
        exact (mem_ball_zero_iff.1 (hu x hx)).le
      _ ≤ ∫ x in s, ‖φ i x‖ * δ ∂μ := by
        apply set_integral_mono_set
        · exact (integrable_of_integral_eq_one h'i).norm.mul_const _
        · exact eventually_of_forall fun x => mul_nonneg (norm_nonneg _) δpos.le
        · apply eventually_of_forall; exact inter_subset_left s u
      _ = ∫ x in s, φ i x * δ ∂μ := by
        apply set_integral_congr hs fun x hx => ?_
        rw [Real.norm_of_nonneg (hφpos _ hx)]
      _ = δ := by rw [integral_mul_right, h'i, one_mul]
  have C : ‖∫ x in s \ u, φ i x • g x ∂μ‖ ≤ δ * ∫ x in s, ‖g x‖ ∂μ :=
    calc
      ‖∫ x in s \ u, φ i x • g x ∂μ‖ ≤ ∫ x in s \ u, ‖φ i x • g x‖ ∂μ :=
        norm_integral_le_integral_norm _
      _ ≤ ∫ x in s \ u, δ * ‖g x‖ ∂μ := by
        refine' set_integral_mono_on _ _ (hs.diff u_open.measurableSet) fun x hx => _
        · exact IntegrableOn.mono_set h''i.norm (diff_subset _ _)
        · exact IntegrableOn.mono_set (hmg.norm.const_mul _) (diff_subset _ _)
        rw [norm_smul]
        apply mul_le_mul_of_nonneg_right _ (norm_nonneg _)
        simpa only [Pi.zero_apply, dist_zero_left] using (hi x hx).le
      _ ≤ δ * ∫ x in s, ‖g x‖ ∂μ := by
        rw [integral_mul_left]
        apply mul_le_mul_of_nonneg_left (set_integral_mono_set hmg.norm _ _) δpos.le
        · exact eventually_of_forall fun x => norm_nonneg _
        · apply eventually_of_forall; exact diff_subset s u
  calc
    ‖∫ x in s, φ i x • g x ∂μ‖ =
      ‖(∫ x in s \ u, φ i x • g x ∂μ) + ∫ x in s ∩ u, φ i x • g x ∂μ‖ := by
      conv_lhs => rw [← diff_union_inter s u]
      rw [integral_union (disjoint_sdiff_inter _ _) (hs.inter u_open.measurableSet)
          (h''i.mono_set (diff_subset _ _)) (h''i.mono_set (inter_subset_left _ _))]
    _ ≤ ‖∫ x in s \ u, φ i x • g x ∂μ‖ + ‖∫ x in s ∩ u, φ i x • g x ∂μ‖ := (norm_add_le _ _)
    _ ≤ (δ * ∫ x in s, ‖g x‖ ∂μ) + δ := add_le_add C B
#align tendsto_set_integral_peak_smul_of_integrable_on_of_continuous_within_at_aux tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt_aux

/- If a sequence of peak functions `φᵢ` converges uniformly to zero away from a point `x₀`, and
`g` is integrable and continuous at `x₀`, then `∫ φᵢ • g` converges to `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
