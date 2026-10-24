# IsBond.isBridge_deleteEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69f0b946737026be6abcf2f3d72a83289f0a8d51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7a20941-9de7-3491-0938-4a7758d8b6bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4143a39-d50e-eea4-153d-6ffb83b696fa",
  "kind": "lemma",
  "lexical_name": "IsBond.isBridge_deleteEdges",
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
  "slug": "isbond-isbridge-deleteedges--b6694504b431d0a4fb4e75ae",
  "source": {
    "blob": "69f0b946737026be6abcf2f3d72a83289f0a8d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6694504b431d0a4fb4e75ae2e89fc003cb6368115cd697cfcbd517a45777f1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4143a39-d50e-eea4-153d-6ffb83b696fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBond.isBridge_deleteEdges (heB : e ∈ B) (hB : G.IsBond B) :
    (G.deleteEdges (B \ {e})).IsBridge e := by
  have := hB.prop.1.inter_edgeSet_of_le (G.deleteEdges_le (F := B \ {e}))
  rw [edgeSet_deleteEdges, inter_comm, inter_sdiff_distrib_left, inter_eq_left.mpr hB.subset,
    inter_eq_right.mpr sdiff_subset] at this
  simpa [heB, IsBridge] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f0b946737026be6abcf2f3d72a83289f0a8d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
