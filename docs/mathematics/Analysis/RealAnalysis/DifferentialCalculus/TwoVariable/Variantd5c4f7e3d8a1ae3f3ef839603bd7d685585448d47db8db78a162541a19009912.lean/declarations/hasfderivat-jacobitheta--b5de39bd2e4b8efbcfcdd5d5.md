# hasFDerivAt_jacobiTheta₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d1fee6b-4026-acde-11fb-2176fa8aa7f5",
  "kind": "lemma",
  "lexical_name": "hasFDerivAt_jacobiTheta₂",
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
  "slug": "hasfderivat-jacobitheta--b5de39bd2e4b8efbcfcdd5d5",
  "source": {
    "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 300,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5de39bd2e4b8efbcfcdd5d57d9e934882a033e0d446309ecb7f1d34c4d90b24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d1fee6b-4026-acde-11fb-2176fa8aa7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasFDerivAt_jacobiTheta₂ (z : ℂ) {τ : ℂ} (hτ : 0 < im τ) :
    HasFDerivAt (fun p : ℂ × ℂ ↦ jacobiTheta₂ p.1 p.2) (jacobiTheta₂_fderiv z τ) (z, τ) := by
  obtain ⟨T, hT, hτ'⟩ := exists_between hτ
  obtain ⟨S, hz⟩ := exists_gt |im z|
  let V := {u | |im u| < S} ×ˢ {v | T < im v}
  have hVo : IsOpen V := by
    refine ((_root_.continuous_abs.comp continuous_im).isOpen_preimage _ isOpen_Iio).prod ?_
    exact continuous_im.isOpen_preimage _ isOpen_Ioi
  have hVmem : (z, τ) ∈ V := ⟨hz, hτ'⟩
  have hVp : IsPreconnected V := by
    refine (Convex.isPreconnected ?_).prod (convex_halfSpace_im_gt T).isPreconnected
    simpa only [abs_lt] using (convex_halfSpace_im_gt _).inter (convex_halfSpace_im_lt _)
  let f : ℤ → ℂ × ℂ → ℂ := fun n p ↦ jacobiTheta₂_term n p.1 p.2
  let f' : ℤ → ℂ × ℂ → ℂ × ℂ →L[ℂ] ℂ := fun n p ↦ jacobiTheta₂_term_fderiv n p.1 p.2
  have hf (n : ℤ) : ∀ p ∈ V, HasFDerivAt (f n) (f' n p) p :=
    fun p _ ↦ hasFDerivAt_jacobiTheta₂_term n p.1 p.2
  let u : ℤ → ℝ := fun n ↦ 3 * π * |n| ^ 2 * Real.exp (-π * (T * n ^ 2 - 2 * S * |n|))
  have hu : ∀ (n : ℤ), ∀ x ∈ V, ‖f' n x‖ ≤ u n := by
    refine fun n p hp ↦ (norm_jacobiTheta₂_term_fderiv_le n p.1 p.2).trans ?_
    refine mul_le_mul_of_nonneg_left ?_ (by positivity)
    exact norm_jacobiTheta₂_term_le hT (le_of_lt hp.1) (le_of_lt hp.2) n
  have hu_sum : Summable u := by
    simp_rw [u, mul_assoc (3 * π)]
    exact (summable_pow_mul_jacobiTheta₂_term_bound S hT 2).mul_left _
  have hf_sum : Summable fun n : ℤ ↦ f n (z, τ) := by
    refine (summable_pow_mul_jacobiTheta₂_term_bound S hT 0).of_norm_bounded _ ?_
    simpa only [pow_zero, one_mul] using norm_jacobiTheta₂_term_le hT hz.le hτ'.le
  simpa only [jacobiTheta₂, jacobiTheta₂_fderiv, f, f'] using
    hasFDerivAt_tsum_of_isPreconnected hu_sum hVo hVp hf hu hVmem hf_sum hVmem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
