# W_isInvertedBy_whiskeringRight_presheafToSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29d700e340a458dcda1725992e85e6b1117233ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:127e55db-5427-ac6e-e580-e940d7ca257c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a18acd0-f7d2-dffd-2628-47a39317429b",
  "kind": "lemma",
  "lexical_name": "W_isInvertedBy_whiskeringRight_presheafToSheaf",
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
  "slug": "w-isinvertedby-whiskeringright-presheaftosheaf--8f1ecc7db77d52232ee5d512",
  "source": {
    "blob": "29d700e340a458dcda1725992e85e6b1117233ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1ecc7db77d52232ee5d512be4d92a5433421c7d97831f27f21480f65be0bfb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a18acd0-f7d2-dffd-2628-47a39317429b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma W_isInvertedBy_whiskeringRight_presheafToSheaf :
    J.W.IsInvertedBy (((whiskeringRight Cᵒᵖ A B).obj F) ⋙ presheafToSheaf J B) := by
  intro P₁ P₂ f hf
  dsimp
  rw [← W_iff]
  exact J.W_of_preservesSheafification F _ hf

end GrothendieckTopology

section

variable [HasWeakSheafify J B]

/-- This is the functor sending a sheaf `X : Sheaf J A` to the sheafification
of `X.val ⋙ F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d700e340a458dcda1725992e85e6b1117233ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
