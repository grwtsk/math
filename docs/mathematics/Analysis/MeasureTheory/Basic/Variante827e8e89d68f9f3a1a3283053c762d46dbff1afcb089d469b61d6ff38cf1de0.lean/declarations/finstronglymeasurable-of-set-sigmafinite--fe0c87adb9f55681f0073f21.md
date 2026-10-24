# finStronglyMeasurable_of_set_sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:695c1898-cc56-2c59-e9aa-ef29704f4f6d",
  "kind": "theorem",
  "lexical_name": "finStronglyMeasurable_of_set_sigmaFinite",
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
  "slug": "finstronglymeasurable-of-set-sigmafinite--fe0c87adb9f55681f0073f21",
  "source": {
    "blob": "cbe6aa68c3fe25231fef687e016b63e8b5da761f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 283,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe0c87adb9f55681f0073f216ecd5c84ef3481865c1bf782e5d16c7846af4e7a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:695c1898-cc56-2c59-e9aa-ef29704f4f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finStronglyMeasurable_of_set_sigmaFinite [TopologicalSpace β] [Zero β]
    {m : MeasurableSpace α} {μ : Measure α} (hf_meas : StronglyMeasurable f) {t : Set α}
    (ht : MeasurableSet t) (hft_zero : ∀ x ∈ tᶜ, f x = 0) (htμ : SigmaFinite (μ.restrict t)) :
    FinStronglyMeasurable f μ := by
  haveI : SigmaFinite (μ.restrict t) := htμ
  let S := spanningSets (μ.restrict t)
  have hS_meas : ∀ n, MeasurableSet (S n) := measurable_spanningSets (μ.restrict t)
  let f_approx := hf_meas.approx
  let fs n := SimpleFunc.restrict (f_approx n) (S n ∩ t)
  have h_fs_t_compl : ∀ n, ∀ x, x ∉ t → fs n x = 0 := by
    intro n x hxt
    rw [SimpleFunc.restrict_apply _ ((hS_meas n).inter ht)]
    refine' Set.indicator_of_not_mem _ _
    simp [hxt]
  refine' ⟨fs, _, fun x => _⟩
  · simp_rw [SimpleFunc.support_eq]
    refine' fun n => (measure_biUnion_finset_le _ _).trans_lt _
    refine' ENNReal.sum_lt_top_iff.mpr fun y hy => _
    rw [SimpleFunc.restrict_preimage_singleton _ ((hS_meas n).inter ht)]
    swap
    · letI : (y : β) → Decidable (y = 0) := fun y => Classical.propDecidable _
      rw [Finset.mem_filter] at hy
      exact hy.2
    refine' (measure_mono (Set.inter_subset_left _ _)).trans_lt _
    have h_lt_top := measure_spanningSets_lt_top (μ.restrict t) n
    rwa [Measure.restrict_apply' ht] at h_lt_top
  · by_cases hxt : x ∈ t
    swap
    · rw [funext fun n => h_fs_t_compl n x hxt, hft_zero x hxt]
      exact tendsto_const_nhds
    have h : Tendsto (fun n => (f_approx n) x) atTop (𝓝 (f x)) := hf_meas.tendsto_approx x
    obtain ⟨n₁, hn₁⟩ : ∃ n, ∀ m, n ≤ m → fs m x = f_approx m x := by
      obtain ⟨n, hn⟩ : ∃ n, ∀ m, n ≤ m → x ∈ S m ∩ t := by
        rsuffices ⟨n, hn⟩ : ∃ n, ∀ m, n ≤ m → x ∈ S m
        · exact ⟨n, fun m hnm => Set.mem_inter (hn m hnm) hxt⟩
        rsuffices ⟨n, hn⟩ : ∃ n, x ∈ S n
        · exact ⟨n, fun m hnm => monotone_spanningSets (μ.restrict t) hnm hn⟩
        rw [← Set.mem_iUnion, iUnion_spanningSets (μ.restrict t)]
        trivial
      refine' ⟨n, fun m hnm => _⟩
      simp_rw [SimpleFunc.restrict_apply _ ((hS_meas m).inter ht),
        Set.indicator_of_mem (hn m hnm)]
    rw [tendsto_atTop'] at h ⊢
    intro s hs
    obtain ⟨n₂, hn₂⟩ := h s hs
    refine' ⟨max n₁ n₂, fun m hm => _⟩
    rw [hn₁ m ((le_max_left _ _).trans hm.le)]
    exact hn₂ m ((le_max_right _ _).trans hm.le)
#align measure_theory.strongly_measurable.fin_strongly_measurable_of_set_sigma_finite MeasureTheory.StronglyMeasurable.finStronglyMeasurable_of_set_sigmaFinite

/-- If the measure is sigma-finite, all strongly measurable functions are
  `FinStronglyMeasurable`. -/
@[aesop 5% apply (rule_sets [Measurable])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbe6aa68c3fe25231fef687e016b63e8b5da761f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
