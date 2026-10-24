# coeSubgraph_adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7db1af3e6d1ac8e5bf30b400aa52af315b6d61e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 989,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b65330d9-5124-7b5d-24fe-84123c5d8de8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f4fb0d3-c8c4-152b-f54c-b7c4029a84db",
  "kind": "lemma",
  "lexical_name": "coeSubgraph_adj",
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
  "slug": "coesubgraph-adj--c1a90b0bc56ceaf7d90e76da",
  "source": {
    "blob": "7db1af3e6d1ac8e5bf30b400aa52af315b6d61e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 993,
    "line": 989,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a90b0bc56ceaf7d90e76da26fe0c96923bf0f728d3fadc1a4875bc3bb293a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f4fb0d3-c8c4-152b-f54c-b7c4029a84db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 989–993.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeSubgraph_adj {G' : G.Subgraph} (G'' : G'.coe.Subgraph) (v w : V) :
    (G'.coeSubgraph G'').Adj v w ↔
      ∃ (hv : v ∈ G'.verts) (hw : w ∈ G'.verts), G''.Adj ⟨v, hv⟩ ⟨w, hw⟩ := by
  simp [Relation.Map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean#L989).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db1af3e6d1ac8e5bf30b400aa52af315b6d61e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
