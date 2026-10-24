# actual_primitive_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7df2db2-8f09-ed8a-dbe9-ed7092ae0d66",
  "kind": "theorem",
  "lexical_name": "actual_primitive_decomposition",
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
  "slug": "actual-primitive-decomposition--af3e67d8ace05635d16b7f8b",
  "source": {
    "blob": "a55c59b3c457ad28b328030ed2c50b0af5afbe69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af3e67d8ace05635d16b7f8bf2e832f2f3f3d219a65d4fb7ff10773659c47675",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7df2db2-8f09-ed8a-dbe9-ed7092ae0d66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primitive_decomposition (u : ℝ) :
    criticalDiscrepancyPrimitive u = actualAffineSlope*u +
      (∫ t in 0..u, actualPrimeRemainder t) - 2 + 2*criticalDecay u := by
  unfold criticalDiscrepancyPrimitive
  simp_rw [cumulative_discrepancy_eq_remainder]
  rw [intervalIntegral.integral_sub
      ((actual_prime_remainder_intervalIntegrable 0 u).add intervalIntegrable_const)
      ((show Continuous criticalDecay by unfold criticalDecay;fun_prop).intervalIntegrable (μ:=volume) 0 u),
    intervalIntegral.integral_add (actual_prime_remainder_intervalIntegrable 0 u)
      intervalIntegrable_const,
    intervalIntegral.integral_const,decay_integral]
  simp only [sub_zero,smul_eq_mul]
  ring

/-- The actual exponential correction vanishes along all real coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55c59b3c457ad28b328030ed2c50b0af5afbe69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
