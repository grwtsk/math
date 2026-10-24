# pow_mul_norm_iteratedFDeriv_fourierIntegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35e48eb80086356065c8ed7390f06c85122f7ad4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 632,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f57041e-47b6-c820-5935-016994c1c1e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58757c35-800d-0ce5-663e-df95e39e3f0d",
  "kind": "lemma",
  "lexical_name": "pow_mul_norm_iteratedFDeriv_fourierIntegral_le",
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
  "slug": "pow-mul-norm-iteratedfderiv-fourierintegral-le--231f6801177c5fb3231184a6",
  "source": {
    "blob": "35e48eb80086356065c8ed7390f06c85122f7ad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 632,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:231f6801177c5fb3231184a6174b96a41f0b0218a1bc941c86631a0cfafc2651",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58757c35-800d-0ce5-663e-df95e39e3f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_mul_norm_iteratedFDeriv_fourierIntegral_le [FiniteDimensional ℝ V]
    {μ : Measure V} [Measure.IsAddHaarMeasure μ] {K N : ℕ∞} (hf : ContDiff ℝ N f)
    (h'f : ∀ (k n : ℕ), k ≤ K → n ≤ N → Integrable (fun v ↦ ‖v‖^k * ‖iteratedFDeriv ℝ n f v‖) μ)
    {k n : ℕ} (hk : k ≤ K) (hn : n ≤ N) (v : V) (w : W) :
    |L v w| ^ n * ‖(iteratedFDeriv ℝ k (fourierIntegral 𝐞 μ L.toLinearMap₂ f)) w‖ ≤
      ‖v‖ ^ n * (2 * π * ‖L‖) ^ k * (2 * k + 2) ^ n *
        ∑ p ∈ Finset.range (k + 1) ×ˢ Finset.range (n + 1),
          ∫ v, ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖ ∂μ := calc
  |L v w| ^ n * ‖(iteratedFDeriv ℝ k (fourierIntegral 𝐞 μ L.toLinearMap₂ f)) w‖
  _ ≤ (2 * π) ^ n
      * (|L v w| ^ n * ‖iteratedFDeriv ℝ k (fourierIntegral 𝐞 μ L.toLinearMap₂ f) w‖) := by
    apply le_mul_of_one_le_left (by positivity)
    apply one_le_pow₀
    linarith [one_le_pi_div_two]
  _ = ‖fourierPowSMulRight (-L.flip)
        (iteratedFDeriv ℝ k (fourierIntegral 𝐞 μ L.toLinearMap₂ f)) w n (fun _ ↦ v)‖ := by
    simp [norm_smul, abs_of_nonneg pi_nonneg]
  _ ≤ ‖fourierPowSMulRight (-L.flip)
        (iteratedFDeriv ℝ k (fourierIntegral 𝐞 μ L.toLinearMap₂ f)) w n‖ * ∏ _ : Fin n, ‖v‖ :=
    le_opNorm _ _
  _ ≤ ((2 * π) ^ k * (2 * k + 2) ^ n * ‖L‖ ^ k *
      ∑ p ∈ Finset.range (k + 1) ×ˢ Finset.range (n + 1),
        ∫ v, ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖ ∂μ) * ‖v‖ ^ n := by
    gcongr
    · apply norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le _ hf h'f hk hn
    · simp
  _ = ‖v‖ ^ n * (2 * π * ‖L‖) ^ k * (2 * k + 2) ^ n *
        ∑ p ∈ Finset.range (k + 1) ×ˢ Finset.range (n + 1),
          ∫ v, ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖ ∂μ := by
    simp [mul_pow]
    ring

end VectorFourier

namespace Real
open VectorFourier

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
  [MeasurableSpace V] [BorelSpace V] {f : V → E}

/-- The Fréchet derivative of the Fourier transform of `f` is the Fourier transform of
    `fun v ↦ -2 * π * I ⟪v, ⬝⟫ f v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e48eb80086356065c8ed7390f06c85122f7ad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
