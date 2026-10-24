# distinguished_cocone_triangle₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "759c0feaf72a037ccb164922c16fae1aea809c53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acc5e8ad-8f6c-244e-895c-d6bf55bb5d73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13782f93-99af-74fb-0dc7-8cf3696d1407",
  "kind": "lemma",
  "lexical_name": "distinguished_cocone_triangle₂",
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
  "slug": "distinguished-cocone-triangle--e71d0c776c2af1084620ef6f",
  "source": {
    "blob": "759c0feaf72a037ccb164922c16fae1aea809c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e71d0c776c2af1084620ef6f5d2f5c9284e08c47f34e7da9b5bffde7229d0fa7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13782f93-99af-74fb-0dc7-8cf3696d1407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma distinguished_cocone_triangle₂ [P.IsTriangulatedClosed₂]
    {X Z : C} (c : Z ⟶ X⟦(1 : ℤ)⟧) (hX : P X) (hZ : P Z) :
    ∃ (Y : C) (_ : P Y) (a : X ⟶ Y) (b : Y ⟶ Z), Triangle.mk a b c ∈ distTriang _ := by
  obtain ⟨Y, a, b, h⟩ := distinguished_cocone_triangle₂ c
  obtain ⟨Y', hY', ⟨e⟩⟩ := P.ext_of_isTriangulatedClosed₂' _ h hX hZ
  exact ⟨Y', hY', a ≫ e.hom, e.inv ≫ b, isomorphic_distinguished _ h _
    (Triangle.isoMk _ _ (Iso.refl _) e.symm (Iso.refl _))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759c0feaf72a037ccb164922c16fae1aea809c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
