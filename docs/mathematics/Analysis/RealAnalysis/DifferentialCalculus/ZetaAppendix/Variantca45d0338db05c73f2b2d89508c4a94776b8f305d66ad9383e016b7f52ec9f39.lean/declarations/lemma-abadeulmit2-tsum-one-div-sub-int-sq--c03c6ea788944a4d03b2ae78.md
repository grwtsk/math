# lemma_abadeulmit2_tsum_one_div_sub_int_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2653,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ca2a8af-7f93-fdf9-d68c-1f5f9df963a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df622578-888e-fb20-e15d-01e0b24c345f",
  "kind": "lemma",
  "lexical_name": "lemma_abadeulmit2_tsum_one_div_sub_int_sq",
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
  "slug": "lemma-abadeulmit2-tsum-one-div-sub-int-sq--c03c6ea788944a4d03b2ae78",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2689,
    "line": 2653,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c03c6ea788944a4d03b2ae78556bf06745153925202f10fa3bc9db92e67269c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df622578-888e-fb20-e15d-01e0b24c345f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2653–2689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadeulmit2_tsum_one_div_sub_int_sq {z : ℂ} (hz : z ∈ integerComplement) :
  ∑' (n : ℤ), 1 / (z - n) ^ 2 =
  deriv (fun w ↦ -π * Complex.cot (π * w)) z := by
  set f := fun w : ℂ ↦ -π * Complex.cot (π * w)
  set S := fun w : ℂ ↦ ∑' (n : ℤ), 1 / (w - n) ^ 2
  suffices HasDerivAt f (∑' (n : ℤ), 1 / (z - n) ^ 2) z from this.deriv.symm
  apply HasDerivAt.congr_of_eventuallyEq (f := fun w ↦ f z + (w - z) * ∫ t in (0:ℝ)..1, S (z + t * (w - z)))
  · apply HasDerivAt.const_add
    rw [hasDerivAt_iff_isLittleO]
    simp only [sub_self, mul_zero, add_zero]
    set g := fun x' ↦ ∫ (t : ℝ) in 0..1, S (z + ↑t * (x' - z))
    simp only [zero_mul, sub_zero, smul_eq_mul, ← mul_sub]
    apply Asymptotics.isLittleO_of_tendsto
    · intro x' hx; simp [sub_eq_zero.mp hx]
    · have h_eq : (fun x ↦ (x - z) * ((∫ (t : ℝ) in 0..1, S (z + ↑t * (x - z))) - ∑' (n : ℤ), 1 / (z - ↑n) ^ 2) / (x - z)) =
            (fun x ↦ (∫ (t : ℝ) in 0..1, S (z + ↑t * (x - z))) - ∑' (n : ℤ), 1 / (z - ↑n) ^ 2) := by
        ext x
        rcases eq_or_ne x z with rfl | hx
        · simp [S]
        · rw [mul_div_cancel_left₀ _ (sub_ne_zero.mpr hx)]
      rw [h_eq, tendsto_sub_nhds_zero_iff]
      have hgz : g z = ∑' (n : ℤ), 1 / (z - ↑n) ^ 2 := by
        simp only [g, sub_self, mul_zero, add_zero]
        rw [intervalIntegral.integral_const, sub_zero, Complex.real_smul, Complex.ofReal_one, one_mul]
      rw [← hgz]
      apply (lemma_abadeulmit2_continuousAt_integral_tsum_one_div_sub_int_sq hz).tendsto
  · obtain ⟨ε, hε, h_ball⟩ := Metric.isOpen_iff.1 (Complex.isOpen_compl_range_intCast) z hz
    filter_upwards [Metric.ball_mem_nhds z hε] with w hw
    rw [lemma_abadeulmit2_integral_eq_cot_diff (h_ball hw) hz]
    · dsimp [f]; ring
    · intro t ht
      apply h_ball
      apply (convex_ball z ε).segment_subset (Metric.mem_ball_self hε) hw
      rw [segment_eq_image]
      refine ⟨t, ht, ?_⟩
      simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L2653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
