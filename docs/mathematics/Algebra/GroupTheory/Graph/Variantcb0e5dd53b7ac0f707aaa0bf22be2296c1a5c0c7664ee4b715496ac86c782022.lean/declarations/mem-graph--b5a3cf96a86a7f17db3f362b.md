# mem_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a7efda0-2d49-5ea0-7097-30527c5dde5e",
  "kind": "lemma",
  "lexical_name": "mem_graph",
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
  "slug": "mem-graph--b5a3cf96a86a7f17db3f362b",
  "source": {
    "blob": "dff422b488ef27c138c8fb65736e7dab4e25a8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 177,
    "path": "GRWTSK/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5a3cf96a86a7f17db3f362b798dd9c8eb7a0bd8356c1f4389efcce972b30763",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a7efda0-2d49-5ea0-7097-30527c5dde5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_graph {f : G →* H} {x : G × H} : x ∈ f.graph ↔ f x.1 = x.2 := .rfl

@[to_additive graph_eq_range_prod]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff422b488ef27c138c8fb65736e7dab4e25a8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
