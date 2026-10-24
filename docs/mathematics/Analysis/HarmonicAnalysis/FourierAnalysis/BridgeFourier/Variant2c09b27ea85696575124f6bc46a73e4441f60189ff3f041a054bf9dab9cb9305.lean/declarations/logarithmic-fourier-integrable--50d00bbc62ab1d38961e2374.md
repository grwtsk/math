# logarithmic_fourier_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "486910df31274bad97a4645ee92da7de89891a41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e8bc37a-3919-7f71-75f1-516da595b295",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a83fd813-2b7d-9d35-10a7-99398e84c9a5",
  "kind": "theorem",
  "lexical_name": "logarithmic_fourier_integrable",
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
  "slug": "logarithmic-fourier-integrable--50d00bbc62ab1d38961e2374",
  "source": {
    "blob": "486910df31274bad97a4645ee92da7de89891a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50d00bbc62ab1d38961e23746fe241a5d6f5cf90e5bab6c1407a93050fb09810",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a83fd813-2b7d-9d35-10a7-99398e84c9a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_fourier_integrable (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) :
    Integrable (fun ξ ↦ Real.log (1 + 4 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) := by
  have hi : Integrable (fun ξ : ℝ ↦ (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ))) := by
    convert (integrable_rpow_neg_one_add_norm_sq
      (E := ℝ) (μ := volume) (r := (3 / 2 : ℝ)) (by norm_num)) using 1
    ext ξ
    simp [Real.norm_eq_abs, sq_abs]
    norm_num
  have hc := sourceFourier_continuous hf
  have hm : AEStronglyMeasurable
      (fun ξ ↦ Real.log (1 + 4 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) := by
    apply Continuous.aestronglyMeasurable
    exact ((show Continuous (fun ξ : ℝ ↦ 1 + 4 * ξ ^ 2) by fun_prop).log
      (by intro ξ; positivity)).mul
      (Complex.continuous_normSq.comp hc)
  apply (hi.const_mul (16 * ((∫ x, ‖f x‖) ^ 2 + (∫ x, ‖deriv f x‖) ^ 2))).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg
    (Real.log_nonneg (by nlinarith [sq_nonneg ξ])) (Complex.normSq_nonneg _))]
  rw [Complex.normSq_eq_norm_sq]
  exact log_fourier_majorant ξ _ _ _ (norm_nonneg _) (sourceFourier_norm_le f ξ)
    (sourceFourier_frequency_bound f hf hd hdi ξ)

/-- The same derivative estimate gives finite unweighted Fourier square mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant2c09b27ea85696575124f6bc46a73e4441f60189ff3f041a054bf9dab9cb9305.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `486910df31274bad97a4645ee92da7de89891a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
