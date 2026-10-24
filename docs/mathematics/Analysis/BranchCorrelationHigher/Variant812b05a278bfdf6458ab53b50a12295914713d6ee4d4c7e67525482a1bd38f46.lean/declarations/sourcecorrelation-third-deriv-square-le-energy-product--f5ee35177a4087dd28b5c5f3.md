# sourceCorrelation_third_deriv_square_le_energy_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c12a7d80-a1ee-fa09-6cba-6b0dc64140c1",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_third_deriv_square_le_energy_product",
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
  "slug": "sourcecorrelation-third-deriv-square-le-energy-product--f5ee35177a4087dd28b5c5f3",
  "source": {
    "blob": "522b2da6562fc2afa49f5518ddddb0d62e52012c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 259,
    "path": "GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5ee35177a4087dd28b5c5f374e89b5aac6eec296ccd838bffbbdb9138a2ad86",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c12a7d80-a1ee-fa09-6cba-6b0dc64140c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_third_deriv_square_le_energy_product {A : ℝ} (hA : 0 < A) (t : ℝ) :
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t) ^ 2 ≤
      (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) *
        (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) := by
  rw [sourceCorrelation_third_deriv_eq_integral hA, neg_sq]
  have he : (∫ x : ℝ, secondRepresentative A x ^ 2) =
      ∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2 := by
    apply integral_congr_ae
    filter_upwards [actual_second_derivative_ae_eq hA] with x hx
    rw [hx]
  have h := integral_mul_square_le (secondRepresentative_square_integrable A)
    ((actual_derivative_square_integrable hA).comp_sub_right t)
    (sourceCorrelation_third_deriv_integrand_integrable hA t)
  rw [he, integral_sub_right_eq_self
    (fun x : ℝ ↦ deriv (normalizedTest explicitSecondDerivative A) x ^ 2) t] at h
  exact h

/-- The literal third correlation derivative has the note's uniform coefficient 132. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522b2da6562fc2afa49f5518ddddb0d62e52012c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
