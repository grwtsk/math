# curvature_half_first_moment_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c884de-bd9f-1038-0deb-f448f054639f",
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
  "slug": "curvature-half-first-moment-one--70af72480fdd6df60f651586",
  "source": {
    "blob": "a80c406a4e999df0811385886f3a8710de8cd5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70af72480fdd6df60f651586f02e656bf707b897d5c1bf4d91f916ecb174bbf0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c884de-bd9f-1038-0deb-f448f054639f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a80c406a4e999df0811385886f3a8710de8cd5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
