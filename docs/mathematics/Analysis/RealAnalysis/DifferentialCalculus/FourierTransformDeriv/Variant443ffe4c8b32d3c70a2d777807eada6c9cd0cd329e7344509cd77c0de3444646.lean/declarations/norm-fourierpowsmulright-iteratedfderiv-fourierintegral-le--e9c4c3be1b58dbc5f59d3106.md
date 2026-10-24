# norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faf67ec5-f489-b9a3-4be9-34f901356b16",
  "kind": "theorem",
  "lexical_name": "norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le",
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
  "slug": "norm-fourierpowsmulright-iteratedfderiv-fourierintegral-le--e9c4c3be1b58dbc5f59d3106",
  "source": {
    "blob": "0c09287ffc79cc80115f3e70237dffca6ab50a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 610,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9c4c3be1b58dbc5f59d3106f3967dfddb9c5ab130df40a167b539d26782898f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faf67ec5-f489-b9a3-4be9-34f901356b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le [FiniteDimensional ℝ V]
    {μ : Measure V} [Measure.IsAddHaarMeasure μ] {K N : ℕ∞} (hf : ContDiff ℝ N f)
    (h'f : ∀ (k n : ℕ), k ≤ K → n ≤ N → Integrable (fun v ↦ ‖v‖ ^ k * ‖iteratedFDeriv ℝ n f v‖) μ)
    {k n : ℕ} (hk : k ≤ K) (hn : n ≤ N) {w : W} :
    ‖fourierPowSMulRight (-L.flip)
      (iteratedFDeriv ℝ k (fourierIntegral 𝐞 μ L.toLinearMap₂ f)) w n‖ ≤
    (2 * π) ^ k * (2 * k + 2) ^ n * ‖L‖ ^ k * ∑ p ∈ Finset.range (k + 1) ×ˢ Finset.range (n + 1),
      ∫ v, ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖ ∂μ := by
  rw [fourierPowSMulRight_iteratedFDeriv_fourierIntegral L hf h'f hk hn]
  apply (norm_fourierIntegral_le_integral_norm _ _ _ _ _).trans
  have I p (hp : p ∈ Finset.range (k + 1) ×ˢ Finset.range (n + 1)) :
      Integrable (fun v ↦ ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖) μ := by
    simp only [Finset.mem_product, Finset.mem_range_succ_iff] at hp
    exact h'f _ _ (le_trans (by simpa using hp.1) hk) (le_trans (by simpa using hp.2) hn)
  rw [← integral_finset_sum _ I, ← integral_const_mul]
  apply integral_mono_of_nonneg
  · filter_upwards with v using norm_nonneg _
  · exact (integrable_finset_sum _ I).const_mul _
  · filter_upwards with v
    apply norm_iteratedFDeriv_fourierPowSMulRight _ hf (mod_cast hn) _
    intro i hi j hj
    apply Finset.single_le_sum (f := fun p ↦ ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖) (a := (j, i))
    · intro i _hi
      positivity
    · simp only [Finset.mem_product, Finset.mem_range_succ_iff]
      exact ⟨hj, hi⟩

/-- One can bound the `k`-th derivative of the Fourier integral of `f`, multiplied by `(L v w) ^ n`,
in terms of integrals of iterated derivatives of `f` (of order up to `n`) multiplied by `‖v‖ ^ i`
(for `i ≤ k`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c09287ffc79cc80115f3e70237dffca6ab50a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
