# actualLeadingResidualEnvelope_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:784cad85-fec5-2797-9669-0fe5dc20c8d5",
  "kind": "theorem",
  "lexical_name": "actualLeadingResidualEnvelope_tendsto_zero",
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
  "slug": "actualleadingresidualenvelope-tendsto-zero--68e197e0a4a9fd3d274cda62",
  "source": {
    "blob": "da17ea0e31d46a38b6b361121d2b4067f291a167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68e197e0a4a9fd3d274cda624a716d6a8f0c704dac5da6be37f4928c307a372e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:784cad85-fec5-2797-9669-0fe5dc20c8d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingResidualEnvelope_tendsto_zero :
    Tendsto actualLeadingResidualEnvelope atTop (𝓝 (0 : ℝ)) := by
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have h2 : Tendsto (fun A : ℝ => 260 / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
    simpa [div_eq_mul_inv, one_div, inv_pow] using
      (h0.pow 2).const_mul 260
  have h3 : Tendsto (fun A : ℝ => 960 * 67 / A ^ 3) atTop (𝓝 (0 : ℝ)) := by
    simpa [div_eq_mul_inv, one_div, inv_pow] using
      (h0.pow 3).const_mul (960 * 67)
  have hh := ((h2.add h3).add logarithmicLeadingErrorEnvelope_tendsto_zero).add
    actualHeadFractionalEnvelope_tendsto_zero
  change Tendsto (fun A : ℝ => 260 / A ^ 2 + 960 * 67 / A ^ 3 +
    logarithmicLeadingErrorEnvelope A + actualHeadFractionalEnvelope A)
      atTop (𝓝 (0 : ℝ))
  simpa only [add_zero] using hh

/-- The exact actual residual and the genuine leading signed source are asymptotic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantba9f91fe9175d4068af89b85d5d767dd73acc8b3e129198c44f2547ce4cb2eb8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da17ea0e31d46a38b6b361121d2b4067f291a167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
