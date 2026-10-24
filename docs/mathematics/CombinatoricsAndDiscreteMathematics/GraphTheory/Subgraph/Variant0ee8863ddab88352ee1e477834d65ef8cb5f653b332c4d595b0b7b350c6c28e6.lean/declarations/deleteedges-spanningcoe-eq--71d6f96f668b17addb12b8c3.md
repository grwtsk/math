# deleteEdges_spanningCoe_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:419ac406-04d1-ed92-876e-8ec05c027e09",
  "kind": "theorem",
  "lexical_name": "deleteEdges_spanningCoe_eq",
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
  "slug": "deleteedges-spanningcoe-eq--71d6f96f668b17addb12b8c3",
  "source": {
    "blob": "167c4f97549036225bf40252b7cb5405405238de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1142,
    "line": 1137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d6f96f668b17addb12b8c36d91a56b3ecfe7c8da101c6c3bd22947c6a42cd3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419ac406-04d1-ed92-876e-8ec05c027e09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1137–1142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deleteEdges_spanningCoe_eq :
    G'.spanningCoe.deleteEdges s = (G'.deleteEdges s).spanningCoe := by
  ext
  simp

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant0ee8863ddab88352ee1e477834d65ef8cb5f653b332c4d595b0b7b350c6c28e6.lean#L1137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `167c4f97549036225bf40252b7cb5405405238de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
