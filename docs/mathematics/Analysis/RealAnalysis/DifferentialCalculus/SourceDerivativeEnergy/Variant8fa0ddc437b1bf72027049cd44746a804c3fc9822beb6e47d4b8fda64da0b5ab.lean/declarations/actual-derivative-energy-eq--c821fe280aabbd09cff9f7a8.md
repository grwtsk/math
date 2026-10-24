# actual_derivative_energy_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e47f76978795cf64855e75a206f3ccaf948f258",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e8e2baf-70c6-2699-49d0-0147ce815a7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c5a51ec-7633-6b1b-14e6-edad0256ad86",
  "kind": "theorem",
  "lexical_name": "actual_derivative_energy_eq",
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
  "slug": "actual-derivative-energy-eq--c821fe280aabbd09cff9f7a8",
  "source": {
    "blob": "0e47f76978795cf64855e75a206f3ccaf948f258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c821fe280aabbd09cff9f7a80799b9465dde6866a5d9b0c5e064776cf74830b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5a51ec-7633-6b1b-14e6-edad0256ad86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_derivative_energy_eq {A : ℝ} (hA : 0 < A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) =
      SourceDerivativeCoefficientBound.derivativePolynomial ((A ^ 2)⁻¹) /
        SourceDerivativeCoefficientBound.normPolynomial ((A ^ 2)⁻¹) := by
  rw [← normalizedOperator_sourceBump_eq hA,
    GevreyDerivativeEnergy.normalizedOperator_deriv_square_integral
      sourceBump_contDiff_three sourceBump_hasCompactSupport sourceBump_nonzero hA,
    sourceBump_third_square_integral, sourceBump_second_square_integral,
    sourceBump_deriv_square_integral, normalization_sourceBump_eq hA]
  have hden : sourceNormalization A =
      SourceDerivativeCoefficientBound.normPolynomial ((A ^ 2)⁻¹) := by
    unfold sourceNormalization SourceDerivativeCoefficientBound.normPolynomial
    field_simp
    ring
  have hnum : A ^ 2 * ((A ^ 6)⁻¹ * (65536 / 77 : ℝ) +
      (2 * A ^ 4)⁻¹ * (196608 / 5005 : ℝ) +
      (1 / 16) * (A ^ 2)⁻¹ * (131072 / 45045 : ℝ)) =
        SourceDerivativeCoefficientBound.derivativePolynomial ((A ^ 2)⁻¹) := by
    unfold SourceDerivativeCoefficientBound.derivativePolynomial
    field_simp
    ring
  rw [← mul_div_assoc, hnum, hden]

/-- The verified finite coefficient bound now controls the actual normalized source derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDerivativeEnergy/Variant8fa0ddc437b1bf72027049cd44746a804c3fc9822beb6e47d4b8fda64da0b5ab.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e47f76978795cf64855e75a206f3ccaf948f258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
