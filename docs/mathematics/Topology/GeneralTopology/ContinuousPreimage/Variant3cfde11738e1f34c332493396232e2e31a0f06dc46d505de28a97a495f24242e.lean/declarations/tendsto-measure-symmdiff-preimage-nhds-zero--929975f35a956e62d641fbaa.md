# tendsto_measure_symmDiff_preimage_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c197ff5d2427fea9847a8bbcf8afbc1223be6e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cfde11738e1f34c332493396232e2e31a0f06dc46d505de28a97a495f24242e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b75eced5-3873-eebc-1090-6e02adcb6b24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf200422-1894-9314-1b2b-6d33cccb0dac",
  "kind": "theorem",
  "lexical_name": "tendsto_measure_symmDiff_preimage_nhds_zero",
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
  "slug": "tendsto-measure-symmdiff-preimage-nhds-zero--929975f35a956e62d641fbaa",
  "source": {
    "blob": "5c197ff5d2427fea9847a8bbcf8afbc1223be6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant3cfde11738e1f34c332493396232e2e31a0f06dc46d505de28a97a495f24242e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929975f35a956e62d641fbaacc2ab3d106352b2d86a065fb14ab1dbc31f38b9c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousPreimage/Variant3cfde11738e1f34c332493396232e2e31a0f06dc46d505de28a97a495f24242e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf200422-1894-9314-1b2b-6d33cccb0dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_measure_symmDiff_preimage_nhds_zero
    {l : Filter α} {f : α → C(X, Y)} {g : C(X, Y)} {s : Set Y} (hfg : Tendsto f l (𝓝 g))
    (hf : ∀ᶠ a in l, MeasurePreserving (f a) μ ν) (hg : MeasurePreserving g μ ν)
    (hs : NullMeasurableSet s ν) (hνs : ν s ≠ ∞) :
    Tendsto (fun a ↦ μ ((f a ⁻¹' s) ∆ (g ⁻¹' s))) l (𝓝 0) := by
  have : ν.InnerRegularCompactLTTop := by
    rw [← hg.map_eq]
    exact .map_of_continuous (map_continuous _)
  rw [ENNReal.tendsto_nhds_zero]
  intro ε hε
  -- Without loss of generality, `s` is an open set.
  wlog hso : IsOpen s generalizing s ε
  · have H : 0 < ε / 3 := ENNReal.div_pos hε.ne' ENNReal.coe_ne_top
    -- Indeed, we can choose an open set `U` such that `ν (U ∆ s) < ε / 3`,
    -- apply the lemma to `U`, then use the triangle inequality for `μ (_ ∆ _)`.
    rcases hs.exists_isOpen_symmDiff_lt hνs H.ne' with ⟨U, hUo, hU, hUs⟩
    have hmU : NullMeasurableSet U ν := hUo.measurableSet.nullMeasurableSet
    replace hUs := hUs.le
    filter_upwards [hf, this hmU hU.ne _ H hUo] with a hfa ha
    calc
      μ ((f a ⁻¹' s) ∆ (g ⁻¹' s))
        ≤ μ ((f a ⁻¹' s) ∆ (f a ⁻¹' U)) + μ ((f a ⁻¹' U) ∆ (g ⁻¹' U))
          + μ ((g ⁻¹' U) ∆ (g ⁻¹' s)) := by
        refine (measure_symmDiff_le _ (g ⁻¹' U) _).trans ?_
        gcongr
        apply measure_symmDiff_le
      _ ≤ ε / 3 + ε / 3 + ε / 3 := by
        gcongr
        · rwa [← preimage_symmDiff, hfa.measure_preimage (hs.symmDiff hmU), symmDiff_comm]
        · rwa [← preimage_symmDiff, hg.measure_preimage (hmU.symmDiff hs)]
      _ = ε := by simp
  -- Take a compact closed subset `K ⊆ g ⁻¹' s` of almost full measure,
  -- `μ (g ⁻¹' s \ K) < ε / 2`.
  have hνs' : μ (g ⁻¹' s) ≠ ∞ := by rwa [hg.measure_preimage hs]
  obtain ⟨K, hKg, hKco, hKcl, hKμ⟩ :
      ∃ K, MapsTo g K s ∧ IsCompact K ∧ IsClosed K ∧ μ (g ⁻¹' s \ K) < ε / 2 :=
    (hg.measurable hso.measurableSet).exists_isCompact_isClosed_sdiff_lt hνs' <| by simp [hε.ne']
  have hKm : NullMeasurableSet K μ := hKcl.nullMeasurableSet
  -- Take `a` such that `f a` is measure preserving and maps `K` to `s`.
  -- This is possible, because `K` is a compact set and `s` is an open set.
  filter_upwards [hf, ContinuousMap.tendsto_nhds_compactOpen.mp hfg K hKco s hso hKg] with a hfa ha
  -- Then each of the sets `g ⁻¹' s ∆ K = g ⁻¹' s \ K` and `f a ⁻¹' s ∆ K = f a ⁻¹' s \ K`
  -- have measure at most `ε / 2`, thus `f a ⁻¹' s ∆ g ⁻¹' s` has measure at most `ε`.
  rw [← ENNReal.add_halves ε]
  refine (measure_symmDiff_le _ K _).trans ?_
  rw [symmDiff_of_ge ha.subset_preimage, symmDiff_of_le hKg.subset_preimage]
  gcongr
  have hK' : μ K ≠ ∞ := ne_top_of_le_ne_top hνs' <| measure_mono hKg.subset_preimage
  rw [measure_sdiff_le_iff_le_add hKm ha.subset_preimage hK', hfa.measure_preimage hs,
    ← hg.measure_preimage hs, ← measure_sdiff_le_iff_le_add hKm hKg.subset_preimage hK']
  exact hKμ.le

/-- Let `f : Z → C(X, Y)` be a continuous (in the compact open topology) family
of continuous measure-preserving maps.
Let `t : Set Y` be a null measurable set of finite measure.
Then for any `s`, the set of parameters `z`
such that the preimage of `t` under `f_z` is a.e. equal to `s`
is a closed set.

In particular, if `X = Y` and `s = t`,
then we see that the a.e. stabilizer of a set is a closed set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousPreimage/Variant3cfde11738e1f34c332493396232e2e31a0f06dc46d505de28a97a495f24242e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant3cfde11738e1f34c332493396232e2e31a0f06dc46d505de28a97a495f24242e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c197ff5d2427fea9847a8bbcf8afbc1223be6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
