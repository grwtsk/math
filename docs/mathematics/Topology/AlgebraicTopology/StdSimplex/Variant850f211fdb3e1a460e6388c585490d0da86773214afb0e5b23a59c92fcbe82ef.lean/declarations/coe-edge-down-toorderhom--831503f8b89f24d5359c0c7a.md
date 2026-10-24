# coe_edge_down_toOrderHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df8040b15ac3987b23874cfbdc1994c0c507ea25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3564b641-092c-a2ba-3f50-c20e300887a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92bab3d8-8be8-a441-e66f-8f3461972a47",
  "kind": "lemma",
  "lexical_name": "coe_edge_down_toOrderHom",
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
  "slug": "coe-edge-down-toorderhom--831503f8b89f24d5359c0c7a",
  "source": {
    "blob": "df8040b15ac3987b23874cfbdc1994c0c507ea25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 140,
    "path": "GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:831503f8b89f24d5359c0c7a6436424d097b56cd0e6fdbdf5f336ab8920d1c08",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92bab3d8-8be8-a441-e66f-8f3461972a47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_edge_down_toOrderHom (n : ℕ) (a b : Fin (n+1)) (hab : a ≤ b) :
    ↑(edge n a b hab).down.toOrderHom = ![a, b] :=
  rfl

/-- The triangle in the standard simplex with vertices `a`, `b`, and `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df8040b15ac3987b23874cfbdc1994c0c507ea25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
