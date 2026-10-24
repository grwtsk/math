# actualLogSource_mellin_critical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:072be025-290d-5d0b-7107-e736364a7e02",
  "kind": "theorem",
  "lexical_name": "actualLogSource_mellin_critical",
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
  "slug": "actuallogsource-mellin-critical--69712ab1e6953dba73832276",
  "source": {
    "blob": "afc96ae354161924074c51ccb38ff9acb312b3fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69712ab1e6953dba7383227681c54d2955bcf549b45af91180313a9af4ae6bcf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:072be025-290d-5d0b-7107-e736364a7e02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogSource_mellin_critical (A ξ : ℝ) :
    mellin (fun x => (actualLogSource A x : ℂ)) (1/2+Complex.I*(ξ:ℂ)) =
      sourceFourier (normalizedTest explicitSecondDerivative A) ξ := by
  rw [actualLogSource,lift_mellin_eq_bilateral]
  congr 1
  funext t
  congr 2
  ring

end ContinuousResearch.LogarithmicSource

/-! Exact public statement, proof and trusted-closure receipt. -/
#check ContinuousResearch.LogarithmicSource.positiveLogLift
#print axioms ContinuousResearch.LogarithmicSource.positiveLogLift
#print ContinuousResearch.LogarithmicSource.positiveLogLift
#check ContinuousResearch.LogarithmicSource.positiveLogLift_exp
#print axioms ContinuousResearch.LogarithmicSource.positiveLogLift_exp
#print ContinuousResearch.LogarithmicSource.positiveLogLift_exp
#check ContinuousResearch.LogarithmicSource.lift_square_jacobian
#print axioms ContinuousResearch.LogarithmicSource.lift_square_jacobian
#print ContinuousResearch.LogarithmicSource.lift_square_jacobian
#check ContinuousResearch.LogarithmicSource.lift_square_integrable_iff
#print axioms ContinuousResearch.LogarithmicSource.lift_square_integrable_iff
#print ContinuousResearch.LogarithmicSource.lift_square_integrable_iff
#check ContinuousResearch.LogarithmicSource.lift_square_integral
#print axioms ContinuousResearch.LogarithmicSource.lift_square_integral
#print ContinuousResearch.LogarithmicSource.lift_square_integral
#check ContinuousResearch.LogarithmicSource.actualLogSource
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource
#print ContinuousResearch.LogarithmicSource.actualLogSource
#check ContinuousResearch.LogarithmicSource.actualLogSource_square_integrable
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_square_integrable
#print ContinuousResearch.LogarithmicSource.actualLogSource_square_integrable
#check ContinuousResearch.LogarithmicSource.actualLogSource_square_integral
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_square_integral
#print ContinuousResearch.LogarithmicSource.actualLogSource_square_integral
#check ContinuousResearch.LogarithmicSource.actualLogSource_zero_outside
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_zero_outside
#print ContinuousResearch.LogarithmicSource.actualLogSource_zero_outside
#check ContinuousResearch.LogarithmicSource.actualLogSource_hasCompactSupport
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_hasCompactSupport
#print ContinuousResearch.LogarithmicSource.actualLogSource_hasCompactSupport
#check ContinuousResearch.LogarithmicSource.actualLogSource_integrable
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_integrable
#print ContinuousResearch.LogarithmicSource.actualLogSource_integrable
#check ContinuousResearch.LogarithmicSource.actualLogSource_integral_zero
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_integral_zero
#print ContinuousResearch.LogarithmicSource.actualLogSource_integral_zero
#check ContinuousResearch.LogarithmicSource.positiveLogLift_dilation
#print axioms ContinuousResearch.LogarithmicSource.positiveLogLift_dilation
#print ContinuousResearch.LogarithmicSource.positiveLogLift_dilation
#check ContinuousResearch.LogarithmicSource.actualLogSource_real_dilation
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_real_dilation
#print ContinuousResearch.LogarithmicSource.actualLogSource_real_dilation
#check ContinuousResearch.LogarithmicSource.actualLogSource_integer_dilation
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_integer_dilation
#print ContinuousResearch.LogarithmicSource.actualLogSource_integer_dilation
#check ContinuousResearch.LogarithmicSource.lift_mellin_eq_bilateral
#print axioms ContinuousResearch.LogarithmicSource.lift_mellin_eq_bilateral
#print ContinuousResearch.LogarithmicSource.lift_mellin_eq_bilateral
#check ContinuousResearch.LogarithmicSource.lift_mellin_integrable_iff
#print axioms ContinuousResearch.LogarithmicSource.lift_mellin_integrable_iff
#print ContinuousResearch.LogarithmicSource.lift_mellin_integrable_iff
#check ContinuousResearch.LogarithmicSource.actualLogSource_mellin_integrable
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_mellin_integrable
#print ContinuousResearch.LogarithmicSource.actualLogSource_mellin_integrable
#check ContinuousResearch.LogarithmicSource.actualLogSource_mellin_critical
#print axioms ContinuousResearch.LogarithmicSource.actualLogSource_mellin_critical
#print ContinuousResearch.LogarithmicSource.actualLogSource_mellin_critical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc96ae354161924074c51ccb38ff9acb312b3fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
