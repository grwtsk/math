# connectivity_classifies_pairs_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3e95c8dae3a878f031447cc17d3f5c75145f9aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f451d850d9dee76091af1d025f6cd093bea8978b91560121e1316e8f5adebefe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba2aaf9c-1bc9-961c-9cb0-8ab72d31b0fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c72c93b-f630-3d71-cc72-d6f55c0ee2b1",
  "kind": "theorem",
  "lexical_name": "connectivity_classifies_pairs_if_supplied",
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
  "slug": "connectivity-classifies-pairs-if-supplied--d9964961dad52252d2001830",
  "source": {
    "blob": "a3e95c8dae3a878f031447cc17d3f5c75145f9aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 180,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Complexity/Variantf451d850d9dee76091af1d025f6cd093bea8978b91560121e1316e8f5adebefe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9964961dad52252d20018302cddc09d1da71a390d087899583fec171a9c79ff",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Complexity/Variantf451d850d9dee76091af1d025f6cd093bea8978b91560121e1316e8f5adebefe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c72c93b-f630-3d71-cc72-d6f55c0ee2b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem connectivity_classifies_pairs_if_supplied
    (T : Folder.GrandChallenge.Complexity.BinaryMatrixStreamConnectivityTarget)
    (a b : Folder.GrandChallenge.Complexity.TheoremNode) :
    T.compression.graph.pathExists a b ∨
      ∃ G : Folder.GrandChallenge.Complexity.GlitchedTraversal,
        G.graph = T.compression.graph ∧ G.source = a ∧ G.target = b :=
  Folder.GrandChallenge.Complexity.connectivity_classifies_pairs_if_supplied T a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Complexity/Variantf451d850d9dee76091af1d025f6cd093bea8978b91560121e1316e8f5adebefe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Complexity/Variantf451d850d9dee76091af1d025f6cd093bea8978b91560121e1316e8f5adebefe.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3e95c8dae3a878f031447cc17d3f5c75145f9aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
