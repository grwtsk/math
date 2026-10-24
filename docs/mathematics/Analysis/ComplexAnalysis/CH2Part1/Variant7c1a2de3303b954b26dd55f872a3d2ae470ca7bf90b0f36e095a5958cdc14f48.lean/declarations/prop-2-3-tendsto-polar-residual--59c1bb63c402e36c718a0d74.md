# prop_2_3_tendsto_polar_residual

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
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:377157ab-1d5c-4072-f875-d3cb7a180384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80cddb36-ee07-1ca2-8054-11703db1db8d",
  "kind": "lemma",
  "lexical_name": "prop_2_3_tendsto_polar_residual",
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
  "slug": "prop-2-3-tendsto-polar-residual--59c1bb63c402e36c718a0d74",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 436,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59c1bb63c402e36c718a0d74a974b583a3580ecac4e005919a83c048d4986aa8",
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

Occurrence: `result:80cddb36-ee07-1ca2-8054-11703db1db8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prop_2_3_tendsto_polar_residual
    {T β : ℝ} (hT : 0 < T) (hβ : 1 < β)
    {φ : ℝ → ℂ} (hφ_int : Integrable φ)
    (hφ_cont : ContinuousAt φ 0)
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ y‖ ≤ C / |y| ^ β)
    (x : ℝ) (hx : 0 < x) :
    Filter.Tendsto
      (fun sig ↦ ((x ^ (2 - sig) / (2 * π * T) : ℝ) : ℂ) *
        ∫ u in Set.Ici (-log x), Real.exp (-u * (sig - 1)) * 𝓕 (fun t : ℝ ↦ φ (t / T)) (u / (2 * π)))
      (nhdsWithin 1 (Set.Ioi 1))
      (nhds ((φ 0 - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ y) * (x / T))) := by
  have h_pre_lim : Filter.Tendsto (fun (sig : ℝ) ↦ ((x ^ (2 - sig) / (2 * π * T) : ℝ) : ℂ)) (nhdsWithin 1 (Set.Ioi 1)) (nhds (x / (2 * π * T) : ℂ)) := by
    refine tendsto_nhdsWithin_of_tendsto_nhds ?_
    convert (Complex.continuous_ofReal.continuousAt (x := x / (2 * π * T))).tendsto.comp ?_ using 1
    · push_cast; rfl
    refine Filter.Tendsto.div_const ?_ (2 * π * T)
    have h_pow_cont : ContinuousAt (fun (sig : ℝ) ↦ x ^ (2 - sig)) 1 := by
      apply (continuousAt_const_rpow hx.ne').comp
      exact continuousAt_const.sub continuousAt_id
    convert h_pow_cont.tendsto using 1
    norm_num
  have h_int_lim := prop_2_3_tendsto_exp_damped_integral hT hβ hφ_int hφ_Fourier x hx
  have h_int_val := prop_2_3_fourier_integral_ici_eq hT hβ hφ_int hφ_cont hφ_Fourier x
  convert Filter.Tendsto.mul h_pre_lim h_int_lim using 1
  · rw [h_int_val]; field_simp [Real.pi_pos.ne', hT.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
