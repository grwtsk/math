# negative_ray_exp_tendsto_zero

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
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:590fea19-bf1d-cbee-2d78-7cd266c6858e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:436979e2-79f8-e484-05f4-7a7d7707bdf9",
  "kind": "theorem",
  "lexical_name": "negative_ray_exp_tendsto_zero",
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
  "slug": "negative-ray-exp-tendsto-zero--b51a9ef357d15109d969c1a8",
  "source": {
    "blob": "16b3805780058e092c38a1e1df68699299f06bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51a9ef357d15109d969c1a80dad7500bdc723d768b93f0d8c073eb59d8457a5",
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

Occurrence: `result:436979e2-79f8-e484-05f4-7a7d7707bdf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem negative_ray_exp_tendsto_zero (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ Complex.exp (-2 * (A : ℂ) * z)) atTop (nhds 0) := by
  apply Complex.tendsto_exp_nhds_zero_iff.mpr
  have ht : Tendsto (fun A : ℝ ↦ (2 * z.re) * A) atTop atTop :=
    (tendsto_id : Tendsto (fun A : ℝ ↦ A) atTop atTop).const_mul_atTop (by positivity)
  convert ht.neg_atTop using 1
  ext A
  simp [Complex.mul_re]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16b3805780058e092c38a1e1df68699299f06bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
