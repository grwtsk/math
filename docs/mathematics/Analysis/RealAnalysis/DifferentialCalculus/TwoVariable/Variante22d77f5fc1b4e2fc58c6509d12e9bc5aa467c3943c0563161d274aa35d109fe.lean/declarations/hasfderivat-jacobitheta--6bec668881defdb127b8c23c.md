# hasFDerivAt_jacobiTheta₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1c1245f-0459-3df9-2582-077f57ca77a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a88027dc-7c9a-31f8-d2ed-e31682403640",
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
  "slug": "hasfderivat-jacobitheta--6bec668881defdb127b8c23c",
  "source": {
    "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 292,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bec668881defdb127b8c23c9337eea6ad7f5ff71b5dc0ec460f7f2fcffc9210",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a88027dc-7c9a-31f8-d2ed-e31682403640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–321.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
