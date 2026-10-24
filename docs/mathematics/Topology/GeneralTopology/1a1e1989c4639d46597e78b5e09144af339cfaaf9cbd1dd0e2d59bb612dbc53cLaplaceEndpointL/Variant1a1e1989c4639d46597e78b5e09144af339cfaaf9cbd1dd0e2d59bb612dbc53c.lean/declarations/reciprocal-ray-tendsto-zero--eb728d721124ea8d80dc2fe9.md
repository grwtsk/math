# reciprocal_ray_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16b3805780058e092c38a1e1df68699299f06bbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7449607b-5ad0-5d55-f037-32cfa982bed1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b908e3d-cb85-a2f8-b013-e305e01907ae",
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
  "slug": "reciprocal-ray-tendsto-zero--eb728d721124ea8d80dc2fe9",
  "source": {
    "blob": "16b3805780058e092c38a1e1df68699299f06bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 15,
    "path": "GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb728d721124ea8d80dc2fe9210477179dd4ba8025893d547ce40b95e68a218b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b908e3d-cb85-a2f8-b013-e305e01907ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem reciprocal_ray_tendsto_zero (z : ℂ) :
    Tendsto (fun A : ℝ ↦ ((A : ℂ) * z)⁻¹) atTop (nhds 0) := by
  have hr : Tendsto (fun A : ℝ ↦ ((A : ℂ)⁻¹)) atTop (nhds 0) := by
    simpa using Complex.continuous_ofReal.continuousAt.tendsto.comp
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0))
  simpa only [mul_inv_rev, mul_zero] using hr.const_mul z⁻¹

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16b3805780058e092c38a1e1df68699299f06bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
