# _root_.IntervalIntegrable.absolutelyContinuousOnInterval_intervalIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43cfa13281fe2e2c62f9f6d28aaed6ebffafd415",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ed99a42-74f8-6cd6-1efc-5088e52caa79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b239055f-9e96-a89e-26fd-1a4ed15389e4",
  "kind": "theorem",
  "lexical_name": "_root_.IntervalIntegrable.absolutelyContinuousOnInterval_intervalIntegral",
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
  "slug": "root-intervalintegrable-absolutelycontinuousoninterval-intervalintegral--4ac54ba887e076072a7cb241",
  "source": {
    "blob": "43cfa13281fe2e2c62f9f6d28aaed6ebffafd415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 450,
    "path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac54ba887e076072a7cb2411082e5f21d154caa260bc83b7e3975870ab0d13d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b239055f-9e96-a89e-26fd-1a4ed15389e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IntervalIntegrable.absolutelyContinuousOnInterval_intervalIntegral {f : ℝ → ℝ}
    {a b c : ℝ} (h : IntervalIntegrable f volume a b) (hc : c ∈ uIcc a b) :
    AbsolutelyContinuousOnInterval (fun x ↦ ∫ v in c..x, f v) a b := by
  -- Step 1: Use `MeasureTheory.tendsto_setLIntegral_zero` to conclude that the function sending
  -- `E` to `∫⁻ (x : ℝ) in s E, ‖f x‖ₑ ∂volume.restrict (uIoc a b))` tends to `0` along
  -- `totalLengthFilter ⊓ 𝓟 (disjWithin a b)`.
  let s := fun E : ℕ × (ℕ → ℝ × ℝ) ↦ ⋃ i ∈ Finset.range E.1, uIoc (E.2 i).1 (E.2 i).2
  have : Tendsto (fun i ↦ ∫⁻ (x : ℝ) in s i, ‖f x‖ₑ ∂volume.restrict (uIoc a b))
      (totalLengthFilter ⊓ 𝓟 (disjWithin a b)) (𝓝 0) :=
    tendsto_setLIntegral_zero
    (ne_of_lt <| intervalIntegrable_iff.mp h |>.hasFiniteIntegral)
    (tendsto_volume_restrict_totalLengthFilter_disjWithin_nhds_zero _ _)
  -- Step 2: Use the lintegral in Step 1 to bound the sum of the distances between
  -- `∫ v in c..(E.2 i).2, f v` and `∫ v in c..(E.2 i).2, f v` that occurs in the definition
  -- of absolutely continuous.
  have := ENNReal.toReal_zero ▸ (ENNReal.continuousAt_toReal (by simp)).tendsto.comp this
  refine squeeze_zero' ?_ ?_ this
  · filter_upwards with (n, I)
    exact Finset.sum_nonneg (fun _ _ ↦ dist_nonneg)
  simp only [comp_apply, s]
  have : ∀ᶠ (E : ℕ × (ℕ → ℝ × ℝ)) in totalLengthFilter ⊓ 𝓟 (disjWithin a b),
      E ∈ disjWithin a b :=
    eventually_inf_principal.mpr (by simp)
  filter_upwards [this] with (n, I) hnI
  obtain ⟨hnI1, hnI2⟩ := mem_ofPred_eq ▸ hnI
  simp only
  rw [← integral_norm_eq_lintegral_enorm (h.aestronglyMeasurable_restrict_uIoc.restrict),
      integral_biUnion_finset _ (by simp +contextual [uIoc]) hnI2]
  · refine Finset.sum_le_sum (fun i hi ↦ ?_)
    rw [Real.dist_eq,
        intervalIntegral.integral_interval_sub_left
          (by apply IntervalIntegrable.mono_set' h; grind [uIoc, uIcc])
          (by apply IntervalIntegrable.mono_set' h; grind [uIoc, uIcc]),
        Measure.restrict_restrict_of_subset
          (uIoc_subset_of_mem_disjWithin hnI (Finset.mem_range.mp hi)),
        intervalIntegral.integral_symm, abs_neg,
        intervalIntegral.abs_intervalIntegral_eq]
    exact abs_integral_le_integral_abs
  · intro i hi
    unfold IntegrableOn
    have h_subset := uIoc_subset_of_mem_disjWithin hnI (Finset.mem_range.mp hi)
    rw [Measure.restrict_restrict_of_subset h_subset]
    exact IntegrableOn.mono_set h.def'.norm h_subset |>.integrable

end AbsolutelyContinuousOnInterval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43cfa13281fe2e2c62f9f6d28aaed6ebffafd415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
