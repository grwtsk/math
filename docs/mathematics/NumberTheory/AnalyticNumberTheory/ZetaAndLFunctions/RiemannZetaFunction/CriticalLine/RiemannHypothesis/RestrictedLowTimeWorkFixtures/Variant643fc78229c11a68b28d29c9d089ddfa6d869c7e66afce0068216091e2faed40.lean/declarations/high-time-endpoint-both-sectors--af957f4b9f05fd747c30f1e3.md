# high_time_endpoint_both_sectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:391ff166-ffe4-288e-2dbc-349e20d121da",
  "kind": "theorem",
  "lexical_name": "high_time_endpoint_both_sectors",
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
  "slug": "high-time-endpoint-both-sectors--af957f4b9f05fd747c30f1e3",
  "source": {
    "blob": "22d6153fa580d88891d62493e44522cbb96dac27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variant643fc78229c11a68b28d29c9d089ddfa6d869c7e66afce0068216091e2faed40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af957f4b9f05fd747c30f1e386506d4b6f086e5600741b90a4a08eca565fbdf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variant643fc78229c11a68b28d29c9d089ddfa6d869c7e66afce0068216091e2faed40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:391ff166-ffe4-288e-2dbc-349e20d121da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem high_time_endpoint_both_sectors {A v : ℝ} (hA : 1 ≤ A)
    (hv : v ∈ actualWorkLeftStrip A) :
    normalizedTest explicitSecondDerivative A
        (v - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) = 0 ∧
      deriv (normalizedTest explicitSecondDerivative A)
        (v - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) = 0 :=
  actual_left_strip_high_time_source_atoms_zero hA hv le_rfl

/-- Every later high time also vanishes before the new spatial left edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variant643fc78229c11a68b28d29c9d089ddfa6d869c7e66afce0068216091e2faed40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RestrictedLowTimeWorkFixtures/Variant643fc78229c11a68b28d29c9d089ddfa6d869c7e66afce0068216091e2faed40.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22d6153fa580d88891d62493e44522cbb96dac27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
