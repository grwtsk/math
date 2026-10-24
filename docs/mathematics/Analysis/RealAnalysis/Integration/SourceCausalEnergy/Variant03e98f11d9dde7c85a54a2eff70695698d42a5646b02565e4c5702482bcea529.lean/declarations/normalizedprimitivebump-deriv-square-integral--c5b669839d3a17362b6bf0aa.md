# normalizedPrimitiveBump_deriv_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:008bf62a-06ab-e407-aed4-3dc96836882d",
  "kind": "theorem",
  "lexical_name": "normalizedPrimitiveBump_deriv_square_integral",
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
  "slug": "normalizedprimitivebump-deriv-square-integral--c5b669839d3a17362b6bf0aa",
  "source": {
    "blob": "37e03688cb4d9fa6cfcea6a16396cadafe82e43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 375,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5b669839d3a17362b6bf0aa70674c351c89c6982d18422395986f6d55eaa491",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:008bf62a-06ab-e407-aed4-3dc96836882d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPrimitiveBump_deriv_square_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, deriv (normalizedPrimitiveBump A) x ^ 2) =
      (131072 / 45045 : ℝ) / (A ^ 2 * sourceNormalization A) := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have heq (x : ℝ) : deriv (normalizedPrimitiveBump A) x =
      deriv sourceBump (x / A) / (A * Real.sqrt A) /
        Real.sqrt (sourceNormalization A) := by
    change deriv (fun y ↦ scaledBump A y / Real.sqrt (sourceNormalization A)) x = _
    rw [deriv_div_const]
    change deriv (GevreyNormalization.scaledProfile sourceBump A) x / _ = _
    rw [GevreyNormalization.deriv_scaledProfile
      (sourceBump_contDiff.differentiable (by norm_num)) A x]
  simp_rw [heq, div_pow, mul_pow, Real.sq_sqrt hA.le, Real.sq_sqrt hZ.le]
  rw [integral_div, integral_div,
    Measure.integral_comp_div (fun x : ℝ ↦ deriv sourceBump x ^ 2) A,
    sourceBump_deriv_square_integral]
  simp only [abs_of_pos hA, smul_eq_mul]
  field_simp

/-- The independent causal tail's energy has the actual positive bump contributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37e03688cb4d9fa6cfcea6a16396cadafe82e43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
