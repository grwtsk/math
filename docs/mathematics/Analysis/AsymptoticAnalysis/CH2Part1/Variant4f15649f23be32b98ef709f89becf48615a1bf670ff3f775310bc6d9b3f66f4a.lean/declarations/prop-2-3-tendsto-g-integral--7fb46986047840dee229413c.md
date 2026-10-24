# prop_2_3_tendsto_G_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7d18be0-f4c7-4ea4-4fd9-113236e9feaa",
  "kind": "lemma",
  "lexical_name": "prop_2_3_tendsto_G_integral",
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
  "slug": "prop-2-3-tendsto-g-integral--7fb46986047840dee229413c",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 468,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fb46986047840dee229413c3d81cdfda08b600b27dd449211ae750d62b05577",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d18be0-f4c7-4ea4-4fd9-113236e9feaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prop_2_3_tendsto_G_integral
    {T : ℝ} (hT : 0 < T)
    {G : ℂ → ℂ} (hG : ContinuousOn G { z | z.re ≥ 1 ∧ z.im ∈ Set.Icc (-T) T })
    {φ : ℝ → ℂ} (hφ_mes : Measurable φ) (hφ_int : Integrable φ)
    (hφ_supp : ∀ x, x ∉ Set.Icc (-1) 1 → φ x = 0)
    (x : ℝ) (hx : 0 < x) :
    Filter.Tendsto
      (fun (sig : ℝ) ↦ (1 / (2 * π * T)) * (∫ t in Set.Icc (-T) T, φ (t / T) * G (sig + t * I) * x ^ (1 + t * I)))
      (nhdsWithin 1 (Set.Ioi 1))
      (nhds ((1 / (2 * π * T)) * (∫ t in Set.Icc (-T) T, φ (t / T) * G (1 + t * I) * x ^ (1 + t * I)))) := by
  apply Filter.Tendsto.const_mul
  let K : Set ℂ := {z | z.re ∈ Set.Icc 1 2 ∧ z.im ∈ Set.Icc (-T) T}
  have hK_comp : IsCompact K := by
    have h_eq : K = (fun (x : ℝ × ℝ) ↦ (x.1 + x.2 * I : ℂ)) '' (Set.Icc 1 2 ×ˢ Set.Icc (-T) T) := by
      ext z; simp [K, Complex.ext_iff]; tauto
    rw [h_eq]
    apply IsCompact.image (isCompact_Icc.prod isCompact_Icc)
    fun_prop
  obtain ⟨M, hM_bound⟩ : ∃ M, ∀ z ∈ K, ‖G z‖ ≤ M :=
    hK_comp.exists_bound_of_continuousOn (hG.mono (fun z hz ↦ by
      simp [K, Set.mem_Icc] at hz; simp [Set.mem_Icc]; tauto))
  apply MeasureTheory.tendsto_integral_filter_of_dominated_convergence (bound := fun t ↦ ‖φ (t/T)‖ * M * x)
  · filter_upwards [self_mem_nhdsWithin, Icc_mem_nhdsGT (one_lt_two)] with sig hsig1 _hsig2
    refine (((hφ_mes.comp (measurable_id.div_const T)).aestronglyMeasurable).mul ?_).mul
      ((Continuous.const_cpow (by fun_prop) (.inl (ofReal_ne_zero.mpr hx.ne'))).stronglyMeasurable.aestronglyMeasurable)
    exact (hG.comp (by fun_prop) (fun t ht ↦ by
      simp only [ge_iff_le, Set.mem_Icc, Set.mem_setOf_eq, add_re, ofReal_re,
        mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self, add_zero, add_im, mul_im,
        zero_add]
      constructor
      · exact (Set.mem_Ioi.mp hsig1).le
      · exact ht)).aestronglyMeasurable measurableSet_Icc
  · filter_upwards [self_mem_nhdsWithin, Icc_mem_nhdsGT (one_lt_two)] with sig hsig1 hsig2
    refine Filter.Eventually.of_forall (fun t ↦ ?_)
    rw [Complex.norm_mul, Complex.norm_mul]
    have hx_norm : ‖(x : ℂ) ^ (1 + (t : ℂ) * I)‖ = x := by
      rw [Complex.norm_cpow_eq_rpow_re_of_pos hx]
      simp only [Complex.add_re, Complex.one_re, Complex.mul_re, Complex.I_re, mul_zero,
        Complex.ofReal_im, Complex.I_im, mul_one, sub_self, add_zero, Real.rpow_one]
    rw [hx_norm]
    by_cases hφ : φ (t / T) = 0
    · simp [hφ]
    have h_in_K : (sig : ℂ) + (t : ℝ) * I ∈ K := by
      simp only [K, Set.mem_setOf_eq, Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, mul_zero,
        Complex.ofReal_im, Complex.I_im, mul_one, sub_self, add_zero, Complex.add_im, Complex.mul_im, zero_add]
      refine ⟨hsig2, ?_⟩
      contrapose! hφ
      apply hφ_supp
      rw [Set.mem_Icc, not_and_or] at hφ ⊢
      rcases hφ with h | h
      · left; rw [le_div_iff₀ hT, neg_one_mul]; exact h
      · right; rw [div_le_iff₀ hT, one_mul]; exact h
    gcongr
    exact hM_bound _ h_in_K
  · exact ((hφ_int.norm.comp_div hT.ne').mono_measure Measure.restrict_le_self).mul_const M |>.mul_const x
  · filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Icc] with t ht
    apply Filter.Tendsto.mul
    · apply Filter.Tendsto.mul
      · exact tendsto_const_nhds
      · apply (hG.continuousWithinAt ?_).tendsto.comp
        · rw [tendsto_nhdsWithin_iff]
          refine ⟨?_, ?_⟩
          · refine tendsto_nhdsWithin_of_tendsto_nhds ?_
            exact (continuous_ofReal.add continuous_const).continuousAt
          · filter_upwards [self_mem_nhdsWithin] with sig hsig
            simp only [ge_iff_le, Set.mem_Ioi, add_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im,
              I_im, mul_one, sub_self, add_zero, add_im, mul_im, zero_add, Set.mem_Icc] at hsig ht ⊢
            constructor
            · linarith
            · tauto
        · simp only [ge_iff_le, Set.mem_setOf_eq, add_re, ofReal_re, mul_re, I_re, mul_zero,
            ofReal_im, I_im, mul_one, sub_self, add_zero, add_im, mul_im, zero_add, Set.mem_Icc,
            Complex.one_re, Complex.one_im] at ht ⊢
          constructor
          · norm_num
          · tauto
    · exact tendsto_const_nhds

/-- Bounding the Dirichlet-Fourier series norm -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
