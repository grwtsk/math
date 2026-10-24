# orderedRoute_edges_declared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9648f7f1cea307e94c477fc2b801dac62f3fb4ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30c334ff-4b77-f333-f2f3-6755b5334c50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c41f0564-ee29-c4f2-d41d-8deb249b71ca",
  "kind": "theorem",
  "lexical_name": "orderedRoute_edges_declared",
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
  "slug": "orderedroute-edges-declared--0fa0dae6ae7daa2de8f73ab4",
  "source": {
    "blob": "9648f7f1cea307e94c477fc2b801dac62f3fb4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1234,
    "line": 1227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fa0dae6ae7daa2de8f73ab4e2549ed4b449a12cd932adad7ad17e208ef974cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c41f0564-ee29-c4f2-d41d-8deb249b71ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1227–1234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedRoute_edges_declared
    (contract : RoutingContract Host EdgeId) (start : Host)
    {edgeId : EdgeId}
    (member : edgeId ∈ (contract.orderedRoute start).discoveryEdges) :
    ∃ edge ∈ contract.edges, edge.edgeId = edgeId :=
  RoutingContract.orderedRoute_edges_declared contract start member

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean#L1227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9648f7f1cea307e94c477fc2b801dac62f3fb4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
