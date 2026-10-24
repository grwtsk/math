# fourierIntegral_iteratedFDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54260b884936c9479ca6a212d8b1c2bb8f4db37f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 532,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d0c88ed-6714-e104-fade-55f95cf121d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90524a38-0de8-01ad-28dd-1694b052c193",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_iteratedFDeriv",
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
  "slug": "fourierintegral-iteratedfderiv--2d5cb74f086325f5327ce430",
  "source": {
    "blob": "54260b884936c9479ca6a212d8b1c2bb8f4db37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 532,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d5cb74f086325f5327ce43096cec6ba9710f331e77ca6ad9c1e443d1cb52dc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90524a38-0de8-01ad-28dd-1694b052c193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_iteratedFDeriv [FiniteDimensional ℝ V]
    {μ : Measure V} [Measure.IsAddHaarMeasure μ] {N : ℕ∞} (hf : ContDiff ℝ N f)
    (h'f : ∀ (n : ℕ), n ≤ N → Integrable (iteratedFDeriv ℝ n f) μ) {n : ℕ} (hn : n ≤ N) :
    fourierIntegral 𝐞 μ L.toLinearMap₁₂ (iteratedFDeriv ℝ n f)
      = (fun w ↦ fourierPowSMulRight (-L.flip) (fourierIntegral 𝐞 μ L.toLinearMap₁₂ f) w n) := by
  induction n with
  | zero =>
    ext w m
    simp only [iteratedFDeriv_zero_apply, fourierPowSMulRight_apply, pow_zero, Finset.univ_eq_empty,
      neg_apply, ContinuousLinearMap.flip_apply, Finset.prod_empty, one_smul,
      fourierIntegral_continuousMultilinearMap_apply' ((h'f 0 bot_le))]
  | succ n ih =>
    ext w m
    have J : Integrable (fderiv ℝ (iteratedFDeriv ℝ n f)) μ := by
      specialize h'f (n + 1) hn
      rwa [iteratedFDeriv_succ_eq_comp_left, Function.comp_def,
          LinearIsometryEquiv.integrable_comp_iff (𝕜 := ℝ) (φ := fderiv ℝ (iteratedFDeriv ℝ n f))]
        at h'f
    suffices H : (fourierIntegral 𝐞 μ L.toLinearMap₁₂ (fderiv ℝ (iteratedFDeriv ℝ n f)) w)
          (m 0) (Fin.tail m) =
        (-(2 * π * I)) ^ (n + 1) • (∏ x : Fin (n + 1), -L (m x) w) • ∫ v, 𝐞 (-L v w) • f v ∂μ by
      rw [fourierIntegral_continuousMultilinearMap_apply' (h'f _ hn)]
      simp only [iteratedFDeriv_succ_apply_left, fourierPowSMulRight_apply, neg_apply,
        ContinuousLinearMap.flip_apply]
      rw [← fourierIntegral_continuousMultilinearMap_apply' ((J.apply_continuousLinearMap _)),
          ← fourierIntegral_continuousLinearMap_apply' J]
      exact H
    have h'n : n < N := (Nat.cast_lt.mpr n.lt_succ_self).trans_le hn
    rw [fourierIntegral_fderiv _ (h'f n h'n.le)
      (hf.differentiable_iteratedFDeriv (mod_cast h'n)) J]
    simp only [ih h'n.le, fourierSMulRight_apply, neg_apply, ContinuousLinearMap.flip_apply,
      neg_smul, smul_neg, neg_neg, smul_apply, fourierPowSMulRight_apply, ← coe_smul (E := E),
      smul_smul]
    congr 1
    simp only [ofReal_prod, ofReal_neg, pow_succ, mul_neg, Fin.prod_univ_succ, neg_mul,
      ofReal_mul, neg_neg, Fin.tail_def]
    ring

/-- The `k`-th derivative of the Fourier integral of `f`, multiplied by `(L v w) ^ n`, is the
Fourier integral of the `n`-th derivative of `(L v w) ^ k * f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54260b884936c9479ca6a212d8b1c2bb8f4db37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
