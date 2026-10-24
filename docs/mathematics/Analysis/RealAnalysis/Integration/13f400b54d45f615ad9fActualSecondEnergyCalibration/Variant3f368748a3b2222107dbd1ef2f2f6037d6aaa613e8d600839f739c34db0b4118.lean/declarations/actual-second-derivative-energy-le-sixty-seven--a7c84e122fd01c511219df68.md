# actual_second_derivative_energy_le_sixty_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8bf2791-4c5f-c0e3-e09f-c848998523ba",
  "kind": "theorem",
  "lexical_name": "actual_second_derivative_energy_le_sixty_seven",
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
  "slug": "actual-second-derivative-energy-le-sixty-seven--a7c84e122fd01c511219df68",
  "source": {
    "blob": "1e11b5bd95673e97364378b1344a341b9ff34b3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/13f400b54d45f615ad9fActualSecondEnergyCalibration/Variant3f368748a3b2222107dbd1ef2f2f6037d6aaa613e8d600839f739c34db0b4118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7c84e122fd01c511219df68d57327c3cabdd2226cf60468112601d396565207",
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

Occurrence: `result:d8bf2791-4c5f-c0e3-e09f-c848998523ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_derivative_energy_le_sixty_seven (A : ℝ) (hA : 91 ≤ A) :
    A ^ 4 * (∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) ≤ 67 := by
  rw [actual_second_derivative_energy_eq A (by linarith : 0 < A)]
  exact cubic_energy_ratio_le_sixty_seven_of_scale A hA

/-- The actual norm-square energy has the quantitative scale factor required by cubic Taylor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/13f400b54d45f615ad9fActualSecondEnergyCalibration/Variant3f368748a3b2222107dbd1ef2f2f6037d6aaa613e8d600839f739c34db0b4118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/13f400b54d45f615ad9fActualSecondEnergyCalibration/Variant3f368748a3b2222107dbd1ef2f2f6037d6aaa613e8d600839f739c34db0b4118.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e11b5bd95673e97364378b1344a341b9ff34b3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
