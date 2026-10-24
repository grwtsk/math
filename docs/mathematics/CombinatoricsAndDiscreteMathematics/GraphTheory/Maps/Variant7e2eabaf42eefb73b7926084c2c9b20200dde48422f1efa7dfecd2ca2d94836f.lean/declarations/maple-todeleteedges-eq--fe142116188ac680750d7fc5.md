# mapLe_toDeleteEdges_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "165b861ad4fb1e2214c9f1c80e2e61a0f3940e24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e659ab48-bb16-7e07-533e-a0b5d7994ade",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f5c85b4-422c-1144-1603-905b80565feb",
  "kind": "theorem",
  "lexical_name": "mapLe_toDeleteEdges_eq",
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
  "slug": "maple-todeleteedges-eq--fe142116188ac680750d7fc5",
  "source": {
    "blob": "165b861ad4fb1e2214c9f1c80e2e61a0f3940e24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe142116188ac680750d7fc598fbb52fe96a040986a19ee492fd4813de190b96",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f5c85b4-422c-1144-1603-905b80565feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapLe_toDeleteEdges_eq (s : Set (Sym2 V)) {p : G.Walk v w} (hp) :
    (p.toDeleteEdges s hp).mapLe (G.deleteEdges_le s) = p := by
  rw [← transfer_eq_mapLe, transfer_transfer, transfer_self]
  apply edges_transfer _ _ ▸ p.edges_subset_edgeSet

@[deprecated (since := "2026-09-14")] alias map_toDeleteEdges_eq := mapLe_toDeleteEdges_eq

end Walk

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variant7e2eabaf42eefb73b7926084c2c9b20200dde48422f1efa7dfecd2ca2d94836f.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `165b861ad4fb1e2214c9f1c80e2e61a0f3940e24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
