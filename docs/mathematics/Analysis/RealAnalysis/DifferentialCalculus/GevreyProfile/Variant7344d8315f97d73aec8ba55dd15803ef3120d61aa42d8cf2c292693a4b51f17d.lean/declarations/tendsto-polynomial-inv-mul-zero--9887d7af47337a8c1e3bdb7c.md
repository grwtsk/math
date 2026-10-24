# tendsto_polynomial_inv_mul_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c72ae01-2695-ee92-e50e-0c737f2f846c",
  "kind": "theorem",
  "lexical_name": "tendsto_polynomial_inv_mul_zero",
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
  "slug": "tendsto-polynomial-inv-mul-zero--9887d7af47337a8c1e3bdb7c",
  "source": {
    "blob": "9a74a777e5c1415664f4952c658dc2c810e3abca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9887d7af47337a8c1e3bdb7cfb483a09413cb009d30da17a28c2ee71ce18018f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c72ae01-2695-ee92-e50e-0c737f2f846c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_polynomial_inv_mul_zero (p : ℝ[X]) :
    Tendsto (fun x ↦ p.eval x⁻¹ * squaredExpNegInvGlue x) (𝓝 0) (𝓝 0) := by
  simp only [squaredExpNegInvGlue, mul_ite, mul_zero]
  refine tendsto_const_nhds.if ?_
  simp only [not_le]
  have h1 : Tendsto (fun x ↦ p.eval x⁻¹ / Real.exp x⁻¹) (𝓝[>] 0) (𝓝 0) :=
    p.tendsto_div_exp_atTop.comp tendsto_inv_nhdsGT_zero
  have h2 : Tendsto (fun x ↦ p.eval x⁻¹ * Real.exp (-(x⁻¹) ^ 2))
      (𝓝[>] 0) (𝓝 0) := by
    apply tendsto_zero_iff_norm_tendsto_zero.mpr
    refine squeeze_zero' (g := fun x ↦ ‖p.eval x⁻¹ / Real.exp x⁻¹‖)
      (Eventually.of_forall fun _ ↦ norm_nonneg _) ?_ ?_
    · filter_upwards [tendsto_inv_nhdsGT_zero.eventually (eventually_ge_atTop 1)] with x hx
      simp only [norm_mul, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _), norm_div]
      rw [div_eq_mul_inv, ← Real.exp_neg]
      exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by nlinarith)) (abs_nonneg _)
    · simpa using h1.norm
  exact h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variant7344d8315f97d73aec8ba55dd15803ef3120d61aa42d8cf2c292693a4b51f17d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a74a777e5c1415664f4952c658dc2c810e3abca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
