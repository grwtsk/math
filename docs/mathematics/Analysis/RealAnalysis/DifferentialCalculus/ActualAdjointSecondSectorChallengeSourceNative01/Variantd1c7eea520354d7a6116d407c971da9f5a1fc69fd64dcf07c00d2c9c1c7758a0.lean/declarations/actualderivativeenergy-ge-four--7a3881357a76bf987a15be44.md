# actualDerivativeEnergy_ge_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b01e32-5529-7c2c-e7f7-efd133d4d2b7",
  "kind": "theorem",
  "lexical_name": "actualDerivativeEnergy_ge_four",
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
  "slug": "actualderivativeenergy-ge-four--7a3881357a76bf987a15be44",
  "source": {
    "blob": "1bd6faea893904f309aaa6506f14d8dd800d6334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantd1c7eea520354d7a6116d407c971da9f5a1fc69fd64dcf07c00d2c9c1c7758a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a3881357a76bf987a15be44cbd1a51e5a6fcb4a9a3ca785957d9514f007047d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantd1c7eea520354d7a6116d407c971da9f5a1fc69fd64dcf07c00d2c9c1c7758a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b01e32-5529-7c2c-e7f7-efd133d4d2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDerivativeEnergy_ge_four {A : ℝ} (hA : 0 < A) :
    4 / A ^ 2 ≤ ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hr : 0 ≤ (A ^ 2)⁻¹ := by positivity
  have hgap : 4 * normPolynomial ((A ^ 2)⁻¹) ≤
      derivativePolynomial ((A ^ 2)⁻¹) := by
    unfold derivativePolynomial normPolynomial
    nlinarith [sq_nonneg ((A ^ 2)⁻¹)]
  have he : 4 ≤ A ^ 2 *
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    rw [actual_derivative_energy_eq hA]
    exact (le_div_iff₀ (normPolynomial_pos _ hr)).mpr hgap
  exact (div_le_iff₀ (by positivity : 0 < A ^ 2)).mpr (by simpa [mul_comm] using he)

/-- The actual second correlation derivative has its exact negative energy trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantd1c7eea520354d7a6116d407c971da9f5a1fc69fd64dcf07c00d2c9c1c7758a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantd1c7eea520354d7a6116d407c971da9f5a1fc69fd64dcf07c00d2c9c1c7758a0.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd6faea893904f309aaa6506f14d8dd800d6334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
