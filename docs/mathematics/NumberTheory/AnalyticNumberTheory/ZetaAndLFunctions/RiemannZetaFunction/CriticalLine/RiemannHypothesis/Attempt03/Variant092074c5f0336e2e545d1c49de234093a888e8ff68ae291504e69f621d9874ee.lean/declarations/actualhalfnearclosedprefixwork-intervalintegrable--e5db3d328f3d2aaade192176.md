# actualHalfNearClosedPrefixWork_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8795fa50-32d3-12aa-b735-9fb0fdf6832c",
  "kind": "theorem",
  "lexical_name": "actualHalfNearClosedPrefixWork_intervalIntegrable",
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
  "slug": "actualhalfnearclosedprefixwork-intervalintegrable--e5db3d328f3d2aaade192176",
  "source": {
    "blob": "daabfa0e1926b51bb47c3cdd089cf29f74f554fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 173,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant092074c5f0336e2e545d1c49de234093a888e8ff68ae291504e69f621d9874ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5db3d328f3d2aaade192176574dc757b9fb4c12428a78be1c3cfbf1d0e8363f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant092074c5f0336e2e545d1c49de234093a888e8ff68ae291504e69f621d9874ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8795fa50-32d3-12aa-b735-9fb0fdf6832c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfNearClosedPrefixWork_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualHalfNearClosedPrefixRow A t) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have hn := actualHalfNearPeriodicWork_intervalIntegrable hA
  have hv := actualPeriodMeanTimeFactor_intervalIntegrable hA (A / 2)
  have ha := actualPeriodMeanTimeFactor_intervalIntegrable hA
    (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
  apply (hn.add ((hv.sub ha).const_mul
    (actualCenteredPrefixPeriodMean (vaughanCutoff A)))).congr
  intro t _
  dsimp only
  rw [actualHalfNearClosedPrefixRow_eq_periodic_add_mean hA t]
  ring

/-- The exact signed time-work identity carries the half and lower mean with their true signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant092074c5f0336e2e545d1c49de234093a888e8ff68ae291504e69f621d9874ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant092074c5f0336e2e545d1c49de234093a888e8ff68ae291504e69f621d9874ee.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daabfa0e1926b51bb47c3cdd089cf29f74f554fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
