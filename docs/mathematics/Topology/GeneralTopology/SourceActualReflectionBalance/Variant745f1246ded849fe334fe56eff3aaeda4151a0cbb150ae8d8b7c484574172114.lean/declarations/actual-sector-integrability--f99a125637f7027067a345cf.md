# actual_sector_integrability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b5b3feb-2427-2902-7574-9f0c244f634a",
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
  "slug": "actual-sector-integrability--f99a125637f7027067a345cf",
  "source": {
    "blob": "6c82240f4f04082ee90ef81351dbf02f80864ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant745f1246ded849fe334fe56eff3aaeda4151a0cbb150ae8d8b7c484574172114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f99a125637f7027067a345cfffd2ca50b0a88f5df1eebfe3b3b3ef4632304157",
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

Occurrence: `result:8b5b3feb-2427-2902-7574-9f0c244f634a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–128.

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
  have hcr : Continuous (fun t =>
      sourceWeight explicitSecondDerivative A (sourceReflection A t)) :=
    hc.comp (continuous_const.sub continuous_id)
  have hce : Continuous
      (evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A)) :=
    (hc.add hcr).div_const 2
  have hco : Continuous
      (oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A)) :=
    (hc.sub hcr).div_const 2
  exact ⟨he.mul_continuousOn hce.continuousOn, he.mul_continuousOn hco.continuousOn,
    ho.mul_continuousOn hce.continuousOn, ho.mul_continuousOn hco.continuousOn⟩

/-- The actual prime-two atom is the complete lower potential trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant745f1246ded849fe334fe56eff3aaeda4151a0cbb150ae8d8b7c484574172114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant745f1246ded849fe334fe56eff3aaeda4151a0cbb150ae8d8b7c484574172114.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c82240f4f04082ee90ef81351dbf02f80864ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
