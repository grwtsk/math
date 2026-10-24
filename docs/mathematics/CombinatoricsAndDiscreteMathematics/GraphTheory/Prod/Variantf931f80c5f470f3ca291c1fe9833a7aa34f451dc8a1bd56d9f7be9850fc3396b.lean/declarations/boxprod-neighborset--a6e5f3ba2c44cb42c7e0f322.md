# boxProd_neighborSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f4281b5-c587-175f-211e-dd49df5efbcb",
  "kind": "theorem",
  "lexical_name": "boxProd_neighborSet",
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
  "slug": "boxprod-neighborset--a6e5f3ba2c44cb42c7e0f322",
  "source": {
    "blob": "12b2c84447356740af6b70ed4eac96d6a769074b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e5f3ba2c44cb42c7e0f322d7168b90c780da1392501bb8c1ea2b0cf0f37be3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f4281b5-c587-175f-211e-dd49df5efbcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boxProd_neighborSet (x : α × β) :
    (G □ H).neighborSet x = G.neighborSet x.1 ×ˢ {x.2} ∪ {x.1} ×ˢ H.neighborSet x.2 := by
  ext ⟨a', b'⟩
  simp only [mem_neighborSet, Set.mem_union, boxProd_adj, Set.mem_prod, Set.mem_singleton_iff]
  simp only [eq_comm, and_comm]
#align simple_graph.box_prod_neighbor_set SimpleGraph.boxProd_neighborSet

variable (G H)

/-- The box product is commutative up to isomorphism. `Equiv.prodComm` as a graph isomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b2c84447356740af6b70ed4eac96d6a769074b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
