# cliqueFree_of_chromaticNumber_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6f2658fbf5c0423c1172a42472e1a77af1cf658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa04a1c1-a7c3-c36a-e0ec-a7be7380c9ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7c13389-4f2a-d25c-aae1-4c64da2df7f6",
  "kind": "theorem",
  "lexical_name": "cliqueFree_of_chromaticNumber_lt",
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
  "slug": "cliquefree-of-chromaticnumber-lt--2b6d6f5ed7edb02a418dc7d8",
  "source": {
    "blob": "d6f2658fbf5c0423c1172a42472e1a77af1cf658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 454,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b6d6f5ed7edb02a418dc7d818119c336e8814484f07b5d52dafe7163d14483c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7c13389-4f2a-d25c-aae1-4c64da2df7f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cliqueFree_of_chromaticNumber_lt [Finite V] {n : ℕ} (hc : G.chromaticNumber < n) :
    G.CliqueFree n :=
  G.colorable_chromaticNumber_of_fintype.cliqueFree hc
#align simple_graph.clique_free_of_chromatic_number_lt SimpleGraph.cliqueFree_of_chromaticNumber_lt

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6f2658fbf5c0423c1172a42472e1a77af1cf658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
