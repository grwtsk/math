# tendsto_integral_smul_of_tendsto_average_norm_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c09f5bf38f21d132cf04f107eb43830375cbfbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 785,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25f06a18-bb2a-01e1-664f-bb193a13fbda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cd703bf-b6b2-68e3-7883-9c7936143d29",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_smul_of_tendsto_average_norm_sub",
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
  "slug": "tendsto-integral-smul-of-tendsto-average-norm-sub--1535255301119605d322c00e",
  "source": {
    "blob": "5c09f5bf38f21d132cf04f107eb43830375cbfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 785,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1535255301119605d322c00e3fd7bca4c0c7320eef1b63e4764c4c9f08b539dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cd703bf-b6b2-68e3-7883-9c7936143d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 785–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_smul_of_tendsto_average_norm_sub
    [CompleteSpace E]
    {ι : Type*} {a : ι → Set α} {l : Filter ι} {f : α → E} {c : E} {g : ι → α → ℝ} (K : ℝ)
    (hf : Tendsto (fun i ↦ ⨍ y in a i, ‖f y - c‖ ∂μ) l (𝓝 0))
    (f_int : ∀ᶠ i in l, IntegrableOn f (a i) μ)
    (hg : Tendsto (fun i ↦ ∫ y, g i y ∂μ) l (𝓝 1))
    (g_supp : ∀ᶠ i in l, Function.support (g i) ⊆ a i)
    (g_bound : ∀ᶠ i in l, ∀ x, |g i x| ≤ K / μ.real (a i)) :
    Tendsto (fun i ↦ ∫ y, g i y • f y ∂μ) l (𝓝 c) := by
  have g_int : ∀ᶠ i in l, Integrable (g i) μ := by
    filter_upwards [(tendsto_order.1 hg).1 _ zero_lt_one] with i hi
    contrapose hi
    simp only [integral_undef hi, lt_self_iff_false, not_false_eq_true]
  have I : ∀ᶠ i in l, ∫ y, g i y • (f y - c) ∂μ + (∫ y, g i y ∂μ) • c = ∫ y, g i y • f y ∂μ := by
    filter_upwards [f_int, g_int, g_supp, g_bound] with i hif hig hisupp hibound
    rw [← integral_smul_const, ← integral_add]
    · simp only [smul_sub, sub_add_cancel]
    · simp_rw [smul_sub]
      apply Integrable.sub _ (hig.smul_const _)
      have A : Function.support (fun y ↦ g i y • f y) ⊆ a i := by
        apply Subset.trans _ hisupp
        exact Function.support_smul_subset_left _ _
      rw [← integrableOn_iff_integrable_of_support_subset A]
      apply Integrable.smul_of_top_right hif
      exact memLp_top_of_bound hig.aestronglyMeasurable.restrict
        (K / μ.real (a i)) (Eventually.of_forall hibound)
    · exact hig.smul_const _
  have L0 : Tendsto (fun i ↦ ∫ y, g i y • (f y - c) ∂μ) l (𝓝 0) := by
    have := hf.const_mul K
    simp only [mul_zero] at this
    refine squeeze_zero_norm' ?_ this
    filter_upwards [g_supp, g_bound, f_int, (tendsto_order.1 hg).1 _ zero_lt_one]
      with i hi h'i h''i hi_int
    have mu_ai : μ (a i) < ∞ := by
      rw [lt_top_iff_ne_top]
      intro h
      simp only [h, ENNReal.toReal_top, _root_.div_zero, abs_nonpos_iff, measureReal_def] at h'i
      have : ∫ (y : α), g i y ∂μ = ∫ (y : α), 0 ∂μ := by congr; ext y; exact h'i y
      simp [this] at hi_int
    apply (norm_integral_le_integral_norm _).trans
    simp_rw [average_eq, smul_eq_mul, ← integral_const_mul, norm_smul, ← mul_assoc,
      ← div_eq_mul_inv]
    have : ∀ x, x ∉ a i → ‖g i x‖ * ‖(f x - c)‖ = 0 := by
      intro x hx
      have : g i x = 0 := by rw [← Function.notMem_support]; exact fun h ↦ hx (hi h)
      simp [this]
    rw [← setIntegral_eq_integral_of_forall_compl_eq_zero this (μ := μ)]
    refine integral_mono_of_nonneg (Eventually.of_forall (fun x ↦ by positivity)) ?_
      (Eventually.of_forall (fun x ↦ ?_))
    · apply (Integrable.sub h''i _).norm.const_mul
      change IntegrableOn (fun _ ↦ c) (a i) μ
      simp [mu_ai]
    · dsimp; gcongr; simpa using h'i x
  have := L0.add (hg.smul_const c)
  simp only [one_smul, zero_add] at this
  exact Tendsto.congr' I this

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean#L785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c09f5bf38f21d132cf04f107eb43830375cbfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
