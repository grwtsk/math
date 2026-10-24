# continuousOn_convolution_right_with_param'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58d9ccb9-97ee-0d13-7233-c3f32a9dd7ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f3af6ab-8e0b-fbc5-2e8d-14f04de8f216",
  "kind": "theorem",
  "lexical_name": "continuousOn_convolution_right_with_param'",
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
  "slug": "continuouson-convolution-right-with-param--aa0564b4211bcd8c86761249",
  "source": {
    "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 599,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa0564b4211bcd8c867612495beb14e09c7b7e63d6c6e497eb12e2a876965a2b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3af6ab-8e0b-fbc5-2e8d-14f04de8f216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_convolution_right_with_param' {g : P → G → E'} {s : Set P} {k : Set G}
    (hk : IsCompact k) (h'k : IsClosed k) (hgs : ∀ p, ∀ x, p ∈ s → x ∉ k → g p x = 0)
    (hf : LocallyIntegrable f μ) (hg : ContinuousOn (↿g) (s ×ˢ univ)) :
    ContinuousOn (fun q : P × G => (f ⋆[L, μ] g q.1) q.2) (s ×ˢ univ) := by
  intro q₀ hq₀
  replace hq₀ : q₀.1 ∈ s; · simpa only [mem_prod, mem_univ, and_true] using hq₀
  have A : ∀ p ∈ s, Continuous (g p) := fun p hp ↦ by
    refine hg.comp_continuous (continuous_const.prod_mk continuous_id') fun x => ?_
    simpa only [prod_mk_mem_set_prod_eq, mem_univ, and_true] using hp
  have B : ∀ p ∈ s, tsupport (g p) ⊆ k := fun p hp =>
    closure_minimal (support_subset_iff'.2 fun z hz => hgs _ _ hp hz) h'k
  /- We find a small neighborhood of `{q₀.1} × k` on which the function is uniformly bounded.
      This follows from the continuity at all points of the compact set `k`. -/
  obtain ⟨w, C, w_open, q₀w, hw⟩ :
    ∃ w C, IsOpen w ∧ q₀.1 ∈ w ∧ ∀ p x, p ∈ w ∩ s → ‖g p x‖ ≤ C := by
    have A : IsCompact ({q₀.1} ×ˢ k) := isCompact_singleton.prod hk
    obtain ⟨t, kt, t_open, ht⟩ :
        ∃ t, {q₀.1} ×ˢ k ⊆ t ∧ IsOpen t ∧ Bounded (↿g '' (t ∩ s ×ˢ univ)) := by
      apply exists_isOpen_bounded_image_inter_of_isCompact_of_continuousOn A _ hg
      simp only [prod_subset_prod_iff, hq₀, singleton_subset_iff, subset_univ, and_self_iff,
        true_or_iff]
    obtain ⟨C, Cpos, hC⟩ : ∃ C, 0 < C ∧ ↿g '' (t ∩ s ×ˢ univ) ⊆ closedBall (0 : E') C :=
      ht.subset_ball_lt 0 0
    obtain ⟨w, w_open, q₀w, hw⟩ : ∃ w, IsOpen w ∧ q₀.1 ∈ w ∧ w ×ˢ k ⊆ t
    · obtain ⟨w, v, w_open, -, hw, hv, hvw⟩ :
        ∃ (w : Set P) (v : Set G), IsOpen w ∧ IsOpen v ∧ {q₀.fst} ⊆ w ∧ k ⊆ v ∧ w ×ˢ v ⊆ t
      exact generalized_tube_lemma isCompact_singleton hk t_open kt
      exact ⟨w, w_open, singleton_subset_iff.1 hw, Subset.trans (Set.prod_mono Subset.rfl hv) hvw⟩
    refine' ⟨w, C, w_open, q₀w, _⟩
    rintro p x ⟨hp, hps⟩
    by_cases hx : x ∈ k
    · have H : (p, x) ∈ t := by
        apply hw
        simp only [prod_mk_mem_set_prod_eq, hp, hx, and_true_iff]
      have H' : (p, x) ∈ (s ×ˢ univ : Set (P × G)) := by
        simpa only [prod_mk_mem_set_prod_eq, mem_univ, and_true_iff] using hps
      have : g p x ∈ closedBall (0 : E') C := hC (mem_image_of_mem _ (mem_inter H H'))
      rwa [mem_closedBall_zero_iff] at this
    · have : g p x = 0 := hgs _ _ hps hx
      rw [this]
      simpa only [norm_zero] using Cpos.le
  have I1 :
    ∀ᶠ q : P × G in 𝓝[s ×ˢ univ] q₀,
      AEStronglyMeasurable (fun a : G => L (f a) (g q.1 (q.2 - a))) μ := by
    filter_upwards [self_mem_nhdsWithin]
    rintro ⟨p, x⟩ ⟨hp, -⟩
    refine' (HasCompactSupport.convolutionExists_right L _ hf (A _ hp) _).1
    exact isCompact_of_isClosed_subset hk (isClosed_tsupport _) (B p hp)
  let K' := -k + {q₀.2}
  have hK' : IsCompact K' := hk.neg.add isCompact_singleton
  obtain ⟨U, U_open, K'U, hU⟩ : ∃ U, IsOpen U ∧ K' ⊆ U ∧ IntegrableOn f U μ :=
    hf.integrableOn_nhds_isCompact hK'
  let bound : G → ℝ := indicator U fun a => ‖L‖ * ‖f a‖ * C
  have I2 : ∀ᶠ q : P × G in 𝓝[s ×ˢ univ] q₀, ∀ᵐ a ∂μ, ‖L (f a) (g q.1 (q.2 - a))‖ ≤ bound a := by
    obtain ⟨V, V_mem, hV⟩ : ∃ V ∈ 𝓝 (0 : G), K' + V ⊆ U :=
      compact_open_separated_add_right hK' U_open K'U
    have : ((w ∩ s) ×ˢ ({q₀.2} + V) : Set (P × G)) ∈ 𝓝[s ×ˢ univ] q₀ := by
      conv_rhs => rw [← @Prod.mk.eta _ _ q₀, nhdsWithin_prod_eq, nhdsWithin_univ]
      refine' Filter.prod_mem_prod _ (singleton_add_mem_nhds_of_nhds_zero q₀.2 V_mem)
      exact mem_nhdsWithin_iff_exists_mem_nhds_inter.2 ⟨w, w_open.mem_nhds q₀w, Subset.rfl⟩
    filter_upwards [this]
    rintro ⟨p, x⟩ hpx
    simp only [prod_mk_mem_set_prod_eq] at hpx
    refine eventually_of_forall fun a => ?_
    apply convolution_integrand_bound_right_of_le_of_subset _ _ hpx.2 _
    · intro x
      exact hw _ _ hpx.1
    · rw [← add_assoc]
      apply Subset.trans (add_subset_add_right (add_subset_add_right _)) hV
      rw [neg_subset_neg]
      exact B p hpx.1.2
  have I3 : Integrable bound μ := by
    rw [integrable_indicator_iff U_open.measurableSet]
    exact (hU.norm.const_mul _).mul_const _
  have I4 : ∀ᵐ a : G ∂μ,
      ContinuousWithinAt (fun q : P × G => L (f a) (g q.1 (q.2 - a))) (s ×ˢ univ) q₀ := by
    refine eventually_of_forall fun a => ?_
    suffices H : ContinuousWithinAt (fun q : P × G => (f a, g q.1 (q.2 - a))) (s ×ˢ univ) q₀
    exact L.continuous₂.continuousAt.comp_continuousWithinAt H
    apply continuousWithinAt_const.prod
    change ContinuousWithinAt (fun q : P × G => (↿g) (q.1, q.2 - a)) (s ×ˢ univ) q₀
    have : ContinuousAt (fun q : P × G => (q.1, q.2 - a)) (q₀.1, q₀.2) :=
      (continuous_fst.prod_mk (continuous_snd.sub continuous_const)).continuousAt
    rw [← @Prod.mk.eta _ _ q₀]
    have h'q₀ : (q₀.1, q₀.2 - a) ∈ (s ×ˢ univ : Set (P × G)) := ⟨hq₀, mem_univ _⟩
    refine' ContinuousWithinAt.comp (hg _ h'q₀) this.continuousWithinAt _
    rintro ⟨q, x⟩ ⟨hq, -⟩
    exact ⟨hq, mem_univ _⟩
  exact continuousWithinAt_of_dominated I1 I2 I3 I4
#align continuous_on_convolution_right_with_param' continuousOn_convolution_right_with_param'

/-- The convolution `f * g` is continuous if `f` is locally integrable and `g` is continuous and
compactly supported. Version where `g` depends on an additional parameter in a subset `s` of
a parameter space `P` (and the compact support `k` is independent of the parameter in `s`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6b93fa3151fc64ec813bc11d12698d80eac3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
