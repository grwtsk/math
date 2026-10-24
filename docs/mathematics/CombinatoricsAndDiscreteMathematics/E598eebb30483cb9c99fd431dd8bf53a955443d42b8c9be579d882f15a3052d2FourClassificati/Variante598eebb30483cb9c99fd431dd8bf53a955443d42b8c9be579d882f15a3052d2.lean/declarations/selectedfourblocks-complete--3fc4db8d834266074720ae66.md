# selectedFourBlocks_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c311fd0a8f9da7a9cf1d2a33e80f222119f5dfd1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d23731f8-5a2c-95b2-9338-8e85fbd96603",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43c9f076-9409-1695-b0a6-5bc505807f35",
  "kind": "theorem",
  "lexical_name": "selectedFourBlocks_complete",
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
  "slug": "selectedfourblocks-complete--3fc4db8d834266074720ae66",
  "source": {
    "blob": "c311fd0a8f9da7a9cf1d2a33e80f222119f5dfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/E598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2FourClassificati/Variante598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc4db8d834266074720ae66e59ea0000795925b7567b9c90931fb374120981e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/E598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2FourClassificati/Variante598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43c9f076-9409-1695-b0a6-5bc505807f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem selectedFourBlocks_complete (b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 : Bool) :
    let ps := selectedFourBlocks b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13
    ps.SupIndep id ∧ ps.sup id = Finset.univ →
      ps ∈ properPartitionsFourExplicit.image Finpartition.parts := by
  revert b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13
  decide +kernel

end MomentCumulant
end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/E598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2FourClassificati/Variante598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/E598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2FourClassificati/Variante598eebb30483cb9c99fd431dd8bf53a955443d42b8c9be579d882f15a3052d2.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c311fd0a8f9da7a9cf1d2a33e80f222119f5dfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
