# actual_primitive_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19a024aa-46c0-8b70-6a62-ffc5d5851a76",
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
  "slug": "actual-primitive-decomposition--9044e798eff945f4f79d9132",
  "source": {
    "blob": "70e6988504b751ebb937f0ebdae48fd2b7f4d514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variantaf02609a916ab5571c9fb0ee92c025d9bf47d4a7ec16cc4772207f85c5224ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9044e798eff945f4f79d913237846b6d4d074f145f6486f11e9a4ba232328396",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variantaf02609a916ab5571c9fb0ee92c025d9bf47d4a7ec16cc4772207f85c5224ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19a024aa-46c0-8b70-6a62-ffc5d5851a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variantaf02609a916ab5571c9fb0ee92c025d9bf47d4a7ec16cc4772207f85c5224ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt03/Variantaf02609a916ab5571c9fb0ee92c025d9bf47d4a7ec16cc4772207f85c5224ca8.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e6988504b751ebb937f0ebdae48fd2b7f4d514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
