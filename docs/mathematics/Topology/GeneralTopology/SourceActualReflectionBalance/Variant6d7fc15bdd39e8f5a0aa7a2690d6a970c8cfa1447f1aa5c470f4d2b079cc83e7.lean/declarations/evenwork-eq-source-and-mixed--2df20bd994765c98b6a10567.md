# evenWork_eq_source_and_mixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb7c5db0-4e17-686c-71ea-c1bf1e5452d4",
  "kind": "theorem",
  "lexical_name": "evenWork_eq_source_and_mixed",
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
  "slug": "evenwork-eq-source-and-mixed--2df20bd994765c98b6a10567",
  "source": {
    "blob": "2019f712c0343a529a113a87d6d82a5fc5fbce88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df20bd994765c98b6a10567d1e362daecdeb503e4b5efb1d67f3c44e0967692",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb7c5db0-4e17-686c-71ea-c1bf1e5452d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenWork_eq_source_and_mixed (A : ℝ) (hA : 1 ≤ A) :
    evenWork A = (signedPairing explicitSecondDerivative A +
      primeTwoBoundary explicitSecondDerivative A / 2 + reflectedMixedWork A) / 2 := by
  have hi := centeredError_intervalIntegrable A hA
  have hc := source_weight_continuous A hA
  have hir := centered_reflectedError_intervalIntegrable A hA
  have hcr : Continuous (fun t =>
      sourceWeight explicitSecondDerivative A (sourceReflection A t)) :=
    hc.comp (continuous_const.sub continuous_id)
  have h00 := hi.mul_continuousOn hc.continuousOn
  have h01 := hi.mul_continuousOn hcr.continuousOn
  have h10 := hir.mul_continuousOn hc.continuousOn
  have h11 := hir.mul_continuousOn hcr.continuousOn
  unfold evenWork
  calc
    _ = (∫ t in lowerEndpoint..2 * A,
      ((centeredError t * sourceWeight explicitSecondDerivative A t +
        centeredError t * sourceWeight explicitSecondDerivative A (sourceReflection A t)) +
        centeredError (sourceReflection A t) * sourceWeight explicitSecondDerivative A t) +
        centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A t)) / 4 := by
      rw [← intervalIntegral.integral_div]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp [evenPart, sourceReflection]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add ((h00.add h01).add h10) h11,
        intervalIntegral.integral_add (h00.add h01) h10,
        intervalIntegral.integral_add h00 h01]
      have hs11 := integral_reflection lowerEndpoint (2 * A)
        (fun t => centeredError t * sourceWeight explicitSecondDerivative A t)
      change (∫ t in lowerEndpoint..2 * A,
        centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A t)) = _ at hs11
      have hs10 := integral_reflection lowerEndpoint (2 * A)
        (fun t => centeredError t * sourceWeight explicitSecondDerivative A (sourceReflection A t))
      change (∫ t in lowerEndpoint..2 * A,
        centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A (sourceReflection A t))) = _
        at hs10
      have h10eq : (fun t => centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A (sourceReflection A t))) =
          (fun t => centeredError (sourceReflection A t) *
            sourceWeight explicitSecondDerivative A t) := by
        funext t
        rw [source_reflection_involutive A t]
      rw [h10eq] at hs10
      rw [hs11, hs10, centered_pairing_eq_source A hA]
      unfold reflectedMixedWork
      ring

/-- The antisymmetric sector carries precisely the same mixed work with a minus sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2019f712c0343a529a113a87d6d82a5fc5fbce88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
