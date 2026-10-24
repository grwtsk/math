# IsCardinalAccessibleCategory.mono_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:346a1890-b6df-2e4f-23e0-d15f0208750c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9d86fc2-0fb7-67a9-e456-018538bf1dbf",
  "kind": "lemma",
  "lexical_name": "IsCardinalAccessibleCategory.mono_iff",
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
  "slug": "iscardinalaccessiblecategory-mono-iff--24a96348dd9dd24c8ab3059c",
  "source": {
    "blob": "3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a96348dd9dd24c8ab3059c519515e10e0b680bb722fe806f207665d0353bee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9d86fc2-0fb7-67a9-e456-018538bf1dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCardinalAccessibleCategory.mono_iff [IsCardinalAccessibleCategory C κ]
    {X Y : C} (f : X ⟶ Y) :
    Mono f ↔ ∀ (T : C) [IsCardinalPresentable T κ] (g₁ g₂ : T ⟶ X),
      g₁ ≫ f = g₂ ≫ f → g₁ = g₂ :=
  ⟨fun _ _ _ _ _ _ ↦ by rwa [← cancel_mono f],
    fun hf ↦ ⟨fun {Z} g₁ g₂ h ↦ ((isCardinalPresentable C κ).ι.denseAt Z).hom_ext
      (by cat_disch)⟩⟩

set_option backward.defeqAttrib.useBackward true in
/-- In a `κ`-accessible category, `κ`-pure morphisms are monomorphisms.
(This is proposition 2.29 in [Adamek_Rosicky_1994].) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
