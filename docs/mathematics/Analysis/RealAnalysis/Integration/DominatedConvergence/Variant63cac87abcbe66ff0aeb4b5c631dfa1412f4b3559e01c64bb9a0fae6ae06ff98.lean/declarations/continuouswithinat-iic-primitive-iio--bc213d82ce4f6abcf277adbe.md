# continuousWithinAt_Iic_primitive_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0c3e7fa-946f-0634-0863-e48c651f1ff8",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_Iic_primitive_Iio",
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
  "slug": "continuouswithinat-iic-primitive-iio--bc213d82ce4f6abcf277adbe",
  "source": {
    "blob": "4c9c2804830d9693d63c4708e83da3dcc9ccf9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 663,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc213d82ce4f6abcf277adbe4b5fef941fc3ecf2c8eb75f36c196e77e6f9e9d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0c3e7fa-946f-0634-0863-e48c651f1ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_Iic_primitive_Iio {a₀ : ℝ} (hf : IntegrableOn f (Iio a₀) μ) :
    ContinuousWithinAt (fun b ↦ ∫ x in Iio b, f x ∂μ) (Iic a₀) a₀ := by
  simp_rw [← integral_indicator measurableSet_Iio]
  apply tendsto_integral_filter_of_dominated_convergence ((Iio a₀).indicator (norm ∘ f))
  · filter_upwards [self_mem_nhdsWithin] with a ha
    rw [aestronglyMeasurable_indicator_iff measurableSet_Iio]
    exact (hf.mono_set (Iio_subset_Iio ha)).aestronglyMeasurable
  · filter_upwards [self_mem_nhdsWithin] with a ha
    refine ae_of_all _ fun x ↦ ?_
    rw [norm_indicator_eq_indicator_norm]
    apply indicator_le_indicator_of_subset (Iio_subset_Iio (by grind)) (fun a ↦ norm_nonneg (f a))
  · simpa [integrable_indicator_iff measurableSet_Iio] using! hf.norm
  · refine ae_of_all _ fun x ↦ ?_
    simp only [indicator_apply, mem_Iio]
    by_cases hx : x < a₀ <;> apply tendsto_const_nhds.congr'
    · filter_upwards [mem_nhdsWithin_of_mem_nhds (Ioi_mem_nhds hx)] with a ha using by grind
    · filter_upwards [self_mem_nhdsWithin] with a ha using by grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9c2804830d9693d63c4708e83da3dcc9ccf9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
