# integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f84227ed144f01ce3088d6b35bb148e136ec7311",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fde0dccb-3d0a-bcc9-b784-d53c82f73e0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11e79bb9-4fd1-e124-005d-466eaeb48490",
  "kind": "theorem",
  "lexical_name": "integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace",
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
  "slug": "integrable-cexp-neg-mul-sq-norm-add-of-euclideanspace--9499a65595fd4a5558d06a38",
  "source": {
    "blob": "f84227ed144f01ce3088d6b35bb148e136ec7311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 256,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9499a65595fd4a5558d06a38dff0f6990cef874ed1d15c8f47dc1aae4564e893",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e79bb9-4fd1-e124-005d-466eaeb48490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace
    {ι : Type*} [Fintype ι] (hb : 0 < b.re) (c : ℂ) (w : EuclideanSpace ℝ ι) :
    Integrable (fun (v : EuclideanSpace ℝ ι) ↦ cexp (- b * ‖v‖^2 + c * ⟪w, v⟫)) := by
  have := EuclideanSpace.volume_preserving_measurableEquiv ι
  rw [← MeasurePreserving.integrable_comp_emb this.symm (MeasurableEquiv.measurableEmbedding _)]
  simp only [neg_mul, Function.comp_def]
  convert integrable_cexp_neg_mul_sum_add hb (fun i ↦ c * w i) using 3 with v
  simp only [EuclideanSpace.measurableEquiv, MeasurableEquiv.symm_mk, MeasurableEquiv.coe_mk,
    EuclideanSpace.norm_eq, WithLp.equiv_symm_pi_apply, Real.norm_eq_abs, sq_abs, PiLp.inner_apply,
    RCLike.inner_apply, conj_trivial, ofReal_sum, ofReal_mul, Finset.mul_sum, neg_mul,
    Finset.sum_neg_distrib, mul_assoc, add_left_inj, neg_inj]
  norm_cast
  rw [sq_sqrt]
  · simp [Finset.mul_sum, mul_comm]
  · exact Finset.sum_nonneg (fun i _hi ↦ by positivity)

/-- In a real inner product space, the complex exponential of minus the square of the norm plus
a scalar product is integrable. Useful when discussing the Fourier transform of a Gaussian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f84227ed144f01ce3088d6b35bb148e136ec7311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
