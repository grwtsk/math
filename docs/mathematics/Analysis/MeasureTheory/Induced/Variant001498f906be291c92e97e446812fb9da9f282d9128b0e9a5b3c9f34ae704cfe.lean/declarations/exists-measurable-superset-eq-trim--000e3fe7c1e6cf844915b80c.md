# exists_measurable_superset_eq_trim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dc08b61-33bc-5998-d2d1-74141529d89d",
  "kind": "theorem",
  "lexical_name": "exists_measurable_superset_eq_trim",
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
  "slug": "exists-measurable-superset-eq-trim--000e3fe7c1e6cf844915b80c",
  "source": {
    "blob": "0993464d26219d292db38b1110186ac18faeb15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 378,
    "path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000e3fe7c1e6cf844915b80c3ffa820b4ce5f0d23a33014fe19f228f99aa5df9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dc08b61-33bc-5998-d2d1-74141529d89d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurable_superset_eq_trim (m : OuterMeasure α) (s : Set α) :
    ∃ t, s ⊆ t ∧ MeasurableSet t ∧ m t = m.trim s := by
  simp only [trim_eq_iInf]; set ms := ⨅ (t : Set α) (_ : s ⊆ t) (_ : MeasurableSet t), m t
  by_cases hs : ms = ∞
  · simp only [hs]
    simp only [iInf_eq_top, ms] at hs
    exact ⟨univ, subset_univ s, MeasurableSet.univ, hs _ (subset_univ s) MeasurableSet.univ⟩
  · have : ∀ r > ms, ∃ t, s ⊆ t ∧ MeasurableSet t ∧ m t < r := by
      intro r hs
      have : ∃t, MeasurableSet t ∧ s ⊆ t ∧ m t < r := by simpa [ms, iInf_lt_iff] using hs
      rcases this with ⟨t, hmt, hin, hlt⟩
      exists t
    have : ∀ n : ℕ, ∃ t, s ⊆ t ∧ MeasurableSet t ∧ m t < ms + (n : ℝ≥0∞)⁻¹ := by
      intro n
      refine this _ (ENNReal.lt_add_right hs ?_)
      simp
    choose t hsub hm hm' using this
    refine ⟨⋂ n, t n, subset_iInter hsub, MeasurableSet.iInter hm, ?_⟩
    have : Tendsto (fun n : ℕ => ms + (n : ℝ≥0∞)⁻¹) atTop (𝓝 (ms + 0)) :=
      tendsto_const_nhds.add ENNReal.tendsto_inv_nat_nhds_zero
    rw [add_zero] at this
    refine le_antisymm (ge_of_tendsto' this fun n => ?_) ?_
    · exact le_trans (measure_mono <| iInter_subset t n) (hm' n).le
    · refine iInf_le_of_le (⋂ n, t n) ?_
      refine iInf_le_of_le (subset_iInter hsub) ?_
      exact iInf_le _ (MeasurableSet.iInter hm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0993464d26219d292db38b1110186ac18faeb15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
