# continuousWithinAt_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9151af5679b358686392d6d28721e01382dcad0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e7ac18c-5102-5825-c8e1-cffbc92bd7d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8acbcbb4-e7d2-791b-07cf-526d279325d3",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_primitive",
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
  "slug": "continuouswithinat-primitive--46cf802ca81d7c0b4c1d2e84",
  "source": {
    "blob": "f9151af5679b358686392d6d28721e01382dcad0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 298,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46cf802ca81d7c0b4c1d2e84f5e8ee05f2343585d9e94c23c5bf91a9ec02005f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8acbcbb4-e7d2-791b-07cf-526d279325d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_primitive (hb₀ : μ {b₀} = 0)
    (h_int : IntervalIntegrable f μ (min a b₁) (max a b₂)) :
    ContinuousWithinAt (fun b => ∫ x in a..b, f x ∂μ) (Icc b₁ b₂) b₀ := by
  by_cases h₀ : b₀ ∈ Icc b₁ b₂
  · have h₁₂ : b₁ ≤ b₂ := h₀.1.trans h₀.2
    have min₁₂ : min b₁ b₂ = b₁ := min_eq_left h₁₂
    have h_int' : ∀ {x}, x ∈ Icc b₁ b₂ → IntervalIntegrable f μ b₁ x := by
      rintro x ⟨h₁, h₂⟩
      apply h_int.mono_set
      apply uIcc_subset_uIcc
      · exact ⟨min_le_of_left_le (min_le_right a b₁),
          h₁.trans (h₂.trans <| le_max_of_le_right <| le_max_right _ _)⟩
      · exact ⟨min_le_of_left_le <| (min_le_right _ _).trans h₁,
          le_max_of_le_right <| h₂.trans <| le_max_right _ _⟩
    have : ∀ b ∈ Icc b₁ b₂,
        ∫ x in a..b, f x ∂μ = (∫ x in a..b₁, f x ∂μ) + ∫ x in b₁..b, f x ∂μ := by
      rintro b ⟨h₁, h₂⟩
      rw [← integral_add_adjacent_intervals _ (h_int' ⟨h₁, h₂⟩)]
      apply h_int.mono_set
      apply uIcc_subset_uIcc
      · exact ⟨min_le_of_left_le (min_le_left a b₁), le_max_of_le_right (le_max_left _ _)⟩
      · exact ⟨min_le_of_left_le (min_le_right _ _),
          le_max_of_le_right (h₁.trans <| h₂.trans (le_max_right a b₂))⟩
    apply ContinuousWithinAt.congr _ this (this _ h₀); clear this
    refine continuousWithinAt_const.add ?_
    have :
      (fun b => ∫ x in b₁..b, f x ∂μ) =ᶠ[𝓝[Icc b₁ b₂] b₀] fun b =>
        ∫ x in b₁..b₂, indicator {x | x ≤ b} f x ∂μ := by
      apply eventuallyEq_of_mem self_mem_nhdsWithin
      exact fun b b_in => (integral_indicator b_in).symm
    apply ContinuousWithinAt.congr_of_eventuallyEq _ this (integral_indicator h₀).symm
    have : IntervalIntegrable (fun x => ‖f x‖) μ b₁ b₂ :=
      IntervalIntegrable.norm (h_int' <| right_mem_Icc.mpr h₁₂)
    refine continuousWithinAt_of_dominated_interval ?_ ?_ this ?_ <;> clear this
    · filter_upwards [self_mem_nhdsWithin]
      intro x hx
      rw [aestronglyMeasurable_indicator_iff, Measure.restrict_restrict, uIoc, Iic_def,
        Iic_inter_Ioc_of_le]
      · rw [min₁₂]
        exact (h_int' hx).1.aestronglyMeasurable
      · exact le_max_of_le_right hx.2
      exacts [measurableSet_Iic, measurableSet_Iic]
    · filter_upwards with x; filter_upwards with t
      dsimp [indicator]
      split_ifs <;> simp
    · have : ∀ᵐ t ∂μ, t < b₀ ∨ b₀ < t := by
        filter_upwards [compl_mem_ae_iff.mpr hb₀] with x hx using Ne.lt_or_gt hx
      apply this.mono
      rintro x₀ (hx₀ | hx₀) -
      · have : ∀ᶠ x in 𝓝[Icc b₁ b₂] b₀, {t : ℝ | t ≤ x}.indicator f x₀ = f x₀ := by
          apply mem_nhdsWithin_of_mem_nhds
          apply Eventually.mono (Ioi_mem_nhds hx₀)
          intro x hx
          simp [hx.le]
        apply continuousWithinAt_const.congr_of_eventuallyEq this
        simp [hx₀.le]
      · have : ∀ᶠ x in 𝓝[Icc b₁ b₂] b₀, {t : ℝ | t ≤ x}.indicator f x₀ = 0 := by
          apply mem_nhdsWithin_of_mem_nhds
          apply Eventually.mono (Iio_mem_nhds hx₀)
          intro x hx
          simp [hx]
        apply continuousWithinAt_const.congr_of_eventuallyEq this
        simp [hx₀]
  · apply continuousWithinAt_of_notMem_closure
    rwa [closure_Icc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9151af5679b358686392d6d28721e01382dcad0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
