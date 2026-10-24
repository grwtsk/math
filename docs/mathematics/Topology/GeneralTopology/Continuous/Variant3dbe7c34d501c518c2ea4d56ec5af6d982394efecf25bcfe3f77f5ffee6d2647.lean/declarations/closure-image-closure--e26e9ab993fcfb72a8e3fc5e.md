# closure_image_closure

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
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73e8552f-5d8c-1088-e11c-7f48d24923d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5d32a11-38c0-64b6-0a90-75fd7b1bdfb8",
  "kind": "theorem",
  "lexical_name": "closure_image_closure",
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
  "slug": "closure-image-closure--e26e9ab993fcfb72a8e3fc5e",
  "source": {
    "blob": "b8650eeb53e70bac5ead941682e4055d17b8f1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e26e9ab993fcfb72a8e3fc5e5cb82a1b25310a7956a677167708b2a700936851",
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

Occurrence: `result:f5d32a11-38c0-64b6-0a90-75fd7b1bdfb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_image_closure (h : Continuous f) :
    closure (f '' closure s) = closure (f '' s) :=
  Subset.antisymm
    (closure_minimal (image_closure_subset_closure_image h) isClosed_closure)
    (closure_mono <| image_subset _ subset_closure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8650eeb53e70bac5ead941682e4055d17b8f1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
