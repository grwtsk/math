# actual_sector_integrability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:779fa23d-6501-bffa-494c-44d387f21bcf",
  "kind": "theorem",
  "lexical_name": "actual_sector_integrability",
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
  "slug": "actual-sector-integrability--351d8ceee8173828bda1940d",
  "source": {
    "blob": "97b3d0efda0c47f7961248a67df6962fd953d036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:351d8ceee8173828bda1940d8ee5ecba5fe2aa360518499852a432268cf96678",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:779fa23d-6501-bffa-494c-44d387f21bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sector_integrability (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => evenPart lowerEndpoint (2 * A) centeredError t *
      evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) ∧
    IntervalIntegrable (fun t => evenPart lowerEndpoint (2 * A) centeredError t *
      oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) ∧
    IntervalIntegrable (fun t => oddPart lowerEndpoint (2 * A) centeredError t *
      evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) ∧
    IntervalIntegrable (fun t => oddPart lowerEndpoint (2 * A) centeredError t *
      oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) := by
  have hi := centeredError_intervalIntegrable A hA
  have hr := centered_reflectedError_intervalIntegrable A hA
  have he : IntervalIntegrable (evenPart lowerEndpoint (2 * A) centeredError)
      volume lowerEndpoint (2 * A) := (hi.add hr).div_const 2
  have ho : IntervalIntegrable (oddPart lowerEndpoint (2 * A) centeredError)
      volume lowerEndpoint (2 * A) := (hi.sub hr).div_const 2
  have hc := source_weight_continuous A hA
  have hcr : Continuous (fun t => sourceWeight explicitSecondDerivative A (sourceReflection A t)) :=
    hc.comp (continuous_const.sub continuous_id)
  have hce : Continuous (evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A)) :=
    (hc.add hcr).div_const 2
  have hco : Continuous (oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A)) :=
    (hc.sub hcr).div_const 2
  exact ⟨he.mul_continuousOn hce.continuousOn, he.mul_continuousOn hco.continuousOn,
    ho.mul_continuousOn hce.continuousOn, ho.mul_continuousOn hco.continuousOn⟩

/-- The actual prime-two atom is the complete lower potential trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b3d0efda0c47f7961248a67df6962fd953d036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
