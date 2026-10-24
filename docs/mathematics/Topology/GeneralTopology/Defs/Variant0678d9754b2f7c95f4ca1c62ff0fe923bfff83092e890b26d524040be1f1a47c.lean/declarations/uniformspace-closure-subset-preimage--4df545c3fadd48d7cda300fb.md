# UniformSpace.closure_subset_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 570,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e51791b-2358-6724-af31-a10f7e5f1896",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3c76690-1481-e459-d1f9-c203f4f2b487",
  "kind": "theorem",
  "lexical_name": "UniformSpace.closure_subset_preimage",
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
  "slug": "uniformspace-closure-subset-preimage--4df545c3fadd48d7cda300fb",
  "source": {
    "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 570,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4df545c3fadd48d7cda300fbd97bfa285ab901e6dd21cf4fbd0e363f702f3985",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3c76690-1481-e459-d1f9-c203f4f2b487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformSpace.closure_subset_preimage
    {U : SetRel α α} (hU : U ∈ 𝓤 α) (s : Set α) : closure s ⊆ U.preimage s := by
  intro x hx
  obtain ⟨y, hxy, hy⟩ := mem_closure_iff_ball.mp hx hU
  exact ⟨y, hy, hxy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f068a41cafe8605be201dd24b3843bcbba45a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
