# pow_mul_norm_iteratedFDeriv_fourier_le

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
      "line": 728,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fb89e5e-f311-b054-760b-80ff295f7ed3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e384aff-02bf-6eab-a606-db1abfb10c81",
  "kind": "lemma",
  "lexical_name": "pow_mul_norm_iteratedFDeriv_fourier_le",
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
  "slug": "pow-mul-norm-iteratedfderiv-fourier-le--3f7f31c56240bdda3e8b3e9d",
  "source": {
    "blob": "54260b884936c9479ca6a212d8b1c2bb8f4db37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 728,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f7f31c56240bdda3e8b3e9dbc001cc90b7ab67b6e59b959bb8cb139112aa8ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e384aff-02bf-6eab-a606-db1abfb10c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_mul_norm_iteratedFDeriv_fourier_le
    {K N : ℕ∞} (hf : ContDiff ℝ N f)
    (h'f : ∀ (k n : ℕ), k ≤ K → n ≤ N → Integrable (fun v ↦ ‖v‖ ^ k * ‖iteratedFDeriv ℝ n f v‖))
    {k n : ℕ} (hk : k ≤ K) (hn : n ≤ N) (w : V) :
    ‖w‖ ^ n * ‖iteratedFDeriv ℝ k (𝓕 f) w‖ ≤ (2 * π) ^ k * (2 * k + 2) ^ n *
      ∑ p ∈ Finset.range (k + 1) ×ˢ Finset.range (n + 1),
        ∫ v, ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖ := by
  have Z : ‖w‖ ^ n * (‖w‖ ^ n * ‖iteratedFDeriv ℝ k (𝓕 f) w‖) ≤
      ‖w‖ ^ n * ((2 * (π * ‖innerSL (E := V) ℝ‖)) ^ k * ((2 * k + 2) ^ n *
          ∑ p ∈ Finset.range (k + 1) ×ˢ Finset.range (n + 1),
            ∫ (v : V), ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 f v‖ ∂volume)) := by
    have := VectorFourier.pow_mul_norm_iteratedFDeriv_fourierIntegral_le (innerSL ℝ) hf h'f hk hn
      w w
    simp only [innerSL_apply_apply _ w w, real_inner_self_eq_norm_sq w, abs_pow, abs_norm,
      mul_assoc] at this
    rwa [pow_two, mul_pow, mul_assoc] at this
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [pow_zero, one_mul, mul_one, zero_add, Finset.range_one, Finset.product_singleton,
      Finset.sum_map, Function.Embedding.sectL_apply] at Z ⊢
    apply Z.trans
    conv_rhs => rw [← mul_one π]
    gcongr
    exact norm_innerSL_le _
  rcases eq_or_ne w 0 with rfl | hw
  · rw [norm_zero, zero_pow hn, zero_mul]
    positivity
  rw [mul_le_mul_iff_right₀ (pow_pos (by simp [hw]) n)] at Z
  apply Z.trans
  conv_rhs => rw [← mul_one π]
  simp only [mul_assoc]
  gcongr
  exact norm_innerSL_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54260b884936c9479ca6a212d8b1c2bb8f4db37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
