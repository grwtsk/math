# Inu_bounds_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4778,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cd614ed-d212-b067-376e-6372d1f06a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cec4c3a-1a9c-376c-318a-a3c8e4e97988",
  "kind": "lemma",
  "lexical_name": "Inu_bounds_neg",
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
  "slug": "inu-bounds-neg--48cc73560901b6c1b2afeae2",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4801,
    "line": 4778,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48cc73560901b6c1b2afeae2ab45c74f410f135563b8b9c66835ee8f65a07030",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cec4c3a-1a9c-376c-318a-a3c8e4e97988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4778–4801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Inu_bounds_neg (ν x : ℝ) (hν : ν > 0) (hx : x < 0) :
    (𝓕 (ϕ_pm ν (-1)) x).re ≤ Inu ν x ∧ Inu ν x ≤ (𝓕 (ϕ_pm ν 1) x).re := by
  have hI : Inu ν x = 0 := if_neg (not_le.mpr hx)
  rw [hI]
  refine ⟨?_, ?_⟩
  · apply le_of_tendsto ((continuous_re.tendsto _).comp (fourier_formula_neg ν (-1) hν x hx))
    apply Filter.Eventually.of_forall; intro T
    simp only [Function.comp_apply]
    rw [show (↑(Real.sin (π * x)) ^ 2 / ↑π ^ 2 : ℂ) = ↑((Real.sin (π * x)) ^ 2 / π ^ 2) by push_cast; ring]
    rw [Complex.re_ofReal_mul, integral_re_B_mul_exp_add]
    apply mul_nonpos_of_nonneg_of_nonpos (by positivity)
    apply integral_B_diff_mul_exp_nonpos (fun t ↦ ↑ν + ↑t); intro t ht
    have h_mono := B_minus_mono (show ν ≤ ν + t by simp only [Set.mem_Icc] at ht; linarith)
    push_cast at h_mono; exact h_mono
  · apply ge_of_tendsto ((continuous_re.tendsto _).comp (fourier_formula_neg ν 1 hν x hx))
    apply Filter.Eventually.of_forall; intro T
    simp only [Function.comp_apply]
    rw [show (↑(Real.sin (π * x)) ^ 2 / ↑π ^ 2 : ℂ) = ↑((Real.sin (π * x)) ^ 2 / π ^ 2) by push_cast; ring]
    rw [Complex.re_ofReal_mul, integral_re_B_mul_exp_add]
    apply mul_nonneg (by positivity)
    apply integral_B_diff_mul_exp_nonneg (fun t ↦ ↑ν + ↑t); intro t ht
    have h_mono := B_plus_mono (show ν ≤ ν + t by simp only [Set.mem_Icc] at ht; linarith)
    push_cast at h_mono; exact h_mono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L4778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
