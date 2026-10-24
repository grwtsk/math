# actual_second_derivative_energy_le_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf163f80-6424-9ce5-7ff3-4a5d210c3ece",
  "kind": "theorem",
  "lexical_name": "actual_second_derivative_energy_le_global",
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
  "slug": "actual-second-derivative-energy-le-global--f52d04f5b0f363d9e7438dcf",
  "source": {
    "blob": "1e11b5bd95673e97364378b1344a341b9ff34b3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/13f400b54d45f615ad9fActualSecondEnergyCalibration/Variant3f368748a3b2222107dbd1ef2f2f6037d6aaa613e8d600839f739c34db0b4118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f52d04f5b0f363d9e7438dcfa293893e1b3e467f2ef2677df183c937d555cb1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/13f400b54d45f615ad9fActualSecondEnergyCalibration/Variant3f368748a3b2222107dbd1ef2f2f6037d6aaa613e8d600839f739c34db0b4118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf163f80-6424-9ce5-7ff3-4a5d210c3ece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_derivative_energy_le_global (A : ℝ) (hA : 0 < A) :
    A ^ 4 * (∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) ≤ 5005 / 6 := by
  rw [actual_second_derivative_energy_eq A hA]
  apply (div_le_iff₀ (normPolynomial_pos ((A ^ 2)⁻¹) (by positivity))).2
  unfold fourthDisplacementEnergyPolynomial normPolynomial
  have hr : 0 ≤ (A ^ 2)⁻¹ := by positivity
  nlinarith

/-- The sharper coefficient applies to every real source scale at least 91. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/13f400b54d45f615ad9fActualSecondEnergyCalibration/Variant3f368748a3b2222107dbd1ef2f2f6037d6aaa613e8d600839f739c34db0b4118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/13f400b54d45f615ad9fActualSecondEnergyCalibration/Variant3f368748a3b2222107dbd1ef2f2f6037d6aaa613e8d600839f739c34db0b4118.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e11b5bd95673e97364378b1344a341b9ff34b3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
