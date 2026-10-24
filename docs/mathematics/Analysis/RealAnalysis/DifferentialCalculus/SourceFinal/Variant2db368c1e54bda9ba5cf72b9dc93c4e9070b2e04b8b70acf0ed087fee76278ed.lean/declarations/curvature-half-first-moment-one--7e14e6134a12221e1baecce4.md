# curvature_half_first_moment_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2033c912-3a0c-5e63-2ed9-6b62680ba839",
  "kind": "theorem",
  "lexical_name": "curvature_half_first_moment_one",
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
  "slug": "curvature-half-first-moment-one--7e14e6134a12221e1baecce4",
  "source": {
    "blob": "f71b13e2ca85b0c2d763b34715664eb73d14c81d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e14e6134a12221e1baecce4342be32d86fe274b08c161c459ec2e05108faf1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2033c912-3a0c-5e63-2ed9-6b62680ba839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curvature_half_first_moment_one {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, t * curvature A t) = 1 := by
  have hp : 0 < A := by linarith
  have hf := sourceCorrelation_deriv_contDiff hp
  have hc := sourceCorrelation_contDiff A hp
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u := fun t : ℝ => t) (u' := fun _ : ℝ => (1 : ℝ))
    (v := deriv (sourceCorrelation explicitSecondDerivative A)) (v' := curvature A)
    continuous_id.continuousOn hf.continuous.continuousOn
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hf.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (2*A)) (curvature_intervalIntegrable hp 0 (2*A))
  rw [hi, sourceCorrelation_deriv_zero_of_two_mul_le A (2*A) hp le_rfl]
  simp only [mul_zero, zero_mul, zero_sub, one_mul]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hc.differentiable (by norm_num) t).hasDerivAt)
    (hf.continuous.intervalIntegrable 0 (2*A)),
    sourceCorrelation_upper_endpoint A hp, actual_correlation_at_zero A hA]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant2db368c1e54bda9ba5cf72b9dc93c4e9070b2e04b8b70acf0ed087fee76278ed.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71b13e2ca85b0c2d763b34715664eb73d14c81d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
