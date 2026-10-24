# Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "074ad086f166d02a09dce58d5fee60fd0ce3f53b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19b022df-ea2f-ffd3-a597-7edcf65aa6d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bd025de-e9eb-21f6-f940-c8e4c9aae3ff",
  "kind": "theorem",
  "lexical_name": "Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite",
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
  "slug": "measure-measuredense-of-generatefrom-issetalgebra-sigmafinite--b44ad90dd1c4ebddbb284f38",
  "source": {
    "blob": "074ad086f166d02a09dce58d5fee60fd0ce3f53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 266,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b44ad90dd1c4ebddbb284f38e24dd732c6d6a92c9cc8a6f5db6189c06c2d3573",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bd025de-e9eb-21f6-f940-c8e4c9aae3ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite (h𝒜 : IsSetAlgebra 𝒜)
    (S : μ.FiniteSpanningSetsIn 𝒜) (hgen : m = MeasurableSpace.generateFrom 𝒜) :
    μ.MeasureDense 𝒜 where
  measurable s hs := hgen ▸ measurableSet_generateFrom hs
  approx s ms hμs ε ε_pos := by
    -- We use partial unions of (Sₙ) to get a monotone family spanning `X`.
    let T := Accumulate S.set
    have T_mem (n) : T n ∈ 𝒜 := by
      simpa using h𝒜.biUnion_mem {k | k ≤ n}.toFinset (fun k _ ↦ S.set_mem k)
    have T_finite (n) : μ (T n) < ∞ := by
      simpa using measure_biUnion_lt_top {k | k ≤ n}.toFinset.finite_toSet
        (fun k _ ↦ S.finite k)
    have T_spanning : ⋃ n, T n = univ := S.spanning ▸ iUnion_accumulate
    -- We use the fact that we already know this is true for finite measures. As `⋃ n, T n = X`,
    -- we have that `μ ((T n) ∩ s) ⟶ μ s`.
    have mono : Monotone (fun n ↦ (T n) ∩ s) := fun m n hmn ↦ inter_subset_inter_left s
        (biUnion_subset_biUnion_left fun k hkm ↦ Nat.le_trans hkm hmn)
    have := tendsto_measure_iUnion_atTop (μ := μ) mono
    rw [← tendsto_toReal_iff] at this
    · -- We can therefore choose `N` such that `μ s - μ ((S N) ∩ s) < ε/2`.
      rcases Metric.tendsto_atTop.1 this (ε / 2) (by linarith [ε_pos]) with ⟨N, hN⟩
      have : Fact (μ (T N) < ∞) := Fact.mk <| T_finite N
      -- Then we can apply the previous result to the measure `μ ((S N) ∩ •)`.
      -- There exists `t ∈ 𝒜` such that `μ ((S N) ∩ (s ∆ t)) < ε/2`.
      rcases (Measure.MeasureDense.of_generateFrom_isSetAlgebra_finite
        (μ.restrict (T N)) h𝒜 hgen).approx s ms
        (ne_of_lt (lt_of_le_of_lt (μ.restrict_apply_le _ s) hμs.lt_top))
        (ε / 2) (by linarith [ε_pos])
        with ⟨t, t_mem, ht⟩
      -- We can then use `t ∩ (S N)`, because `S N ∈ 𝒜` by hypothesis.
      -- `μ (s ∆ (t ∩ S N))`
      --   `≤ μ (s ∆ (s ∩ S N)) + μ ((s ∩ S N) ∆ (t ∩ S N))`
      --   `= μ s - μ (s ∩ S N) + μ (s ∆ t) ∩ S N) < ε`.
      refine ⟨t ∩ T N, h𝒜.inter_mem t_mem (T_mem N), ?_⟩
      calc
        μ (s ∆ (t ∩ T N))
          ≤ μ (s \ (s ∩ T N)) + μ ((s ∆ t) ∩ T N) := by
              rw [← symmDiff_of_le (inter_subset_left ..), symmDiff_comm _ s,
                inter_symmDiff_distrib_right]
              exact measure_symmDiff_le _ _ _
        _ < ENNReal.ofReal (ε / 2) + ENNReal.ofReal (ε / 2) := by
              apply ENNReal.add_lt_add
              · rw [measure_diff
                    (inter_subset_left ..)
                    (ms.inter (hgen ▸ measurableSet_generateFrom (T_mem N))).nullMeasurableSet
                    (ne_top_of_le_ne_top hμs (measure_mono (inter_subset_left ..))),
                  lt_ofReal_iff_toReal_lt (sub_ne_top hμs),
                  toReal_sub_of_le (measure_mono (inter_subset_left ..)) hμs]
                apply lt_of_le_of_lt (sub_le_dist ..)
                nth_rw 1 [← univ_inter s]
                rw [inter_comm s, dist_comm, ← T_spanning, iUnion_inter _ T]
                apply hN N (le_refl _)
              · rwa [← μ.restrict_apply' (hgen ▸ measurableSet_generateFrom (T_mem N))]
        _ = ENNReal.ofReal ε := by
              rw [← ofReal_add (by linarith [ε_pos]) (by linarith [ε_pos]), add_halves]
    · exact fun n ↦ ne_top_of_le_ne_top hμs (measure_mono (inter_subset_right ..))
    · exact ne_top_of_le_ne_top hμs
        (measure_mono (iUnion_subset (fun i ↦ inter_subset_right ..)))

end MeasureDense

section IsSeparable

/-! ### Definition of a separable measure space, sufficient condition -/

/-- A measure `μ` is separable if there exists a countable and measure-dense family of sets.

The term "separable" is justified by the fact that the definition translates to the usual notion
of separability in the metric space made by constant indicators equipped with the `Lᵖ` norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074ad086f166d02a09dce58d5fee60fd0ce3f53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
