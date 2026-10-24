# balanced_tail_eq_physical_add_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5541ea4e-fb28-a304-c152-407d04f7b52e",
  "kind": "theorem",
  "lexical_name": "balanced_tail_eq_physical_add_trace",
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
  "slug": "balanced-tail-eq-physical-add-trace--05e7ee971e1edf18441de487",
  "source": {
    "blob": "9a4e77335db0d48c4d87088dd3673fb445dc6063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 260,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e7ee971e1edf18441de487abff6506d062736514b89e0dc0f2ffe718fef9d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5541ea4e-fb28-a304-c152-407d04f7b52e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_tail_eq_physical_add_trace (A : ℝ) (hA : 0 < A) :
    balancedFirstPrimeTailWork A =
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..2 * A,
        balancedFirstPrimeDensity t * minusCorrelationWeight A t) +
        balancedFirstPrimePrimitive (Real.log (⌊A ^ 2⌋₊ : ℝ)) *
          minusCorrelationWeight A (Real.log (⌊A ^ 2⌋₊ : ℝ)) := by
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (balanced_density_weight_intervalIntegrable A (Real.log 7)
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA)
    (balanced_density_weight_intervalIntegrable A
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) (2 * A) hA)
  have hhead := balanced_physical_head_eq_trace_sub_curvature A
    (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA
  have hfull := balanced_full_work_eq_physical A hA
  have hparts := balanced_full_eq_head_add_tail A hA
  unfold balancedFirstPrimeHead at hparts
  linarith only [hsplit, hhead, hfull, hparts]

end RH16BalancedFirstPrimeReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a4e77335db0d48c4d87088dd3673fb445dc6063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
