# actual_adjusted_interior_eq_mean_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0567505f-0b05-c157-db8f-2bd8ee1a21a3",
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
  "slug": "actual-adjusted-interior-eq-mean-periodic--e68c008986e39d14b484d1cf",
  "source": {
    "blob": "fe9735ea3c38022bf0373be0691bb2f7de06272f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant9083e9811800617a056fea3c4efeaf00331f1f61c29ac8b7d44447c53a23f5df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e68c008986e39d14b484d1cf08c05efb26c5724e7e52faf8c04928adcce58292",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant9083e9811800617a056fea3c4efeaf00331f1f61c29ac8b7d44447c53a23f5df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0567505f-0b05-c157-db8f-2bd8ee1a21a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–240.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant9083e9811800617a056fea3c4efeaf00331f1f61c29ac8b7d44447c53a23f5df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant9083e9811800617a056fea3c4efeaf00331f1f61c29ac8b7d44447c53a23f5df.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe9735ea3c38022bf0373be0691bb2f7de06272f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
