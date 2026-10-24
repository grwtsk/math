# circleMap_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfe06d0eb417b74d3f1ca8b02658b0615e9869a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4370fba0-9492-20b8-ec15-18dde661370d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c40cf442-9125-0dc2-bc4f-3feb974d5ad0",
  "kind": "lemma",
  "lexical_name": "circleMap_pi_div_two",
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
  "slug": "circlemap-pi-div-two--be65c877a3be4a575dcb4123",
  "source": {
    "blob": "dfe06d0eb417b74d3f1ca8b02658b0615e9869a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 93,
    "path": "GRWTSK/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be65c877a3be4a575dcb4123613907b3354bbb9bfe4e35aa15654ebafffca2ff",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c40cf442-9125-0dc2-bc4f-3feb974d5ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma circleMap_pi_div_two (c : ℂ) (R : ℝ) : circleMap c R (π / 2) = c + R * I := by
  simp only [circleMap, ofReal_div, ofReal_ofNat, exp_pi_div_two_mul_I]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe06d0eb417b74d3f1ca8b02658b0615e9869a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
