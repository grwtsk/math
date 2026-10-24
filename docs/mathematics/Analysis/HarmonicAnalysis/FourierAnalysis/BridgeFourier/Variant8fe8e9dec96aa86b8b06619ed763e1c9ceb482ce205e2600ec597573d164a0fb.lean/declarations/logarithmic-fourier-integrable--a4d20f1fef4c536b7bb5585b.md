# logarithmic_fourier_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65ebe018-77d9-bfa4-cb44-a2f459a80017",
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
  "slug": "logarithmic-fourier-integrable--a4d20f1fef4c536b7bb5585b",
  "source": {
    "blob": "b2d61f9436742e686f967b23ce7686daf323e416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 141,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d20f1fef4c536b7bb5585b1f2df9dd2aa7d4ba6f8d1fb4650c0e4051bbc88c",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65ebe018-77d9-bfa4-cb44-a2f459a80017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–165.

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

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d61f9436742e686f967b23ce7686daf323e416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
