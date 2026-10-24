# tendsto_of_lintegral_tendsto_of_monotone_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f38bfd11b77a1802c3e2c27cd39d156f3483d6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03697375-fccf-3db2-1e0e-84d73eddd3c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43e881dd-7dfc-0933-2c3f-abdf1178327d",
  "kind": "lemma",
  "lexical_name": "tendsto_of_lintegral_tendsto_of_monotone_aux",
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
  "slug": "tendsto-of-lintegral-tendsto-of-monotone-aux--e2e006f2dfba15c3f50a29c3",
  "source": {
    "blob": "7f38bfd11b77a1802c3e2c27cd39d156f3483d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e006f2dfba15c3f50a29c3b2337eb1f527ee94616fed97f8d1f64500d17fcd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e881dd-7dfc-0933-2c3f-abdf1178327d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_of_lintegral_tendsto_of_monotone_aux {α : Type*} {mα : MeasurableSpace α}
    {f : ℕ → α → ℝ≥0∞} {F : α → ℝ≥0∞} {μ : Measure α}
    (hf_meas : ∀ n, AEMeasurable (f n) μ) (hF_meas : AEMeasurable F μ)
    (hf_tendsto : Tendsto (fun i ↦ ∫⁻ a, f i a ∂μ) atTop (𝓝 (∫⁻ a, F a ∂μ)))
    (hf_mono : ∀ᵐ a ∂μ, Monotone (fun i ↦ f i a))
    (h_bound : ∀ᵐ a ∂μ, ∀ i, f i a ≤ F a) (h_int_finite : ∫⁻ a, F a ∂μ ≠ ∞) :
    ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) atTop (𝓝 (F a)) := by
  have h_bound_finite : ∀ᵐ a ∂μ, F a ≠ ∞ := by
    filter_upwards [ae_lt_top' hF_meas h_int_finite] with a ha using ha.ne
  have h_exists : ∀ᵐ a ∂μ, ∃ l, Tendsto (fun i ↦ f i a) atTop (𝓝 l) := by
    filter_upwards [h_bound, h_bound_finite, hf_mono] with a h_le h_fin h_mono
    have h_tendsto : Tendsto (fun i ↦ f i a) atTop atTop ∨
        ∃ l, Tendsto (fun i ↦ f i a) atTop (𝓝 l) := tendsto_atTop_of_monotone h_mono
    rcases h_tendsto with h_absurd | h_tendsto
    · rw [tendsto_atTop_atTop_iff_of_monotone h_mono] at h_absurd
      obtain ⟨i, hi⟩ := h_absurd (F a + 1)
      refine absurd (hi.trans (h_le _)) (not_le.mpr ?_)
      exact ENNReal.lt_add_right h_fin one_ne_zero
    · exact h_tendsto
  classical
  let F' : α → ℝ≥0∞ := fun a ↦ if h : ∃ l, Tendsto (fun i ↦ f i a) atTop (𝓝 l)
    then h.choose else ∞
  have hF'_tendsto : ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) atTop (𝓝 (F' a)) := by
    filter_upwards [h_exists] with a ha
    simp_rw [F', dite_eq_left ha]
    exact ha.choose_spec
  suffices F' =ᵐ[μ] F by
    filter_upwards [this, hF'_tendsto] with a h_eq h_tendsto using h_eq ▸ h_tendsto
  have hF'_le : F' ≤ᵐ[μ] F := by
    filter_upwards [h_bound, hF'_tendsto] with a h_le h_tendsto
    exact le_of_tendsto' h_tendsto (fun m ↦ h_le _)
  suffices ∫⁻ a, F' a ∂μ = ∫⁻ a, F a ∂μ from
    ae_eq_of_ae_le_of_lintegral_le hF'_le (this ▸ h_int_finite) hF_meas this.symm.le
  refine tendsto_nhds_unique ?_ hf_tendsto
  exact lintegral_tendsto_of_tendsto_of_monotone hf_meas hf_mono hF'_tendsto

/-- If a monotone sequence of functions has an upper bound and the sequence of integrals of these
functions tends to the integral of the upper bound, then the sequence of functions converges
almost everywhere to the upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f38bfd11b77a1802c3e2c27cd39d156f3483d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
