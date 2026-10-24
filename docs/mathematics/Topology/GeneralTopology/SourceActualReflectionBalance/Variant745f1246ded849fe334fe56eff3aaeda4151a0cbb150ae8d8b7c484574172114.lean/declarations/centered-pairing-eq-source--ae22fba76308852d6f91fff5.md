# centered_pairing_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01978417-0f29-4731-1075-2d46abe5d672",
  "kind": "theorem",
  "lexical_name": "centered_pairing_eq_source",
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
  "slug": "centered-pairing-eq-source--ae22fba76308852d6f91fff5",
  "source": {
    "blob": "6c82240f4f04082ee90ef81351dbf02f80864ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant745f1246ded849fe334fe56eff3aaeda4151a0cbb150ae8d8b7c484574172114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae22fba76308852d6f91fff53a9b92fd36bd005ef1465f98a7287934cb8f6454",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant745f1246ded849fe334fe56eff3aaeda4151a0cbb150ae8d8b7c484574172114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01978417-0f29-4731-1075-2d46abe5d672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_pairing_eq_source (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in lowerEndpoint..2 * A,
      centeredError t * sourceWeight explicitSecondDerivative A t) =
      signedPairing explicitSecondDerivative A +
        primeTwoBoundary explicitSecondDerivative A / 2 := by
  have hi := (errorProfile_intervalIntegrable _ (source_interval_order A hA)).mul_continuousOn
    (source_weight_continuous A hA).continuousOn
  have hw : IntervalIntegrable (sourceWeight explicitSecondDerivative A)
      volume lowerEndpoint (2 * A) :=
    (source_weight_continuous A hA).intervalIntegrable lowerEndpoint (2 * A)
  calc
    _ = (∫ t in lowerEndpoint..2 * A,
        errorProfile t * sourceWeight explicitSecondDerivative A t +
          2 * sourceWeight explicitSecondDerivative A t) := by
      apply intervalIntegral.integral_congr
      intro t _
      unfold centeredError
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add hi (hw.const_mul 2),
        intervalIntegral.integral_const_mul, source_weight_integral_eq_prime_two A hA]
      unfold signedPairing
      ring

/-- The invariant sector includes the whole mixed reflected work with a plus sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant745f1246ded849fe334fe56eff3aaeda4151a0cbb150ae8d8b7c484574172114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant745f1246ded849fe334fe56eff3aaeda4151a0cbb150ae8d8b7c484574172114.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c82240f4f04082ee90ef81351dbf02f80864ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
