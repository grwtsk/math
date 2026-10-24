# continuousWithinAt_Iic_primitive_Iio

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
      "line": 655,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83d09753-dcae-9d25-d58c-6d7f4b1b75da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c095079-203f-bd2f-902b-7c21170640cb",
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
  "slug": "continuouswithinat-iic-primitive-iio--47f8c72f05f086a4ad0165c6",
  "source": {
    "blob": "f9151af5679b358686392d6d28721e01382dcad0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 655,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47f8c72f05f086a4ad0165c691549b5393d4837d273bc85db7d92e6ca2317e14",
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

Occurrence: `result:4c095079-203f-bd2f-902b-7c21170640cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–672.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9151af5679b358686392d6d28721e01382dcad0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
