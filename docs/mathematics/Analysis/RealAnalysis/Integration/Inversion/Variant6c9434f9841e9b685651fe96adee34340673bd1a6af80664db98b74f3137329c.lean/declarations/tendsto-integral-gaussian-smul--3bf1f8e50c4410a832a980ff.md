# tendsto_integral_gaussian_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "863049c1be20f280fb4f1cd989fb6fec45692236",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f0c6d27-30bc-5601-a7ba-cd896c13757b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6578f6a9-a87a-bb30-3bef-2d16ea3e4ffb",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_gaussian_smul",
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
  "slug": "tendsto-integral-gaussian-smul--3bf1f8e50c4410a832a980ff",
  "source": {
    "blob": "863049c1be20f280fb4f1cd989fb6fec45692236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf1f8e50c4410a832a980ffa8882cbbc108e2d3e19a46a18e2712c8c3518381",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6578f6a9-a87a-bb30-3bef-2d16ea3e4ffb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_gaussian_smul (hf : Integrable f) (h'f : Integrable (𝓕 f)) (v : V) :
    Tendsto (fun (c : ℝ) ↦
      ∫ w : V, ((π * c) ^ (finrank ℝ V / 2 : ℂ) * cexp (-π ^ 2 * c * ‖v - w‖ ^ 2)) • f w)
    atTop (𝓝 (𝓕⁻ (𝓕 f) v)) := by
  have A : Tendsto (fun (c : ℝ) ↦ (∫ w : V, cexp (- c⁻¹ * ‖w‖^2 + 2 * π * I * ⟪v, w⟫)
       • (𝓕 f) w)) atTop (𝓝 (𝓕⁻ (𝓕 f) v)) := by
    have : Integrable (fun w ↦ 𝐞 ⟪w, v⟫ • (𝓕 f) w) := by
      have B : Continuous fun p : V × V => (- innerₗ V) p.1 p.2 := continuous_inner.neg
      simpa using
        (VectorFourier.fourierIntegral_convergent_iff Real.continuous_fourierChar B v).2 h'f
    convert tendsto_integral_cexp_sq_smul this using 4 with c w
    · rw [Submonoid.smul_def, Real.fourierChar_apply, smul_smul, ← Complex.exp_add, real_inner_comm]
      congr 3
      simp only [ofReal_mul, ofReal_ofNat]
      ring
    · simp [fourierIntegralInv_eq]
  have B : Tendsto (fun (c : ℝ) ↦ (∫ w : V,
        𝓕 (fun w ↦ cexp (- c⁻¹ * ‖w‖^2 + 2 * π * I * ⟪v, w⟫)) w • f w)) atTop
      (𝓝 (𝓕⁻ (𝓕 f) v)) := by
    apply A.congr'
    filter_upwards [Ioi_mem_atTop 0] with c (hc : 0 < c)
    have J : Integrable (fun w ↦ cexp (- c⁻¹ * ‖w‖^2 + 2 * π * I * ⟪v, w⟫)) :=
      GaussianFourier.integrable_cexp_neg_mul_sq_norm_add (by simpa) _ _
    simpa using (VectorFourier.integral_fourierIntegral_smul_eq_flip (L := innerₗ V)
      Real.continuous_fourierChar continuous_inner J hf).symm
  apply B.congr'
  filter_upwards [Ioi_mem_atTop 0] with c (hc : 0 < c)
  congr with w
  rw [fourierIntegral_gaussian_innerProductSpace' (by simpa)]
  congr
  · simp
  · simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant6c9434f9841e9b685651fe96adee34340673bd1a6af80664db98b74f3137329c.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `863049c1be20f280fb4f1cd989fb6fec45692236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
