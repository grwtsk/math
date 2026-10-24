# actual_second_energy_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8be90956-f606-e5e2-2460-a1cb37063e6d",
  "kind": "theorem",
  "lexical_name": "actual_second_energy_integral",
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
  "slug": "actual-second-energy-integral--d73e9c25d15450e2e41ec014",
  "source": {
    "blob": "14784bb6b9bf586b3dd01f08381ef3c6b68e8664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 186,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d73e9c25d15450e2e41ec01488cc33e95c63f05bb29719bd858738a9920778d9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8be90956-f606-e5e2-2460-a1cb37063e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_energy_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) =
      (32768 / A ^ 8 + (32768 / 77 : ℝ) / A ^ 6 + (12288 / 5005 : ℝ) / A ^ 4) /
        sourceNormalization A := by
  have heq : (fun x ↦ secondRepresentative A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedSecondInterior A x ^ 2) := by
    funext x
    simp only [secondRepresentative, indicator_apply]
    split_ifs <;> simp
  have hae : (fun x ↦ deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2)
      =ᵐ[volume]
      fun x ↦ secondRepresentative A x ^ 2 := by
    filter_upwards [actual_second_derivative_ae_eq hA] with x hx
    rw [hx]
  rw [integral_congr_ae hae, heq, zeroExtension_integral _ (-A) A (by linarith)]
  simp_rw [normalizedSecondInterior_square hA]
  rw [intervalIntegral.integral_div, intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) hA.ne']
  simp only [neg_div, div_self hA.ne', smul_eq_mul, unit_second_energy]
  rw [mul_div_cancel_left₀ _ hA.ne']

/-- The integer denominator after multiplying both source polynomials by the same
positive factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14784bb6b9bf586b3dd01f08381ef3c6b68e8664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
