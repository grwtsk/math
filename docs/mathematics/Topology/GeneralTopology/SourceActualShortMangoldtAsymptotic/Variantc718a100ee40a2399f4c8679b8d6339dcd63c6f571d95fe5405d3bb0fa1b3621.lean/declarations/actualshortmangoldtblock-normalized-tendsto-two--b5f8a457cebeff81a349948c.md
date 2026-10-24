# actualShortMangoldtBlock_normalized_tendsto_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2633f689-0d7d-ac3d-e36a-135a567d5dfd",
  "kind": "theorem",
  "lexical_name": "actualShortMangoldtBlock_normalized_tendsto_two",
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
  "slug": "actualshortmangoldtblock-normalized-tendsto-two--b5f8a457cebeff81a349948c",
  "source": {
    "blob": "c082dc20bb647b747e02bf2f408d11f0fdb6ed9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5f8a457cebeff81a349948caa9501599868b848f6bf15be3af982f80ece82b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2633f689-0d7d-ac3d-e36a-135a567d5dfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortMangoldtBlock_normalized_tendsto_two :
    Tendsto (fun A : ℝ => actualShortMangoldtBlock A / A) atTop (𝓝 2) := by
  have hhalf := actualHalfMangoldtPrefix_square_normalized_tendsto_two
  have hsmall : Tendsto (fun A : ℝ => 160 * Real.sqrt A / A ^ 2) atTop (𝓝 0) := by
    have hh := Real.tendsto_sqrt_atTop.inv_tendsto_atTop
    have h0 : Tendsto (fun A : ℝ => (Real.sqrt A)⁻¹) atTop (𝓝 0) := hh
    have hh0 : Tendsto (fun A : ℝ => 160 * (Real.sqrt A)⁻¹) atTop (𝓝 0) := by
      simpa only [mul_zero] using h0.const_mul 160
    apply squeeze_zero' (Eventually.of_forall (fun A => by positivity)) ?_ hh0
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hp : 0 < A := by linarith
    have hs := Real.sq_sqrt hp.le
    have hsp := Real.sqrt_pos.mpr hp
    have hb : Real.sqrt A / A ^ 2 ≤ (Real.sqrt A)⁻¹ := by
      rw [div_le_iff₀ (by positivity : 0 < A ^ 2), mul_comm]
      apply (le_mul_inv_iff₀ hsp).2
      nlinarith
    simpa only [div_eq_mul_inv, mul_assoc] using
      mul_le_mul_of_nonneg_left hb (by norm_num : (0 : ℝ) ≤ 160)
  have hbound := hsmall.mul hhalf
  simp only [zero_mul] at hbound
  have hd : Tendsto (fun A : ℝ => actualShortMangoldtBlock A / A -
      actualMangoldtHalfClosedPrefix (2 * Real.log A) / A) atTop (𝓝 0) := by
    apply squeeze_zero_norm' ?_ hbound
    filter_upwards [eventually_ge_atTop (25600 : ℝ)] with A hA
    have hp : 0 < A := by linarith
    rw [← sub_div, Real.norm_eq_abs, abs_div, abs_of_pos hp]
    exact (div_le_div_of_nonneg_right
      (actualShortMangoldtBlock_sub_halfPrefix_abs_le hA) hp.le).trans_eq (by ring)
  have hh := hd.add hhalf
  simp only [zero_add] at hh
  apply hh.congr'
  exact Eventually.of_forall (fun A => by ring)

end
end FormalResearch.RiemannHypothesis.SourceActualShortMangoldtAsymptotic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c082dc20bb647b747e02bf2f408d11f0fdb6ed9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
