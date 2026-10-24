# RelCWComplex.skeletonLT_union_iUnion_closedCell_eq_skeletonLT_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3aff3eb20cd661ee54e86aa5e4ad596ff9de9036",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 598,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfe8d5e3-cc1c-645b-058f-e88b6ccaa1af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6827c1e-d967-ad19-07ad-ef24dbaa0f78",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.skeletonLT_union_iUnion_closedCell_eq_skeletonLT_succ",
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
  "slug": "relcwcomplex-skeletonlt-union-iunion-closedcell-eq-skeletonlt-succ--5183cc198242cd683eb0071f",
  "source": {
    "blob": "3aff3eb20cd661ee54e86aa5e4ad596ff9de9036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 598,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5183cc198242cd683eb0071fd828bd6a5f89f675c37b0026173a25befd8f9ff4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6827c1e-d967-ad19-07ad-ef24dbaa0f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.skeletonLT_union_iUnion_closedCell_eq_skeletonLT_succ [RelCWComplex C D]
    (n : ℕ) : skeletonLT C n ∪ ⋃ (j : cell C n), closedCell n j = skeletonLT C (n + 1)  := by
  rw [skeletonLT, skeletonLT, union_assoc]
  congr
  norm_cast
  exact (biUnion_lt_succ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantbfb9cc4f2e4d7f451bfde6c852aed0339919a49e1cc57180fcfc0e45bde0b2c5.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aff3eb20cd661ee54e86aa5e4ad596ff9de9036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
