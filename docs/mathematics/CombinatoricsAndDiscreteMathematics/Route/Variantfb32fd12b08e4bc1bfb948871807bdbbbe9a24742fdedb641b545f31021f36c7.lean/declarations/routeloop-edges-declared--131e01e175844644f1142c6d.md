# routeLoop_edges_declared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c12d6ecc394bd70f1c512552be0886224107d68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a700c7d8-2635-a6db-6fea-d9320fada9af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afec559d-0e95-aec6-0c78-62e866eee0eb",
  "kind": "theorem",
  "lexical_name": "routeLoop_edges_declared",
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
  "slug": "routeloop-edges-declared--131e01e175844644f1142c6d",
  "source": {
    "blob": "0c12d6ecc394bd70f1c512552be0886224107d68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 481,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:131e01e175844644f1142c6da2d43c550c0eacc3a82ddc62d12f6d05fc5aa306",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afec559d-0e95-aec6-0c78-62e866eee0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem routeLoop_edges_declared
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (stateValid : DiscoveryEdgesDeclared contract state) :
    DiscoveryEdgesDeclared contract (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact stateValid
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact stateValid
      · rename_i host remaining queueEquation
        apply ih
        apply discoverOutgoing_edges_declared contract _ _
        · simpa only [DiscoveryEdgesDeclared] using stateValid
        intro edge member
        exact orderedOutgoingEdges_declared contract host member

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c12d6ecc394bd70f1c512552be0886224107d68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
