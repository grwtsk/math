# haveLebesgueDecomposition_of_finiteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "566c66a8c4a9766999291f456377c6f8b9f0ab90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60fad69c-eaea-796c-e04f-c3d00068e704",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a77e766-44c6-2787-d672-74833c751648",
  "kind": "theorem",
  "lexical_name": "haveLebesgueDecomposition_of_finiteMeasure",
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
  "slug": "havelebesguedecomposition-of-finitemeasure--b3c0ca694fc3907d62823de3",
  "source": {
    "blob": "566c66a8c4a9766999291f456377c6f8b9f0ab90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 553,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c0ca694fc3907d62823de39abcda12b75a1e719368b4be6d320a6b548b9032",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a77e766-44c6-2787-d672-74833c751648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem haveLebesgueDecomposition_of_finiteMeasure [IsFiniteMeasure μ] [IsFiniteMeasure ν] :
    HaveLebesgueDecomposition μ ν :=
  ⟨by
    have h :=
      @exists_seq_tendsto_sSup _ _ _ _ _ (measurableLEEval ν μ)
        ⟨0, 0, zero_mem_measurableLE, by simp⟩ (OrderTop.bddAbove _)
    choose g _ hg₂ f hf₁ hf₂ using h
    -- we set `ξ` to be the supremum of an increasing sequence of functions obtained from above
    set ξ := ⨆ (n) (k) (_ : k ≤ n), f k with hξ
    -- we see that `ξ` has the largest integral among all functions in `measurableLE`
    have hξ₁ : sSup (measurableLEEval ν μ) = ∫⁻ a, ξ a ∂ν := by
      have :=
        @lintegral_tendsto_of_tendsto_of_monotone _ _ ν (fun n => ⨆ (k) (_ : k ≤ n), f k)
          (⨆ (n) (k) (_ : k ≤ n), f k) ?_ ?_ ?_
      · refine' tendsto_nhds_unique _ this
        refine' tendsto_of_tendsto_of_tendsto_of_le_of_le hg₂ tendsto_const_nhds _ _
        · intro n; rw [← hf₂ n]
          apply lintegral_mono
          simp only [iSup_apply, iSup_le_le f n n le_rfl]
        · intro n
          exact le_sSup ⟨⨆ (k : ℕ) (_ : k ≤ n), f k, iSup_mem_measurableLE' _ hf₁ _, rfl⟩
      · intro n
        refine' Measurable.aemeasurable _
        convert (iSup_mem_measurableLE _ hf₁ n).1
        refine Option.ext fun x => ?_; simp
      · refine' Filter.eventually_of_forall fun a => _
        simp [iSup_monotone' f _]
      · refine' Filter.eventually_of_forall fun a => _
        simp [tendsto_atTop_iSup (iSup_monotone' f a)]
    have hξm : Measurable ξ := by
      convert measurable_iSup fun n => (iSup_mem_measurableLE _ hf₁ n).1
      refine Option.ext fun x => ?_; simp [hξ]
    -- `ξ` is the `f` in the theorem statement and we set `μ₁` to be `μ - ν.withDensity ξ`
    -- since we need `μ₁ + ν.withDensity ξ = μ`
    set μ₁ := μ - ν.withDensity ξ with hμ₁
    have hle : ν.withDensity ξ ≤ μ := by
      intro B hB
      rw [hξ, withDensity_apply _ hB]
      simp_rw [iSup_apply]
      rw [lintegral_iSup (fun i => (iSup_mem_measurableLE _ hf₁ i).1) (iSup_monotone _)]
      exact iSup_le fun i => (iSup_mem_measurableLE _ hf₁ i).2 B hB
    have : IsFiniteMeasure (ν.withDensity ξ) := by
      refine' isFiniteMeasure_withDensity _
      have hle' := hle univ MeasurableSet.univ
      rw [withDensity_apply _ MeasurableSet.univ, Measure.restrict_univ] at hle'
      exact ne_top_of_le_ne_top (measure_ne_top _ _) hle'
    refine' ⟨⟨μ₁, ξ⟩, hξm, _, _⟩
    · by_contra h
      -- if they are not mutually singular, then from `exists_positive_of_not_mutuallySingular`,
      -- there exists some `ε > 0` and a measurable set `E`, such that `μ(E) > 0` and `E` is
      -- positive with respect to `ν - εμ`
      obtain ⟨ε, hε₁, E, hE₁, hE₂, hE₃⟩ := exists_positive_of_not_mutuallySingular μ₁ ν h
      simp_rw [hμ₁] at hE₃
      have hξle : ∀ A, MeasurableSet A → (∫⁻ a in A, ξ a ∂ν) ≤ μ A := by
        intro A hA; rw [hξ]
        simp_rw [iSup_apply]
        rw [lintegral_iSup (fun n => (iSup_mem_measurableLE _ hf₁ n).1) (iSup_monotone _)]
        exact iSup_le fun n => (iSup_mem_measurableLE _ hf₁ n).2 A hA
      -- since `E` is positive, we have `∫⁻ a in A ∩ E, ε + ξ a ∂ν ≤ μ (A ∩ E)` for all `A`
      have hε₂ : ∀ A : Set α, MeasurableSet A → (∫⁻ a in A ∩ E, ε + ξ a ∂ν) ≤ μ (A ∩ E) := by
        intro A hA
        have := subset_le_of_restrict_le_restrict _ _ hE₁ hE₃ (inter_subset_right A E)
        rwa [zero_apply, toSignedMeasure_sub_apply (hA.inter hE₁),
          Measure.sub_apply (hA.inter hE₁) hle,
          ENNReal.toReal_sub_of_le _ (ne_of_lt (measure_lt_top _ _)), sub_nonneg, le_sub_iff_add_le,
          ← ENNReal.toReal_add, ENNReal.toReal_le_toReal, Measure.coe_smul, Pi.smul_apply,
          withDensity_apply _ (hA.inter hE₁), show ε • ν (A ∩ E) = (ε : ℝ≥0∞) * ν (A ∩ E) by rfl,
          ← set_lintegral_const, ← lintegral_add_left measurable_const] at this
        · rw [Ne.def, ENNReal.add_eq_top, not_or]
          exact ⟨ne_of_lt (measure_lt_top _ _), ne_of_lt (measure_lt_top _ _)⟩
        · exact ne_of_lt (measure_lt_top _ _)
        · exact ne_of_lt (measure_lt_top _ _)
        · exact ne_of_lt (measure_lt_top _ _)
        · rw [withDensity_apply _ (hA.inter hE₁)]
          exact hξle (A ∩ E) (hA.inter hE₁)
      -- from this, we can show `ξ + ε * E.indicator` is a function in `measurableLE` with
      -- integral greater than `ξ`
      have hξε : (ξ + E.indicator fun _ => (ε : ℝ≥0∞)) ∈ measurableLE ν μ := by
        refine' ⟨Measurable.add hξm (Measurable.indicator measurable_const hE₁), fun A hA => _⟩
        have :
          (∫⁻ a in A, (ξ + E.indicator fun _ => (ε : ℝ≥0∞)) a ∂ν) =
            (∫⁻ a in A ∩ E, ε + ξ a ∂ν) + ∫⁻ a in A \ E, ξ a ∂ν := by
          simp only [lintegral_add_left measurable_const, lintegral_add_left hξm,
            set_lintegral_const, add_assoc, lintegral_inter_add_diff _ _ hE₁, Pi.add_apply,
            lintegral_indicator _ hE₁, restrict_apply hE₁]
          rw [inter_comm, add_comm]
        rw [this, ← measure_inter_add_diff A hE₁]
        exact add_le_add (hε₂ A hA) (hξle (A \ E) (hA.diff hE₁))
      have : (∫⁻ a, ξ a + E.indicator (fun _ => (ε : ℝ≥0∞)) a ∂ν) ≤ sSup (measurableLEEval ν μ) :=
        le_sSup ⟨ξ + E.indicator fun _ => (ε : ℝ≥0∞), hξε, rfl⟩
      -- but this contradicts the maximality of `∫⁻ x, ξ x ∂ν`
      refine' not_lt.2 this _
      rw [hξ₁, lintegral_add_left hξm, lintegral_indicator _ hE₁, set_lintegral_const]
      refine' ENNReal.lt_add_right _ (ENNReal.mul_pos_iff.2 ⟨ENNReal.coe_pos.2 hε₁, hE₂⟩).ne'
      have := measure_ne_top (ν.withDensity ξ) univ
      rwa [withDensity_apply _ MeasurableSet.univ, Measure.restrict_univ] at this
    -- since `ν.withDensity ξ ≤ μ`, it is clear that `μ = μ₁ + ν.withDensity ξ`
    · rw [hμ₁]; ext1 A hA
      rw [Measure.coe_add, Pi.add_apply, Measure.sub_apply hA hle, add_comm,
        add_tsub_cancel_of_le (hle A hA)]⟩
#align measure_theory.measure.have_lebesgue_decomposition_of_finite_measure MeasureTheory.Measure.haveLebesgueDecomposition_of_finiteMeasure

attribute [local instance] haveLebesgueDecomposition_of_finiteMeasure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `566c66a8c4a9766999291f456377c6f8b9f0ab90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
