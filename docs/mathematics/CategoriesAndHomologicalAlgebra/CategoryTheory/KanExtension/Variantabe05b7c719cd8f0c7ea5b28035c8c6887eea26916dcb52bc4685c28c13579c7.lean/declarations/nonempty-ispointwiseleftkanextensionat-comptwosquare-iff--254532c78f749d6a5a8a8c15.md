# nonempty_isPointwiseLeftKanExtensionAt_compTwoSquare_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "497bb9cfc4ca42da714d5cdb13cdcfbbff5ce494",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a0204a4-9bc7-1ece-dc1c-c5ecceb7a92e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41e68e85-4128-d226-225b-e03c62d21255",
  "kind": "lemma",
  "lexical_name": "nonempty_isPointwiseLeftKanExtensionAt_compTwoSquare_iff",
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
  "slug": "nonempty-ispointwiseleftkanextensionat-comptwosquare-iff--254532c78f749d6a5a8a8c15",
  "source": {
    "blob": "497bb9cfc4ca42da714d5cdb13cdcfbbff5ce494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:254532c78f749d6a5a8a8c159e4107fd6cfcb404ae3ea0b89a03b2f32808d9cf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e68e85-4128-d226-225b-e03c62d21255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_isPointwiseLeftKanExtensionAt_compTwoSquare_iff
    (w : TwoSquare T L R B) (X₃ : C₃) [Final (w.costructuredArrowRightwards X₃)] :
    Nonempty ((E.compTwoSquare w).IsPointwiseLeftKanExtensionAt X₃) ↔
      Nonempty (E.IsPointwiseLeftKanExtensionAt (B.obj X₃)) :=
  (E.isPointwiseLeftKanExtensionAtCompTwoSquareEquiv w _).nonempty_congr

variable {E} in
/-- If `w : TwoSquare T L R B` is a Guitart exact square, and `E` is a pointwise
left Kan extension of `F` along `R`, then `E.compTwoSquare w` is a pointwise left
Kan extension of `T ⋙ F` along `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `497bb9cfc4ca42da714d5cdb13cdcfbbff5ce494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
