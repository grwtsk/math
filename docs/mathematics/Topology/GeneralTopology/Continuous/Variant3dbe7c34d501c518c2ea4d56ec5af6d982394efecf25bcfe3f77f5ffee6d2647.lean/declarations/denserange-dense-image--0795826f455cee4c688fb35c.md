# DenseRange.dense_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8650eeb53e70bac5ead941682e4055d17b8f1c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8be811cd-8e4b-0ffe-dfd5-750c17d2682c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d50a5124-3b02-12ba-06fc-9874a340284d",
  "kind": "theorem",
  "lexical_name": "DenseRange.dense_image",
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
  "slug": "denserange-dense-image--0795826f455cee4c688fb35c",
  "source": {
    "blob": "b8650eeb53e70bac5ead941682e4055d17b8f1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0795826f455cee4c688fb35cf02a20eb39538ca73282b527e9ba805bf5167331",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d50a5124-3b02-12ba-06fc-9874a340284d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DenseRange.dense_image {f : X → Y} (hf' : DenseRange f) (hf : Continuous f)
    (hs : Dense s) : Dense (f '' s) :=
  (hf'.mono <| hf.range_subset_closure_image_dense hs).of_closure

/-- If `f` has dense range and `s` is an open set in the codomain of `f`, then the image of the
preimage of `s` under `f` is dense in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8650eeb53e70bac5ead941682e4055d17b8f1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
