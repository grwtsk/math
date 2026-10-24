# actual_second_energy_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88030c08-4363-3074-9991-24cdbdb48041",
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
  "slug": "actual-second-energy-integral--0d420ec9909fbe58b392bbf2",
  "source": {
    "blob": "85eb665c4da2513bf4ea2c0e6d3250494163047e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 189,
    "path": "GRWTSK/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d420ec9909fbe58b392bbf220038ce3b82e1ade2a33396f2e54e25b63be3ceb",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88030c08-4363-3074-9991-24cdbdb48041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–212.

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

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85eb665c4da2513bf4ea2c0e6d3250494163047e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
