# actual_primitive_tail_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8b00f75-b5dc-ca3b-34d2-f0f0c891957e",
  "kind": "theorem",
  "lexical_name": "actual_primitive_tail_dictionary",
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
  "slug": "actual-primitive-tail-dictionary--a910bc7328cfa1e1a2db57b3",
  "source": {
    "blob": "a55c59b3c457ad28b328030ed2c50b0af5afbe69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a910bc7328cfa1e1a2db57b3b3f9dd95d30c42d63c32de94b45689b2126f3eaa",
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

Occurrence: `result:c8b00f75-b5dc-ca3b-34d2-f0f0c891957e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primitive_tail_dictionary
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {u : ℝ} (hu : 0 ≤ u) :
    criticalDiscrepancyPrimitive u - actualAffineSlope*u - actualPrimeIntercept =
      -(∫ t in Ioi u, actualPrimeRemainder t) + 2*criticalDecay u := by
  have h := intervalIntegral.integral_Ioi_sub_Ioi (actual_prime_remainder_integrable hI) hu
  rw [actual_primitive_decomposition,actualPrimeIntercept]
  linarith

/-- The literal G has the independently defined integral intercept, under only actual L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55c59b3c457ad28b328030ed2c50b0af5afbe69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
