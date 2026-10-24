# rightAdjointSquare.comp_hvcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1750442a-c1ad-4d5a-cb8f-aa2d88386d88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:405b0f6f-b2be-2377-d159-dda5b682900a",
  "kind": "theorem",
  "lexical_name": "rightAdjointSquare.comp_hvcomp",
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
  "slug": "rightadjointsquare-comp-hvcomp--ec27f0492cb20bf7310e9f73",
  "source": {
    "blob": "32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 345,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec27f0492cb20bf7310e9f730dead2ea4e77735a8cdd99c8fdce39ceeba96ba0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:405b0f6f-b2be-2377-d159-dda5b682900a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightAdjointSquare.comp_hvcomp :
    comp α β γ δ = hcomp (vcomp α γ) (vcomp β δ) := by
  dsimp only [comp, vcomp, hcomp]
  calc
    _ = 𝟙 _ ⊗≫ r₂ ◁ α ▷ g₂ ⊗≫ (β ▷ (r₃ ≫ g₂) ≫ (k₁ ≫ r₄) ◁ γ) ⊗≫ k₁ ◁ δ ▷ r₅ ⊗≫ 𝟙 _ := by
      bicategory
    _ = _ := by
      rw [← whisker_exchange]
      bicategory

end rightAdjointSquare.comp

/-- The mates equivalence commutes with composition of a square of squares. These results form the
basis for an isomorphism of double categories to be proven later.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
