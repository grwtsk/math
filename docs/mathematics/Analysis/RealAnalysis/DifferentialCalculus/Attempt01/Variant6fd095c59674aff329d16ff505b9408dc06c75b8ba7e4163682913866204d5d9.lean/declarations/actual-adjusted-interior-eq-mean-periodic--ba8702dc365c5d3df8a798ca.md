# actual_adjusted_interior_eq_mean_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d289ed9-50aa-8296-e450-442e3fbf6519",
  "kind": "theorem",
  "lexical_name": "actual_adjusted_interior_eq_mean_periodic",
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
  "slug": "actual-adjusted-interior-eq-mean-periodic--ba8702dc365c5d3df8a798ca",
  "source": {
    "blob": "9f5068f22db4f9d87613c98a76906597e6744dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 233,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba8702dc365c5d3df8a798ca720c1441a0d38a1f2bc1542bf1b1b52075609337",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d289ed9-50aa-8296-e450-442e3fbf6519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adjusted_interior_eq_mean_periodic {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalAdjustedInterior A =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ), actualPeriodicInteriorDensity A t := by
  unfold actualCriticalAdjustedInterior actualPeriodicInteriorDensity
  apply intervalIntegral.integral_congr
  intro t _
  have hf : (fun s => actualAdjointTimePrimitive A 0 t *
      actualCriticalAdjustedColumnPrimitive A s * covariantMixedDerivative (actualLogMixedDensity A) t s) =
      (fun s => actualAdjointTimePrimitive A 0 t *
        (actualCriticalAdjustedColumnPrimitive A s * covariantMixedDerivative (actualLogMixedDensity A) t s)) := by
    funext s
    ring
  rw [hf, intervalIntegral.integral_const_mul, actual_adjusted_inner_eq_mean_periodic hA t]

end
end FormalResearch.RiemannHypothesis.SourceActualPeriodicInteriorAbel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant6fd095c59674aff329d16ff505b9408dc06c75b8ba7e4163682913866204d5d9.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5068f22db4f9d87613c98a76906597e6744dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
