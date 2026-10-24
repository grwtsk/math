# reciprocal_ray_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6508f1bd0e449e7df47fa5d931a47843f96b3441",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:366bb551-09b2-2498-4c35-9dccec28906f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:418b668f-a51d-114f-3432-9e53d068df0a",
  "kind": "theorem",
  "lexical_name": "reciprocal_ray_tendsto_zero",
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
  "slug": "reciprocal-ray-tendsto-zero--d164f4bc5667b140a067a546",
  "source": {
    "blob": "6508f1bd0e449e7df47fa5d931a47843f96b3441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d164f4bc5667b140a067a546721c81180793bf4b7aa42a192df43a8feeaf6997",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:418b668f-a51d-114f-3432-9e53d068df0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_ray_tendsto_zero (z : ℂ) :
    Tendsto (fun A : ℝ ↦ ((A : ℂ) * z)⁻¹) atTop (nhds 0) := by
  have hr : Tendsto (fun A : ℝ ↦ ((A : ℂ)⁻¹)) atTop (nhds 0) := by
    simpa [Function.comp_def] using Complex.continuous_ofReal.continuousAt.tendsto.comp
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0))
  simpa only [mul_inv_rev, mul_zero] using hr.const_mul z⁻¹

/-- The opposite endpoint exponential decays on every ray in the open right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6508f1bd0e449e7df47fa5d931a47843f96b3441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
